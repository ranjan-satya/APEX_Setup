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
,p_default_application_id=>4489
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4489 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4489
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131600307217037074')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'sr-latn'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4489)
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
 p_id=>wwv_flow_imp.id(4489)
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
 p_id=>wwv_flow_imp.id(728504220438374.4489)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4489)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4489)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4489)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4489)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4489)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4489)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4489)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4489)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4489)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4489)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4489)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4489)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4489)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4489)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4489)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4489)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.sr-latn'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4489)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4489)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4489)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4489)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4489)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4489)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4489)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.sr-latn'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4489)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4489)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4489)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4489)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4489)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4489)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.sr-latn'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4489)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4489)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4489)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.sr-latn'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4489)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4489)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4489)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4489)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4489)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4489)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4489)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4489)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4489)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4489)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4489)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4489)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4489)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4489)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4489)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4489)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4489)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.sr-latn'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4489)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4489)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4489)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4489)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4489)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4489)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4489)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4489)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4489)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4489)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4489)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4489)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4489)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4489)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4489)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4489)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4489)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.sr-latn'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4489)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4489)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4489)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4489)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4489)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4489)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4489)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4489)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4489)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4489)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4489)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4489)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4489)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4489)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4489)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.sr-latn'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4489)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4489)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4489)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4489)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4489)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4489)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4489)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4489)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4489)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4489)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4489)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4489)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4489)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4489)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4489)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4489)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4489)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4489)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4489)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4489)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4489)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4489)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4489)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4489)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4489)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4489)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4489)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4489)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4489)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4489)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4489)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4489)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4489)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4489)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4489)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4489)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4489)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4489)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4489)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4489)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4489)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4489)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4489)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4489)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4489)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4489)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4489)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4489)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4489)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4489)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4489)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4489)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4489)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4489)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4489)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4489)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4489)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4489)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4489)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4489)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4489)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4489)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4489)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4489)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4489)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4489)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4489)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4489)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4489)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4489)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4489)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4489)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4489)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4489)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4489)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4489)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4489)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4489)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4489)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4489)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4489)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4489)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4489)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4489)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4489)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4489)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4489)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4489)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4489)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4489)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4489)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4489)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4489)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4489)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4489)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4489)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4489)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4489)
,p_page_name=>'winlov'
,p_page_title=>'Dijalog za pretragu'
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
,p_find_button_text=>'Pretraga'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Zatvori'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('Slede\0107e &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Prethodno'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Redovi #FIRST_ROW# - #LAST_ROW#</div>'
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
 p_id=>wwv_flow_imp.id(649611609668764506.4489)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4489)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4489)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4489)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4489)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4489)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4489)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4489)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4489)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4489)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4489)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4489)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4489)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4489)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4489)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4489)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4489)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4489)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4489)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4489)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4489)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4489)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4489)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4489)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4489)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4489)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4489)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4489)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4489)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4489)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4489)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4489)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4489)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4489)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4489)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4489)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4489)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4489)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4489)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4489)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4489)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4489)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4489)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4489)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4489)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4489)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4489)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4489)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4489)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4489)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4489)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4489)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4489)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4489)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4489)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4489)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4489)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4489)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4489)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4489)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4489)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4489)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4489)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4489)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4489)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4489)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4489)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4489)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4489)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4489)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4489)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4489)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4489)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4489)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4489)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4489)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4489)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4489)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4489)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4489)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4489)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4489)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4489)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4489)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4489)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4489)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4489)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4489)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4489)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4489)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4489)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4489)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4489)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4489)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4489)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4489)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4489)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4489)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4489)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4489)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4489)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4489)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4489)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4489)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4489)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4489)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4489)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4489)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4489)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4489)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4489)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4489)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4489)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4489)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4489)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4489)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4489)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4489)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4489)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4489)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4489)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4489)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4489)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4489)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4489)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4489)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4489)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4489)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4489)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4489)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4489)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4489)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4489)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4489)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4489)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4489)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4489)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4489)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4489)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4489)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4489)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4489)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4489)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4489)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4489)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4489)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4489)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4489)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4489)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4489)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4489)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4489)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4489)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4489)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4489)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4489)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4489)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4489)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4489)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4489)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4489)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4489)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4489)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4489)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4489)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4489)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4489)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4489)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4489)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4489)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4489)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4489)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4489)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4489)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4489)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4489)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4489)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4489)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4489)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4489)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4489)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4489)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4489)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4489)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4489)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4489)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4489)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4489)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4489)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4489)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4489)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4489)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4489)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4489)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4489)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4489)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4489)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4489)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4489)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4489)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4489)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4489)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4489)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4489)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4489)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4489)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4489)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4489)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4489)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4489)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4489)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4489)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4489)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4489)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4489)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4489)
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
 p_id=>wwv_flow_imp.id(129756285697027713)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona %0'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740821940027708)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'sr-latn'
,p_message_text=>'Administrator'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740745327027708)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Korisni\010Dko ime')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803474846027727)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Pristup je zabranjen'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760376367027714)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 nalog je kreiran.'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743577887027709)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nalog je zaklju\010Dan.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728013074027704)
,p_name=>'AM_PM'
,p_message_language=>'sr-latn'
,p_message_text=>'AM / PM'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710802586027699)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'sr-latn'
,p_message_text=>'veza do radnje'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710713676027699)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'sr-latn'
,p_message_text=>'veza do dijaloga'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875103239027749)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Di/isklju\010Di %0')
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882972116027752)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'sr-latn'
,p_message_text=>'(Aktivno)'
,p_is_js_message=>true
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687715885027692)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\0106askanje je obrisano')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687647295027692)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i \0107askanje')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684295129027691)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'sr-latn'
,p_message_text=>'Prihvati'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684376658027691)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'sr-latn'
,p_message_text=>'Odbij'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684070529027691)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'sr-latn'
,p_message_text=>'Istorija razgovora'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687428211027692)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'sr-latn'
,p_message_text=>'Kopirano'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687552141027692)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'sr-latn'
,p_message_text=>'Kopirano je u ostavu'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687284880027692)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'sr-latn'
,p_message_text=>'Kopiraj'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687366202027692)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'sr-latn'
,p_message_text=>'Kopiraj u ostavu'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684780035027691)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107nik')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685183139027691)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ve\0161ta\010Dka inteligencija je onemogu\0107ena na nivou radnog prostora ili instance.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724416088027703)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111en Generative AI Service sa navedenim ID-om ili stati\010Dkim ID-om.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723177770027702)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom provere identiteta ili zabranjen pristup (HTTP-%1) za URL %0. Proverite konfiguraciju usluge Generative AI Service %2.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702911075027696)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>'HTTP zahtev za Generative AI Service u stavci %0 nije uspeo sa stavkom HTTP-%1: %2'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727317215027704)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka u HTTP zahtevu za uslugu Generative AI Service za dodatnu komponentu %0 u re\017Eimu %1. Proverite konfiguraciju usluge Generative AI Service.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690119824027692)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Primeri'
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688543450027692)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107nik')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689994105027692)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688486896027692)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'sr-latn'
,p_message_text=>'Vi'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719160620027701)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('OCI Generative AI trenutno ne podr\017Eava do\017Eivljaj \0107askanja sa vi\0161e poruka.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699076074027695)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom obrade upita %0 za aplikaciju %1. Proverite da li je program za pravljenje aplikacija dostupan na ovoj instanci.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704119116027697)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e obraditi odgovor za uslugu ve\0161ta\010Dke inteligencije %0, odgovor %1')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710313776027699)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161alji poruku')
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698667380027695)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka usluge ve\0161ta\010Dke inteligencije pozadinskog servera %0')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684448697027691)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Poruka'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684588462027691)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'sr-latn'
,p_message_text=>'Ovde unesite poruku'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687867728027692)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Avatar korisnika'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687968728027692)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'sr-latn'
,p_message_text=>'Koristite ovo'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684603241027691)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Imate neposlatu poruku, da li ste sigurni?'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853607400027743)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ajax poziv je vratio gre\0161ku servera %0 za %1.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780787507027720)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Alijas aplikacije "%0" ne mo\017Ee da se konvertuje u jedinstveni ID aplikacije.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769530644027717)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-1816 Neo\010Dekivana gre\0161ka pri konvertovanju alijasa aplikacije p_flow_alias_or_id (%0).')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866912986027747)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kontrolni zbir aplikacije pru\017Ea lak na\010Din za utvr\0111ivanje da li je ista aplikacija pokrenuta u vi\0161e radnih prostora. Ovaj kontrolni zbir mo\017Eete da uporedite kako biste utvrdili da li postoji podudaranje. ')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753520982027712)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri obradi funkcije potvrde identiteta.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735535939027706)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri obradi funkcije potvrde identiteta.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907436931027759)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ime zakupca %0 koje je vratila usluga Oracle Cloud Identity Management nije ovla\0161\0107eno za domen %1!<br/><a href="&LOGOUT_URL.">Prijavite se ponovo</a> i navedite ime ovla\0161\0107enog zakupca ili promenite URL.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731654228027705)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'sr-latn'
,p_message_text=>'Nalog "%0" nema neophodne privilegije za razvoj (DB_DEVELOPER ili DB_ADMINISTRATOR)<br/>za radni prostor "%1". <a href="&LOGOUT_URL.">Ponovo se prijavite</a> kada dobijete privilegije.'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728200942027704)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ime zakupca koje je prikazala usluga Oracle Cloud Identity Management nije ovla\0161\0107eno za aktuelni radni prostor.<br/><a href="&LOGOUT_URL.">Ponovo se prijavite</a> i navedite ovla\0161\0107eno ime zakupca.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731710097027705)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Iz bezbednosnih razloga nije dozvoljeno da se aplikacije iz ovog radnog prostora izvr\0161avaju putem domena iz URL adrese.')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753219901027712)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Zamolite administratora baze podataka da pokrene $OH/rdbms/admin/catldap.sql.'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753134716027712)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('SYS.DBMS_LDAP paket ne postoji ili nije va\017Ee\0107i.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753014042027712)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom ure\0111ivanja funkcije LDAP korisnika.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753375319027712)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri obradi LDAP potvrde identiteta.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754174681027712)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke u argumentu p_flow_page za proceduru login_page.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753745290027712)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije va\017Ee\0107e: p_session in wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805012488027728)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lo\0161e formiran argument za wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753829870027712)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Proceduri prijavljivanja je prosle\0111eno null korisni\010Dko ime.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740600083027708)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Dekajte <span id="apex_login_throttle_sec">%0</span> sek. da biste se opet prijavili.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741924389027708)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Poku\0161aj prijavljivanja je blokiran.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802790131027727)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Potvrda identiteta "%0" nije prona\0111ena.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742443691027708)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'sr-latn'
,p_message_text=>'ID bezbednosne grupe je null.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753641913027712)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri obradi procesa nakon potvrde identiteta.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753480460027712)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri obradi procesa pre potvrde identiteta.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755118068027712)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otvorite URL u istom pregleda\010Du u kojem ste pokrenuli zahtev za resetovanje lozinke. Ako kliknete na URL za resetovanje lozinke i budete preusmereni na stranicu za prijavljivanje, ponovo pokrenite resetovanje lozinke i ostavite pregleda\010D otvoren.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904979423027758)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'sr-latn'
,p_message_text=>'URL za resetovanje lozinke'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731987938027705)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Grupi potro\0161a\010Da %0 u upravlja\010Du resursima nije dodeljena privilegija %1')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732065738027705)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'sr-latn'
,p_message_text=>'Upotrebite DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP da biste dodelili privilegiju koja nedostaje.'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766603314027716)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom obrade funkcije stra\017Eara sesije.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766735581027716)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom obrade funkcije verifikacije sesije.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766992405027716)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zamolite administratora za %0 da konfiguri\0161e ma\0161inu za jedinstveno prijavljivanje putem servera za Oracle aplikacije.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777308987027719)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'sr-latn'
,p_message_text=>'Jedinstveno prijavljivanje je prijavilo nedozvoljeni %0 u tokenu %1.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754028438027712)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uredite \0161emu potvrde identiteta i dodajte ime aplikacije.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777080654027719)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'sr-latn'
,p_message_text=>'Nedozvoljeni pozivalac za proceduru %0:'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777240108027719)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107a sesija aplikacije u urlc tokenu: %0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776888283027719)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka u parametru portal_sso_redirect: nedostaju informacije o registraciji aplikacije: %0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766858519027716)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Paket WWSEC_SSO_ENABLER_PRIVATE ne postoji ili nije va\017Ee\0107i.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129753913236027712)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U \0161emi potvrde identiteta nije prona\0111eno ime aplikacije registrovanog partnera.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776914592027719)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Registrujte ovu aplikaciju onako kako je opisano u vodi\010Du za instaliranje.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767027510027716)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri obradi potvrde identiteta za jedinstveno prijavljivanje.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880362842027751)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neovla\0161\0107eni URL:  %0')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766495431027716)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri obradi potvrde identiteta.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731873570027705)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'sr-latn'
,p_message_text=>'Radni prostor "%0" nije aktivan. Obratite se administratoru.'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732526038027705)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'sr-latn'
,p_message_text=>'%0'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741643107027708)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Bezbednosna provera aplikacije je zabranila pristup'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741758118027708)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Bezbednosna provera stranice je zabranila pristup'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741854265027708)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri obradi ovla\0161\0107enja.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810911565027730)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Napravljeno uz %0 koriste\0107i %1')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811028540027730)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'sr-latn'
,p_message_text=>'ljubav'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870862159027748)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Opis doga\0111aja')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870628429027748)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Datum zavr\0161etka')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870965282027748)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ID doga\0111aja')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870567749027748)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Datum po\010Detka')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870712774027748)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Naslov doga\0111aja')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713304182027699)
,p_name=>'APEX.CARD'
,p_message_language=>'sr-latn'
,p_message_text=>'Kartica'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713580787027700)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnja kartice'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754203252027712)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'sr-latn'
,p_message_text=>'Vizuelno skriveno polje za potvrdu'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756129503027713)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka sadr\017Eaja za kontrolni zbir')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756097060027713)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka formata za kontrolni zbir')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825990870027734)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'sr-latn'
,p_message_text=>'Kopirano je u ostavu.'
,p_is_js_message=>true
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825442753027734)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ovaj pregleda\010D ne podr\017Eava kopiranje iz dugmeta ili menija. Poku\0161ajte sa Ctrl+C ili Command+C.')
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811671397027730)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Zatvori'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690081977027692)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sadr\017Eaj ure\0111iva\010Da koda prekora\010Duje maksimalnu dozvoljenu du\017Einu stavke (stvarno: %0, dozvoljenih znakova: %1).')
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870135035027748)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'sr-latn'
,p_message_text=>'Kontrast'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864600763027746)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'sr-latn'
,p_message_text=>'Aktuelno'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864588470027746)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Detno')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868770876027747)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# mora da bude va\017Ee\0107a boja. Primer: %0')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731122586027705)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Jo\0161 boja')
,p_is_js_message=>true
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731258123027705)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otvori bira\010D boja')
,p_is_js_message=>true
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688375054027692)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Alfa kliza\010D, horizontalni kliza\010D. Kre\0107ite se pomo\0107u tastera sa strelicama.')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688053540027692)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Spektar boja, 4-smerni kliza\010D. Kre\0107ite se pomo\0107u tastera sa strelicama.')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688150227027692)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kliza\010D za nijanse, vertikalni kliza\010D. Kre\0107ite se pomo\0107u tastera sa strelicama.')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864418267027746)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Odaberite boju'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864797918027746)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Promenite format boje'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902673963027757)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'sr-latn'
,p_message_text=>'Lista vrednosti'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902794956027758)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'sr-latn'
,p_message_text=>'Otvori listu za: %0'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883091326027752)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('(Dovr\0161eno)')
,p_is_js_message=>true
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771957446027718)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'sr-latn'
,p_message_text=>'Obratite se administratoru aplikacije.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787469750027722)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Obratite se administratoru aplikacije.',
unistr('Detalji o ovom incidentu su dostupni putem ID-a za otklanjanje gre\0161aka "%0".')))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869061685027747)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ispravite gre\0161ke pre nego \0161to sa\010Duvate.')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714337159027700)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'sr-latn'
,p_message_text=>'%0. Pritisnite dugme za brisanje na tastaturi da biste izbrisali.'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812591638027730)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111enih podudaranja: %0')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694472413027694)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111eno je 1 podudaranje')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812455605027730)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111en nijedan pogodak')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688856199027692)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'sr-latn'
,p_message_text=>'Drugo'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688769385027692)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Izabranih vrednosti: %0'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883553148027752)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'sr-latn'
,p_message_text=>'Trenutni napredak'
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869440793027747)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Datoteka navedena u stavci %0 ne postoji u APEX_APPLICATION_TEMP_FILES.'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857993136027744)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Trenutna verzija podataka u bazi podataka je promenjena od kada je korisnik pokrenuo proces a\017Euriranja.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827062518027735)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ne u\010Ditavaj')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873359805027749)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka u pripremnoj obradi')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873132511027749)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'sr-latn'
,p_message_text=>'Umetni red'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886715982027753)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Redosled : radnja'
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873269460027749)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('A\017Euriraj red')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701748875027696)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729322661027704)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'sr-latn'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715403297027700)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 mora da bude bira\010D datuma ili va\017Ee\0107i datum, na primer %1.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824635881027734)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693550
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732892678027705)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'sr-latn'
,p_message_text=>'Gotovo'
,p_is_js_message=>true
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743844223027709)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ima nepodr\017Eane delove u maski formata: %1')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729019875027704)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>'Sat'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812974723027730)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Iska\010Du\0107i kalendar: %0')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728813436027704)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>'Nedelja'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728980144027704)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'sr-latn'
,p_message_text=>'Ned.'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729226609027704)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>'Minuti'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729448314027704)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>'Mesec'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729803871027705)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i mesec')
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699490056027695)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Iska\010Du\0107i prozor za %0')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729747334027704)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodni mesec'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822201241027733)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Bira\010D datuma samo za \010Ditanje')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730611033027705)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite datum'
,p_is_js_message=>true
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699591977027695)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite datum i vreme'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696767299027694)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite dan'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700174847027695)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite mesec i godinu'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696975697027695)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite vreme'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697483976027695)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Danas'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715050992027700)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# mora da bude va\017Ee\0107i datum, na primer %0')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714788493027700)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# mora da bude izme\0111u %0 i %1.')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714834350027700)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'sr-latn'
,p_message_text=>'#LABEL# mora da bude %0 ili nakon toga.'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714957341027700)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'sr-latn'
,p_message_text=>'#LABEL# mora da bude %0 ili pre toga.'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706367340027697)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vizuelno skriveno ure\0111ivanje')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729658603027704)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Godina'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816660562027731)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vrednost #LABEL# je ve\0107a od navedenog maksimalnog datuma %0.')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817070437027732)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>'#LABEL# se ne podudara sa formatom %0.'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816571884027731)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost #LABEL# je manja od navedenog minimalnog datuma %0.'
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816750991027731)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# nije u va\017Ee\0107em opsegu od %0 do %1.')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816954249027732)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# nije u va\017Ee\0107em opsegu godina od %0 do %1.')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708739755027698)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do interne gre\0161ke prilikom obrade DBMS_CLOUD zahteva.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869350966027747)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otka\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895213006027755)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zatvori'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756405917027713)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Potvrda'
,p_is_js_message=>true
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897272956027756)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869109254027747)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'sr-latn'
,p_message_text=>'U redu'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869298256027747)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736997558027707)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Naslov dijaloga'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776623876027719)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Vizuelno skriveni naslov dijaloga'
,p_is_js_message=>true
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697784238027695)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Unapred ugra\0111ena funkcija Oracle generatora dokumenta')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708535020027698)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom \0161tampanja dokumenta.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685714592027691)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%s ne podr\017Eava %1 kao rezultat.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697606183027695)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka "%0" prilikom pozivanja unapred ugra\0111ene funkcije Oracle generatora dokumenta')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689133409027692)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\0160ablon je obavezan.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714521461027700)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom preuzimanja datoteke.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714458441027700)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nisu prona\0111eni podaci koji mogu da se preuzmu.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718027715027701)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ova funkcija nije podr\017Eana u okru\017Eenju samo za izvr\0161avanje.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770855345027717)
,p_name=>'APEX.ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka')
,p_is_js_message=>true
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730764970027705)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do slede\0107e gre\0161ke prilikom izvr\0161avanja povratnog poziva za obradu gre\0161ke: %0')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743373653027709)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri bojenju stranice gre\0161ke: %0')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732414487027705)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Unutra\0161nja gre\0161ka')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882178302027751)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Obratite se administratoru.',
unistr('Detalji o ovom incidentu su dostupni preko ID-a za otklanjanje gre\0161aka "%0".')))
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876749782027750)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Baza podataka je otvorena za pristup samo za \010Ditanje.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906822120027759)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ORA-28353: Nije uspelo otvaranje nov\010Danika. Podaci aplikacije trenutno nisu dostupni.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876821635027750)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ova stranica nije dostupna'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735472740027706)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tehni\010Dke informacije (dostupne samo programerima)')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841378748027739)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Poruka o gre\0161ci')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855269888027743)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('O\010Dekivani format: %0')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820145500027733)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Korisnik je ve\0107 na listi za kontrolu pristupa')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820064213027733)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Potvrdite dodavanje slede\0107ih korisnika (%0) na listu za kontrolu pristupa <strong>%1</strong>.')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820556901027733)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'sr-latn'
,p_message_text=>'Postoji duplikat korisnika'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820265814027733)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'sr-latn'
,p_message_text=>'U e-adresi nedostaje znak et (@)'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820326410027733)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U e-adresi nedostaje ta\010Dka (.)')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820464281027733)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Korisni\010Dko ime je preduga\010Dko')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820778827027733)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'sr-latn'
,p_message_text=>'Samo korisnici definisani na listi za kontrolu pristupa aplikacije mogu da pristupe ovoj aplikaciji'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820819813027733)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neo\010Dekivana vrednost pode\0161avanja kontrole pristupa: %0')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820609412027733)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Svi ovla\0161\0107eni korisnici mogu da pristupe ovoj aplikaciji')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865138323027746)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Onemogu\0107eno')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865081916027746)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Omogu\0107eno')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865387998027746)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0: onemogu\0107eno je')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865213000027746)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0: omogu\0107eno je')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713863848027700)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije podr\017Eano')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775016903027719)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Isklju\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774973643027719)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864997223027746)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'sr-latn'
,p_message_text=>'nije identifikovano'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705432275027697)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 bajt(ov)a'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705946417027697)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705657081027697)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705870814027697)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858139758027744)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Preuzmi'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711293485027699)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Opcije'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710944472027699)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711166419027699)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'sr-latn'
,p_message_text=>'Sakrij aspekt'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735840699027706)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj filter'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812189880027730)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'sr-latn'
,p_message_text=>'Primenjeni filter %0'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736567363027707)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'sr-latn'
,p_message_text=>'Primeni'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855759895027743)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'sr-latn'
,p_message_text=>'Primeni'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736609516027707)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otka\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720461560027702)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Trakasti grafikon'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868413239027747)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'sr-latn'
,p_message_text=>'Drugo'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720525335027702)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kru\017Eni grafikon')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867000816027747)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Grafikon'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720261836027702)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856277108027744)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856339324027744)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i sve')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856440022027744)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i %0')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872924488027749)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kolona %1, sa referencom u aspektu %0, nije dostupna ili nema ovla\0161\0107enja.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683635978027690)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Odaberite filtere za prikaz'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810141803027729)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj rezultata: %0'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810260215027730)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'sr-latn'
,p_message_text=>'Izabrano: %0'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813076484027730)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'sr-latn'
,p_message_text=>'Trenutni filteri'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688600196027692)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'sr-latn'
,p_message_text=>'Specijalizovana pretraga zahteva izvor podataka na nivou regiona.'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692363130027693)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Lista filtera'
,p_is_js_message=>true
,p_version_scn=>2693522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871490990027748)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Jedinstveno ograni\010Denje vrednosti (%0) je prema\0161eno za aspekt %1.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857765630027744)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Apekt %0 nije podr\017Ean za kolone DATE ili TIMESTAMP.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855888190027743)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Filtriraj %0'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730458702027705)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 (primenjen filter)'
,p_is_js_message=>true
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855984431027743)
,p_name=>'APEX.FS.GO'
,p_message_language=>'sr-latn'
,p_message_text=>'Idi'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725911350027703)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('sadr\017Ei %0')
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857362268027744)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'sr-latn'
,p_message_text=>'jednako %0'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725645973027703)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('vi\0161e od %0')
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725704238027703)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ve\0107e od ili jednako %0')
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725379750027703)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'sr-latn'
,p_message_text=>'manje od %0'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725577160027703)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'sr-latn'
,p_message_text=>'manje od ili jednako %0'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724865401027703)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ne sadr\017Ei %0')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710646547027699)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'sr-latn'
,p_message_text=>'nije jednako %0'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724997277027703)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ne po\010Dinje sa %0')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725881715027703)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('po\010Dinje sa %0')
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723977874027703)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbor aspekta'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699715865027695)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prefiks za filtriranje "%0" nije va\017Ee\0107i za aspekt "%1".')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698119605027695)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'sr-latn'
,p_message_text=>'Prefiks za filtriranje nedostaje za aspekt "%0".'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732350155027705)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714239317027700)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('sadr\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713208118027699)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'sr-latn'
,p_message_text=>'jednako je'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713954336027700)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ve\0107e od')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714036407027700)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ve\0107e ili jednako')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713620387027700)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'sr-latn'
,p_message_text=>'manje od'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713787368027700)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'sr-latn'
,p_message_text=>'manje ili jednako'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724787494027703)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ne sadr\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713446432027700)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'sr-latn'
,p_message_text=>'nije jednako'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724668664027703)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ne po\010Dinje sa')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714116613027700)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('po\010Dinje sa')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732721146027705)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tip podataka %0 (%1) nije podr\017Ean za aspekt polja za unos.')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699679496027695)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Filter "%0" nije podr\017Ean za aspekt "%1" (tip podataka %2).')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732281561027705)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost'
,p_is_js_message=>true
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857545591027744)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije navedena nijedna kolona za pretragu za aspekt %0'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683781937027691)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Jo\0161 filtera')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810383665027730)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Detak opsega')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857021070027744)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'od %0 do %1'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857119378027744)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'sr-latn'
,p_message_text=>'Preko %0'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857225424027744)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'sr-latn'
,p_message_text=>'Ispod %0'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810412763027730)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'sr-latn'
,p_message_text=>'Kraj opsega'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875012634027749)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stavka liste vrednosti #%2 ("%1") za aspekt opsega %0 nije va\017Ee\0107a ("|" nedostaje razdelnik).')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857451976027744)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ru\010Dni unos za aspekt opsega %0 trenutno nije podr\017Ean, jer je kolona DATE ili TIMESTAMP.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856765986027744)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'do'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720344004027702)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni grafikon'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806750244027728)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetuj'
,p_version_scn=>2693545
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856124755027743)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856016214027743)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pretra\017Eivanje...')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856909930027744)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'sr-latn'
,p_message_text=>'- Izaberite -'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720138582027702)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei grafikon')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856505402027744)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei manje')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856658975027744)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei sve')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129856858001027744)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 zvezdica i vi\0161e')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812027747027730)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Filtriraj predloge'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857640665027744)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Aspekt tekstualnog polja %0 je trenutno podr\017Ean samo za kolone NUMBER.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683118503027690)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupan broj redova'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873037336027749)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tip podataka %0 (%1) nije podr\017Ean sa pretragu pomo\0107u aspekata.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803252259027727)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>'Vizuelno skriveno zaglavlje'
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865564146027746)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Idi na gre\0161ku')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821588992027733)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Agregacija.'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749493120027711)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>'Prazan naslov'
,p_is_js_message=>true
,p_version_scn=>2693533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830830985027736)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'sr-latn'
,p_message_text=>'Skupi kontrolni prelom'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821616966027733)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Kontrolni prelom.'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830770530027736)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161iri kontrolni prelom')
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830542345027736)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbrisanih redova: %0'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899691086027757)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'sr-latn'
,p_message_text=>'Duplikat identiteta'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692542531027693)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pristupanje re\017Eimu ure\0111ivanja')
,p_is_js_message=>true
,p_version_scn=>2693522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818407114027732)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Prvo'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691358060027693)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'sr-latn'
,p_message_text=>'Sakrij dijalog'
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690326354027692)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sadr\017Eaj plutaju\0107e \0107elije sa prelivanjem')
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691663815027693)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei sadr\017Eaj koji se preliva')
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765818031027716)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podno\017Eje mre\017Ee')
,p_is_js_message=>true
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821862491027733)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Zaglavlje grupe'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821716218027733)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Zaglavlje.'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818518106027732)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednje'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692722300027693)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Napu\0161tanje re\017Eima ure\0111ivanja')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717446143027701)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditaj sve')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840337937027739)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei vi\0161e')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818204936027732)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821997662027733)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Redovi stranice'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731046730027705)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'sr-latn'
,p_message_text=>'Stranica %0'
,p_is_js_message=>true
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818618997027732)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818765337027732)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 - %1 od %2'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875632871027749)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbor stranice'
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766181424027716)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'sr-latn'
,p_message_text=>'Numerisanje stranica'
,p_is_js_message=>true
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818354940027732)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodno'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716326027027700)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz opsega'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749703832027711)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbor redova'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899487804027757)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodato'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899587108027757)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'sr-latn'
,p_message_text=>'Promenjeno'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907837218027759)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Redosled redova u mre\017Ei %0, kolona %1.')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907905604027759)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Redosled redova u mre\017Ei %0.')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899309587027756)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbrisano'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822125669027733)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'sr-latn'
,p_message_text=>'Zaglavlje reda'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749615717027711)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbor reda'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717583852027701)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Izabrano: %0 %1'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817677205027732)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izabranih \0107elija: %0')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818874690027732)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Izabranih redova: %0'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860919247027745)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberi sve'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754469484027712)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberi sve redove'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830683878027736)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'sr-latn'
,p_message_text=>'Stranica %0'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822058677027733)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite red'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822321981027733)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sortirano po rastu\0107em redosledu %0')
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822407180027733)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sortirano po opadaju\0107em redosledu %0')
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817707478027732)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sortiraj rastu\0107e')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818081635027732)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sortiraj po rastu\0107em redosledu %0')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817866119027732)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sortiraj opadaju\0107e')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818176641027732)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sortiraj po opadaju\0107em redosledu %0')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817951194027732)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nemoj da sortira\0161')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683570000027690)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Opcije sortiranja'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765933631027716)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'sr-latn'
,p_message_text=>'Ikone stanja'
,p_is_js_message=>true
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766098952027716)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Status mre\017Ee')
,p_is_js_message=>true
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695825512027694)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695521796027694)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'sr-latn'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830423120027736)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupno %0'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749212513027711)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>'HTTP zahtev za "%0" nije uspeo.'
,p_version_scn=>2693532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750899335027711)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona %0'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751049500027711)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona %0 i red %1'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751332064027711)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ve\0107 na prvoj koloni. Kolona %0 i red %1')
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751233924027711)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ve\0107 na prvom redu. Kolona %0 i red %1')
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896873431027756)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'sr-latn'
,p_message_text=>'Predstavljeno u kolonama: %0 i redovima: %1'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751483835027711)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ve\0107 na poslednjoj koloni. Kolona %0 i red %1')
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751140021027711)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ve\0107 na poslednjem redu. Kolona %0 i red %1')
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830360701027736)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'sr-latn'
,p_message_text=>'Predstavljeno u redovima: %0'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750905984027711)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Red %0'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907699680027759)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Interaktivna mre\017Ea %0')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814778739027731)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815733329027731)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815639682027731)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj red'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901280818027757)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Agregiraj'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886843283027753)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Agregacija'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888524558027753)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Sve'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846131578027740)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Sve tekstualne kolone'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847375259027741)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Alternativno'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848469059027741)
,p_name=>'APEX.IG.AND'
,p_message_language=>'sr-latn'
,p_message_text=>'i'
,p_is_js_message=>true
,p_version_scn=>2693559
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867811424027747)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pribl. broj razli\010Ditih')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902232550027757)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ukupni pribl. broj razli\010Ditih')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885439522027752)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'sr-latn'
,p_message_text=>'Prostorni'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887375511027753)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Rastu\0107e')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847492157027741)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ovla\0161\0107enje')
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901337442027757)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'sr-latn'
,p_message_text=>'Automatski'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868273451027747)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'sr-latn'
,p_message_text=>'Prosek'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901911661027757)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupni prosek'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884967121027752)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Naslov ose za oznaku'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885165739027752)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Decimalna mesta'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885050924027752)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Naslov ose vrednosti'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891105327027754)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Boja pozadine'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885536626027752)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Trakasti'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842795351027739)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('izme\0111u')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892313807027754)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'sr-latn'
,p_message_text=>'Oboje'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885657544027752)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Balon\010Di\0107')
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815991729027731)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otka\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848327025027741)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Razlikuje mala i velika slova'
,p_is_js_message=>true
,p_version_scn=>2693559
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902820842027758)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'sr-latn'
,p_message_text=>'(Razlikuje mala i velika slova)'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874185675027749)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Promene su sa\010Duvane')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816312109027731)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Promeni prikaz'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849452523027741)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'sr-latn'
,p_message_text=>'Grafikon'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845940534027740)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Upit prema\0161uje maksimalan broj ta\010Daka podataka po grafikonu (%0). Primenite filter da biste smanjili broj zapisa u osnovnom upitu.')
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814688927027731)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz grafikona'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823062816027733)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884459930027752)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Zatvori'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891312184027754)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'sr-latn'
,p_message_text=>'Boje'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868686431027747)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Pregled'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847744782027741)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814846516027731)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolone'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776790898027719)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje na kolonama'
,p_is_js_message=>true
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776599112027719)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje za kolonu "%0"'
,p_is_js_message=>true
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893199693027755)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Svrha kolone'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847815228027741)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'sr-latn'
,p_message_text=>'Kompleksno'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815085466027731)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izra\010Dunaj')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843378443027740)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('sadr\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849644321027742)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'sr-latn'
,p_message_text=>'Kontrolni prelom'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822852286027733)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'sr-latn'
,p_message_text=>'Kopiraj u ostavu'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822973585027733)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'sr-latn'
,p_message_text=>'Kopiraj dole'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867600821027747)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867769964027747)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Broj razli\010Ditih')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902102861027757)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ukupni broj razli\010Ditih')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902056543027757)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupni broj'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899770464027757)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Kreiraj %0'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846373187027740)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'sr-latn'
,p_message_text=>'Podaci'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892964651027755)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tip podataka'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892540009027754)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Datum'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873902268027749)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107a vrednost datuma')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844087047027740)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'dan(a)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847092265027741)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podrazumevana pode\0161avanja')
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846810943027741)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Podrazumevani tip'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815849900027731)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izbri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894002619027755)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\017Delite li zaista da izbri\0161ete ovaj izve\0161taj?')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851433615027742)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izbri\0161i red')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850201280027742)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izbri\0161i redove')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887499206027753)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Opadaju\0107e')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849176992027741)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'sr-latn'
,p_message_text=>'Detalji'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814342137027731)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz detalja'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876475914027750)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Smer'
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848820576027741)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Onemogu\0107eno')
,p_is_js_message=>true
,p_version_scn=>2693560
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843416261027740)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ne sadr\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843689685027740)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ne po\010Dinje sa')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885799481027752)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'sr-latn'
,p_message_text=>'Prstenasti'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849843558027742)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'sr-latn'
,p_message_text=>'Preuzmi'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740167993027708)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'sr-latn'
,p_message_text=>'Samo podaci'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895049139027755)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>'Odaberite format'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755223505027712)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Format preuzimanja %0 nije omogu\0107en.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888125072027753)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Dupliraj agregaciju'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888242448027753)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'sr-latn'
,p_message_text=>'Dupliraj kontrolni prelom'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851344971027742)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Dupliraj red'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850141252027742)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>'Duplirani redovi'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815443188027731)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887221222027753)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi grafikon'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767703226027716)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi %0'
,p_is_js_message=>true
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898674874027756)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi grupisanje po elementu'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805835584027728)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u re\017Eimu ure\0111ivanja')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781441762027721)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Mre\017Ea je u re\017Eimu ure\0111ivanja, poni\0161tite pritiskanje da biste prebacili na re\017Eim prikaza')
,p_is_js_message=>true
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894607013027755)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'sr-latn'
,p_message_text=>'Skriveni dodatni primalac (bcc)'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894852881027755)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'sr-latn'
,p_message_text=>'Poruka'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894599868027755)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodatni primalac (cc)'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894207772027755)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'sr-latn'
,p_message_text=>'E-poruka je poslata.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894706701027755)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'sr-latn'
,p_message_text=>'Tema'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894498176027755)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'sr-latn'
,p_message_text=>'Primalac (za)'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848556596027741)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Omogu\0107eno')
,p_is_js_message=>true
,p_version_scn=>2693560
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841703623027739)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'sr-latn'
,p_message_text=>'jednako je'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848682919027741)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'sr-latn'
,p_message_text=>'Izraz'
,p_is_js_message=>true
,p_version_scn=>2693560
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893632272027755)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tip'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860852836027745)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Datoteka je pripremljena. Preuzimanje se pokre\0107e.')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823140369027733)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'sr-latn'
,p_message_text=>'Popuni'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825391560027734)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Popuni izbor sa'
,p_is_js_message=>true
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825235925027734)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbor popune'
,p_is_js_message=>true
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814969315027731)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847995917027741)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'sr-latn'
,p_message_text=>'Filteri'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901610933027757)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'sr-latn'
,p_message_text=>'Filter...'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887657661027753)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'sr-latn'
,p_message_text=>'Prvo'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815163271027731)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vra\0107anje u pro\0161lost')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846435981027741)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892217290027754)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'sr-latn'
,p_message_text=>'Maska formata'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893969217027755)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'sr-latn'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893867319027755)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'sr-latn'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804921441027728)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'sr-latn'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738859434027707)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'sr-latn'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851039468027742)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zamrzni'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848752467027741)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'sr-latn'
,p_message_text=>'Funkcije i operatori'
,p_is_js_message=>true
,p_version_scn=>2693560
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885818837027752)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Levak'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867539956027747)
,p_name=>'APEX.IG.GO'
,p_message_language=>'sr-latn'
,p_message_text=>'Idi'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842397805027739)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ve\0107e od')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842424557027739)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ve\0107e od ili jednako')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849021841027741)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Mre\017Ea')
,p_is_js_message=>true
,p_version_scn=>2693560
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814123424027731)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prikaz koordinatne mre\017Ee')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888459391027753)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'sr-latn'
,p_message_text=>'Grupa'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849239686027741)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Grupi\0161i prema')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814454578027731)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Grupi\0161i po prikazu')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892812288027755)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tip uslova'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891786956027754)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>'Naslov'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891981717027754)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'sr-latn'
,p_message_text=>'Poravnanje naslova'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901565253027757)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897067577027756)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Mo\017Eete da umetnete, a\017Eurirate i izbri\0161ete podatke direktno u okviru ove interaktivne mre\017Ee.</p>'),
'',
unistr('<p>Umetnite novi red tako \0161to \0107ete kliknuti na dugme Dodaj red.</p>'),
'',
unistr('<p>Uredite postoje\0107e podatke tako \0161to \0107ete dva puta kliknuti na odre\0111eno polje. Da biste izvr\0161ili obimnije ure\0111ivanje, kliknite na Uredi da biste pre\0161li u re\017Eim ure\0111ivanja. U re\017Eimu ure\0111ivanja, mo\017Eete da kliknete na pojedina\010Dno polje ili da koristite')
||unistr(' tastaturu za ure\0111ivanje odre\0111enih polja.</p>'),
'',
unistr('<p>Koristite meni Promeni da biste duplirali ili izbrisali redove. Da biste omogu\0107ili meni promena, koristite polja za potvrdu da biste izabrali jedan red ili vi\0161e njih.</p>'),
'',
unistr('<p>Duplirajte izabrani red tako \0161to \0107ete kliknuti na meni Promeni i izabrati Dupliraj redove. Izbri\0161ite izabrani red tako \0161to \0107ete kliknuti na meni Promeni i izabrati Izbri\0161i red.</p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899108161027756)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Funkcije ure\0111ivanja')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899202699027756)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interaktivna mre\017Ea predstavlja skup podataka u izve\0161taju koji mo\017Ee da se pretra\017Euje i prilagodi. Mo\017Eete da izvr\0161ite brojne operacije za ograni\010Davanje vra\0107enih zapisa i promenite na\010Din na koji se podaci prikazuju.</p>'),
'',
unistr('<p>Koristite polje za pretragu da biste filtrirali vra\0107ene zapise. Kliknite na Radnje da biste pristupili brojnim opcijama za izmenu rasporeda izve\0161taja ili koristite menije zaglavlja kolone za prikazane kolone.</p>'),
'',
unistr('<p>Koristite pode\0161avanja izve\0161taja da biste sa\010Duvali prilago\0111ena pode\0161avanja izve\0161taja. Mo\017Eete i da preuzmete podatke iz izve\0161taja u spoljnu datoteku ili da po\0161aljete podatke e-po\0161tom sebi ili drugima.</p>'),
'',
unistr('<p>Da biste saznali vi\0161e, pogledajte "Kori\0161\0107enje interaktivnih mre\017Ea" u <em>Vodi\010Du za krajnje korisnike usluge Oracle APEX</em>.')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898900172027756)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>'Pregled'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896993551027756)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Mo\017Eete da prilagodite interaktivnu mre\017Eu tako da prikazuje podatke na razli\010Dite na\010Dine pomo\0107u ugra\0111enih funkcija.</p>'),
'',
unistr('<p>Koristite menije za zaglavlje kolone ili meni sa radnjama da biste odredili kolone koje \0107e se prikazivati, prema kom redosledu i kolone koje se zamrzavaju. Mo\017Eete i da defini\0161ete razli\010Dite filtere podataka i sortirate vra\0107ene podatke.</p>'),
'',
unistr('<p>Koristite dugme Prikaz (pored polja za pretragu) da biste pristupili drugim prikazima podataka koje je mo\017Eda definisao programer aplikacije. Mo\017Eete i da kreirate grafikon ili pregledate postoje\0107i grafikon.</p>  '),
'',
unistr('<p><em>Napomena: Kliknite na <strong>Pomo\0107</strong> u dijalozima interaktivne mre\017Ee da biste dobili detaljnije informacije o izabranoj funkciji.</em></p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899035569027756)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Funkcije izve\0161tavanja')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850007307027742)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za interaktivnu mre\017Eu')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895813086027755)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Koristite ovaj dijalog za objedinjavanje kolona. Objedinjene vrednosti se prikazuju na dnu podataka ili ako su definisani prelomi kontrole, na kraju svakog preloma.</p>',
'',
'<p><strong>Lista objedinjavanja</strong><br>',
unistr('Lista objedinjavanja prikazuje definisana objedinjavanja. Onemogu\0107ite postoje\0107e objedinjavanje tako \0161to \0107ete poni\0161titi njegov izbor.<br>'),
unistr('Kliknite na Dodaj ( &plus; ) da biste kreirali novo objedinjavanje ili na Izbri\0161i ( &minus; ) da biste uklonili postoje\0107e objedinjavanje.</p>'),
'',
unistr('<p><strong>Pode\0161avanja objedinjavanja</strong><br>'),
'Koristite obrazac sa desne strane da biste definisali objedinjavanje.<br>',
'Izaberite ime kolone i tip objedinjavanja.<br>',
unistr('Opcionalno, mo\017Eete da unesete opis za objedinjavanje.<br>'),
unistr('Ako ste definisali prelom kontrole, ako izaberete <strong>Prika\017Ei ukupnu vrednost</strong> prikazuje se ukupna prose\010Dna, ukupna ili sli\010Dna vrednost na dnu podataka.</p>'),
'',
unistr('<p><em>Napomena: Pristupite dijalogu objedinjavanja u meniju sa radnjama ili tako \0161to \0107ete kliknuti na zaglavlje kolone i zbir ( &sum; ).</em></p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898032789027756)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za agregaciju')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896587591027756)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Koristite ovaj dijalog da biste definisali grafikon koji se prikazuje kao zaseban prikaz podataka.<br>',
'Izaberite Tip grafikona i atribute grafikona.</p>',
'<p><strong>Atributi grafikona</strong><br>',
'Dostupni atributi grafikona se razlikuju u zavisnosti od tipa grafikona.</p>',
'<p>',
'<ul>',
unistr('  <li>Izaberite kolonu koja sadr\017Ei vrednost za atribut:'),
'    <ul>',
unistr('      <li>Oznaka - tekst za svaku ta\010Dku podataka.</li>'),
unistr('      <li>Vrednost - podaci koji treba da se prika\017Eu.</li>'),
unistr('      <li>Serije - za definisanje dinami\010Dkog upita sa vi\0161e serija.</li>'),
unistr('      <li>Po\010Detna - po\010Detna dnevna cena akcija (samo za akcije).</li>'),
unistr('      <li>Zavr\0161na - zavr\0161na dnevna cena akcija (samo za akcije).</li>'),
'      <li>Visoka - visoka vrednost (samo za opseg i akcije).</li>',
'      <li>Niska - niska vrednost (samo za opseg i akcije).</li>',
'      <li>Obim - dnevni obim akcija (samo za akcije).</li>',
'      <li>Cilj - ciljna vrednost (samo levkasti grafikoni).</li>',
unistr('      <li>X - vrednost x ose (samo grafikon sa mehuri\0107ima i ta\010Dkasti grafikon).</li>'),
unistr('      <li>Y - vrednost y ose (samo grafikon sa mehuri\0107ima i ta\010Dkasti grafikon).</li>'),
unistr('      <li>Z - \0161irina trake ili pre\010Dnik mehuri\0107a (samo trakasti grafikon, grafikon sa mehuri\0107ima i grafikon opsega).</li>'),
'    </ul>',
'  </li>',
'  <li>Orijentacija - uspravna ili vodoravna.</li>',
unistr('  <li>Objedinjavanje - izaberite na\010Din objedinjavanja vrednosti grafikona.</li>'),
unistr('  <li>Naslagano - navedite da li se stavke podataka sla\017Eu.</li>'),
'  <li>Sortiraj po - sortirajte po oznaci ili vrednostima.',
'    <ul>',
unistr('      <li>Smer - sortiranje vrednosti po rastu\0107em ili opadaju\0107em redosledu.</li>'),
unistr('      <li>Vrednosti null - odredite kako se sortiraju zapisi sa vrednostima null u odnosu na zapise \010Dija vrednost nije null.</li>'),
'    </ul>',
'  </li>',
'  <li>Decimalna mesta</li>',
'  <li>Naslov ose oznake</li>',
'  <li>Naslov ose vrednosti</li>',
'</ul>',
'</p>'))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898400701027756)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za grafikone')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895515264027755)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Koristite ovaj dijalog da odaberete kolone koje \0107e se prikazivati i prema kom redosledu.</p>'),
'',
unistr('<p>Sakrijte kolonu tako \0161to \0107ete poni\0161titi njen izbor.<br>'),
unistr('Preuredite kolone tako \0161to \0107ete kliknuti na Premesti nagore ( &uarr; ) ili Premesti nadole ( &darr; ).<br>'),
unistr('Koristite bira\010D sa padaju\0107om listom da biste naveli Sve kolone, Prikazane kolone ili Kolone koje nisu prikazane.</p>'),
'',
unistr('<p>Opcionalno, koristite obrazac da biste naveli minimalnu \0161irinu kolone u pikselima.</p>'),
'',
unistr('<p><em>Napomena: Prikazane kolone mo\017Eete da preuredite i tako \0161to \0107ete kliknuti na ru\010Dku za prevla\010Denje (na po\010Detku zaglavlja kolone) i prevu\0107i kolonu nalevo ili nadesno. Mo\017Eete i da promenite \0161irinu kolone za prikazane kolone tako \0161to \0107ete izabrati ')
||unistr('razdelnik kolone, izme\0111u zaglavlja, i pomeriti ga nalevo ili nadesno.</em></p>')))
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898342475027756)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za kolone')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895922317027755)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Koristite ovaj dijalog da biste definisali dodatne kolone na osnovu matemati\010Dkih i funkcionalnih prora\010Duna koji se vr\0161e za postoje\0107e kolone.</p>'),
'',
unistr('<p><strong>Lista prora\010Duna</strong><br>'),
unistr('Lista prora\010Duna prikazuje definisane prora\010Dune. Onemogu\0107ite postoje\0107i prora\010Dun tako \0161to \0107ete poni\0161titi njegov izbor.<br>'),
unistr('Kliknite na Dodaj ( &plus; ) da biste dodali novi prora\010Dun ili Izbri\0161i ( &minus; ) da biste uklonili postoje\0107i prora\010Dun.</p>'),
'',
unistr('<p><strong>Pode\0161avanja prora\010Duna</strong><br>'),
unistr('Koristite obrazac za definisanje prora\010Duna.<br>'),
unistr('Unesite detalje kolone, kao \0161to su zaglavlje, oznaka i izaberite pode\0161avanja uskla\0111ivanja.<br> '),
unistr('Koristite oblast za tekst izraza da biste uneli kolone i povezane funkcije za prora\010Dun.<br>'),
unistr('Izaberite odgovaraju\0107i tip podataka i opcionalno masku formata za novu kolonu.</p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897983811027756)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za izra\010Dunavanje')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896246202027756)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Koristite ovaj dijalog da biste definisali prelom kontrole na jednoj koloni ili vi\0161e njih.</p>'),
'',
'<p><strong>Lista preloma kontrole</strong><br>',
unistr('Lista preloma kontrole prikazuje definisane prelome kontrole. Onemogu\0107ite postoje\0107i prelom kolone tako \0161to \0107ete poni\0161titi njegov izbor.<br>'),
unistr('Kliknite na Dodaj ( &plus; ) da biste uvrstili novu kolonu u prelom kontrole ili Izbri\0161i ( &minus; ) da biste uklonili postoje\0107u kolonu iz preloma kontrole.<br>'),
'Da biste preuredili kolone, kliknite na Premesti nagore ( &uarr; ) ili Premesti nadole ( &darr; ) da biste pomerili izabranu kolonu nagore ili nadole u odnosu na druge kolone.</p>',
'',
unistr('<p><strong>Pode\0161avanja preloma kontrole</strong><br>'),
'Koristite obrazac za definisanje kolone preloma kontrole.<br>',
unistr('Izaberite kolonu preloma kontrole, smer sortiranja i na\010Din raspore\0111ivanja kolona sa vredno\0161\0107u null (kolona bez vrednosti).</p>'),
'',
unistr('<p><em>Napomena: Kada pregledate interaktivnu mre\017Eu, mo\017Eete da defini\0161ete prelom kontrole tako \0161to \0107ete kliknuti na zaglavlje kolone i izabrati ikonu preloma kontrole.</em></p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897616216027756)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za kontrolni prelom')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896423191027756)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Koristite ovaj dijalog za preuzimanje svih trenutnih redova u spoljnu datoteku. Datoteka \0107e sadr\017Eati samo trenutno prikazane kolone, koriste\0107i filtere i sortiranja koja su primenjena na podatke.</p>'),
'',
'<p>Izaberite format datoteke i kliknite na Preuzmi.<br>',
unistr('Napomena: CSV datoteka ne obuhvata formatiranje teksta, kao \0161to su objedinjavanja i prelomi kontrole.</p>'),
'',
unistr('<p>Da biste poslali datoteku e-po\0161tom, izaberite Po\0161alji kao e-poruku i unesite detalje e-poruke (primalac, tema i poruka).</p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897482249027756)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za preuzimanje')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895670128027755)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Koristite ovaj dijalog za konfigurisanje filtera podataka koji ograni\010Davaju vra\0107ene redove.</p>'),
'',
'<p><strong>Lista filtera</strong><br>',
unistr('Lista filtera prikazuje definisane filtere. Onemogu\0107ite postoje\0107i filter tako \0161to \0107ete poni\0161titi njegov izbor.<br>'),
unistr('Kliknite na Dodaj ( &plus; ) da biste kreirali novi filter ili na Izbri\0161i ( &minus; ) da biste uklonili postoje\0107i filter.</p>'),
'',
unistr('<p><strong>Pode\0161avanja filtera</strong><br>'),
'Koristite obrazac za definisanje svojstava filtera.<br>',
unistr('Izaberite odgovaraju\0107i tip filtera:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Red - filter za pojam u bilo kojoj koloni koja mo\017Ee da se filtrira.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Kolona - filtrirajte odre\0111enu kolonu sa navedenim operatorom i vredno\0161\0107u.</p>'),
'',
unistr('<p><em>Napomena: Kada pregledate interaktivnu mre\017Eu, mo\017Eete da defini\0161ete filtere reda tako \0161to \0107ete unositi tekst direktno u polje za pretragu. Kliknite na Izaberite kolone za pretragu da biste ograni\010Dili pretragu na odre\0111enu kolonu. Pored toga, mo\017E')
||'ete da otvorite meni zaglavlja kolone i izaberete vrednost da biste kreirali filter kolone.</em></p>'))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898200829027756)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za filtere')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896026239027756)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Koristite ovaj dijalog za pregled podataka u obliku u kom su postojali u nekom ranijem vremenskom trenutku.</p>',
unistr('<p>Unesite broj minuta u pro\0161losti da biste izvr\0161ili upit vra\0107anja u pro\0161lost.</p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897884553027756)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za vra\0107anje u pro\0161lost')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898516315027756)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za grupisanje po elementu')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896163646027756)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Koristite ovaj dijalog za isticanje redova ili kolona podataka na osnovu unetog uslova.</p>',
'',
'<p><strong>Lista isticanja</strong><br>',
unistr('Lista isticanja prikazuje definisana isticanja. Onemogu\0107ite postoje\0107e isticanje tako \0161to \0107ete poni\0161titi njegov izbor.<br>'),
unistr('Kliknite na Dodaj ( &plus; ) da biste kreirali novo isticanje ili Izbri\0161i ( &minus; ) da biste uklonili postoje\0107e isticanje.</p>'),
'',
unistr('<p><strong>Pode\0161avanja isticanja</strong><br>'),
'Koristite obrazac za definisanje svojstava isticanja.<br>',
unistr('Unesite ime, izaberite Red ili Kolona i izaberite HTML \0161ifre boja za pozadinu i tekst.<br>'),
unistr('Izaberite odgovaraju\0107i <strong>Tip uslova</strong> za isticanje odre\0111enih podataka:<br>'),
'&nbsp;&nbsp;&nbsp;Red - istaknite pojam u bilo kojoj koloni.<br>',
unistr('&nbsp;&nbsp;&nbsp;Kolona - isticanje u okviru odre\0111ene kolone na osnovu odre\0111enog operatora i vrednosti.</p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897739847027756)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za istaknute stavke')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896373610027756)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Koristite ovaj dijalog da biste sa\010Duvali promene koje ste napravili na trenutnom rasporedu i konfiguraciji mre\017Ee.<br>'),
unistr('Programeri aplikacije mogu da defini\0161u vi\0161e alternativnih rasporeda izve\0161taja. Tamo gde je dozvoljeno, vi i drugi krajnji korisnici mo\017Eete da sa\010Duvate izve\0161taj kao Javan, \010Dime izve\0161taj postaje dostupan svim drugim korisnicima mre\017Ee. Mo\017Eete i da sa\010Duv')
||unistr('ate izve\0161taj kao Privatan tako da samo vi mo\017Eete da ga vidite.</p>'),
unistr('<p>Izaberite jedan od dostupnih tipova i unesite ime za sa\010Duvani izve\0161taj.</p>')))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897538744027756)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pomo\0107 za izve\0161taje'),
''))
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895747112027755)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Koristite ovaj dijalog da biste podesili raspored prikazivanja.</p>',
'',
'<p><strong>Lista sortiranja</strong><br>',
'Dijalog Sortiranje prikazuje listu konfigurisanih pravila sortiranja.<br>',
unistr('Kliknite na Dodaj ( &plus; ) da biste kreirali kolonu za sortiranje ili Izbri\0161i ( &minus; ) da biste uklonili kolonu za sortiranje.<br>'),
'Kliknite na Premesti nagore ( &uarr; ) i Premesti nadole ( &darr; ) da biste pomerili izabrane kolone za sortiranje nagore i nadole u odnosu na druge kolone za sortiranje.</p>',
'',
unistr('<p><strong>Pode\0161avanje sortiranja</strong><br>'),
unistr('Izaberite kolonu za sortiranje, smer sortiranja i na\010Din na koji se raspore\0111uju kolone sa vredno\0161\0107u null (kolone bez vrednosti).</p>'),
'',
unistr('<p><em>Napomena: Podaci mogu da se sortiraju prema kolonama koje se ne prikazuju. Me\0111utim, mo\017Eda ne mogu sve kolone da se sortiraju.</em><br>'),
unistr('<em>Prikazane kolone mogu da se sortiraju pritiskom na strelicu nagore (rastu\0107e) ili nadole (opadaju\0107e) na kraju zaglavlja kolone. Da biste dodali dodatnu kolonu postoje\0107em sortiranju, pritisnite i zadr\017Eite taster Shift i kliknite na strelicu nagore ')
||'ili nadole.</em></p>'))
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898198279027756)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za sortiranje')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897303787027756)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za pretplatu')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850912226027742)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'sr-latn'
,p_message_text=>'Sakrij'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815396731027731)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>'Istakni'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884563803027752)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Visoko'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885359820027752)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Horizontalno'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843909699027740)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\010D.')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848925121027741)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'sr-latn'
,p_message_text=>'Ikona'
,p_is_js_message=>true
,p_version_scn=>2693560
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814275353027731)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz ikona'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842123034027739)
,p_name=>'APEX.IG.IN'
,p_message_language=>'sr-latn'
,p_message_text=>'u'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850542119027742)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neaktivno pode\0161avanje')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850688242027742)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neaktivna pode\0161avanja')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858272157027744)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do interne gre\0161ke prilikom obrade zahteva interaktivne mre\017Ee.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746178436027710)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tip filtera kolone "%0" nije podr\017Ean za kolonu "%1".')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129897187594027756)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i format datuma')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871905740027748)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Interaktivna mre\017Ea ne podr\017Eava definisanje filtera za kolonu %0.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871809555027748)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 nije va\017Ee\0107i tip filtera za definisanje filtera interaktivne mre\017Ee.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752729068027712)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i format broja')
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899811609027757)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107e pode\0161avanje')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129899970256027757)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107a pode\0161avanja')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891005151027754)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Opcija Sortiraj po je pode\0161ena na %0, ali za %0 nije izabrana nijedna kolona.')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888356990027753)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107a vrednost')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883413700027752)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije prikazano'
,p_is_js_message=>true
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842964368027739)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'tokom proteklih'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843185774027739)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('u slede\0107ih')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842024182027739)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'nije prazno'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841931646027739)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'prazno je'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891854437027754)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Oznaka'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883840961027752)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Oznaka'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887756378027753)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednje'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832268238027736)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodni dan'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832468538027736)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednji sat'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832933023027736)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednji minut'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831946760027736)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161li mesec')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832085986027736)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161la nedelja')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832135384027736)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko dana (%0)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832320805027736)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko sati (%0)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833035663027736)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko minuta (%0)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832805403027736)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko meseci (%0)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832719326027736)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko nedelja (%0)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831742040027736)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko godina (%0)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831888599027736)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161la godina')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892001865027754)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Poravnanje \0107elije')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892159943027754)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Koristi grupu za'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842582595027739)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'sr-latn'
,p_message_text=>'manje od'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842621984027739)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'sr-latn'
,p_message_text=>'manje od ili jednako'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885903447027752)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'sr-latn'
,p_message_text=>'Linijski'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886027232027753)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Linijski sa povr\0161inom')
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892422939027754)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'sr-latn'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884642085027752)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Nisko'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894967242027755)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ve\0107i broj adresa razdvojite zarezima')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843705152027740)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('podudara se sa uobi\010Dajenim izrazom')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868109363027747)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'sr-latn'
,p_message_text=>'Maksimum'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902431742027757)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupni maksimum'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868310697027747)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'sr-latn'
,p_message_text=>'Srednja vrednost'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902541594027757)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupna srednja vrednost'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868062008027747)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'sr-latn'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843860217027740)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>'min.'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868804589027747)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pre vi\0161e minuta')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902395475027757)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupni minimum'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844266091027740)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>'mes.'
,p_is_js_message=>true
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850829033027742)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Broj redova (%0) koje sadr\017Ee ovi podaci prema\0161uje dozvoljeni maksimum. Primenite dodatne filtere da biste videli rezultate.')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876660862027750)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stati\010Dki ID regiona mora da se navede jer stranica sadr\017Ei vi\0161e interaktivnih mre\017Ea.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846930953027741)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'sr-latn'
,p_message_text=>'Ime'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847145715027741)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Imenovani izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831121117027736)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i dan')
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830923068027736)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i sat')
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833102045027736)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i minut')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831473475027736)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i mesec')
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831369613027736)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107a nedelja')
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831264316027736)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko dana (%0)')
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831060637027736)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko sati (%0)')
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833207967027736)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko minuta (%0)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832578578027736)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko meseci (%0)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129832687425027736)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko nedelja (%0)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831664069027736)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko godina (%0)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129831581991027736)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107a godina')
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842874939027739)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('nije izme\0111u')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841857068027739)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'sr-latn'
,p_message_text=>'nije jednako'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906615004027759)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Region sa ID-om %0 nije u regionu interaktivne mre\017Ee ili ne postoji u aplikaciji %1.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129842279158027739)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'sr-latn'
,p_message_text=>'nije u'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843045946027739)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'nije tokom proteklih'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843223569027740)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('nije u slede\0107ih')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850778631027742)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podaci nisu prona\0111eni')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887552307027753)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'sr-latn'
,p_message_text=>'Null vrednosti'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892606550027754)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Numeri\010Dko')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887839314027753)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Isklju\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887928462027753)
,p_name=>'APEX.IG.ON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841081465027739)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre 1 minuta'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895452469027755)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otvori bira\010D boja: %0')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884393152027752)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Otvori'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848040618027741)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883701703027752)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Orijentacija'
,p_is_js_message=>true
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886189609027753)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kru\017Eni')
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849303756027741)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'sr-latn'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814519601027731)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz pivota'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895320084027755)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'sr-latn'
,p_message_text=>'Razdvojite vrednosti znakom "%0"'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886298341027753)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Polarni'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891557455027754)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Sredina'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891645980027754)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'sr-latn'
,p_message_text=>'Kraj'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891452325027754)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Detak')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847212682027741)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'sr-latn'
,p_message_text=>'Primarno'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847515654027741)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>'Primarno podrazumevano'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864058010027746)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Primarni izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737639151027707)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obuhvati oznake pristupa\010Dnosti')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735035588027706)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Polo\017Eeno')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735101889027706)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'sr-latn'
,p_message_text=>'Uspravno'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734927421027706)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'sr-latn'
,p_message_text=>'Orijentacija stranice'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734818797027706)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'sr-latn'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734765315027706)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'sr-latn'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737847741027707)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prilago\0111eno')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734544533027706)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'sr-latn'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734497711027706)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'sr-latn'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734660879027706)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'sr-latn'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734340565027706)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Veli\010Dina stranice')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699990765027695)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ukloni oboga\0107eni tekst')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886328280027753)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Radarski'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886491538027753)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Opseg'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896667423027756)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Osve\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851549167027742)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Osve\017Ei red')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850313218027742)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Osve\017Ei redove')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855505747027743)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Region interaktivne mre\017Ee ne postoji u aplikaciji %0, stranici %1 i regionu %2.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816057987027731)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni: %0'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846692968027741)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905859550027759)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj je izbrisan')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905533389027758)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Alternativni izve\0161taj je sa\010Duvan za sve korisnike')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905415462027758)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podrazumevani izve\0161taj je sa\010Duvan za sve korisnike')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905752181027758)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Privatni izve\0161taj je sa\010Duvan')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905686654027758)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Javni izve\0161taj je sa\010Duvan za sve korisnike')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855692572027743)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvana interaktivna mre\017Ea pod imenom %0 ne postoji.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840917957027739)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podaci koordinatne mre\017Ee od pre %0 minuta')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840847511027739)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podaci koordinatne mre\017Ee od pre 1 minuta')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776398230027719)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj interaktivne mre\017Ee ne postoji.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898872833027756)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj - uredi')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855444221027743)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvana interaktivna mre\017Ea sa ID-om %0 ne postoji.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129898707070027756)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj - sa\010Duvaj kao')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816175485027731)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161avanja koordinatne mre\017Ee')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906766278027759)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvana interaktivna mre\017Ea sa stati\010Dkim ID-om %0 ne postoji.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901764139027757)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prikaz izve\0161taja')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815205963027731)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetuj'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851622745027742)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrati promene'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129850480468027742)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrati redove'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129847691532027741)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Red'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846522439027741)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj redova po stranici'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906361325027759)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje na redovima'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907506513027759)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje za red %0'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129815518997027731)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860633175027745)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('sa\010Duvano')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765269142027716)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvani izve\0161taj: %0')
,p_is_js_message=>true
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813793300027731)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvani izve\0161taji')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813810961027731)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>'Podrazumevano'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787385442027722)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvani izve\0161taj pod imenom %0 ve\0107 postoji. Unesite novo ime.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813940136027731)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Privatno'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129814011001027731)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'sr-latn'
,p_message_text=>'Javno'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901485377027757)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj kao')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849785618027742)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj pode\0161avanja izve\0161taja')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886533808027753)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Rasuti'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813607775027731)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893773110027755)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga: sve tekstualne kolone'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813536032027730)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga: %0'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893029625027755)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga: ceo tekst'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840783418027739)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111i ''%0''')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883139226027752)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'sr-latn'
,p_message_text=>'- Izaberite -'
,p_is_js_message=>true
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823227510027733)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbor'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876309667027750)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izaberite 1 red u nadre\0111enom regionu')
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813430858027730)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite kolone za pretragu'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906065074027759)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje izbora'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823461543027734)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izbor \0107elije')
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823398985027733)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbor reda'
,p_is_js_message=>true
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894388198027755)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161alji e-po\0161tom')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886973987027753)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Serija'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811109540027730)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866344467027747)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei ukupnu vrednost')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851271679027742)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz jednog reda'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849530175027741)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'sr-latn'
,p_message_text=>'Sortiraj'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887085303027753)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'sr-latn'
,p_message_text=>'Sortiraj po'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906499370027759)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U svakoj koloni mo\017Eete da defini\0161ete samo jedno sortiranje.')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906258819027759)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>'Promena'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888091649027753)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'sr-latn'
,p_message_text=>'Stek'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129843515376027740)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('po\010Dinje sa')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129886653598027753)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'sr-latn'
,p_message_text=>'Zalihe'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805990002027728)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Razvuci \0161irine kolona')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129849980780027742)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretplata'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867902439027747)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'sr-latn'
,p_message_text=>'Zbir'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907763478027759)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Interaktivni izve\0161taj o mre\017Ei: %0, prikaz: %1.')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901845535027757)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupni zbir'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884821823027752)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Cilj'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129891286299027754)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Boja teksta'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816200963027731)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Di/isklju\010Di')
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698390624027695)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Mre\017Ea')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866284618027747)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'sr-latn'
,p_message_text=>'Opis alatke'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846726252027741)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tip'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851111882027742)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'sr-latn'
,p_message_text=>'Odmrzni'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848266388027741)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'sr-latn'
,p_message_text=>'Jedinica'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129894177345027755)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Postoje nesa\010Duvane promene. \017Delite li da nastavite?')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129848121510027741)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost'
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883973348027752)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888824136027753)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost je obavezna.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874044578027749)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vrednost (vremenska zona ne mo\017Ee da se promeni)')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129892767677027755)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'sr-latn'
,p_message_text=>'Tekst'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129885294197027752)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Vertikalno'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846215707027740)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781378830027721)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Mre\017Ea u re\017Eimu prikaza, pritisnite za ure\0111ivanje')
,p_is_js_message=>true
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883249284027752)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikazano'
,p_is_js_message=>true
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884763843027752)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Obim'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844166394027740)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>'ned.'
,p_is_js_message=>true
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883343957027752)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Minimalna \0161irina kolone (pikseli)')
,p_is_js_message=>true
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835345396027737)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 je izme\0111u %1 i %2')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835091353027737)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 sadr\017Ei %1')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835140125027737)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne sadr\017Ei %1')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810523400027730)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne po\010Dinje sa %1')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833847873027737)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 je jednako %1'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834003321027737)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 je ve\0107e od %1')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834199917027737)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 je ve\0107e ili jednako %1')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834894408027737)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u %1'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836056838027737)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednjih nekoliko dana (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835893257027737)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku poslednjih nekoliko \010Dasova (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835669669027737)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednjih nekoliko minuta (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836432041027737)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednjih nekoliko meseci (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836214817027737)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednjih nekoliko nedelja (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836669372027738)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednjih nekoliko godina (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835901054027737)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednjeg dana'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835735963027737)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku poslednjeg \010Dasa')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835507263027737)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednjeg minuta'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836355355027737)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednjeg meseca'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836165206027737)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednje nedelje'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836546891027737)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 u toku poslednje godine'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838408232027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107ih nekoliko dana (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838230717027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107ih nekoliko \010Dasova (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838023964027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107ih  nekoliko minuta (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838829688027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107ih nekoliko meseci (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838628861027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107ih nekoliko nedelja (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839006533027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107ih nekoliko godina (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838357149027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107eg dana')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838125322027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107eg \010Dasa')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837980566027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107eg minuta')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838799256027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107eg meseca')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838536667027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107e nedelje')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129838936714027738)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 u toku slede\0107e godine')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834555664027737)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 nije prazno'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834462020027737)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 je prazno'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834234650027737)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 je manje od %1'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834391476027737)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 manje ili jednako %1'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834669596027737)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 je kao %1'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835230664027737)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 se podudara sa uobi\010Dajenim izrazom %1')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841163759027739)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre %0 min.'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129835442410027737)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 nije izme\0111u %1 i %2')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833911766027737)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 nije jednako %1'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834950395027737)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 nije u %1'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837278853027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednjih nekoliko dana (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837082150027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku poslednjih nekoliko \010Dasova (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836882321027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednjih nekoliko minuta (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837628044027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednjih nekoliko meseci (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837436506027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednjih nekoliko nedelja (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837812962027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednjih nekoliko godina (%1)'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837155174027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednjeg dana'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836979005027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku poslednjeg \010Dasa')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129836795487027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednjeg minuta'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837576277027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednjeg meseca'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837320975027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednje nedelje'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129837778605027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ne u toku poslednje godine'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839665284027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107ih nekoliko dana (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839425869027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107ih nekoliko \010Dasova (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839227698027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107ih nekoliko minuta (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840043644027739)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107ih nekoliko meseci (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839849728027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107ih nekoliko nedelja (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840226004027739)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107ih nekoliko godina (%1)')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839527340027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107eg dana')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839300802027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107eg \010Dasa')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839198808027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107eg minuta')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839923999027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107eg meseca')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129839791879027738)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107e nedelje')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840152831027739)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne u toku slede\0107e godine')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129834731901027737)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 nije kao %1'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841668131027739)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 po\010Dinje sa %1')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884020477027752)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844319543027740)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>'god.'
,p_is_js_message=>true
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884186147027752)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129884212710027752)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693565
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893281486027755)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'sr-latn'
,p_message_text=>'ponedeljak, 12. januar 2016.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893363859027755)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'sr-latn'
,p_message_text=>'januar'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893400580027755)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pre 16 \010D.')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129893501122027755)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('za 16 \010D.')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711555763027699)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'sr-latn'
,p_message_text=>'Primeni'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703527863027696)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Prevucite sliku, pa upotrebite kliza\010D za zumiranje da biste je premestili u okviru kadra.</p>'),
'',
unistr('<p>Kada je alatka za opsecanje slike u fokusu, dostupne su slede\0107e pre\010Dice na tastaturi:</p>'),
'<ul>',
'    <li>Strelica ulevo: Pomeranje slike ulevo*</li>',
'    <li>Strelica nagore: Pomeranje slike nagore*</li>',
'    <li>Strelica udesno: Pomeranje slike udesno*</li>',
'    <li>Strelica nadole: Pomeranje slike nadole*</li>',
unistr('    <li>I: Uve\0107avanje prikaza</li>'),
'    <li>O: Umanjivanje prikaza</li>',
'    <li>L: Rotiranje ulevo</li>',
'    <li>R: Rotiranje udesno</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Dr\017Eite taster Shift da biste br\017Ee pomerali</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703760435027697)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za opsecanje slike')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711693155027699)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetuj'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704070849027697)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Opsecanje slike'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711720545027699)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomerajte kliza\010D da biste prilagodili nivo zumiranja')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741329072027708)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i tip datoteke. Podr\017Eani tipovi datoteke: %0.')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875774285027749)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875492767027749)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Odaberite datoteku'
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875536517027749)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'sr-latn'
,p_message_text=>'Odaberite datoteke'
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741157109027708)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Prevucite i otpustite'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741579011027708)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'sr-latn'
,p_message_text=>'Prevucite i otpustite datoteke'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742970241027709)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite datoteku ili je otpustite ovde.'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743083787027709)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite ili prevucite datoteke ovde.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743173462027709)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite datoteku ili je otpustite ovde.'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743260853027709)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite ili prevucite datoteke ovde.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741457486027708)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj datoteka: %0'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741298567027708)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Datoteka je prevelika. Maksimalna veli\010Dina datoteke je %0.')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721745419027702)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otpremanje vi\0161e datoteka nije podr\017Eano.')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704612577027697)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710187330027698)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Adresa je obavezna.'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709077694027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'sr-latn'
,p_message_text=>'Grad'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709469705027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'sr-latn'
,p_message_text=>'Pozivni broj za zemlju'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709112487027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ku\0107ni broj')
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710020399027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Geografska \0161irina')
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709969232027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Geografska du\017Eina')
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709853378027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei na mapi')
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709560557027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ocena'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709257463027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161tanski broj')
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709324593027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Status'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708939254027698)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'sr-latn'
,p_message_text=>'Ulica'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708859320027698)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Rezultati geografskog \0161ifrovanja.')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740398788027708)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa geografskom \0161ifrom')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740417015027708)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Bez geografske \0161ifre')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709717305027698)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129709602946027698)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111ena adresa.')
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710214013027699)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 je obavezno.'
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816494411027731)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ili %1 su obavezni.'
,p_is_js_message=>true
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905903335027759)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pogledajte tekst pomo\0107i za %0.')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711977601027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Odaberite sliku'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712089002027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'sr-latn'
,p_message_text=>'Odaberite slike'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711884187027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Preuzmi'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712173978027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Prevucite i otpustite'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712291115027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'sr-latn'
,p_message_text=>'Prevucite i otpustite slike'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712384073027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite sliku ili je otpustite ovde.'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712478662027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite slike ili ih otpustite ovde.'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712544659027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite sliku ili je otpustite ovde.'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712691263027699)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite slike ili ih otpustite ovde.'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797337752027726)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ozna\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797430150027726)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neozna\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824949729027734)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prazan kombinovani okvir samo za \010Ditanje')
,p_version_scn=>2693550
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822731606027733)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prazan okvir liste samo za \010Ditanje')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822593639027733)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kombinovani okvir samo za \010Ditanje')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129822604877027733)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Okvir liste samo za \010Ditanje')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738395150027707)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# nije u va\017Ee\0107em opsegu od %0 do %1.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738414638027707)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost #LABEL# nije deljiva sa %0.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825719302027734)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prekida\010D samo za \010Ditanje')
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766320334027716)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Samo za \010Ditanje - ure\0111ivanje sa vezom')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737919299027707)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>'#LABEL# mora da se podudara sa vrednostima %0 i %1.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738122431027707)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ne'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824421999027734)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Isklju\010Deno')
,p_version_scn=>2693550
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824590601027734)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Deno')
,p_version_scn=>2693550
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738051457027707)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Da'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745968120027710)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Bira\010D jezika')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682388142027690)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj unos'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859189818027744)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859221897027744)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682497400027690)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'sr-latn'
,p_message_text=>'Izabrani unosi'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862987416027746)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'sr-latn'
,p_message_text=>'Napredno'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863213162027746)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otka\017Ei')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863057395027746)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Op\0161te')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863335199027746)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Aktivne opcije \0161ablona')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863939978027746)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Opcije \0161ablona nisu dostupne jer se ova komponenta ne prikazuje na stranici.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862826280027745)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111ena nijedna opcija \0161ablona.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863178610027746)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716946595027701)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i krug')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719304400027701)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prilago\0111eni stilovi nisu va\017Ee\0107i JSON.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717245747027701)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'sr-latn'
,p_message_text=>'Alatka za rastojanje'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717017926027701)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Nacrtaj krug'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696856391027694)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Aktuelna lokacija'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703241753027696)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Koordinate po\010Detnog polo\017Eaja nisu va\017Ee\0107e.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692297756027693)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Detni polo\017Eaj mora da bude geometrija ta\010Dke.')
,p_version_scn=>2693522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700814419027696)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'sr-latn'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696012300027694)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'sr-latn'
,p_message_text=>'Sloj'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866435127027747)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'sr-latn'
,p_message_text=>'Sloj: %0'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715285760027700)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'sr-latn'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684958207027691)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'sr-latn'
,p_message_text=>'Poruke'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701076165027696)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'sr-latn'
,p_message_text=>' milj.'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865471681027746)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Broj redova koji podaci sadr\017Ee je %0, \0161to prema\0161uje maksimalni dozvoljeni broj.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695316696027694)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>'&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Uslovi</a> &nbsp;&nbsp; Podaci mape &copy; 2021. OVDE'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691942879027693)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tip podataka SDO_GEOMETRY nije dostupan u ovoj bazi podataka.'
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695434618027694)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap - saradnici </a>'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720051671027702)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap - saradnici </a>'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696270049027694)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ta\010Dke')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866532220027747)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ta\010Daka: %0')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717179548027701)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pravougaono uve\0107anje')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716893738027701)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696685644027694)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetovanje smera na sever'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811467873027730)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Di 2D re\017Eim')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811535793027730)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Di 3D re\017Eim')
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716770936027701)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Di/isklju\010Di obave\0161tenje o autorskom pravu')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717315700027701)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupna udaljenost'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696331382027694)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uve\0107aj')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696582761027694)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'sr-latn'
,p_message_text=>'Umanji'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861097589027745)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'sr-latn'
,p_message_text=>'Podebljano'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861955430027745)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Slika'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861577265027745)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'sr-latn'
,p_message_text=>'Umetnut kod'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874276843027749)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Umetni sliku'
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874303826027749)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'sr-latn'
,p_message_text=>'Umetni vezu'
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861114041027745)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'sr-latn'
,p_message_text=>'Kurziv'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874953494027749)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'sr-latn'
,p_message_text=>'Veza'
,p_is_js_message=>true
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861854565027745)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Lista'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861711626027745)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Lista sa rednim brojevima'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861283990027745)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Pregled'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861398264027745)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nema ni\010Dega za pregled')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861414334027745)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'sr-latn'
,p_message_text=>'Precrtano'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129861610513027745)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neure\0111ena lista')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840500478027739)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>'trenutno'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129896755105027756)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vi\0161e...')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840452489027739)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditavanje')
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754619242027712)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'sr-latn'
,p_message_text=>'Dugme za deljenje'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754543707027712)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>'Meni za deljenje'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871549089027748)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Poruka obave\0161tenja')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695685564027694)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111ena nijedna stavka tipa %0')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845573795027740)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>'#LABEL# mora da bude broj koji je manji od ili jednak %0.'
,p_is_js_message=>true
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845696632027740)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# mora da bude va\017Ee\0107i broj.')
,p_is_js_message=>true
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845713566027740)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'sr-latn'
,p_message_text=>'#LABEL# se ne podudara sa formatom broja %0 (primer: %1).'
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845486734027740)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# mora da bude broj koji je ve\0107i od ili jednak %0.')
,p_is_js_message=>true
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845304958027740)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('#LABEL# mora da bude broj izme\0111u %0 i %1.')
,p_is_js_message=>true
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129840621627027739)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'sr-latn'
,p_message_text=>'otvara se u novom prozoru'
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790430250027723)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ova stranica je ve\0107 prosle\0111ena i ne mo\017Ee ponovo da se prosledi.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771817677027718)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Aplikacija "%0", stranica "%1" nije prona\0111ena.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807389347027729)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'#LABEL# mora da ima neku vrednost.'
,p_is_js_message=>true
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698063319027695)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'sr-latn'
,p_message_text=>'Sakrij lozinku'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697999138027695)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei lozinku')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745561038027709)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859535524027745)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zatvori'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859455452027744)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111i%0')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859761436027745)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859657253027745)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodno'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736371557027707)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'sr-latn'
,p_message_text=>'Unesite termin za pretragu uz minimalan broj znakova (%0).'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812626889027730)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Iska\010Du\0107a lista vrednosti: %0')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736434450027707)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'sr-latn'
,p_message_text=>'Unesite termin za pretragu.'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683428638027690)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'sr-latn'
,p_message_text=>'Lista vrednosti'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736294542027707)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Rezultati nisu prona\0111eni.')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736127351027707)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni: %0'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833332157027736)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uslov pretra\017Eivanja')
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859366555027744)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685507902027691)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Zahteva %0.'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697871784027695)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom \0161tampanja izve\0161taja.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708684245027698)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e od\0161tampati dokument pomo\0107u konfigurisanog servera za \0161tampanje.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731327571027705)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke tokom procene parametra %0 kada se poziva %1. Vi\0161e detalja potra\017Eite u evidenciji gre\0161aka.')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870013130027748)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'sr-latn'
,p_message_text=>'Obrada'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729119889027704)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Nazad'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730289827027705)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ova veb lokacija ima funkciju aplikacije. Instalirajte je na ure\0111aju da biste ostvarili najbolji do\017Eivljaj.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731506117027705)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733163149027706)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Instalirajte ovu aplikaciju'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717966681027701)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izgleda da ure\0111aj ili pregleda\010D trenutno ne podr\017Eavaju instaliranje progresivnih veb-aplikacija.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713097430027699)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'sr-latn'
,p_message_text=>'1. Dodirnite ikonu <strong>Deli</strong>'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129713126403027699)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('2. Kre\0107ite se nadole i dodirnite <strong>Dodaj na po\010Detni ekran</strong>')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729596536027704)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'sr-latn'
,p_message_text=>'3. Dodirnite <strong style="color:#007AE1;">Dodaj</strong> da biste potvrdili'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728658303027704)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'sr-latn'
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
unistr('    <h1>Povezivanje nije mogu\0107e</h1>'),
unistr('    <p>Izgleda da postoji problem sa mre\017Eom. Proverite vezu i poku\0161ajte ponovo.</p>'),
unistr('    <button type="button">Poku\0161aj ponovo</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728553492027704)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Povezivanje nije mogu\0107e')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775152947027719)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ovaj ure\0111aj nije uspeo da omogu\0107i prosle\0111ena obave\0161tenja.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780632060027720)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Brzi izbori za %0'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780555823027720)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Veza za brzi izbor'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754368451027712)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'sr-latn'
,p_message_text=>'Vizuelno skriveno radio dugme'
,p_is_js_message=>true
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698443313027695)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz jednog reda'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881175059027751)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826490674027734)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Ceo dan'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904026653027758)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161alji pozivnicu')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903805832027758)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Opcije'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828298132027735)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Dnevni pregled za ceo dan '
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828088063027735)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'sr-latn'
,p_message_text=>'Dnevni pregled za podatke sa vremenom '
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872260521027748)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Dan'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867266799027747)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Opis'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750714112027711)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'sr-latn'
,p_message_text=>'CSV'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750504048027711)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'sr-latn'
,p_message_text=>'iCal'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750439493027711)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'sr-latn'
,p_message_text=>'PDF'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750689873027711)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'sr-latn'
,p_message_text=>'XML'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750156125027711)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Datum zavr\0161etka')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750362703027711)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ime doga\0111aja')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903943260027758)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Pozivnica'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872389470027748)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Lista'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872034082027748)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>'Mesec'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874690655027749)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888660271027753)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nema doga\0111aja')
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904237817027758)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uredite postoje\0107i doga\0111aj.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904149223027758)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slanje pozivnice putem e-po\0161te.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874748426027749)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodno'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882495062027751)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161alji e-poruku')
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882208686027751)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161alji e-poruku')
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904875219027758)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Sva polja su obavezna.'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904743734027758)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161alji pozivnicu')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903751303027758)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'sr-latn'
,p_message_text=>'Tema'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882325442027751)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'sr-latn'
,p_message_text=>'Za'
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750226272027711)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Datum po\010Detka')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880428661027751)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'sr-latn'
,p_message_text=>'Obrazac na %0'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827827947027735)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'sr-latn'
,p_message_text=>'Vreme'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874827890027749)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Danas'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872821496027748)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872102244027748)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>'Nedelja'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828110028027735)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Nedeljni pregled za ceo dan'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827913318027735)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'sr-latn'
,p_message_text=>'Nedeljni pregled za podatke sa vremenom'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872770449027748)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Godina'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872417821027748)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolone...'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872546770027748)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditaj jo\0161...')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801905385027727)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'sr-latn'
,p_message_text=>'Nazad'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743433331027709)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditaj jo\0161...')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745799481027709)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga...'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129872650023027748)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditaj jo\0161...')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874534730027749)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ID regiona %0 nije prona\0111en.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745699294027709)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podaci nisu prona\0111eni')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773135176027718)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Resetovanje paginacije regiona nije mogu\0107e.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736897672027707)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke pri pode\0161avanju paginacije regiona.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866624017027747)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolone...'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721110388027702)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Odlo\017Eeno u\010Ditavanje nije kompatibilno sa slotovima u pojedina\010Dnom (parcijalnom) regionu %0. Trebalo bi ili da onemogu\0107ite odlo\017Eeno u\010Ditavanje za ovaj region ili da premestite komponente slota u drugi region.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716475872027700)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\0160ablon grupe nedostaje u komponenti \0161ablona za %0.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711445146027699)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 je jednostruki (parcijalni) region, a prikazano je vi\0161e redova.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129874423289027749)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tip regiona %0 nije podr\017Ean.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736703605027707)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke u prikazivanju regiona "#COMPONENT_NAME#".')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807491463027729)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'#COLUMN_HEADER# mora da ima neku vrednost.'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689019371027692)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Morate da navedete raspored izve\0161taja.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903339627027758)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0, ure\0111iva\010D oboga\0107enog teksta')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809596774027729)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('HTML ozna\010Davanje sa oboga\0107enim tekstom prekora\010Duje maksimalnu dozvoljenu du\017Einu (stvarno: %0, dozvoljenih znakova: %1).')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718901027027701)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ure\0111iva\010D oboga\0107enog teksta samo za \010Ditanje')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718859326027701)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ure\0111iva\010D oboga\0107enog teksta')
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718621438027701)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'sr-latn'
,p_message_text=>'Poravnavanje'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718734555027701)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodatno'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718489596027701)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'sr-latn'
,p_message_text=>'Font'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718301342027701)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'sr-latn'
,p_message_text=>'Formatiranje'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718554455027701)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'sr-latn'
,p_message_text=>'Liste'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871649017027748)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izbri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864128950027746)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Duplikat'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862428730027745)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikazane kolone'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862399923027745)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Izuzmi null vrednosti'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871748108027748)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826040870027734)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti nadole'
,p_is_js_message=>true
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826102994027734)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti nagore'
,p_is_js_message=>true
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862131608027745)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862746569027745)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Druge kolone'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862205754027745)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodno'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862520555027745)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Red %0'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862612256027745)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'sr-latn'
,p_message_text=>'Red %0 od %1'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864295998027746)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Osve\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864333142027746)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrati promene'
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129862016653027745)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161avanja')
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821213987027733)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>'Na primer, %0'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825546585027734)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'sr-latn'
,p_message_text=>'Primer: %0'
,p_is_js_message=>true
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738211098027707)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>'1 rezultat'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735344176027706)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj rezultata: %0'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787126752027722)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Numerisanje stranica'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787219875027722)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'sr-latn'
,p_message_text=>'Rezultati, %0 do %1'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682977988027690)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Prijavite se ponovo'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682825557027690)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Va\0161a sesija je zavr\0161ena')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683020252027690)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Produ\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682635170027690)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Va\0161a sesija \0107e se zavr\0161iti u %0. \017Delite li da je produ\017Eite?')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682773811027690)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sesija \0107e se zavr\0161iti u %0 i nije mogu\0107e produ\017Eiti je. Sa\010Duvajte \0161ta ste radili da ne biste izgubili podatke')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882012968027751)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom obrade \0161ifre \010Di\0161\0107enja sesije baze podataka.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771799688027718)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom obrade \0161ifre za pode\0161avanje sesije baze podataka.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742174268027708)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Va\0161a sesija je zavr\0161ena.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881217619027751)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zatvorite ovaj dijalog i pritisnite dugme za osve\017Eavanje pregleda\010Da da biste zapo\010Deli novu sesiju.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900138980027757)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'sr-latn'
,p_message_text=>'<a href="%0">Prijavite se</a> ponovo da biste kreirali novu sesiju.'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784496903027722)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sesija nije va\017Ee\0107a')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827517314027735)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Omogu\0107avanje dinami\010Dkih uloga nije uspelo u sesiji aplikacije Real Application Security za korisnika"%0".')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769607453027717)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>'ERR-99900 Kreiranje jedinstvenog ID-a sesije nije uspelo: %0'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698797821027695)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>'CLOB tipa podataka o stanju sesije nije dozvoljen za stavku %0.'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718151007027701)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zamenjivanje stavki CLOB-a tipa podataka o stanju sesije nije podr\017Eano')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786999797027722)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kr\0161enje za\0161tite stanja sesije: Ovo je mo\017Eda izazvano ru\010Dnom izmenom za\0161ti\0107ene stavke na stranici %0. Ako niste sigurni \0161ta je izazvalo ovu gre\0161ku, obratite se administratoru aplikacije za pomo\0107.')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129908193184027759)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Naru\0161avanje za\0161tite stranice: Ovo mo\017Ee da bude uzrokovano prosle\0111ivanjem stranice koja se jo\0161 nije u\010Ditala ili ru\010Dnim menjanjem stavki za\0161ti\0107ene stranice. Obratite se administratoru aplikacije za dodatnu pomo\0107.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907299291027759)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 sadr\017Ei jedan od slede\0107ih neva\017Ee\0107ih znakova &<>"/;,*|=% ili --')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907345600027759)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 sadr\017Ei jedan od slede\0107ih neva\017Ee\0107ih znakova &<>"/;,*|=% ili -- ili novi red.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907098172027759)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 sadr\017Ei posebne znakove. Dozvoljeni su samo znakovi a-Z, 0-9 i razmaci.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129907151849027759)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 sadr\017Ei <, > ili " koji nisu va\017Ee\0107i znakovi.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744578579027709)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kontrolni zbir nije naveden kako bi se prikazala obrada za stranicu koja zahteva kontrolni zbir kada se kao parametri prosle\0111uju jedan ili vi\0161e zahteva, brisanje ke\0161a ili vrednosti argumenata.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781866550027721)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kr\0161enje za\0161tite stanja sesije: Ovo je mo\017Eda izazvano ru\010Dnom izmenom URL adrese koja sadr\017Ei kontrolni zbir ili upotrebom veze sa neta\010Dnim ili nepostoje\0107im kontrolnim zbirom. Ako niste sigurni \0161ta je izazvalo ovu gre\0161ku, obratite se administratoru apli')
||unistr('kacije za pomo\0107.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863412010027746)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podesi re\017Eim visokog kontrasta na isklju\010Deno')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863516868027746)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podesi re\017Eim visokog kontrasta na uklju\010Deno')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727945934027704)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161avanje aplikacije %0 ne mo\017Ee da se a\017Eurira jer pretplata na nju ide iz druge aplikacije.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778221233027720)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'sr-latn'
,p_message_text=>'Dno'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778433195027720)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'sr-latn'
,p_message_text=>'Dole'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778530553027720)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778693221027720)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti sve'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778744427027720)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778856309027720)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni sve'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778926589027720)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetuj'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778109282027720)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrh'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778354754027720)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'sr-latn'
,p_message_text=>'Gore'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889960887027754)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890634183027754)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>'za %0 d.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889892005027754)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890726405027754)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('za %0 \010D.')
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889693874027754)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890833782027754)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>'za %0 min.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890246373027754)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 mes.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890470062027754)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>'za %0 mes.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889781509027754)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890594741027754)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>'za %0 sek.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890016190027754)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890958364027754)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>'za %0 ned.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890175049027754)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129890391461027754)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>'za %0 god.'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691211112027693)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'sr-latn'
,p_message_text=>'[Linija]'
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691827592027693)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('[Vi\0161e linija]')
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691572897027693)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('[Vi\0161e ta\010Daka]')
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692009263027693)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('[Vi\0161e mnogouglova]')
,p_version_scn=>2693521
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692153129027693)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'sr-latn'
,p_message_text=>'[Geometrijski objekat]'
,p_version_scn=>2693522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691134829027693)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('[Ta\010Dka (%0,%1)]')
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691450279027693)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'sr-latn'
,p_message_text=>'[Mnogougao]'
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690649184027693)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'sr-latn'
,p_message_text=>'Skupljeni region: %0'
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805781837027728)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Skupi'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689618725027692)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Horizontalno usmereni razdelnik ne mo\017Ee da se premesti nalevo ili nadesno')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689816469027692)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dostignuta je maksimalna veli\010Dina od %0 px')
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690855008027693)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dostignuta je minimalna veli\010Dina od %0 px')
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690741761027693)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'sr-latn'
,p_message_text=>'Region je skupljen'
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690539844027693)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Region je vra\0107en')
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690206191027692)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Veli\010Dina je promenjena na %0 px')
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690433984027693)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vra\0107eni region: %0')
,p_is_js_message=>true
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805694963027728)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrati'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689789176027692)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vertikalno usmereni razdelnik ne mo\017Ee da se premesti nagore ili nadole')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855194516027743)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i rangiranje')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845007351027740)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 nije va\017Ee\0107i opseg rangiranja od 1 - %1')
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845196754027740)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 nije numeri\010Dki')
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841293334027739)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>'Poruka o uspehu'
,p_is_js_message=>true
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903073844027758)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129902979422027758)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodno'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813110479027730)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sistem zapisa povezan sa ovom instancom zadatka nije prona\0111en')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821406188027733)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izvr\0161avanje radnje zadatka %0 nije uspelo - zadatak je postavljen u stanje gre\0161ke, proverite \0161ifru radnje zadatka')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701661051027696)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dodavanje napomena: nemate ovla\0161\0107enje')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700932114027696)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zadatak je ve\0107 dodeljen')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694323329027694)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodeljeno korisniku %0'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700653846027696)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otkazivanje zadatka: nemate ovla\0161\0107enje')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716287285027700)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e ukloniti stvarnog vlasnika ovog zadatka. Dodelite zadatak drugom u\010Desniku pre nego \0161to ponovo poku\0161ate ovu operaciju.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700295232027696)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Potvr\0111ivanje zadatka: nemate ovla\0161\0107enje')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700379132027696)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161avanje zadatka: nemate ovla\0161\0107enje')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700499049027696)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Delegiranje zadatka: nemate ovla\0161\0107enje')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698817838027695)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Datum dospe\0107a zadatka ne mo\017Ee da bude u pro\0161losti.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694199994027694)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'sr-latn'
,p_message_text=>'Rok %0'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694543874027694)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Radnja zadatka %1 nije uspela. Poruka o gre\0161ci - %0')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694240728027694)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neuspe\0161no')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693817143027694)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uspe\0161no')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694091426027694)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnja %1 je uspela uz poruku %0'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697398699027695)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre isteka'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722914370027702)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otka\017Ei')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722419603027702)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zadatak je otkazan'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723042396027702)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Desniku nije dozvoljeno da otka\017Ee ovaj zadatak')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722388878027702)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'sr-latn'
,p_message_text=>'Potvrdi'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722768908027702)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Drugi korisnik je ve\0107 potvrdio zadatak ili u\010Desnik nema prava da potvrdi ovaj zadatak')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722596615027702)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Korisnik %0 je potvrdio zadatak'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823649262027734)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161i')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722141945027702)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zadatak je zavr\0161en sa ishodom %0')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723498790027703)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ili zadatak nije dodeljen ili u\010Desniku nije dozvoljeno da zavr\0161i ovaj zadatak')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683804534027691)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zadatak je zavr\0161en bez ishoda')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823744767027734)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Kreiraj'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716678009027701)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Kreiran je zadatak sa ID-om %0'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823804295027734)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Delegiraj'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722273042027702)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zadatak je delegiran potencijalnom vlasniku %0'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722850104027702)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Desnik nema prava ili novi u\010Desnik nije potencijalni vlasnik ovog zadatka')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695965083027694)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'sr-latn'
,p_message_text=>'Istek'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697086648027695)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zadatak je istekao.'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823988257027734)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neuspe\0161no')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692623152027693)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ili zadatak nije dodeljen ili u\010Desniku nije dozvoljeno da zahteva informacije za ovaj zadatak')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692820145027693)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ili informacije nisu zatra\017Eene za zadatak ili u\010Deniku nije dozvoljeno da prosle\0111uje informacije za zadatak.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696481934027694)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Istek zadataka jer je dostignut maksimalni broj obnavljanja od %0.'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723700452027703)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zadatak nije u ispravnom stanju ili u\010Desnik nije poslovni administrator ovog zadatka')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723854790027703)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Operacija %0 nije poznata ili nije primenjiva za ovaj zadatak'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824041640027734)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'sr-latn'
,p_message_text=>'Izdaj'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809705556027729)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zadatak je izdat, druge osobe sada mogu da ga potvrde'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702676342027696)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>'Izdavanje zadatka nije dozvoljeno - korisnik nije vlasnik zadatka'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719692464027701)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni vlasnika'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719820780027701)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Desnik %0 je uklonjen iz zadatka')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697216115027695)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Obnovi'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129696145649027694)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zadatak je obnovljen sa ID-om %0, maksimalni preostali broj obnavljanja pre isteka je %1.'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697105094027695)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'ID zadatka %0 je obnovljen sa ID-om zadatka %1'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693103240027693)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'sr-latn'
,p_message_text=>'Zahtevaj informacije'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693078742027693)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zahtevano %0 za vi\0161e informacija: %1')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129690926108027693)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161avanje pokreta\010Da mo\017Ee da se zavr\0161i na: %0')
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693213080027693)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'sr-latn'
,p_message_text=>'Prosledi informacije'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692985559027693)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zahtevane informacije su prosle\0111ene na %0: %1')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824126029027734)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('A\017Euriraj napomenu')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720611206027702)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj napomenu: %0'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723591132027703)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>'Stanje zadatka ne dozvoljava napomene'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730878723027705)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Postavi krajnji rok zadatka na %0'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688997961027692)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Rok za a\017Euriranje je')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824252041027734)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('A\017Euriraj vlasnika')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721956961027702)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dodaj potencijalnog vlasnika %0 u\010Desnicima zadatka')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721013330027702)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('A\017Euriraj parametre')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824388335027734)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('A\017Euriraj prioritet')
,p_version_scn=>2693550
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722668152027702)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Podesi prioritet zadatka na %0'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719918384027701)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Parametar "%0" je a\017Euriran iz "%1" u "%2".')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703459481027696)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zadatak je otkazan jer je odgovaraju\0107a instanca toka rada ukinuta.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700530206027696)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prosle\0111ivanje zadatka: nemate ovla\0161\0107enje')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693989165027694)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'sr-latn'
,p_message_text=>'Pokrenuo %0 %1'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702845807027696)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do neo\010Dekivane interne gre\0161ke')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701155252027696)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Operacija zadatka nije primenjiva'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726759041027704)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'sr-latn'
,p_message_text=>'Ovaj potencijalni vlasnik ne postoji.'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702421123027696)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'sr-latn'
,p_message_text=>'Odobreno'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702540451027696)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'sr-latn'
,p_message_text=>'Odbijeno'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683977096027691)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161avanje zadatka zahteva ishod')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684154332027691)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije dozvoljeno da zadatak ima ishod'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719701563027701)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e a\017Eurirati parametar %0.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716008172027700)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Desnik ve\0107 postoji za ovu instancu zadatka.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817580576027732)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'sr-latn'
,p_message_text=>'Hitno'
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694604303027694)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Hitno'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817407426027732)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'sr-latn'
,p_message_text=>'Visoko'
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694772835027694)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Visok prioritet'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817300992027732)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'sr-latn'
,p_message_text=>'Srednje'
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694809377027694)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Srednji prioritet'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817256835027732)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'sr-latn'
,p_message_text=>'Nisko'
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129694984281027694)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Nizak prioritet'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129817149510027732)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Najni\017Ee')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695017463027694)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Najni\017Ei prioritet')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700788272027696)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161avanje prioriteta zadatka: nemate ovla\0161\0107enje')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701986349027696)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodeljeno'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702367732027696)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'sr-latn'
,p_message_text=>'Otkazano'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702024174027696)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161eno')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702274033027696)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa gre\0161kom')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695754627027694)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Isteklo'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702120563027696)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neuspe\0161no')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129692466499027693)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Informacije su zatra\017Eene')
,p_version_scn=>2693522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701880333027696)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'sr-latn'
,p_message_text=>'Nedodeljeno'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724255268027703)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Kreiranje novog zadatka za definiciju zadatka %0 u aplikaciji %1 nije uspelo.',
'SQLCODE: %2'))
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724157764027703)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Poku\0161aj kreiranja zadatka za definiciju zadatka %0 u aplikaciji %1 nije uspeo jer definicija zadatka ne sadr\017Ei potencijalne vlasnike. Uredite definiciju zadatka i dodajte bar jednog u\010Desnika tipa Potencijalni vlasnik')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701401949027696)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Definicija zadatka nije prona\0111ena')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701300816027696)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Desnici nisu prona\0111eni za zadatak')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129702767869027696)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Postoji vi\0161e zadataka za navedeni ID zadatka- proverite sa administratorom baze podataka')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701541077027696)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zadatak nije prona\0111en')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129701231383027696)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Parametar zadatka nije prona\0111en')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737524371027707)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnja'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737473592027707)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Odobrenje'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129684877173027691)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Procedura pravila odmora %2 nije uspela da se izvr\0161i za definiciju zadatka %0 u aplikaciji %1.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685029177027691)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Desnik %1 je dodat kao zamena za u\010Desnika %0 . Razlog - %2 .')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888754486027753)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Traka sa alatkama'
,p_is_js_message=>true
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742280839027708)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Aplikacija'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903482349027758)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161iri/skupi navigaciju')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903561562027758)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161iri/skupi bo\010Dnu kolonu')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811998292027730)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Glavna navigacija'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712754784027699)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('"%0" je neva\017Ee\0107e ime \010Duvara mesta.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819657900027732)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'1 dan'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819412931027732)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('1 \010D.')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819792174027732)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 dan(a)'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819565569027732)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 \010D.')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819322905027732)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 min.'
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819917218027732)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ned.'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819844464027732)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>'1 ned.'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717641395027701)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Izabranih stavki: %0'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717890294027701)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Izbor stavke'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129717735768027701)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberi %0'
,p_is_js_message=>true
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906558324027759)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Detak stranice')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764118553027715)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Omogu\0107eno')
,p_is_js_message=>true
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732618104027705)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke u obradi zahteva.')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129718295270027701)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tekstualna poruka %0 ne mo\017Ee da se a\017Eurira jer postoji pretplata na nju iz druge aplikacije.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821328627027733)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost je obavezna'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737794225027707)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'sr-latn'
,p_message_text=>'Nivo zaglavlja %0, skriveno'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866166682027746)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Na ovoj stranici ima nesa\010Duvanih promena.')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727785367027704)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Navigator'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727431453027704)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uve\0107aj')
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728493152027704)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Nivo zumiranja {0}%'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727565374027704)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'sr-latn'
,p_message_text=>'Umanji'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727655208027704)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetovanje zumiranja'
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703117824027696)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'sr-latn'
,p_message_text=>'Dijagram toka rada nije trenutno dostupan.'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703091927027696)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Dijagram toka rada'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704906309027697)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>'Instanca toka rada %0 je trenutno u stanju %1. Zbog toga operacija nije dozvoljena'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707547615027698)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Instanca %1 za aktivnost %2 u toku rada %0 je zavr\0161ena')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707331978027698)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'sr-latn'
,p_message_text=>'Kreirana je nova instanca %1 za aktivnost %2 u toku rada %0'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699185693027695)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Red sa dodatnim podacima povezan sa ovom instancom aktivnosti toka rada nije prona\0111en')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707444089027698)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neispravna instanca %1 za aktivnost %2 u toku rada %0 je ponovo poku\0161ana')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689459574027692)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'sr-latn'
,p_message_text=>'Instanca za aktivnost %1 u toku rada %0 je ukinuta'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723284744027702)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'sr-latn'
,p_message_text=>'Instanca za aktivnost %1 u toku rada %0 je istekla i ukinuta je.'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707644973027698)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Instanca %1 za aktivnost %2 u toku rada %0 je u stanju \010Dekanja')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689269507027692)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'sr-latn'
,p_message_text=>'Instanca toka rada %0 je izmenjena i nastavljena pri aktivnosti %1'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706642394027697)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uspelo je zavr\0161avanje instance \010Dekanja %1 za aktivnost %2 u toku rada %0')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706470807027697)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Aktivnost \010Dekanja %1 je pode\0161ena na Neispravno jer je tok rada %0 ve\0107 bio u neispravnom stanju pre zavr\0161etka aktivnosti')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706515633027697)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Aktivnost \010Dekanja %1 je ukinuta jer je tok rada %0 ve\0107 bio u ukinutom stanju pre zavr\0161etka aktivnosti')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689528639027692)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukidanje aktivnosti %1 u toku rada %0 nije uspelo zbog izuzetka - %2'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705147091027697)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tok rada je trenutno zauzet zavr\0161avanjem prethodne operacije. Poku\0161ajte kasnije')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721244590027702)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161eno %0')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704217983027697)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tok rada %0 ne mo\017Ee da se nastavi jer je trenutno u aktivnosti %1 koja nije u stanju \010Dekanja')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716180767027700)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 nije va\017Ee\0107i kontekst korelacije toka rada za proces koji izvr\0161ava ova aktivnost toka rada. Kontekst korelacije mora da bude tekst odvojen ta\010Dkom i zarezom koji sadr\017Ei APEX_APPL_WORKFLOW nakon \010Dega stoji ID instance toka rada i ID instance aktivnos')
||'ti.'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706893802027697)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'sr-latn'
,p_message_text=>'Kreirana je nova instanca %0 za tok rada %1, verzije %2'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698991864027695)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111en red sa dodatnim podacima povezan sa ovom instancom toka rada')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721445980027702)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'sr-latn'
,p_message_text=>'Rok %0'
,p_version_scn=>2693527
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706703549027697)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tok rada %0 se zavr\0161io sa stanjem %1')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703929473027697)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tip podataka %1 za uslove koji se porede u aktivnosti prekida\010Da za tok rada %0 nije kompatibilan sa operatorom uslova')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693769101027694)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'sr-latn'
,p_message_text=>'Pokrenuo %0 %1'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129716589790027700)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'sr-latn'
,p_message_text=>'Kreirana je nova instanca %0 za tok rada %1, verzije %2 - pozvana iz instance aktivnosti %4 za instancu toka rada %3'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129689357910027692)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Aktivnost sa stati\010Dkim ID-om %1 nije aktivnost u toku rada %0. Proverite stati\010Dki ID aktivnosti odgovaraju\0107e verzije toka rada.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129714650352027700)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 je obavezni parametar za ovaj tok rada i ne sme da bude NULL.'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707245695027698)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'sr-latn'
,p_message_text=>'Instanca toka rada %0 je nastavljena'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707162385027698)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Instanca toka rada %0 je ponovo poku\0161ana')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721598515027702)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ponovni poku\0161aj')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721679364027702)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ponovnih poku\0161aja: %0')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721341105027702)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zapo\010Deto %0')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715599150027700)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Aktivno'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715780785027700)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161eno')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715850367027700)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'sr-latn'
,p_message_text=>'Neispravno'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715901988027700)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'sr-latn'
,p_message_text=>'Obustavljeno'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715671707027700)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukinuto'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730963051027705)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\010Cekanje')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706950915027698)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'sr-latn'
,p_message_text=>'Instanca toka rada %0 je obustavljena'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712832789027699)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e odrediti slede\0107u aktivnost za instancu toka rada %0. Proverite i ispravite uslove koji su odre\0111eni za trenutnu aktivnost komutatora pre nego \0161to ponovo poku\0161ate sa tokom rada.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707097606027698)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'sr-latn'
,p_message_text=>'Instanca toka rada %0 je ukinuta'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706168693027697)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Samo poslovni administrator toka rada %0 mo\017Ee da nastavi tok rada')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706253111027697)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Samo poslovni administrator i/ili vlasnik mogu ponovo da poku\0161aju tok rada %0')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705720178027697)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Instancu toka rada %0 mo\017Ee da obustavi samo poslovni administrator toka rada')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129706032416027697)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Samo vlasnici i poslovni administratori instance toka rada %0 mogu da ukinu tok rada'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704425192027697)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Promenljive toka rada %0 mo\017Ee da a\017Eurira samo poslovni administrator definisan za tok rada')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719042232027701)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Instanca toka rada %0 mora da bude u stanju Neispravno ili Obustavljeno da bi mogle da se a\017Euriraju promenljive za nju.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710581767027699)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vrednost promenljive toka rada %0 je a\017Eurirana na %1')
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720736897027702)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tok rada %0 nema nijednu aktivnu verziju'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720820284027702)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'sr-latn'
,p_message_text=>'Tok rada %0 nema nijednu verziju u razvoju'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129720988390027702)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>'Tok rada %0 nema nijednu aktivnu verziju niti verziju u razvoju'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703891287027697)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Instanca aktivnosti %1 za instancu toka rada %0 nije prona\0111ena')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703643488027697)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Instanca toka rada %0 nije prona\0111ena')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738705223027707)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'sr-latn'
,p_message_text=>'Radna sveska mena aktivnih radnih listova.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738606784027707)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'sr-latn'
,p_message_text=>'Radna sveska nije pokrenuta.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738589219027707)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do interne gre\0161ke prilikom kreiranja XLSX datoteke.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129741029010027708)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'sr-latn'
,p_message_text=>'List'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751666035027711)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ime radnog lista "%0" je ve\0107 zauzeto. Poku\0161ajte sa drugim.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880280738027751)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795234223027725)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>'Meni sa radnjama'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790966166027724)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj funkciju'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790866592027724)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj grupisanje po koloni'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828498471027735)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj pivot kolonu'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828598865027735)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Dodaj kolonu reda'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762927333027715)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Agregiraj'
,p_is_js_message=>true
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801481836027727)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Agregacija'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782324395027721)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'sr-latn'
,p_message_text=>'Prosek'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786676300027722)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782491182027721)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'sr-latn'
,p_message_text=>'Maksimum'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782606578027721)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'sr-latn'
,p_message_text=>'Srednja vrednost'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782580182027721)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'sr-latn'
,p_message_text=>'Minimum'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782261334027721)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'sr-latn'
,p_message_text=>'Zbir %0'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783315183027721)
,p_name=>'APEXIR_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Sve'
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762208696027715)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Sve kolone'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742345385027708)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>'Svi redovi'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877260958027750)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Alternativno'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878882831027750)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'sr-latn'
,p_message_text=>'Alternativno podrazumevano: %0 '
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776413712027719)
,p_name=>'APEXIR_AND'
,p_message_language=>'sr-latn'
,p_message_text=>'i'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811227642027730)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uvoz sa\010Duvanog izve\0161taja nije uspeo. Sadr\017Eaj je o\0161te\0107en.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811345611027730)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uvoz sa\010Duvanog izve\0161taja nije uspeo. Sadr\017Eaj je prazan.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764416941027715)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'sr-latn'
,p_message_text=>'Primeni'
,p_is_js_message=>true
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758004009027713)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Rastu\0107e')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779559607027720)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Dev od%0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879425208027751)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Prosek %0'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871064442027748)
,p_name=>'APEXIR_BAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Trakasti'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763747893027715)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('izme\0111u')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756813336027713)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Boja pozadine'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758766647027714)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'sr-latn'
,p_message_text=>'plavo'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792864086027724)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'sr-latn'
,p_message_text=>'Dno'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723605797027703)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Dugmad pored trake za pretragu za %0'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759333646027714)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otka\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765692390027716)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'sr-latn'
,p_message_text=>'Kategorija'
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756714106027713)
,p_name=>'APEXIR_CELL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\0106elija')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783223122027721)
,p_name=>'APEXIR_CHART'
,p_message_language=>'sr-latn'
,p_message_text=>'Grafikon'
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793742005027724)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'sr-latn'
,p_message_text=>'Pokretanje...'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833476085027737)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Oznaka grafikona mora da bude navedena.'
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845828601027740)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Upit prema\0161uje maksimalan broj ta\010Daka podataka po grafikonu (%0). Primenite filter da biste smanjili broj zapisa u osnovnom upitu.')
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844756426027740)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Maksimalni broj redova za upit grafikona ograni\010Dava broj redova u osnovnom upitu, ne i broj prikazanih redova. Va\0161 osnovni upit prema\0161uje maksimalni broj redova (%0). Primenite filter da biste smanjili broj zapisa u osnovnom upitu.')
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762375608027715)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tip grafikona'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726257222027703)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz grafikona za %0'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841467040027739)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ozna\010Di sve')
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779966483027720)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izaberite format izve\0161taja')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787774189027723)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('obri\0161i')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759235645027714)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799099207027726)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolone'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766269922027716)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'sr-latn'
,p_message_text=>'Alijasi kolona'
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873802963027749)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Filter...'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734095402027706)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'sr-latn'
,p_message_text=>'Zaglavlje kolone'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748105504027710)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje na kolonama'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748443769027710)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Radnje za kolonu "%0"'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789836630027723)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>'Meni zaglavlja kolone'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793557158027724)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'sr-latn'
,p_message_text=>'Informacije o koloni'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876142528027750)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Oznaka kolone'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791262043027724)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona %0'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774126083027718)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('sadr\017Ei')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775412127027719)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ne sadr\017Ei')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757793305027713)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'sr-latn'
,p_message_text=>'u'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775678339027719)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'nije u poslednjem'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784727399027722)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('nije u slede\0107em')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775560729027719)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'je u poslednjem'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784653668027722)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('je u slede\0107em')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757682022027713)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'nije null'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757515186027713)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'jeste null'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757300659027713)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'sr-latn'
,p_message_text=>'poput'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757832629027713)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'sr-latn'
,p_message_text=>'nije u'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757493595027713)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'sr-latn'
,p_message_text=>'nije poput'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774451197027718)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('podudara se sa uobi\010Dajenim izrazom')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779849025027720)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izra\010Dunavanje')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844443979027740)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izraz za izra\010Dunavanje')
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799335837027726)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kreira izra\010Dunavanje pomo\0107u alijasa kolone.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799480689027726)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'sr-latn'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799500749027726)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'sr-latn'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799643892027726)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'sr-latn'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740513568027708)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'sr-latn'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784037432027721)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izra\010Dunaj')
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791891284027724)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'sr-latn'
,p_message_text=>'Kontrolni prelom'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794825840027725)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'sr-latn'
,p_message_text=>'Kontrolni prelomi'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881478835027751)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolone sa kontrolnim prelomima'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737246273027707)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Broj razli\010Ditih')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879958766027751)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Broj razli\010Ditih')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879806206027751)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj %0'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852830946027742)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'sr-latn'
,p_message_text=>'Dnevno'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906117584027759)
,p_name=>'APEXIR_DATA'
,p_message_language=>'sr-latn'
,p_message_text=>'Podaci'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793613993027724)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Izvesti o podacima od pre %0 min.'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726648961027704)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz podataka za %0'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763024551027715)
,p_name=>'APEXIR_DATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Datum'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797511283027726)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>'Podrazumevano'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877077735027750)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podrazumevani tip izve\0161taja')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759436469027714)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izbri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763330707027715)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\017Delite li da izbri\0161ete ova pode\0161avanja izve\0161taja?')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863826139027746)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izbri\0161i podrazumevani izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791551043027724)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izbri\0161i izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758102396027713)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Opadaju\0107e')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765774155027716)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Opis'
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789722850027723)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz jednog reda'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798091458027726)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Smer %0'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798927352027726)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Onemogu\0107eno')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758958369027714)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikazano'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762154969027715)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikazane kolone'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797993234027726)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei u izve\0161taju')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792789917027724)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'sr-latn'
,p_message_text=>'Dole'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784151606027721)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'sr-latn'
,p_message_text=>'Preuzmi'
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797894212027726)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Ne prikazuj'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867148027027747)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Istaknuta stavka sa istim uslovom ve\0107 postoji.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881603618027751)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Duplikat pivot kolone. Lista pivot kolona mora da bude jedinstvena.'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881881344027751)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793808842027724)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ure\0111ivanje pode\0161avanja grafikona')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800432554027726)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi grafikon'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764320894027715)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi kontrolni prelom'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800896291027727)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi filter'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767389156027716)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uredi vra\0107anje u pro\0161lost')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858652075027744)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi grupisanje po elementu'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800769775027727)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi istaknutu stavku'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828708177027735)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi pivot'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788168969027723)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uredi izve\0161taj')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877326056027750)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'sr-latn'
,p_message_text=>'E-adresa'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749543018027711)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'sr-latn'
,p_message_text=>'E-adresa'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877687406027750)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'sr-latn'
,p_message_text=>'Bcc'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877811722027750)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'sr-latn'
,p_message_text=>'Tekst poruke'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877593565027750)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'sr-latn'
,p_message_text=>'Cc'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878386652027750)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Destalost')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754724215027712)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('E-po\0161ta nije konfigurisana za ovu aplikaciju. Obratite se administratoru.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852154283027742)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'E-adresa mora da se navede.'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877947321027750)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'sr-latn'
,p_message_text=>'Pogledajte priloge'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877701732027750)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'sr-latn'
,p_message_text=>'Tema'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853152674027743)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Tema e-poruke mora da se navede.'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877429628027750)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'sr-latn'
,p_message_text=>'Za'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756590921027713)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Omogu\0107eno')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800615343027727)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Omogu\0107i/onemogu\0107i')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800145754027726)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka! %0')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799721893027726)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'sr-latn'
,p_message_text=>'Primeri'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800541088027727)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'sr-latn'
,p_message_text=>'Primeri:'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762052494027715)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Izuzmi null vrednosti'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801105891027727)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161iri/skupi')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798783968027726)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'sr-latn'
,p_message_text=>'Izraz'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783609836027721)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794735246027725)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'sr-latn'
,p_message_text=>'Filteri'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805454881027728)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'sr-latn'
,p_message_text=>'Izraz filtera'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903639448027758)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izraz filtera je preduga\010Dak.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748367135027710)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Filtriraj predloge'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805309187027728)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tip filtera'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801398156027727)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite kolone za pretragu'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783963387027721)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vra\0107anje u pro\0161lost')
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798560518027726)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Upit vra\0107anja u pro\0161lost vam omogu\0107ava da vidite podatke kakvi su bili u ranijem trenutku u pro\0161losti.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852513467027742)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Trajanje vra\0107anja u pro\0161lost')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853981737027743)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779767666027720)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'sr-latn'
,p_message_text=>'Maska formata %0'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791430733027724)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Funkcija'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799269845027726)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Funkcije %0'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876970948027750)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'sr-latn'
,p_message_text=>'Funkcije/operatori'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791155895027724)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'sr-latn'
,p_message_text=>'Funkcija %0'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783467009027721)
,p_name=>'APEXIR_GO'
,p_message_language=>'sr-latn'
,p_message_text=>'Idi'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757071631027713)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'sr-latn'
,p_message_text=>'zeleno'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802029353027727)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Grupisanje po kolonama'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802108215027727)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Grupisanje po funkcijama'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737332314027707)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Grupi\0161i prema')
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878041597027750)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Grupisanje po koloni %0'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833517676027737)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Grupisanje po koloni mora da bude navedeno.'
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844685564027740)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Maksimalni broj redova za upit grupisanja po elementu ograni\010Dava broj redova u osnovnom upitu, ne i broj prikazanih redova. Va\0161 osnovni upit prema\0161uje maksimalni broj redova (%0). Primenite filter da biste smanjili broj zapisa u osnovnom upitu.')
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824899456027734)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'sr-latn'
,p_message_text=>'Sortiranje grupisanjem po elementu'
,p_is_js_message=>true
,p_version_scn=>2693550
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881551466027751)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'sr-latn'
,p_message_text=>'Redosled sortiranja grupisanjem po elementu'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726451957027703)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Grupisanje po prikazu za %0'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762404864027715)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Horizontalna kolona'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796428013027725)
,p_name=>'APEXIR_HELP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107')
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788239439027723)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Interaktivni izve\0161taji omogu\0107avaju krajnjim korisnicima da prilagode izve\0161taje. Korisnici mogu da izmene raspored podataka izve\0161taja izborom kolona, primenom filtera, isticanjem i sortiranjem. Korisnici mogu da defini\0161u i prelome, agregacije, grafiko')
||unistr('ne, grupisanja po elementima i mogu da dodaju svoja izra\010Dunavanja. Korisnici mogu da podese i prijavljivanje kako bi im se HTML verzija izve\0161taja poslala u navedenom intervalu. Korisnici mogu da kreiraju vi\0161e varijacija izve\0161taja i da ih sa\010Duvaju kao')
||unistr(' imenovane izve\0161taje, za javno ili privatno prikazivanje. '),
'<p/>',
unistr('U slede\0107im odeljcima su rezimirani na\010Dini na koje mo\017Eete da prilagodite interaktivni izve\0161taj. Da biste saznali vi\0161e, pro\010Ditajte "Kori\0161\0107enje interaktivnih izve\0161taja" u <i>Vodi\010Du za krajnje korisnike usluge Oracle APEX</i>.')))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795313157027725)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Meni sa radnjama se prikazuje desno od dugmeta Idi na traci za pretragu. Pomo\0107u ovog menija prilagodite interaktivni izve\0161taj.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789021392027723)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Objedinjavanja su matemati\010Dka izra\010Dunavanja koja se obavljaju na koloni. Objedinjavanja se prikazuju nakon svakog kontrolnog preloma i na kraju izve\0161taja u okviru kolone u kojoj su definisana. Opcije su slede\0107e:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Objedinjavanje</strong> vam omogu\0107ava da izaberete prethodno definisano objedinjavanje za ure\0111ivanje.</li>'),
unistr('<li><strong>Funkcija</strong> predstavlja funkciju koja \0107e se obaviti (na primer, SUM, MIN).</li>'),
unistr('<li><strong>Kolona</strong> se koristi za izbor kolone na koju \0107e se primeniti matemati\010Dka funkcija. Prikazuju se samo'),
unistr('numeri\010Dke kolone.</li>'),
'</ul>'))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789138288027723)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Mo\017Eete da defini\0161ete jedan grafikon po sa\010Duvanom izve\0161taju. Kada'),
unistr('se defini\0161e, mo\017Eete da prelazite sa prikaza grafikona na prikaz izve\0161taja i obratno pomo\0107u ikona za prikaz na traci za pretragu.'),
unistr('Opcije su slede\0107e:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>Tip grafikona</strong> identifikuje tip grafikona koji \0107e se dodati.'),
unistr('Izaberite horizontalnu traku, vertikalnu traku, kru\017Eni grafikon ili linijski.</li>'),
unistr('<li><strong>Oznaka</strong> vam omogu\0107ava da izaberete kolonu koja \0107e se koristiti kao oznaka.</li>'),
'<li><strong>Naslov ose za oznaku</strong> je naslov koji se prikazuje na osi povezanoj sa kolonom koja je izabrana za',
unistr('oznaku. Ovo nije dostupno kod kru\017Enog grafikona.</li>'),
unistr('<li><strong>Vrednost</strong> vam omogu\0107ava da izaberete kolonu koja \0107e se koristiti kao vrednost. Ako je funkcija COUNT, nije potrebno da izaberete vrednost.</li>'),
'<li><strong>Naslov ose za vrednost</strong> je naslov koji se prikazuje na osi povezanoj sa kolonom izabranom za',
unistr('vrednost. To nije dostupno kod kru\017Enih grafikona.</li>'),
'<li><strong>Funkcija</strong> je opcionalna funkcija koja se obavlja na koloni izabranoj za vrednost.</li>',
unistr('<li><strong>Sortiranje</strong> vam omogu\0107ava da sortirate skup rezultata.</li></ul>')))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788418370027723)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Klikom na zaglavlje bilo koje kolone otvara se meni zaglavlja kolone. Opcije su slede\0107e:'),
'<p></p>',
'<ul>',
unistr('<li>Ikona <strong>Sortiraj rastu\0107im redosledom</strong> sortira izve\0161taj po koloni rastu\0107im redosledom.</li>'),
unistr('<li>Ikona <strong>Sortiraj opadaju\0107im redosledom</strong> sortira izve\0161taj opadaju\0107im redosledom.</li>'),
unistr('<li><strong>Sakrij kolonu</strong> skriva kolonu. Nije mogu\0107e sakriti sve kolone. Ako nije mogu\0107e sakriti kolonu, ikona Sakrij kolonu se ne\0107e prikazati.</li>'),
unistr('<li><strong>Prelom kolone</strong> kreira grupu preloma u koloni. Time se kolona izvla\010Di iz izve\0161taja kao glavni zapis.</li>'),
unistr('<li>Stavka <strong>Informacije o koloni</strong> prikazuje tekst pomo\0107i u vezi sa kolonom, ako je dostupan.</li>'),
'<li><strong>Oblast teksta</strong> koristi se za unos kriterijuma pretrage koji ne razlikuju velika i mala slova',
unistr('(nema potrebe za d\017Eokerima). Unosom vrednosti skra\0107uje se lista'),
unistr('vrednosti u dnu menija. Zatim mo\017Eete da izaberete vrednost u'),
unistr('dnu i izabrana vrednost \0107e se kreirati kao filter sa ''='''),
unistr('(na primer, <code>column = ''ABC''</code>). Druga mogu\0107nost je da kliknete na ikonu lampe i unesete vrednost kao filter sa modifikatorom ''LIKE'''),
'(na primer, <code>column LIKE ''%ABC%''</code>).</li>',
unistr('<li><strong>Lista jedinstvenih vrednosti</strong> sadr\017Ei prvih 500 jedinstvenih'),
unistr('vrednosti koje ispunjavaju va\0161e kriterijume filtera. Ako je kolona datum, umesto toga \0107e se prikazati'),
unistr('opsezi datuma. Ako izaberete vrednost, kreira\0107e se'),
'filter sa ''='' (na primer, <code>column = ''ABC''</code>).</li>',
'</ul>'))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788980190027723)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Omogu\0107ava vam da izve\0161taju dodate izra\010Dunate kolone. To mogu da budu matemati\010Dka izra\010Dunavanja (na primer, <code>NBR_HOURS/24</code>) ili standardne Oracle'),
unistr('funkcije primenjene na postoje\0107e kolone. Neke se prikazuju kao primeri, a mogu da se koriste i druge (mo\017Ee se koristiti i <code>TO_DATE)</code>. Opcije su slede\0107e:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Izra\010Dunavanje</strong> vam omogu\0107ava da izaberete prethodno definisano izra\010Dunavanje za ure\0111ivanje.</li>'),
'<li><strong>Zaglavlje kolone</strong> je zaglavlje kolone za novu kolonu.</li>',
'<li><strong>Maska formata</strong> je Oracle maska formata koja se primenjuje na kolonu (na primer, S9999).</li>',
unistr('<li><strong>Izra\010Dunavanje</strong> je izra\010Dunavanje koje se obavlja. U okviru izra\010Dunavanja, kolone se referenciraju pomo\0107u prikazanih alijasa.</li>'),
'</ul>',
unistr('<p>Ispod izra\010Dunavanja, kolone upita se prikazuju'),
unistr('sa povezanim alijasima. Klikom na naziv kolone ili alijas uklju\010Dujete'),
unistr('ih u izra\010Dunavanje. Pored kolona se nalazi tastatura. Ova tastatura funkcioni\0161e kao'),
unistr('pre\010Dica za tastere koji se \010Desto koriste. Na krajnjoj desnoj strani nalaze se funkcije.</p>'),
unistr('<p>Slede\0107i primer izra\010Dunavanja pokazuje kako se prikazuje ukupna kompenzacija:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
'(gde je A ORGANIZATION, B je SALARY, a C je COMMISSION)',
''))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795490524027725)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Koristi se za kreiranje grupe preloma na jednoj ili vi\0161e kolona. Na taj na\010Din se kolone izvla\010De iz interaktivnog izve\0161taja i prikazuju se kao glavni zapis.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789699637027723)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Da biste videli detalje jednog po jednog reda, kliknite na ikonu za prikaz jednog reda u redu koji \017Eelite da prika\017Eete. Ako je dostupno, prikaz jednog reda \0107e uvek biti prva kolona. U zavisnosti od prilago\0111avanja interaktivnog izve\0161taja, prikaz jedno')
||unistr('g reda mo\017Ee da bude standardni prikaz ili prilago\0111ena stranica koju je mogu\0107e a\017Eurirati.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789577507027723)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Omogu\0107ava da se trenutni skup rezultata preuzme. Formati za preuzimanje obuhvataju PDF, Excel, HTML i CSV. Opcije preuzimanja se razlikuju u zavisnosti od izabranog formata. Svi formati mogu da se po\0161alju i kao e-po\0161ta.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788647168027723)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Fokusira izve\0161taj dodavanjem ili modifikovanjem odredbe <code>WHERE</code> na upitu. Filtriranje mo\017Eete da obavite na koloni ili po redu. '),
unistr('<p>Ako filtrirate po koloni, izaberite kolonu (ne mora da bude ona koja se prikazuje), izaberite standardni Oracle operator (=, !=, nije u, izme\0111u) i unesite izraz prema kom se obavlja pore\0111enje. Izrazi razlikuju velika i mala slova. Koristite % kao ')
||unistr('d\017Eoker (na primer, <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>Ako filtrirate po redu, mo\017Eete da kreirate slo\017Eene odredbe <code>WHERE</code> koriste\0107i'),
'alijase kolone i bilo koje Oracle funkcije ili operatore (na primer, <code>G = ''VA'' ili G = ''CT''</code>, gde je',
'<code>G</code> alijas za <code>CUSTOMER_STATE</code>).</p>',
''))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789221080027723)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Upit za vra\0107anje u pro\0161lost vam omogu\0107ava da vidite podatke kakvi su bili u ranijem vremenskom'),
unistr('trenutku. Podrazumevano vreme u kom mo\017Eete da se vratite u pro\0161lost je 3 sata (ili 180'),
unistr('minuta), ali \0107e stvarna du\017Eina vremena biti razli\010Dita zavisnosti od baze podataka.')))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853808820027743)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Format vam omogu\0107ava da prilagodite prikaz izve\0161taja. Format sadr\017Ei slede\0107i podmeni:</p>'),
'<ul><li>Sortiraj</li>',
'<li>Kontrolni prelom</li>',
'<li>Istakni</li>',
unistr('<li>Izra\010Dunaj</li>'),
'<li>Agregiraj</li>',
'<li>Grafikon</li>',
unistr('<li>Grupi\0161i po</li>'),
'<li>Pivot</li>',
'</ul>',
''))
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852065087027742)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Mo\017Eete da defini\0161ete jedan prikaz grupisanja po elementu po sa\010Duvanom izve\0161taju. Kada ga defini\0161ete, mo\017Eete da se prebacujete sa prikaza grupisanja po elementu na prikaz izve\0161taja i obrnuto pomo\0107u ikona za prikaz na traci za pretragu. Da biste kreira')
||'li prikaz grupisanja po elementu, izaberite: ',
'<p></p><ul>',
'<li>kolone na kojima se obavlja grupisanje</li>',
unistr('<li>kolone koje \0107e se agregirati zajedno sa funkcijama koje \0107e se obaviti (prosek, zbir, broj itd.)</li>'),
'</ul>'))
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788867220027723)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Omogu\0107ava vam da defini\0161ete filter. Redovi koji ispunjavaju kriterijum filtera prikazuju se kao istaknuti putem karakteristika povezanih sa filterom. Opcije obuhvataju:</p>'),
'<ul>',
'<li><strong>Ime</strong> se koristi samo za prikaz.</li>',
'<li><strong>Niz</strong> identifikuje niz kojim se pravila procenjuju.</li>',
unistr('<li><strong>Omogu\0107eno</strong> ozna\010Dava da li je pravilo omogu\0107eno ili nije omogu\0107eno.</li>'),
unistr('<li><strong>Tip isticanja</strong> ozna\010Dava da li je potrebno istaknuti red'),
unistr('ili \0107eliju. Ako izaberete \0107eliju, isti\010De se kolona koja je nazna\010Dena u uslovu isticanja.</li>'),
'<li><strong>Boja pozadine</strong> je nova boja pozadine u istaknutoj oblasti.</li>',
'<li><strong>Boja teksta</strong> je nova boja teksta u istaknutoj oblasti.</li>',
unistr('<li><strong>Uslov isticanja</strong>  defini\0161e uslov filtera.</li>'),
'</ul>',
''))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682229390027690)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Mo\017Eete da defini\0161ete jedan prikaz pivota po sa\010Duvanom izve\0161taju. Kada ga defini\0161ete, mo\017Eete da se prebacujete sa prikaza pivota na prikaz izve\0161taja i obrnuto pomo\0107u ikona za prikaz na traci za pretragu.  Da biste kreirali prikaz pivota, izaberite: '),
'<p></p>',
'<ul>',
'<li>kolone na kojima se obavlja pivot funkcija</li>',
unistr('<li>kolone koje \0107e se prikazati kao redovi</li>'),
unistr('<li>kolone koje \0107e se agregirati zajedno sa funkcijama koje \0107e se obaviti (prosek, zbir, broj itd.)</li>'),
'</ul>'))
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799938309027726)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ako prilagodite interaktivni izve\0161taj, pode\0161avanja izve\0161taja \0107e se prikazati'),
unistr('ispod trake za pretragu i iznad izve\0161taja. Ova oblast mo\017Ee da se skupi i pro\0161iri pomo\0107u ikone sa leve strane.'),
'<p>',
unistr('Za svako pode\0161avanje izve\0161taja mo\017Eete da u\010Dinite slede\0107e:'),
'</p><ul>',
unistr('<li>Ure\0111ujete pode\0161avanje klikom na ime.</li>'),
unistr('<li>Onemogu\0107ite/omogu\0107ite pode\0161avanje uklanjanjem oznake iz polja Omogu\0107i/onemogu\0107i ili njegovim ozna\010Davanjem. Pomo\0107u ove kontrole mo\017Eete da privremeno isklju\010Dite i uklju\010Dite neko pode\0161avanje.</li>'),
unistr('<li>Uklanjanje pode\0161avanja klikom na ikonu Ukloni.</li>'),
'</ul>',
unistr('<p>Ako ste kreirali grafikon, grupu po elementu ili pivot, mo\017Eete da se prebacujete sa njih'),
unistr('na osnovni izve\0161taj pomo\0107u veza Prikaz izve\0161taja, Prikaz grafikona, Prikaz grupisanja po elementu i Prikaz pivota'),
unistr('prikazanih sa desne strane. Ako pregledate grafikon, grupisanje po elementu ili pivot mo\017Eete'),
unistr('da koristite i vezu Uredi da biste uredili pode\0161avanja.</p>'),
''))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789426357027723)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Resetuje izve\0161taj na podrazumevana pode\0161avanja i uklanja sve izmene koje ste napravili.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854126465027743)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161ava broj zapisa koji \0107e se prikazivati po stranici.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789390898027723)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\010Cuva prilago\0111eni izve\0161taj za budu\0107u upotrebu. Vi navodite ime i opcionalni opis i odre\0111ujete da li \0107e izve\0161taj biti javan (odnosno, dostupan svim korisnicima koji mogu da pristupe primarnom podrazumevanom izve\0161taju). Mo\017Eete da sa\010Duvate \010Detiri tipa')
||unistr(' interaktivnih izve\0161taja:</p>'),
'<ul>',
unistr('<li><strong>Primarni podrazumevani</strong> (samo za programere). Primarni podrazumevani izve\0161taj je izve\0161taj koji se prvi prikazuje. Primarne podrazumevane izve\0161taje nije mogu\0107e preimenovati niti izbrisati.</li>'),
unistr('<li><strong>Alternativni izve\0161taj</strong> (samo za programere). Omogu\0107ava programerima da kreiraju vi\0161e rasporeda izve\0161taja. Isklju\010Divo programeri mogu da sa\010Duvaju, preimenuju ili izbri\0161u alternativni izve\0161taj.</li>'),
unistr('<li><strong>Javni izve\0161taj</strong> (krajnji korisnik). Mo\017Ee da ga sa\010Duva, preimenuje ili izbri\0161e krajnji korisnik koji ga je kreirao. Drugi korisnici mogu da pregledaju i sa\010Duvaju raspored kao drugi izve\0161taj.</li>'),
unistr('<li><strong>Li\010Dni izve\0161taj</strong> (krajnji korisnik). Samo krajnji korisnik koji je kreirao izve\0161taj mo\017Ee da prika\017Ee, sa\010Duva, preimenuje ili izbri\0161e izve\0161taj.</li>'),
'</ul>',
unistr('<p>Ako \010Duvate prilago\0111ene izve\0161taje, bira\010D za izve\0161taje se prikazuje na traci za pretragu, levo od bira\010Da redova (ako je ta funkcija omogu\0107ena).</p>'),
''))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788368844027723)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U vrhu svake stranice izve\0161taja nalazi se region za pretragu. Ovaj region (ili traka za pretragu) sadr\017Ei slede\0107e funkcije:')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854755212027743)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('<li><strong>Meni sa radnjama</strong> vam omogu\0107ava da prilagodite izve\0161taj. Pogledajte odeljke u nastavku.</li>')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854269730027743)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('<li><strong>Ikona za izbor kolone</strong> vam omogu\0107ava da izaberete koju kolonu \0107ete pretra\017Eivati (ili sve).</li>')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854580113027743)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('<li><strong>Izve\0161taji</strong> prikazuje alternativne podrazumevane i sa\010Duvane privatne ili javne izve\0161taje.</li>')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854442077027743)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('<li><strong>Redovi</strong> pode\0161ava broj zapisa koji \0107e se prikazivati po stranici.</li>')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854361360027743)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Oblast za tekst</strong> vam omogu\0107ava da unesete kriterijume pretrage koji ne razlikuju mala i velika slova (d\017Eoker znakovi se podrazumevaju).</li>'),
unistr('<li><strong>Dugme Idi</strong> izvr\0161ava pretragu. Pretraga se izvr\0161ava i ako pritisnete taster Enter dok se kursor nalazi u oblasti teksta za pretragu.</li>')))
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854688031027743)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('<li><strong>Ikone prikaza</strong> mogu da predstavljaju prikaze ikona, izve\0161taja, detalja, grafikona, grupisanja po elementu i pivota za izve\0161taj ako su definisane.</li>')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788581270027723)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Koristi se za modifikovanje prikazanih kolona. Kolone sa desne strane se prikazuju. Kolone sa leve strane su skrivene. Mo\017Eete da promenite redosled prikazanih kolona koriste\0107i strelice na krajnjoj desnoj strani. Izra\010Dunate kolone imaju prefiks <stron')
||'g>**</strong>.'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788764379027723)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Koristi se za promenu kolona koje se sortiraju i odre\0111uje da li \0107e se'),
unistr('sortirati po rastu\0107em ili opadaju\0107im redosledu. Mo\017Eete da navedete i kako se re\0161avaju'),
unistr('vrednosti <code>NULL</code>. Podrazumevano pode\0161avanje uvek pokazuje vrednosti <code>NULL</code> poslednje ili ih uvek prikazuje kao prve. Rezultuju\0107e sortiranje se prikazuje desno od'),
unistr('zaglavlja kolone u izve\0161taju.</p>')))
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851815602027742)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kada dodate pretplatu, navodite e-adresu (ili vi\0161e e-adresa razdvojenih zarezima), temu e-poruke, u\010Destalost i datume po\010Detka i zavr\0161etka. Tako napravljene e-poruke obuhvataju izvezenu verziju (PDF, Excel, HTML ili CSV) interaktivnog izve\0161taja koji s')
||unistr('adr\017Ei aktuelne podatke uz upotrebu pode\0161avanja izve\0161taja koja su bila prisutna u trenutku dodavanja pretplate.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793436749027724)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Sakrij kolonu'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783851573027721)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>'Istakni'
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794998609027725)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'sr-latn'
,p_message_text=>'Istaknute stavke'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765113533027716)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Isticanje \0107elije, %0 na %1')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800016247027726)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'sr-latn'
,p_message_text=>'Isticanje uslova'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765012011027715)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'sr-latn'
,p_message_text=>'Isticanje reda, %0 na %1'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852413679027742)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Stil isticanja'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756619658027713)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Tip istaknute stavke'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871218286027748)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Horizontalno'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900268162027757)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('1 neaktivno pode\0161avanje')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900368959027757)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neaktivnih pode\0161avanja: %0')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790093971027723)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za interaktivni izve\0161taj')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801006348027727)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107e')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794420474027725)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i izraz izra\010Dunavanja. %0')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129750019735027711)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Krajnji datum mora da bude ve\0107i od po\010Detnog datuma.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809210361027729)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i izraz filtera. %0')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879059981027750)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i upit za filter')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900450365027757)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('1 neva\017Ee\0107e pode\0161avanje')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900578897027757)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107ih pode\0161avanja: %0')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852680223027742)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>'(u minutima)'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869668409027748)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 je u poslednjih %1'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869807458027748)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 je u slede\0107ih %1')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869779631027748)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 nije u poslednjih %1'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869934653027748)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 nije u slede\0107ih %1')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799146294027726)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'sr-latn'
,p_message_text=>'Tastatura'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762839918027715)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Oznaka %0'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793015760027724)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Naslov ose za oznaku'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785384956027722)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodni dan'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785538834027722)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednji sat'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785090482027722)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161li mesec')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785181809027722)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161la nedelja')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785231816027722)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko dana (%0)'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785469957027722)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko sati (%0)'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784831377027722)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>'Poslednjih nekoliko godina (%0)'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784971696027722)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161la godina')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762750122027715)
,p_name=>'APEXIR_LINE'
,p_message_language=>'sr-latn'
,p_message_text=>'Linijski'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759548478027714)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Linijski sa povr\0161inom')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878911932027750)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'sr-latn'
,p_message_text=>'Mapiraj'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793903388027725)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Procenjuje se da \0107e upit prema\0161iti maksimalne dozvoljene resurse. Izmenite pode\0161avanja izve\0161taja i poku\0161ajte ponovo.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775384578027719)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Maksimalni broj redova za ovaj izve\0161taj je %0. Primenite filter da biste smanjili broj zapisa u upitu.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879583755027751)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Maksimum %0'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879757202027751)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Srednja vrednost %0'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129722032231027702)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Poruka'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779620346027720)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre %0 min.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879651778027751)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Minimum %0'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878665022027750)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>'Mesec'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853045562027743)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Mese\010Dno')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792236527027724)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792127642027724)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti sve'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905344431027758)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stati\010Dki ID regiona mora da se navede jer stranica sadr\017Ei vi\0161e interaktivnih izve\0161taja.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758229298027713)
,p_name=>'APEXIR_NAME'
,p_message_language=>'sr-latn'
,p_message_text=>'Ime'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787941599027723)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Nova agregacija'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901198342027757)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Nova kategorija'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129788009977027723)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Novo izra\010Dunavanje')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782701089027721)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785828527027722)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i dan')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785668827027722)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i sat')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786122344027722)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i mesec')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786038487027722)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107a nedelja')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785905049027722)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko dana (%0)')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129785762972027722)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko sati (%0)')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786367468027722)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107ih nekoliko godina (%0)')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786273529027722)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107a godina')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758594664027713)
,p_name=>'APEXIR_NO'
,p_message_language=>'sr-latn'
,p_message_text=>'Ne'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801286894027727)
,p_name=>'APEXIR_NONE'
,p_message_language=>'sr-latn'
,p_message_text=>'-Nijedno-'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852294256027742)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije va\017Ee\0107a e-adresa.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724342774027703)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije izabrana nijedna kolona za prikaz. Koristite <strong>Kolone</strong> u meniju sa radnjama da biste prikazali kolone.'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797793269027726)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vrednosti null uvek na po\010Detku')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797684035027726)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednosti null uvek na kraju'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798161324027726)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'sr-latn'
,p_message_text=>'Sortiranje za null %0'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794560728027725)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vreme vra\0107anja u pro\0161lost mora da bude izra\017Eeno brojevima.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794121839027725)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Niz mora da bude numeri\010Dki.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798605159027726)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Operator'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757192445027713)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('narand\017Easto')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871145601027748)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Orijentacija'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759006398027714)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'sr-latn'
,p_message_text=>'Ostalo'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725285340027703)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Paginacija za %0'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739218575027707)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Orijentacija stranice'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739960751027708)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Polo\017Eeno')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740081235027708)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Uspravno'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739127755027707)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Veli\010Dina stranice')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739745130027708)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'sr-latn'
,p_message_text=>'A3'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739652918027708)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'sr-latn'
,p_message_text=>'A4'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739841776027708)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prilago\0111eno')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739402498027708)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Legal'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739323981027707)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Letter'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739592472027708)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'sr-latn'
,p_message_text=>'Tabloid'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880007408027751)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Procenat ukupnog broja %0 (%)'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879254788027750)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Procenat ukupnog zbira %0 (%)'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878265805027750)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Procenat ukupnog broja'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878138666027750)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'sr-latn'
,p_message_text=>'Procenat ukupnog zbira'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762614204027715)
,p_name=>'APEXIR_PIE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kru\017Eni')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828359604027735)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'sr-latn'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829825572027735)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Potrebno je navesti agregaciju.'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830085646027736)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ne mo\017Eete da agregirate na izabranoj koloni kao na koloni reda.')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829241685027735)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Pivot kolone'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829065385027735)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'sr-latn'
,p_message_text=>'Pivot kolona %0'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829637271027735)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Potrebno je navesti pivot kolonu.'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682134472027690)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Maksimalni broj redova za pivot upit ograni\010Dava broj redova u osnovnom upitu, ne i broj prikazanih redova. Va\0161 osnovni upit prema\0161uje maksimalni broj redova (%0). Primenite filter da biste smanjili broj zapisa u osnovnom upitu.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829586523027735)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'sr-latn'
,p_message_text=>'Sortiranje pivota'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795566451027725)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pivot kolona sadr\017Ei previ\0161e specijalnih vrednosti - nije mogu\0107e generisati SQL za pivot.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726580270027704)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz pivota za %0'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852366772027742)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Pregled'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782894989027721)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodno'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129877167771027750)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'sr-latn'
,p_message_text=>'Primarno'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853349902027743)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Primarni izve\0161taj')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129739055463027707)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obuhvati oznake pristupa\010Dnosti')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699865024027695)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ukloni oboga\0107eni tekst')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808232009027729)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Privatno'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763265536027715)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'sr-latn'
,p_message_text=>'Javno'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758821746027714)
,p_name=>'APEXIR_RED'
,p_message_language=>'sr-latn'
,p_message_text=>'crveno'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905247968027758)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stati\010Dki ID regiona %0 ne postoji.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792319509027724)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792442100027724)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni sve'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900648846027757)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni grafikon'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791924355027724)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni kontrolni prelom'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791698622027724)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni filter'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791734712027724)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ukloni vra\0107anje u pro\0161lost')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900746640027757)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni grupisanje po elementu'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792084709027724)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni isticanje'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900880022027757)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukloni pivot'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881900540027751)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ukloni izve\0161taj')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863798640027746)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Preimenuj podrazumevani izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801567044027727)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Preimenuj izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783157948027721)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880196232027751)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taji')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755385812027713)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ne postoji sa\010Duvani interaktivni izve\0161taj sa alijasom %0.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808598727027729)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj ne postoji.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755409389027713)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ne postoji sa\010Duvani ID interaktivnog izve\0161taja %0.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129799852174027726)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161avanja izve\0161taja')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724080354027703)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161avanja izve\0161taja za %0')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780178767027720)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prikaz izve\0161taja')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784382487027722)
,p_name=>'APEXIR_RESET'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetuj'
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763427978027715)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vratite izve\0161taj na podrazumevana pode\0161avanja.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758674424027714)
,p_name=>'APEXIR_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Red'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876273674027750)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ne mo\017Eete da koristite ROWID kao primarnu kolonu klju\010Da za REST izvor podataka.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791026725027724)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>'Redovi'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854071686027743)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj redova po stranici'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829393146027735)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolone reda'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829178598027735)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona reda %0'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829741595027735)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Potrebno je navesti kolonu reda.'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829971445027735)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona reda mora da se razlikuje od pivot kolone.'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805576514027728)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Filter reda'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780233445027720)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Red %0 od %1'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784511580027722)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tekst reda sadr\017Ei')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757933894027713)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795158557027725)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvani izve\0161taj')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795025900027725)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvani izve\0161taj = "%0"')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797222841027726)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Trenutna pode\0161avanja izve\0161taja \0107e se koristiti kao podrazumevana za sve korisnike.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129863621238027746)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj podrazumevani izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129784251392027721)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj izve\0161taj')
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129901006893027757)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj izve\0161taj *')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855026010027743)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129789919196027723)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Traka za pretragu'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129723357679027703)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'Traka za pretragu za %0'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900997620027757)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga: %0'
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860501872027745)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj o pretrazi')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844525185027740)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Izabrane kolone'
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759685955027714)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'- Izaberite kolonu -'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783512502027721)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite kolone'
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763193114027715)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>'- Izaberite funkciju -'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790778404027724)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'- Izaberite grupisanje prema koloni -'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828819417027735)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'- Izaberite pivot kolonu -'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879141276027750)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite red'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828925140027735)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'- Izaberite red kolone -'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129710456432027699)
,p_name=>'APEXIR_SEND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161alji')
,p_is_js_message=>true
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732954075027706)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161alji e-po\0161tom')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758385845027713)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'sr-latn'
,p_message_text=>'Redosled'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783765484027721)
,p_name=>'APEXIR_SORT'
,p_message_language=>'sr-latn'
,p_message_text=>'Sortiraj'
,p_is_js_message=>true
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793249391027724)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sortiraj rastu\0107e')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793388886027724)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sortiraj opadaju\0107e')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881361820027751)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'sr-latn'
,p_message_text=>'Redosled sortiranja'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787608541027723)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'sr-latn'
,p_message_text=>'razmak'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798822328027726)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'sr-latn'
,p_message_text=>'Status %0'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852753196027742)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretplata'
,p_is_js_message=>true
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878507136027750)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161ava se')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129697598124027695)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Presko\010Di ako nema prona\0111enih podataka')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878414036027750)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Dev\0161i od')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129879325526027750)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'sr-latn'
,p_message_text=>'Zbir %0'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870282962027748)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0, Izve\0161taj = %1, Prikaz = %2')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129757287951027713)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Boja teksta'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775906405027719)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'dan(a)'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775883596027719)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\010D.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775770968027719)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'sr-latn'
,p_message_text=>'min.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776147280027719)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>'mes.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776036891027719)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>'ned.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129776243927027719)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>'god.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881741154027751)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Di/isklju\010Di')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792587190027724)
,p_name=>'APEXIR_TOP'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrh'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875240485027749)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Razgrupisana kolona'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794039642027725)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'sr-latn'
,p_message_text=>'Naziv istaknute stavke mora da bude jedinstven.'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761934378027715)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('nepodr\017Eani tip podataka')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792637131027724)
,p_name=>'APEXIR_UP'
,p_message_language=>'sr-latn'
,p_message_text=>'Gore'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794278619027725)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Unesite va\017Ee\0107u boju.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794315834027725)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Unesite va\017Ee\0107u masku formata.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759190884027714)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129793117651027724)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Naslov ose za vrednost'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800915902027727)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost je obavezna'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129762519852027715)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Vertikalna kolona'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129871301791027748)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Vertikalno'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800200907027726)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz grafikona'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858826188027744)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei detalj')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903101263027758)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prikaz %0 nije definisan za izve\0161taj.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858961964027744)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei grupu prema')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858789089027744)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei ikone')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129828637303027735)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei pivot')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129800394769027726)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prikaz izve\0161taja')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129852967676027742)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'sr-latn'
,p_message_text=>'Nedeljno'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129783017061027721)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Radni izve\0161taj')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880746783027751)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 dan(a)'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880681029027751)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 \010D.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880530895027751)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 min.'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880962650027751)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 mes.'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129880879480027751)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 ned.'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129881045089027751)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 god.'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129878792912027750)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Godina'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756955288027713)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\017Euto')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129758485405027713)
,p_name=>'APEXIR_YES'
,p_message_language=>'sr-latn'
,p_message_text=>'Da'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129792999398027724)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 sadr\017Ei < ili >, \0161to su neva\017Ee\0107i znakovi.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129816836670027732)
,p_name=>'APEX_REGION'
,p_message_language=>'sr-latn'
,p_message_text=>'Region'
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707960164027698)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otpakivanje ZIP datoteke nije mogu\0107e.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707848464027698)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Potpis za kraj centralnog direktorijuma nije prona\0111en. Ova datoteka nije ZIP datoteka.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129738965025027707)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('API preduslov je prekr\0161en')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761079333027714)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e preuzeti vrednost za pode\0161avanje aplikacije %0 jer su povezane opcije verzije onemogu\0107ene.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760966802027714)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e podesiti vrednost za pode\0161avanje aplikacije %0 jer su povezane opcije verzije onemogu\0107ene.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873589158027749)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vrednost za pode\0161avanje aplikacije %0 nije va\017Ee\0107a')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873438389027749)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zahtevano pode\0161avanje aplikacije %0 nije definisano')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873631885027749)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pode\0161avanje aplikacije %0 ne mo\017Ee da se podesi na vrednost null')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747507898027710)
,p_name=>'BACK'
,p_message_language=>'sr-latn'
,p_message_text=>'Nazad'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129729940996027705)
,p_name=>'BUILDER'
,p_message_language=>'sr-latn'
,p_message_text=>'Program za izradu'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803593190027727)
,p_name=>'BUTTON LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Oznaka dugmeta'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726881422027704)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'sr-latn'
,p_message_text=>'Dugme CSS klase'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765336085027716)
,p_name=>'BUTTON_ID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Generisani ID dugmeta \0107e biti ili stati\010Dki ID dugmeta, ako je definisan, ili, ako nije, bi\0107e interno generisan ID u formatu ''B'' || [Interni ID dugmeta]')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699318034027695)
,p_name=>'CANDLESTICK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sve\0107njak')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813318128027730)
,p_name=>'CENTER'
,p_message_language=>'sr-latn'
,p_message_text=>'Sredina'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759969297027714)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 zahtev'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749983881027711)
,p_name=>'CHECK$'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('bira\010D reda')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875368051027749)
,p_name=>'CHECKED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ozna\010Deno')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851706904027742)
,p_name=>'COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809347085027729)
,p_name=>'COMMENTS'
,p_message_language=>'sr-latn'
,p_message_text=>'Napomene'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790328479027723)
,p_name=>'CONTINUE'
,p_message_language=>'sr-latn'
,p_message_text=>'Nastavi'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747812429027710)
,p_name=>'COPYRIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Copyright &copy; 1999, %0, Oracle i/ili pridru\017Eena privredna dru\0161tva.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796028842027725)
,p_name=>'COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803057399027727)
,p_name=>'CREATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Kreiraj'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858461882027744)
,p_name=>'CREATED'
,p_message_language=>'sr-latn'
,p_message_text=>'Kreirano'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858530371027744)
,p_name=>'CREATED_BY'
,p_message_language=>'sr-latn'
,p_message_text=>'Autor'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779458349027720)
,p_name=>'CREATED_ON'
,p_message_language=>'sr-latn'
,p_message_text=>'Datum kreiranja'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790565912027723)
,p_name=>'CUSTOM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prilago\0111eno')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801707294027727)
,p_name=>'CUSTOMIZE'
,p_message_language=>'sr-latn'
,p_message_text=>'Prilagodi'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803726415027727)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Resetovanje \017Eeljenih opcija stranice za korisnika %0.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803880965027728)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izmenjene su \017Eeljene opcije za korisnika %0.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803631555027727)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Resetovanje \017Eeljenih opcija stranice za korisnika %0.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764789300027715)
,p_name=>'DAILY'
,p_message_language=>'sr-latn'
,p_message_text=>'Dnevno'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728127873027704)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otpremljena datoteka nije va\017Ee\0107a ili ima pogre\0161nu oznaku tipa.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760136287027714)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Upotrebljen je neva\017Ee\0107i bira\010D za XML ili JSON.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705229841027697)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Profil podataka i otpremljena datoteka ne sadr\017Ee kolone ciljne datoteke.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819135496027732)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nisu prona\0111eni podaci u otpremljenoj datoteci.')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819228385027732)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nisu prona\0111eni podaci u radnom listu "%0".')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725017740027703)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Navedena datoteka nije XLSX datoteka.'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691029329027693)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161eno je u\010Ditavanje podataka: broj obra\0111enih redova je %0.')
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693361738027693)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditavanje podataka je dovr\0161eno: redovi (%0) su obra\0111eni sa 1 gre\0161kom.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693607656027694)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditavanje podataka je dovr\0161eno: redovi (%0) su obra\0111eni sa vi\0161e gre\0161aka (%1).')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693411479027693)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zavr\0161eno je u\010Ditavanje podataka: obra\0111en je 1 red.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129707771056027698)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditavanje podataka je zavr\0161eno: 1 red je obra\0111en sa gre\0161kom.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129693581462027693)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditavanje podataka je zavr\0161eno: 1 red je obra\0111en bez gre\0161ke.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826261801027734)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'sr-latn'
,p_message_text=>'Ciljna kolona'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733447955027706)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ne u\010Ditavaj')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733523834027706)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka u pripremnoj obradi')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826306093027734)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'sr-latn'
,p_message_text=>'Izvorna kolona'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827109137027735)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>'Format datuma/vremena'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733222862027706)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'sr-latn'
,p_message_text=>'Umetni red'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889340951027754)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Preuzimanje vrednosti za tra\017Eenje nije uspelo.')
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859035540027744)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'sr-latn'
,p_message_text=>'Podaci / mapiranje tabele'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827289983027735)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Red'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733644698027706)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Redosled : radnja'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129820923506027733)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>'Pravilo transformacije nije uspelo'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733362876027706)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('A\017Euriraj red')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795666967027725)
,p_name=>'DATE'
,p_message_language=>'sr-latn'
,p_message_text=>'Datum'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768562911027717)
,p_name=>'DAY'
,p_message_language=>'sr-latn'
,p_message_text=>'dan'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768680207027717)
,p_name=>'DAYS'
,p_message_language=>'sr-latn'
,p_message_text=>'dan(a)'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809051109027729)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otklanjanje gre\0161aka nije omogu\0107eno za ovu aplikaciju.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860758123027745)
,p_name=>'DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>'Podrazumevano'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769385693027717)
,p_name=>'DELETE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('izbri\0161i')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744906035027709)
,p_name=>'DELETE_MSG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\017Delite li da obavite ovu radnju brisanja?')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129724563550027703)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'sr-latn'
,p_message_text=>'Zamene sesije'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725439699027703)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Omogu\0107i zamene sesije')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726366006027703)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom u\010Ditavanja zamena sesije.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726114263027703)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom \010Duvanja zamena sesije.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726069474027703)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zamene sesije su sa\010Duvane. Zatvorite ovaj dijalog da biste videli promene.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129699243523027695)
,p_name=>'DIAL_PCT'
,p_message_language=>'sr-latn'
,p_message_text=>'Biranje (procenat)'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740248205027708)
,p_name=>'DOWNLOAD'
,p_message_language=>'sr-latn'
,p_message_text=>'Preuzmi'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859871016027745)
,p_name=>'DUP_USER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Duplikat korisni\010Dkog imena na listi')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748648870027710)
,p_name=>'EDIT'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi'
,p_is_js_message=>true
,p_version_scn=>2693532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759810902027714)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('E-adresa "%0" nije prona\0111ena.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742590826027708)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\0161iljalac ove e-poruke je %0.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860001546027745)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('E-adresa je preduga\010Dka. Ograni\010Denje je 240 znakova.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790266626027723)
,p_name=>'ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821004522027733)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e podesiti vrednost izvora stavke stranice za region sa parcijalnim osve\017Eavanjem stranice')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781538953027721)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'sr-latn'
,p_message_text=>'Autor'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742808972027709)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Lozinka je istekla'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735283284027706)
,p_name=>'FILE_EMPTY'
,p_message_language=>'sr-latn'
,p_message_text=>'Datoteka je prazna.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825016497027734)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Veli\010Dina otpremljene datoteke je bila ve\0107a od %0 MB. Otpremite manju datoteku.')
,p_version_scn=>2693550
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745154104027709)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Potvrda identiteta korisnika nije uspela i jedna ili vi\0161e datoteka nisu otpremljene.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745243880027709)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ova instanca ne dozvoljava neovla\0161\0107enim korisnicima da otpremaju datoteke.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825141250027734)
,p_name=>'FILTERS'
,p_message_language=>'sr-latn'
,p_message_text=>'Filteri'
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803178263027727)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do 1 gre\0161ke')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802310201027727)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161aka (%0)')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747781623027710)
,p_name=>'FORM_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 od %1'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786725111027722)
,p_name=>'GO'
,p_message_language=>'sr-latn'
,p_message_text=>'Idi'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129888954084027753)
,p_name=>'HELP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107')
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730088438027705)
,p_name=>'HOME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Detak')
,p_is_js_message=>true
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768369540027717)
,p_name=>'HOUR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\010D.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768481902027717)
,p_name=>'HOURS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\010D.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749820934027711)
,p_name=>'ICON'
,p_message_language=>'sr-latn'
,p_message_text=>'Ikona %0'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727140878027704)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomo\0107 za opsecanje ikone')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728350255027704)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Prevucite ikonu, pa upotrebite kliza\010D za zumiranje da biste je premestili u okviru kadra.</p>'),
'',
unistr('<p>Kada otpremate novu ikonu, njena veli\010Dina se menja kako bi se uklopila u tri formata: favikon, mala i velika ikona.</p>'),
'',
unistr('<p>Kada je alatka za opsecanje ikone u fokusu, dostupne su slede\0107e pre\010Dice na tastaturi:</p>'),
'<ul>',
'    <li>Strelica ulevo: Pomeranje slike ulevo*</li>',
'    <li>Strelica nagore: Pomeranje slike nagore*</li>',
'    <li>Strelica udesno: Pomeranje slike udesno*</li>',
'    <li>Strelica nadole: Pomeranje slike nadole*</li>',
unistr('    <li>I: Uve\0107avanje prikaza</li>'),
'    <li>O: Umanjivanje prikaza</li>',
'    <li>L: Rotiranje ulevo</li>',
'    <li>R: Rotiranje udesno</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Dr\017Eite taster Shift da biste br\017Ee pomerali</em></p>')))
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733821115027706)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Prevucite da biste pomerili ikonu'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733987877027706)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pomerajte kliza\010D da biste prilagodili nivo zumiranja')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129726980885027704)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ure\0111ivanje ikone aplikacije')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727297958027704)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom \010Duvanja ikone')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809627095027729)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> Ova aplikacija koristi zastarele ikone. Ako otpremite novu ikonu, sve zastarele ikone \0107e se zameniti.</p>')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727850766027704)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'sr-latn'
,p_message_text=>'Otpremanje nove ikone'
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804045039027728)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i kredencijali za prijavu')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905185448027758)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107a vrednost za parametar: %0')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798368645027726)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kao podrazumevana pode\0161avanja izve\0161taja')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798451443027726)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kao imenovani izve\0161taj')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780320643027720)
,p_name=>'IR_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 - gre\0161ka. %1')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780000194027720)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e izra\010Dunati navigaciju obrascem. %0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755658893027713)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111en interaktivni izve\0161taj.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755039207027712)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Oblast interaktivnog izve\0161taja ne postoji u aplikaciji %0, stranici %1 i regionu %2.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129798280944027726)
,p_name=>'IR_STAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikazuje se samo za programere'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786484114027722)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Za upit izve\0161taja potreban je jedinstveni klju\010D radi identifikacije svakog reda. Isporu\010Deni klju\010D ne mo\017Ee da se koristi za ovaj upit. Defini\0161ite kolonu jedinstvenog klju\010Da. %0')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786562987027722)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Za upit izve\0161taja potreban je jedinstveni klju\010D radi identifikacije svakog reda. Isporu\010Deni klju\010D ne mo\017Ee da se koristi za ovaj upit. Uredite atribute izve\0161taja da biste definisali kolonu jedinstvenog klju\010Da. %0')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827448146027735)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'sr-latn'
,p_message_text=>'Odaberite datoteku'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827385413027735)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'sr-latn'
,p_message_text=>'Prevucite i otpustite datoteku ovde ili'
,p_is_js_message=>true
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748088679027710)
,p_name=>'ITEMS'
,p_message_language=>'sr-latn'
,p_message_text=>'Stavke'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781740445027721)
,p_name=>'ITEM_VALUE'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost stavke'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796395132027725)
,p_name=>'LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Oznaka'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808986689027729)
,p_name=>'LANGUAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Jezik'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769015337027717)
,p_name=>'LAST'
,p_message_language=>'sr-latn'
,p_message_text=>'poslednje'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745045604027709)
,p_name=>'LENGTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Du\017Eina')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803313446027727)
,p_name=>'LOGIN'
,p_message_language=>'sr-latn'
,p_message_text=>'Prijava'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844950995027740)
,p_name=>'MANAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Upravljanje'
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129908050237027759)
,p_name=>'MAXIMIZE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uve\0107aj')
,p_is_js_message=>true
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768124302027716)
,p_name=>'MINUTE'
,p_message_language=>'sr-latn'
,p_message_text=>'min.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768214106027717)
,p_name=>'MINUTES'
,p_message_language=>'sr-latn'
,p_message_text=>'min.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860246728027745)
,p_name=>'MISSING_AT'
,p_message_language=>'sr-latn'
,p_message_text=>'U domenu e-adrese nedostaje "@".'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860482048027745)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Upozorenje: Za stranicu dijaloga %0 u aplikaciji %1 nije definisan nijedan \0161ablon stranice dijaloga.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860109253027745)
,p_name=>'MISSING_DOT'
,p_message_language=>'sr-latn'
,p_message_text=>'U domenu e-adrese nedostaje ".".'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806458547027728)
,p_name=>'MODULE'
,p_message_language=>'sr-latn'
,p_message_text=>'Modul'
,p_version_scn=>2693544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760681903027714)
,p_name=>'MONTH'
,p_message_language=>'sr-latn'
,p_message_text=>'Mesec'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764581516027715)
,p_name=>'MONTHLY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Mese\010Dno')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760782924027714)
,p_name=>'MONTHS'
,p_message_language=>'sr-latn'
,p_message_text=>'mes.'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795976542027725)
,p_name=>'MOVE'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866723820027747)
,p_name=>'MOVE_FROM'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti iz'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866879523027747)
,p_name=>'MOVE_TO'
,p_message_language=>'sr-latn'
,p_message_text=>'Premesti u'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782948677027721)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom brisanja vi\0161e redova: red= %0, %1, %2')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781951746027721)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'sr-latn'
,p_message_text=>'Ne sme da bude javni korisnik'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730546472027705)
,p_name=>'NAME'
,p_message_language=>'sr-latn'
,p_message_text=>'Ime'
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796163021027725)
,p_name=>'NEW'
,p_message_language=>'sr-latn'
,p_message_text=>'Novo'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760460333027714)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Mo\017Eete da se prijavite na %0 tako \0161to \0107ete oti\0107i na:')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760538348027714)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Novo obave\0161tenje za %0 nalog')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889110411027753)
,p_name=>'NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806356131027728)
,p_name=>'NO'
,p_message_language=>'sr-latn'
,p_message_text=>'Ne'
,p_version_scn=>2693544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129903258980027758)
,p_name=>'NOBODY'
,p_message_language=>'sr-latn'
,p_message_text=>'niko'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769417289027717)
,p_name=>'NOT'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812309560027730)
,p_name=>'NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije null'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782087192027721)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije %0'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801878663027727)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('podaci nisu prona\0111eni')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811859583027730)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111en izve\0161taj koji je mogu\0107e a\017Eurirati. Radnje a\017Euriranja i brisanja vi\0161e redova mogu\0107e je obaviti samo na tabularnim obrascima tipa ''Izve\0161taj koji je mogu\0107e a\017Eurirati''.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812781303027730)
,p_name=>'OK'
,p_message_language=>'sr-latn'
,p_message_text=>'U redu'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808080803027729)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'sr-latn'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129906973541027759)
,p_name=>'ORA_06550'
,p_message_language=>'sr-latn'
,p_message_text=>'ORA-06550: red %0, kolona %1'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129857899159027744)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Koristite zastareli veb pregleda\010D. Listu podr\017Eanih pregleda\010Da potra\017Eite u vodi\010Du za instaliranje usluge Oracle APEX.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752853049027712)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zahtevan je neva\017Ee\0107i skup redova, izvorni podaci izve\0161taja su izmenjeni.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774897124027719)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Potrebno je navesti va\017Ee\0107i broj strane, na primer p?n=1234.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779088594027720)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107e')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779125355027720)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Slede\0107i skup')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779213189027720)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodno'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129779317335027720)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodni skup'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889024899027753)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite paginaciju'
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129819090374027732)
,p_name=>'PASSWORD'
,p_message_language=>'sr-latn'
,p_message_text=>'Lozinka'
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129759701777027714)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'sr-latn'
,p_message_text=>'Lozinka za %0 je promenjena.'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747460298027710)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka nije usagla\0161ena sa pravilima slo\017Eenosti lozinke ove lokacije.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746518795027710)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>'Nova lozinka mora da se razlikuje od stare lozinke za najmanje %0 znaka.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747104734027710)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka ne sme da sadr\017Ei korisni\010Dko ime.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747335684027710)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka sadr\017Ei zabranjenu jednostavnu re\010D.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747294259027710)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka ne sme da sadr\017Ei naziv radnog prostora.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746402035027710)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Minimalni broj znakova koji lozinka mora da sadr\017Ei je %0.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746606504027710)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka mora da sadr\017Ei bar jedan slovni znak (%0).')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747028891027710)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka mora da sadr\017Ei bar jedan mali slovni znak.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746730076027710)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka mora da sadr\017Ei najmanje jedan numeri\010Dki znak (0123456789).')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746817609027710)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka mora da sadr\017Ei najmanje jedan znak interpunkcije (%0).')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746947302027710)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka mora da sadr\017Ei bar jedan veliki slovni znak.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760277367027714)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obave\0161tenje o resetovanju lozinke')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745318501027709)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lozinka se ne mo\017Ee da se koristi jer je upotrebljena u prethodnom periodu od %0 dana.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742076682027708)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>'Grafikon procenta'
,p_is_js_message=>true
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833674572027737)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Stavke'
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129833708092027737)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'sr-latn'
,p_message_text=>'Stavka'
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807883708027729)
,p_name=>'PERCENT'
,p_message_language=>'sr-latn'
,p_message_text=>'Procenat'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777148908027719)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Obratite se administratoru.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889223833027753)
,p_name=>'PREVIOUS'
,p_message_language=>'sr-latn'
,p_message_text=>'Prethodno'
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825887284027734)
,p_name=>'PRINT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Od\0161tampaj')
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806688901027728)
,p_name=>'PRIVILEGES'
,p_message_language=>'sr-latn'
,p_message_text=>'Privilegije'
,p_version_scn=>2693545
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129775256689027719)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'sr-latn'
,p_message_text=>'Reference regiona'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796242029027725)
,p_name=>'REPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806562903027728)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Period izve\0161tavanja')
,p_version_scn=>2693545
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889475984027754)
,p_name=>'REPORT_LABEL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj: %0')
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807277952027729)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Izve\0161taj - ukupno')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752965018027712)
,p_name=>'RESET'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetuj paginaciju'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781666190027721)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetuj paginaciju'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129811759162027730)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'sr-latn'
,p_message_text=>'Resetuj lozinku'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787525526027723)
,p_name=>'RESTORE'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrati'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129821151845027733)
,p_name=>'RESULTS'
,p_message_language=>'sr-latn'
,p_message_text=>'Rezultati'
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812847109027730)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Povratak u aplikaciju.'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129813270784027730)
,p_name=>'RIGHT'
,p_message_language=>'sr-latn'
,p_message_text=>'Desno'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129845260871027740)
,p_name=>'ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Red %0'
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795815632027725)
,p_name=>'ROW_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>'Broj redova'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685687792027691)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Pitajte Oracle'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685911718027691)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zatvori opciju Pitajte Oracle'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686249351027691)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lista obave\0161tenja')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685864906027691)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Otvori opciju Pitajte Oracle'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686149765027691)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'sr-latn'
,p_message_text=>'Mapa proizvoda'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686069191027691)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Lista predloga'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686994780027691)
,p_name=>'RW_CLEAR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Obri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686831888027691)
,p_name=>'RW_CLOSE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zatvori'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686686209027691)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei vi\0161e')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687020609027691)
,p_name=>'RW_GO_TO'
,p_message_language=>'sr-latn'
,p_message_text=>'Idi na'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686405212027691)
,p_name=>'RW_GP_STEP'
,p_message_language=>'sr-latn'
,p_message_text=>'Korak'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686556187027691)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'sr-latn'
,p_message_text=>'od'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686355643027691)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uklju\010Di/isklju\010Di prikaz koraka')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685461404027691)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'sr-latn'
,p_message_text=>'Sakrij lozinku'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129686710687027691)
,p_name=>'RW_OPEN'
,p_message_language=>'sr-latn'
,p_message_text=>'Otvori'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685219811027691)
,p_name=>'RW_ORACLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129685319634027691)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei lozinku')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129687160495027692)
,p_name=>'RW_START'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Po\010Detak')
,p_is_js_message=>true
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129812228181027730)
,p_name=>'SAVE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sa\010Duvaj')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808421275027729)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>'Alternativno podrazumevano'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808860716027729)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Opis'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808301854027729)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>'Primarno podrazumevano'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809172980027729)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dostupno je vi\0161e od slede\0107eg broja redova: %0. Pove\0107ajte bira\010D redova da biste prikazali vi\0161e redova.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876520369027750)
,p_name=>'SEARCH'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768072089027716)
,p_name=>'SECONDS'
,p_message_language=>'sr-latn'
,p_message_text=>'sek.'
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807984908027729)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'sr-latn'
,p_message_text=>'Pogledajte priloge'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868535335027747)
,p_name=>'SELECT_ROW'
,p_message_language=>'sr-latn'
,p_message_text=>'Izaberite red'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807610176027729)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podesite re\017Eim \010Dita\010Da ekrana na isklju\010Deno')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807798431027729)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Podesite re\017Eim \010Dita\010Da ekrana na uklju\010Deno')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129803943688027728)
,p_name=>'SHOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870319612027748)
,p_name=>'SHOW_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei sve')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129895101500027755)
,p_name=>'SIGN_IN'
,p_message_language=>'sr-latn'
,p_message_text=>'Prijavljivanje'
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129846013797027740)
,p_name=>'SIGN_OUT'
,p_message_language=>'sr-latn'
,p_message_text=>'Odjavljivanje'
,p_version_scn=>2693557
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796838546027725)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre %0 dana'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804482850027728)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 dan(a) od sada\0161njeg trenutka')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796783845027725)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pre %0 \010D.')
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804379533027728)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 \010D. od sada\0161njeg trenutka')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796663434027725)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre %0 min.'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804213668027728)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 min. od sada\0161njeg trenutka')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797006911027725)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre %0 mes.'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804664363027728)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 mes. od sada\0161njeg trenutka')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804812742027728)
,p_name=>'SINCE_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>'Sada'
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796549555027725)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre %0 sek.'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804123935027728)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 sek. od sada\0161njeg trenutka')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129796920036027725)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre %0 ned.'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804548335027728)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ned. od sada\0161njeg trenutka')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129797154103027725)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'sr-latn'
,p_message_text=>'Pre %0 god.'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129804731495027728)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 god. od sada\0161njeg trenutka')
,p_is_js_message=>true
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790676116027724)
,p_name=>'STANDARD'
,p_message_language=>'sr-latn'
,p_message_text=>'Standard'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807592160027729)
,p_name=>'START_DATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Datum po\010Detka')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742770184027709)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dobili ste ovu e-poruku od pretplate na interaktivni izve\0161taj \010Diji je autor %0.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904347574027758)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretplate'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853799308027743)
,p_name=>'TAB'
,p_message_language=>'sr-latn'
,p_message_text=>'Kartica'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767991837027716)
,p_name=>'TITLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Naslov'
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747671529027710)
,p_name=>'TODAY'
,p_message_language=>'sr-latn'
,p_message_text=>'Danas'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807125369027729)
,p_name=>'TOTAL'
,p_message_language=>'sr-latn'
,p_message_text=>'Ukupno'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748910020027710)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Maksimalan broj kolona koje je mogu\0107e izabrati je %0.')
,p_version_scn=>2693532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704711431027697)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Skupi sve'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705393069027697)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'sr-latn'
,p_message_text=>'Skupi sve ispod'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704366821027697)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>'Razvij sve'
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705058897027697)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pro\0161iri sve ispod')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129705573400027697)
,p_name=>'TREE.REPARENT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ponovo postavi kao nadre\0111eno')
,p_is_js_message=>true
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827674346027735)
,p_name=>'TREES'
,p_message_language=>'sr-latn'
,p_message_text=>'Stabla'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129870414758027748)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Obavezno'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129791327370027724)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>'Neodobreno'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129841516487027739)
,p_name=>'UNAVAILABLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije dostupno'
,p_version_scn=>2693554
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805227088027728)
,p_name=>'UNKNOWN'
,p_message_language=>'sr-latn'
,p_message_text=>'Nepoznato'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743616330027709)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do nepoznate gre\0161ke potvrde identiteta.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745814555027709)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ako vi\0161e ne \017Eelite da primate e-poruke, kliknite na <a href="%0">otka\017Ei pretplatu</a> da biste upravljali pretplatom.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129742644038027708)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ako vi\0161e ne \017Eelite da primate e-poruke, posetite slede\0107u URL adresu da biste upravljali pretplatom:')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129782113041027721)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('nepodr\017Eani tip podataka')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769293552027717)
,p_name=>'UPDATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('a\017Euriraj')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767883061027716)
,p_name=>'UPDATED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('A\017Eurirano')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711024170027699)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'sr-latn'
,p_message_text=>'Nadogradnja je u toku'
,p_version_scn=>2693526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129711316403027699)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Oracle APEX se nadogra\0111uje na noviju verziju. Ovaj proces obi\010Dno traje do 3 minuta.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774690868027718)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'sr-latn'
,p_message_text=>'Zahtevani URL je zabranjen. Obratite se administratoru.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129795748223027725)
,p_name=>'USER'
,p_message_language=>'sr-latn'
,p_message_text=>'Korisnik'
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129818941850027732)
,p_name=>'USERNAME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Korisni\010Dko ime')
,p_version_scn=>2693548
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129860389745027745)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Korisni\010Dko ime je preduga\010Dko. Ograni\010Denje broja znakova je %0.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802835457027727)
,p_name=>'USERS'
,p_message_language=>'sr-latn'
,p_message_text=>'korisnik(a)'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129859937089027745)
,p_name=>'USER_EXISTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Korisni\010Dko ime ve\0107 postoji.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129873720298027749)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Slika profila za korisnika %0'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735656638027706)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'sr-latn'
,p_message_text=>'Automatizacija - %0'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734172512027706)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Stranica %0 - %1 '
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737019833027707)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129737117207027707)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129736063773027707)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'sr-latn'
,p_message_text=>'Pretraga konfiguracije - %0'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735999068027706)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Deljena dinami\010Dka lista vrednosti - %0')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129735761863027706)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'sr-latn'
,p_message_text=>'Definicija zadatka - %0'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129734245284027706)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'sr-latn'
,p_message_text=>'Tok rada - %0 '
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129756335104027713)
,p_name=>'VALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Va\017Ee\0107e')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129747975677027710)
,p_name=>'VALIDATIONS'
,p_message_language=>'sr-latn'
,p_message_text=>'Provere ispravnosti'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808634975027729)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost mora da bude navedena.'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854940488027743)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost mora da bude navedena za %0'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777501910027719)
,p_name=>'VERTICAL'
,p_message_language=>'sr-latn'
,p_message_text=>'vertikalno'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769154850027717)
,p_name=>'VIEW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('prika\017Ei ')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802902821027727)
,p_name=>'VIEWS'
,p_message_language=>'sr-latn'
,p_message_text=>'prikaz(a)'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809438591027729)
,p_name=>'VIEW_ALL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prika\017Ei sve')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749378188027711)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'sr-latn'
,p_message_text=>'Vizuelno skrivena veza'
,p_is_js_message=>true
,p_version_scn=>2693533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129790133875027723)
,p_name=>'WARNING'
,p_message_language=>'sr-latn'
,p_message_text=>'Upozorenje'
,p_is_js_message=>true
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768717865027717)
,p_name=>'WEEK'
,p_message_language=>'sr-latn'
,p_message_text=>'ned.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764633810027715)
,p_name=>'WEEKLY'
,p_message_language=>'sr-latn'
,p_message_text=>'Nedeljno'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768836901027717)
,p_name=>'WEEKS'
,p_message_language=>'sr-latn'
,p_message_text=>'ned.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808770139027729)
,p_name=>'WELCOME_USER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dobro do\0161li: %0')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806907206027729)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111ena je neva\017Ee\0107a vrednost, potvrdite unete podatke.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129807029023027729)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111ena je neva\017Ee\0107a vrednost, potvrdite unete podatke.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744816188027709)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111ena je neva\017Ee\0107a vrednost datuma, potvrdite format datuma.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806889670027728)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111ena je neva\017Ee\0107a vrednost broja, potvrdite format broja.')
,p_version_scn=>2693545
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755940464027713)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111ena je neva\017Ee\0107a vrednost oznake vremena, potvrdite format oznake vremena.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780424010027720)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e povezati "%0". Koristite dvostruke navodnike za stavke od vi\0161e bajtova ili potvrdite da je du\017Eina stavke 30 bajtova ili manje. Upotrebite v() sintaksu za referenciranje stavki du\017Eih od 30 bajtova.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770288480027717)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'sr-latn'
,p_message_text=>'Pristup je zabranila %0 bezbednosna provera'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772763874027718)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Aplikacija nije dostupna'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771101954027717)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Aplikacija nije prona\0111ena.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771289242027717)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>'aplikacija=%0 radni prostor=%1'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771627252027718)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pristup ovoj aplikaciji je ograni\010Den, poku\0161ajte ponovo kasnije.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771541945027718)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pristup ovoj aplikaciji je ograni\010Den na programere aplikacije, poku\0161ajte ponovo kasnije.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770718707027717)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-7744 Nije mogu\0107e obraditi URL za vra\0107anje grananja na funkcije.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770613834027717)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-7744 Nije mogu\0107e obraditi stranicu za vra\0107anje grananja na funkcije.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770916164027717)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-1430 Poziv za prikaz za procesa stranice nije podr\017Ean: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772090943027718)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-1018 Gre\0161ka pri brisanju ke\0161 memorije koraka.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770405290027717)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-1005 Nepoznati tip izra\010Dunavanja.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771379162027717)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ID sesije ERR-1201 nije pode\0161en na prilago\0111enu potvrdu identiteta.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771467335027717)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>'stranica=%0'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129771081368027717)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-7620 Nije mogu\0107e odrediti radni prostor za aplikaciju (%0).')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751572129027711)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'sr-latn'
,p_message_text=>'Uredi'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770176368027717)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-1802 Nije prona\0111en ID stavke "%0"')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769859868027717)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-1002 Nije prona\0111en ID stavke za stavku "%0" u aplikaciji "%1".')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769945226027717)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neo\010Dekivana gre\0161ka, nije prona\0111eno ime stavke u aplikaciji ili na nivou stranice.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770381205027717)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ve\0107 se nalazite na prvoj stranici podataka.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129786827578027722)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'sr-latn'
,p_message_text=>'ID stavke (%0) nije definisana stavka na trenutnoj stranici.'
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744483451027709)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stavka ne mo\017Ee da se podesi prosle\0111ivanjem argumenata aplikaciji.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744741591027709)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('(Nije obezbe\0111en kontrolni zbir)')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744242171027709)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stavka mo\017Ee da se podesi kada je propra\0107ena kontrolnim zbirom "obele\017Eiva\010Da na nivou korisnika".')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744141812027709)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stavka mo\017Ee da se podesi kada je propra\0107ena kontrolnim zbirom "obele\017Eiva\010Da na nivou aplikacije".')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744382644027709)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stavka mo\017Ee da se podesi kada je propra\0107ena kontrolnim zbirom "sesije".')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744002767027709)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stavka nema za\0161titu.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772179844027718)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stranica pomo\0107i nije dostupna.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760014894027714)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Radni prostor %0 nema privilegije za ra\0161\010Dlanjivanje po \0161emi %1.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770526987027717)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-1010 Prekora\010Deno je ograni\010Denje rekurzije obrade prihvatanja grananja na stranicu. %0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129727037527027704)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Stranica nije dostupna, ne mo\017Eete da pokrenete obrazac stranice.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129744691223027709)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ovu stranicu nije mogu\0107e pozvati pomo\0107u URL adrese ili koriste\0107i GET ili POST za proceduru prikaza. Mora da se pozove koriste\0107i tip grananja "Grana na stranu".')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129829453013027735)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom poku\0161avanja \010Duvanja nenumeri\010Dke vrednosti u stavci %0. ')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761761262027714)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\0160ema ra\0161\010Dlanjivanja aplikacije "%0" ne postoji u bazi podataka.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761868301027715)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'sr-latn'
,p_message_text=>'Nalozi u radnom prostoru INTERNAL mogu se da koriste samo za pristupanje &PRODUCT_NAME. <a href="%0">administrativnim uslugama</a>.'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129769795155027717)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-1029 Nije mogu\0107e sa\010Duvati informacije o sesiji. sesija=%0 stavka=%1')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772847402027718)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e zaustaviti pra\0107enje: %0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129770078485027717)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neo\010Dekivana gre\0161ka')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780800674027720)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke u update_substitution_cache: %0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772910894027718)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Morate da navedete aplikaciju i stranicu da biste videli pomo\0107.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129794676349027725)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Automatizacija nije prona\0111ena.')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730138359027705)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka upita automatizacije: %0')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774063526027718)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('O\010Di\0161\0107enih sesija: %0.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715330808027700)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e izvr\0161iti kod %0! Baza podataka ga ne podr\017Eava ili nije omogu\0107en parametrom instance MLE_LANGUAGES.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129712956694027699)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vi\0161ejezi\010Dna ma\0161ina nije dostupna u ovoj verziji baze podataka.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752180939027712)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Niz kolekcije aplikacija ne sme da bude null'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751944784027711)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Navedeni broj atributa \010Dlana %0 nije va\017Ee\0107i.  Broj atributa mora da bude izme\0111u 1 i %1')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752457403027712)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolekcija aplikacija postoji'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752275230027712)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ime kolekcije ne mo\017Ee da bude null')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752376985027712)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ime kolekcije ne sme da bude du\017Ee od 255 znakova')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751728532027711)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolekcija aplikacija %0 ne postoji'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752513307027712)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kursor jo\0161 uvek nije otvoren')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129751839285027711)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Niz \010Dlanova %0 ne postoji u kolekciji aplikacija %1'),
''))
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752034966027711)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Niz \010Dlanova %0 ne postoji u kolekciji aplikacija "%1"')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704843555027697)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Algoritam %0 nije podr\017Ean za ECDSA.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129704595094027697)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Elipti\010Dna kriva %0 nije podr\017Eana.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830275195027736)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Sistem ne podr\017Eava kriptografsku funkciju "%0".')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882589475027751)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pristupa\010Dnost je testirana')
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773571816027718)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'sr-latn'
,p_message_text=>'Zatvori'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773683729027718)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Opcije prilago\0111avanja stranice')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773755476027718)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'sr-latn'
,p_message_text=>'Podrazumevano'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773863674027718)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikazano'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773927075027718)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'sr-latn'
,p_message_text=>'Skriveno'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773365086027718)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ozna\010Dite regione koje \017Eelite da obuhvatite ovom stranicom. Ozna\010Deni regioni se mo\017Eda ne\0107e prikazati ako se ne nalazite u odgovaraju\0107em kontekstu aplikacije ili nemate odgovaraju\0107e privilegije.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773468621027718)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ovu stranicu nije mogu\0107e prilagoditi.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882823498027752)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Mo\017Eete da personalizujete izgled ove aplikacije tako \0161to \0107ete promeniti stil teme. Izaberite stil teme na listi u nastavku, pa kliknite na Primeni promene.')
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129883678357027752)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'sr-latn'
,p_message_text=>'Prikaz regiona'
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882787549027751)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Koristi podrazumevani stil aplikacije'
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129882687294027751)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Izgled '
,p_version_scn=>2693564
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826802728027735)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Indeks kolone referenciran u agregaciji %0 ne postoji.'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719508090027701)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dodavanje izvoza podataka nije podr\017Eano za format %0.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129682554462027690)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('CLOB izlaz nije podr\017Ean za format %0.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826529114027734)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prelom kolone mora da se nalazi na po\010Detku niza kolona.')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826666067027735)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Indeks grupe kolona kojeg referencira %0 ne postoji.'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733742887027706)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'sr-latn'
,p_message_text=>'izvoz'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129740967151027708)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Format izlaza mora da bude XML koji koristi ORDS kao server za \0161tampanje.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826941001027735)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Indeks kolone referenciran u istaknutoj stavci %0 ne postoji.'
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129730312660027705)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i format izvoza: %0')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129826749221027735)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Indeks nadre\0111ene kojeg referencira %0 ne postoji.')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129851963073027742)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona %1 tabele %0 je kolona sa identitetom "GENERATED ALWAYS". Uverite se da se nijedna izvorna kolona ne mapira u kolonu %1 dijaloga za konfigurisanje.'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763552808027715)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Navedeni interval primene je suvi\0161e kratak.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763640152027715)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nisu obezbe\0111ene kolone za u\010Ditavanje podataka.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764920357027715)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nisu prona\0111ene kolone za bira\010D redova "%0". Poku\0161ajte sa automatskim otkrivanjem ili pregledajte JSON strukturu.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774395341027718)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nisu prona\0111eni radni listovi u XLSX datoteci.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719492766027701)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Zahtevani nivoi hijerarhije za otkrivanje stavke (%0) prema\0161uju maksimum od %1.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774248137027718)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Navedeni radni list ne postoji u XLSX datoteci.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129752603994027712)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Trenutna verzija podataka u bazi podataka je promenjena od kada je korisnik pokrenuo proces a\017Euriranja.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755566769027713)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka pri a\017Euriranju kolona izve\0161taja: %0')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129866094807027746)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ne mo\017Ee da se konvertuje u SDO_GEOMETRY.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802523649027727)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kolona %0, koja sadr\017Ei podatke tipa %1, ne mo\017Ee da se konvertuje u VARCHAR2!')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809995407027729)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kolona "%0" odre\0111ena za atribut "%1" nije prona\0111ena u izvoru podataka!')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746042918027710)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tip filtera %0 nije podr\017Ean za kolone sa vi\0161e vrednosti.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129869570473027748)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i filter "izme\0111u".')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129725164665027703)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije prona\0111ena nijedna vrednost %2 u koloni %0, br. reda %1.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129721851382027702)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona %0 ili br. reda %1 ne postoji.'
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708404209027698)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Naveden je neva\017Ee\0107i tip liste vrednosti.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708327924027698)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i tip upita. Tip upita mora da bude tabela, SQL upit ili PL/SQL funkcija koja vra\0107a SQL upit.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802669219027727)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ra\0161\010Dlanjivanje SQL upita nije uspelo.'),
'%0'))
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810095850027729)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Navedeni polo\017Eaj kolone %0 za atribut "%1" nije prona\0111en u SQL naredbi.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129700094707027695)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Upotrebljeno je previ\0161e stavki u filteru sa vi\0161e vrednosti.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129809855270027729)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije navedena nijedna kolona za atribut "%0".'
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708236308027698)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Tekst funkcije PL/SQL nije vratio vrednost.'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129825646509027734)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('REST izvor podataka ne sadr\017Ei operaciju za rukovanje zahtevanom DML radnjom.')
,p_version_scn=>2693551
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867355660027747)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>'Filteri opsega su dostupni samo za tipove podataka NUMBER, DATE ili TIMESTAMP.'
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129688286794027692)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>'Zahtev nije uspeo uz %0'
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129691747502027693)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'sr-latn'
,p_message_text=>'Konverzija iz GeoJSON u SDO_GEOMETRY (kolona %0) nije dostupna u ovoj bazi podataka.'
,p_version_scn=>2693520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695169242027694)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('SDO_GEOMETRY konverzija (kolona %0) nije podr\017Eana za izvore XML podataka.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129719201992027701)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Znak %0 nije podr\017Ean kao separator za vi\0161e vrednosti.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129867458877027747)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ova funkcija ne mo\017Ee da se upotrebi za kontekst upita.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129695231658027694)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Nepodudaranje tipa podataka kolona.'
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129728776547027704)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ovaj izvor podataka ne podr\017Eava promenu vi\0161e redova.')
,p_version_scn=>2693529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708147658027698)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prekora\010Dene su grani\010Dne vrednosti za ORDS OUT vezivanje. Smanjite broj DML redova.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810862208027730)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('JSON odgovor udaljenog servera nije mogu\0107e ra\0161\010Dlaniti: '),
'%0'))
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129708087482027698)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nepoznati ili pogre\0161ni tip konteksta.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129732128585027705)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nepodr\017Eane komponente za \010Ditljiv izvoz: %0')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129830179529027736)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ra\0161\010Dlanjiva\010D ne podr\017Eava ovaj tip datoteke.')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129780936919027720)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neovla\0161\0107en pristup (wwv_flow_api.set_credentials not set).')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755882799027713)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Radni prostor nije kreiran jer ve\0107 postoji.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129755776607027713)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Korisni\010Dka grupa nije kreirana jer ve\0107 postoji.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767171226027716)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prona\0111en je duplikat korisni\010Dkog imena za %0.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767229881027716)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom u\010Ditavanja korisnika. Nije uspelo na korisniku %0.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129778077754027720)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('U\010Ditao bi se slede\0107i broj korisnika: %0.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777862991027719)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'sr-latn'
,p_message_text=>'Lozinka'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777950292027720)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'sr-latn'
,p_message_text=>'Privilegije'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777612972027719)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Korisni\010Dko ime')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858047194027744)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom prikazivanja stavke stranice #COMPONENT_NAME#.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773085370027718)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e prikazati stavku stranice jer HTML obrazac jo\0161 nije otvoren.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129731418793027705)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom izra\010Dunavanja podrazumevane vrednosti stavke za stavku stranice #COMPONENT_NAME#.')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772341506027718)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke nakon izra\010Dunavanja stavke za stavku stranice #COMPONENT_NAME#.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772207599027718)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke prilikom izra\010Dunavanja izvorne vrednosti stavke za stavku stranice #COMPONENT_NAME#.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749048120027711)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neovla\0161\0107eni pristup.')
,p_version_scn=>2693532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698535614027695)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vrednost %0 od %1 nije va\017Ee\0107a JSON niska.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772521366027718)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('JavaScript nije podr\017Ean.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772687783027718)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'sr-latn'
,p_message_text=>'Lista'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129773282499027718)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e pokrenuti upit.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781238109027721)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('A\017Euriranje za %0 nije podr\017Eano.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774780229027718)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i ID stavke: %0 ')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802403345027727)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ne postoji pomo\0107 za ovu stavku.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764234499027715)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Generisanje upita grafikona nije uspelo. Proverite pode\0161avanja mapiranja izvora i kolona.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765551165027716)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107a vrednost za parametar p_mail_id: %0')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129802205981027727)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ne mo\017Eete da upotrebite polja "Za" ili "Odgovori korisniku" kao adresu u polju "Od" jer ona sadr\017Ee vi\0161e e-adresa.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129887163586027753)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prema\0161ili ste maksimalni broj e-poruka po radnom prostoru. Obratite se administratoru.')
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743703064027709)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'sr-latn'
,p_message_text=>'Ova procedura mora da se pozove iz sesije aplikacije.'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129765465762027716)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost null je uneta za parametar %0.'
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129823511495027734)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\0160ablon e-poruke "%0" nije prona\0111en u aplikaciji %1.')
,p_version_scn=>2693549
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129900011186027757)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Parametar instance SMTP_HOST_ADDRESS mora da se podesi na slanje po\0161te.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764868693027715)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Morate da unesete primaoca poruke da biste poslali po\0161tu.')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129889583727027754)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e uspostaviti SMTP vezu sa konfigurisanim serverom e-po\0161te.')
,p_version_scn=>2693567
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129864820358027746)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Neva\017Ee\0107i poziv za Ajax!')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748783624027710)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Nijedna Ajax funkcija nije definisana za dodatnu komponentu %0'
,p_version_scn=>2693532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129855323954027743)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije definisana funkcija izvr\0161avanja za dodatnu komponentu %0')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748828146027710)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>'Nijedna funkcija iscrtavanja nije definisana za dodatnu komponentu %0'
,p_version_scn=>2693532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865791220027746)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dodatna komponenta izvora podataka za REST "%0" ne sadr\017Ei funkciju "Mogu\0107nosti".')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865611494027746)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dodatna komponenta izvora podataka za REST "%0" ne sadr\017Ei DML funkciju.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865879947027746)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dodatna komponenta izvora podataka za REST "%0" ne sadr\017Ei funkciju izvr\0161avanja.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129865976857027746)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Dodatna komponenta izvora podataka za REST "%0" ne sadr\017Ei funkciju pribavljanja.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746238775027710)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Do\0161lo je do gre\0161ke u PLSQL kodu tokom obrade dodatne komponente.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754896595027712)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Vrednost mora da bude navedena.'
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787878924027723)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Tip podataka %0 ne mo\017Ee da se konvertuje u VARCHAR2!')
,p_version_scn=>2693542
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129876031296027749)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kolona "%0", koja je navedena za atribut "%1", nije prona\0111ena u SQL naredbi.')
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129703343421027696)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Vrednost %0 od %1 nije va\017Ee\0107a JSON niska.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853201755027743)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'sr-latn'
,p_message_text=>'Upit liste vrednosti (LOV) ili imenovana lista vrednosti moraju da se navedu za %0.'
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129854810789027743)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Pogre\0161an broj kolona je izabran na listi vrednosti SQL upita za %0. Pogledajte primere va\017Ee\0107ih naredbi.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875891678027749)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'sr-latn'
,p_message_text=>'Nije navedena nijedna kolona za atribut "%0".'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129905049329027758)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Uneta vrednost %0 za atribut "%1" nije numeri\010Dka.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129858355044027744)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 ima pogre\0161an tip podataka u SQL naredbi. Kolona broj %1 je %2, a o\010Dekuje se %3.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129875998389027749)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'sr-latn'
,p_message_text=>'Kolona "%0", koja je navedena za atribut "%1", ima tip podataka %2, ali trebalo bi da ima %3.'
,p_version_scn=>2693563
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129745472810027709)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Raspored izve\0161taja nije prona\0111en.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129733042689027706)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ograni\010Denje izvr\0161avanja u pozadini je prema\0161eno za %0.')
,p_version_scn=>2693530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683366352027690)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Drugo izvr\0161avanje za %0 je ve\0107 pokrenuto.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129683232615027690)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Drugo izvr\0161avanje za %0 je ve\0107 pokrenuto za kontekst %1.')
,p_version_scn=>2693519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129698235198027695)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Otpremljene datoteke nisu vidljive u radnoj sesiji izvr\0161avanja za %0.')
,p_version_scn=>2693524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810704509027730)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Funkciju izra\010Dunavanja zbira nije mogu\0107e koristiti za izve\0161taje zasnovane na REST izvoru podataka.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129772437357027718)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('ERR-2904 Nije mogu\0107e podesiti vrednost pre\010Dice.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777489513027719)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka: nepoznati tip pre\010Dice.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129715185074027700)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Upit za pretragu je previ\0161e dug.')
,p_version_scn=>2693527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129766583598027716)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e preuzeti authentication_scheme u aplikaciji %0.')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129774500160027718)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e preuzeti komponentu %0.')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129844864512027740)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Za trenutnu sesiju ve\0107 postoji ID zakupca.')
,p_version_scn=>2693555
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129777730615027719)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'sr-latn'
,p_message_text=>'E-adresa'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904573648027758)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'sr-latn'
,p_message_text=>'Potvrda identiteta nije uspela.'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129805168666027728)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Jedan ili vi\0161e kola\010Di\0107a pode\0161enih u apex_util.g_request_cookies sadr\017Ee neva\017Ee\0107u vrednost.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129787049245027722)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Odgovor UDDI registra je bio neva\017Ee\0107i.')
,p_version_scn=>2693541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129746360000027710)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Navedeni URL nije pru\017Eio va\017Ee\0107i WSDL dokument.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129749149783027711)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('WSDL dokument sadr\017Ei vi\0161e SOAP povezivanja. &PRODUCT_NAME. podr\017Eava samo WSDL dokumente sa jednim SOAP povezivanjem. Kliknite na Ru\010Dno kreiraj referencu veb-usluge da biste nastavili da kreirate referencu za ovu uslugu.')
,p_version_scn=>2693532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129824736065027734)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'sr-latn'
,p_message_text=>'Odgovor usluge nije bio XML.'
,p_version_scn=>2693550
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904404382027758)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'sr-latn'
,p_message_text=>'OAuth pristupni token nije dostupan ili je istekao.'
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129868941798027747)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Prema\0161ili ste maksimalni broj zahteva za veb uslugu po radnom prostoru. Obratite se administratoru.')
,p_version_scn=>2693562
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129904668145027758)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Server je odgovorio nepodr\017Eanim tipom OAuth tokena.')
,p_version_scn=>2693568
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748558068027710)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('WSDL ne sadr\017Ei povezivanje za SOAP koje je potrebno da bi se dodala referenca.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129743962423027709)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Za ovaj WSDL su potrebni kredencijali za potvrdu identiteta. Unesite korisni\010Dko ime i lozinku u nastavku.')
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129754992930027712)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ma\0161ina za vizuelizaciju nije uspela da razume WSDL dokument. Kliknite na Ru\010Dno kreiraj referencu veb-usluge da biste nastavili da kreirate referencu za ovu uslugu.')
,p_version_scn=>2693535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129827790830027735)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Nije mogu\0107e obraditi a\017Euriranje.')
,p_version_scn=>2693553
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853591133027743)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Kolona za vra\0107anje i kolona za prikaz u listi vrednosti su iste!')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129853480696027743)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Lista vrednosti nema kolonu za vra\0107anje.')
,p_version_scn=>2693561
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781137039027720)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom preuzimanja vrednosti kolone: %0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806001007027728)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Trenutni podaci tabularnog obrasca su suvi\0161e stari; izvorni podaci su izmenjeni.<br/> Kliknite <strong><a href="%0">ovde</a></strong> da biste odbacili promene i ponovo u\010Ditali podatke iz baze podataka.')
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761246540027714)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka pri odre\0111ivanju niske paginacije')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761159067027714)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('nije mogu\0107e odrediti zaglavlja upita:'),
'%0'))
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761344063027714)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('do\0161lo je do gre\0161ke prilikom obavljanja zamena podno\017Eja izve\0161taja')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761400541027714)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('ra\0161\010Dlanjivanje SQL upita nije uspelo:'),
'%0',
'%1'))
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767560218027716)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Minimalni zahtevani broj redova: %0, redovi koji su prona\0111eni, ali nisu prikazani: %1')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763964538027715)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('kolona upita br. %0 (%1) nije va\017Ee\0107a, za kolone koje koriste HTML potrebni su alijasi')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129781057889027720)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Gre\0161ka prilikom preuzimanja zaglavlja upita: %0')
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761589514027714)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('gre\0161ka u izve\0161taju:'),
'%0'))
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129801619778027727)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'sr-latn'
,p_message_text=>'Sortiraj prema ovoj koloni'
,p_version_scn=>2693543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129764058341027715)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'sr-latn'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Upit nije mogu\0107e ra\0161\010Dlaniti, proverite sintaksu upita.'),
'(%0)',
'</p>'))
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806154236027728)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('Ovaj obrazac sadr\017Ei nesa\010Duvane promene. Pritisnite "U redu" da biste nastavili bez \010Duvanja promena. ')
,p_version_scn=>2693544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129810633706027730)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('\0160ema paginacije izve\0161taja (%0) nije podr\017Eana sa odabranim izvorom podataka.')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129763875887027715)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('kolona upita br. %0 (%1) nije va\017Ee\0107a, upotrebite alijas kolone')
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767631235027716)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('redovi %0 - %1 od vi\0161e od %2')
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129808195511027729)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'sr-latn'
,p_message_text=>unistr('%0 - %1 od vi\0161e od %2')
,p_version_scn=>2693547
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129767432626027716)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'sr-latn'
,p_message_text=>'redovi %0 - %1 od %2'
,p_version_scn=>2693538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129748265043027710)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'sr-latn'
,p_message_text=>'%0 - %1 od %2'
,p_version_scn=>2693531
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129761655733027714)
,p_name=>'Y'
,p_message_language=>'sr-latn'
,p_message_text=>'Y'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129768972557027717)
,p_name=>'YEAR'
,p_message_language=>'sr-latn'
,p_message_text=>'god.'
,p_version_scn=>2693539
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129760859953027714)
,p_name=>'YEARS'
,p_message_language=>'sr-latn'
,p_message_text=>'god.'
,p_version_scn=>2693536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129806246022027728)
,p_name=>'YES'
,p_message_language=>'sr-latn'
,p_message_text=>'Da'
,p_version_scn=>2693544
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
 p_id=>wwv_flow_imp.id(109678305570583962.4489)
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
 p_id=>1.4489
,p_name=>'Poruke'
,p_alias=>'MESSAGES'
,p_step_title=>'Poruke'
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
