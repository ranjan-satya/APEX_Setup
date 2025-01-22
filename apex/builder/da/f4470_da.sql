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
,p_default_application_id=>4499
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4499 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4499
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131491167497028969')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'da'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4499)
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
 p_id=>wwv_flow_imp.id(4499)
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
 p_id=>wwv_flow_imp.id(728504220438374.4499)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4499)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4499)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4499)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4499)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4499)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4499)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4499)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4499)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4499)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4499)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4499)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4499)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4499)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4499)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4499)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4499)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.da'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4499)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4499)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4499)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4499)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4499)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4499)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4499)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.da'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4499)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4499)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4499)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4499)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4499)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4499)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.da'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4499)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4499)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4499)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.da'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4499)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4499)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4499)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4499)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4499)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4499)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4499)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4499)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4499)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4499)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4499)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4499)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4499)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4499)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4499)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4499)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4499)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.da'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4499)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4499)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4499)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4499)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4499)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4499)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4499)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4499)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4499)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4499)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4499)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4499)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4499)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4499)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4499)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4499)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4499)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.da'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4499)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4499)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4499)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4499)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4499)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4499)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4499)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4499)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4499)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4499)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4499)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4499)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4499)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4499)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4499)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.da'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4499)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4499)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4499)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4499)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4499)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4499)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4499)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4499)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4499)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4499)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4499)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4499)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4499)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4499)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4499)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4499)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4499)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4499)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4499)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4499)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4499)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4499)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4499)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4499)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4499)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4499)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4499)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4499)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4499)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4499)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4499)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4499)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4499)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4499)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4499)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4499)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4499)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4499)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4499)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4499)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4499)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4499)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4499)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4499)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4499)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4499)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4499)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4499)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4499)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4499)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4499)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4499)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4499)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4499)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4499)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4499)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4499)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4499)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4499)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4499)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4499)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4499)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4499)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4499)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4499)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4499)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4499)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4499)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4499)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4499)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4499)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4499)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4499)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4499)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4499)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4499)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4499)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4499)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4499)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4499)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4499)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4499)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4499)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4499)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4499)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4499)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4499)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4499)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4499)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4499)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4499)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4499)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4499)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4499)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4499)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4499)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4499)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4499)
,p_page_name=>'winlov'
,p_page_title=>unistr('S\00F8gedialogboks')
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
,p_find_button_text=>unistr('S\00F8g')
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Luk'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('N\00E6ste &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Forrige'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">R\00E6kke(r) #FIRST_ROW# - #LAST_ROW#</div>')
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
 p_id=>wwv_flow_imp.id(649611609668764506.4499)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4499)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4499)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4499)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4499)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4499)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4499)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4499)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4499)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4499)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4499)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4499)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4499)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4499)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4499)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4499)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4499)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4499)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4499)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4499)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4499)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4499)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4499)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4499)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4499)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4499)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4499)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4499)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4499)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4499)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4499)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4499)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4499)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4499)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4499)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4499)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4499)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4499)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4499)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4499)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4499)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4499)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4499)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4499)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4499)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4499)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4499)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4499)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4499)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4499)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4499)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4499)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4499)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4499)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4499)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4499)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4499)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4499)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4499)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4499)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4499)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4499)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4499)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4499)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4499)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4499)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4499)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4499)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4499)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4499)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4499)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4499)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4499)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4499)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4499)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4499)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4499)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4499)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4499)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4499)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4499)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4499)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4499)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4499)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4499)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4499)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4499)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4499)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4499)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4499)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4499)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4499)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4499)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4499)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4499)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4499)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4499)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4499)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4499)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4499)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4499)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4499)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4499)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4499)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4499)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4499)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4499)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4499)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4499)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4499)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4499)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4499)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4499)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4499)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4499)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4499)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4499)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4499)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4499)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4499)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4499)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4499)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4499)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4499)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4499)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4499)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4499)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4499)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4499)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4499)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4499)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4499)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4499)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4499)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4499)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4499)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4499)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4499)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4499)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4499)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4499)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4499)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4499)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4499)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4499)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4499)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4499)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4499)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4499)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4499)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4499)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4499)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4499)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4499)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4499)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4499)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4499)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4499)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4499)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4499)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4499)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4499)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4499)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4499)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4499)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4499)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4499)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4499)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4499)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4499)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4499)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4499)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4499)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4499)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4499)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4499)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4499)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4499)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4499)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4499)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4499)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4499)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4499)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4499)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4499)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4499)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4499)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4499)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4499)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4499)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4499)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4499)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4499)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4499)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4499)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4499)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4499)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4499)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4499)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4499)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4499)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4499)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4499)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4499)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4499)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4499)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4499)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4499)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4499)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4499)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4499)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4499)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4499)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4499)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4499)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4499)
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
 p_id=>wwv_flow_imp.id(124329861471025965)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'da'
,p_message_text=>'Kolonne %0'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314453559025960)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'da'
,p_message_text=>'Administrator'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314305353025960)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'da'
,p_message_text=>'Brugernavn'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377023693025979)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'da'
,p_message_text=>unistr('Adgang n\00E6gtet')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333994623025966)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'da'
,p_message_text=>'Din %0-konto er oprettet.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317168628025961)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'da'
,p_message_text=>unistr('Kontoen er l\00E5st.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301633644025956)
,p_name=>'AM_PM'
,p_message_language=>'da'
,p_message_text=>'AM / PM'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284409049025951)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'da'
,p_message_text=>'link til handling'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284356469025951)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'da'
,p_message_text=>'link til dialogboks'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448735232026002)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'da'
,p_message_text=>'Skift %0'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456581681026005)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'da'
,p_message_text=>'(Aktiv)'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261349898025944)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'da'
,p_message_text=>'Chat ryddet'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261274097025944)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'da'
,p_message_text=>'Ryd chat'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257820771025943)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'da'
,p_message_text=>'Accepter'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257962623025943)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'da'
,p_message_text=>'Afvis'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257666192025943)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'da'
,p_message_text=>'Samtalehistorik'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261064323025944)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'da'
,p_message_text=>'Kopieret'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261189541025944)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'da'
,p_message_text=>'Kopieret til Udklipsholder'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260877989025944)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'da'
,p_message_text=>'Kopier'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260989595025944)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'da'
,p_message_text=>unistr('Kopi\00E9r til Udklipsholder')
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258317970025943)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'da'
,p_message_text=>'Assistent'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258725275025944)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'da'
,p_message_text=>unistr('AI er deaktiveret p\00E5 arbejdsomr\00E5de- eller instansniveau.')
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298075528025955)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'da'
,p_message_text=>'Generative AI-tjeneste med givet id eller statisk id ikke fundet.'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296704867025955)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'da'
,p_message_text=>'Autentificeringsfejl eller forbudt adgang (HTTP-%1) for URL''en %0. Kontroller konfigurationen af Generative AI-tjenesten %2.'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276596222025949)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('HTTP-anmodningen til Generative AI-tjeneste p\00E5 %0 fejlede med HTTP-%1: %2')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300904558025956)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl i HTTP-anmodning til Generative AI-tjeneste for plug-in''en %0 i tilstanden %1. Kontroller konfigurationen af den generative AI-tjeneste.'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263702766025945)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'da'
,p_message_text=>'Eksempler'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262180395025945)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'da'
,p_message_text=>'Assistent'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263525245025945)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262074960025945)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'da'
,p_message_text=>'Dig'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292778043025954)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('OCI Generative AI underst\00F8tter i \00F8jeblikket ikke chat-oplevelse med flere meddelelser.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272648239025948)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under behandling af prompten %0 for applikationen %1. Kontroller, om Appgenerator er tilg\00E6ngelig p\00E5 denne instans.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277746043025949)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'da'
,p_message_text=>'Kan ikke behandle respons for AI-servicen %0, responsen %1'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283901813025951)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Send meddelelse'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272260950025948)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl i backend-AI-servicen %0'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258086818025943)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'da'
,p_message_text=>'Meddelelse'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258113283025943)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'da'
,p_message_text=>'Skriv din meddelelse her'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261478147025944)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'da'
,p_message_text=>'Brugerens avatar'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261577428025944)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'da'
,p_message_text=>'Brug dette'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258289569025943)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Du har en meddelelse, der ikke er sendt. Er du sikker?'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427277623025995)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'da'
,p_message_text=>'Ajax-kald returnerede serverfejl %0 for %1.'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354307812025972)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'da'
,p_message_text=>'Applikationsaliasset "%0" kan ikke konverteres til et entydigt applikations-ID.'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343146364025969)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'ERR-1816 Uventet fejl under konvertering af applikationsalias p_flow_alias_or_id (%0).'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440578694026000)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>unistr('Kontrolsummen for applikationen g\00F8r det nemt at fastl\00E6gge, om den samme applikation er taget i brug p\00E5 tv\00E6rs af arbejdsomr\00E5der. Du kan sammenligne denne kontrolsum for at fastl\00E6gge, om der er et match. ')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327123823025964)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af autentificeringsfunktion.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309148007025959)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af autentificeringsfunktion.'
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481018909026013)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'da'
,p_message_text=>unistr('Lejernavnet %0, som er returneret af Oracle Cloud Identity Management, er ikke autoriseret for dom\00E6net %1!<br/>Du skal <a href="&LOGOUT_URL.">logge p\00E5 igen</a> og angive et autoriseret lejernavn eller \00E6ndre din URL.')
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305241566025958)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'da'
,p_message_text=>unistr('Din konto "%0" har ikke de n\00F8dvendige udviklingsprivilegier (DB_DEVELOPER eller DB_ADMINISTRATOR)<br/>til arbejdsomr\00E5det "%1"! Du skal <a href="&LOGOUT_URL.">logge p\00E5 igen</a>, n\00E5r privilegier er leveret.')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301882845025957)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'da'
,p_message_text=>unistr('Det lejernavn, som er returneret af Oracle Cloud Identity Management, er ikke autoriseret for det aktuelle arbejdsomr\00E5de!<br/>Du skal <a href="&LOGOUT_URL.">logge p\00E5 igen</a> og angive et autoriseret lejernavn.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305327284025958)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'da'
,p_message_text=>unistr('Af sikkerhedshensyn er det ikke tilladt at k\00F8re applikationer af dette arbejdsomr\00E5de via dom\00E6net i URL''en.')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326822318025964)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'da'
,p_message_text=>unistr('Bed din databaseadministrator om at k\00F8re $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326765075025964)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'da'
,p_message_text=>'SYS.DBMS_LDAP-pakke findes ikke eller er ugyldig.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326672689025964)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af LDAP-brugerfunktion til redigering.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326989443025964)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af LDAP-autentificering.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327742905025964)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'da'
,p_message_text=>'Fejl i p_flow_page-argument til login_page-procedure.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327345197025964)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'da'
,p_message_text=>'Ugyldig p_session i wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378674742025980)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'da'
,p_message_text=>'Forkert udformet argument til wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327473596025964)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'da'
,p_message_text=>'NULL-brugernavn er videregivet til logonprocedure.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314231739025960)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'da'
,p_message_text=>unistr('Vent <span id="apex_login_throttle_sec">%0</span> sekunder, f\00F8r du logger p\00E5 igen.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315538911025961)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Fors\00F8get p\00E5 logon er blokeret.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376391681025979)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Autentificeringen "%0" blev ikke fundet'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316021330025961)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'da'
,p_message_text=>'ID for sikkerhedsgruppe er NULL.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327271304025964)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under udf\00F8relse af efterautentificeringsproces.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327080833025964)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under behandling af f\00F8rautentificeringsproces.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328734481025965)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00C5bn URL''en i den samme browser, hvor du initierede anmodningen Nulstil adgangskode. Hvis du klikker p\00E5 URL''en til nulstilling af adgangskode og omdirigeres til '),
'logonsiden, skal du initiere Nulstil adgangskode igen og lade',
unistr('browseren forblive \00E5ben.')))
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478589339026012)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'da'
,p_message_text=>'URL til nulstilling af adgangskode'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305516058025958)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'da'
,p_message_text=>'Ressourcestyringens forbrugergruppe %0 er ikke tildelt %1'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305617256025958)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'da'
,p_message_text=>'Brug DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP til at tildele det manglende privilegie.'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340251539025968)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af sessionsadvarselsfunktion.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340303361025968)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af sessionsverificeringsfunktion.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340512244025968)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'da'
,p_message_text=>'Bed din %0-administrator om at konfigurere programmet til Oracle Application Server Single Sign-On.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350954041025971)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'da'
,p_message_text=>'Ugyldig %0 i %1-token returneret af SSO.'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327628855025964)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'da'
,p_message_text=>unistr('Rediger autentificeringsskemaet, og tilf\00F8j applikationsnavnet.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350626089025971)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'da'
,p_message_text=>'Ugyldig opkalder for %0-procedure:'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350898051025971)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'da'
,p_message_text=>'Ugyldig app-session i URLC-token: %0'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350484501025971)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'da'
,p_message_text=>'Fejl i portal_sso_redirect: manglende oplysninger om applikationsregistrering: %0'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340433937025968)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'da'
,p_message_text=>'WWSEC_SSO_ENABLER_PRIVATE-pakke findes ikke eller er ugyldig.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327590512025964)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'da'
,p_message_text=>'Kan ikke finde registreret partnerapplikationsnavn i autentificeringsskema.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350512092025971)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'da'
,p_message_text=>'Registrer denne applikation som beskrevet i installationsvejledningen.'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340658109025968)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af SSO-autentificering.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453990840026004)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'da'
,p_message_text=>'Uautoriseret URL:  %0'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340007771025968)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af autentificering.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305442092025958)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'da'
,p_message_text=>unistr('Arbejdsomr\00E5det "%0" er inaktivt. Kontakt din administrator.')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306152676025958)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'da'
,p_message_text=>'%0'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315244797025961)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'da'
,p_message_text=>unistr('Adgang n\00E6gtet af sikkerhedskontrol for applikation')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315345113025961)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Adgang n\00E6gtet af sikkerhedskontrol for side')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315482270025961)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af autorisation.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384569411025982)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'da'
,p_message_text=>unistr('Bygget med %0 ved hj\00E6lp af %1')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384685315025982)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'da'
,p_message_text=>unistr('k\00E6rlighed')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444427835026001)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Beskrivelse af begivenhed'
,p_is_js_message=>true
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444259019026001)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'da'
,p_message_text=>'Slutdato'
,p_is_js_message=>true
,p_version_scn=>2692494
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444514886026001)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'da'
,p_message_text=>'Begivenheds-ID'
,p_is_js_message=>true
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444110679026001)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'da'
,p_message_text=>'Startdato'
,p_is_js_message=>true
,p_version_scn=>2692494
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444330789026001)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Navn p\00E5 begivenhed')
,p_is_js_message=>true
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286952269025952)
,p_name=>'APEX.CARD'
,p_message_language=>'da'
,p_message_text=>'Kort'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287181616025952)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'da'
,p_message_text=>'Korthandling'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327857645025964)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'da'
,p_message_text=>'Visuelt skjult afkrydsningsfelt'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329731956025965)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'da'
,p_message_text=>'Indholdsfejl i kontrolsum'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329675829025965)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'da'
,p_message_text=>'Formatfejl i kontrolsum'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399565808025986)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'da'
,p_message_text=>'Kopieret til Udklipsholder.'
,p_is_js_message=>true
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399044794025986)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'da'
,p_message_text=>unistr('Denne browser underst\00F8tter ikke kopiering fra en knap eller menu. Pr\00F8v Ctrl+C eller Command+C.')
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385242390025982)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'da'
,p_message_text=>'Luk'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263671477025945)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'da'
,p_message_text=>unistr('Indholdet af kodeeditoren overskrider elementets maksimale l\00E6ngde (aktuelt %0, tilladt %1 tegn)')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443701550026001)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'da'
,p_message_text=>'Kontrast'
,p_is_js_message=>true
,p_version_scn=>2692494
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438299935025999)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'da'
,p_message_text=>'Aktuel'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438175049025999)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'da'
,p_message_text=>'Oprindelig'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442328978026000)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re en gyldig farve. Eksempel: %0')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304793933025957)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'da'
,p_message_text=>'Flere farver'
,p_is_js_message=>true
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304857683025957)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5bn farvev\00E6lger')
,p_is_js_message=>true
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261978608025945)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'da'
,p_message_text=>'Alfa-skyder, vandret skyder. Brug piletasterne til at navigere.'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261693310025944)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'da'
,p_message_text=>'Farvespektrum, 4-vejs skyder. Brug piletasterne til at navigere.'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261715695025944)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'da'
,p_message_text=>'Nuanceskyder, lodret skyder. Brug piletasterne til at navigere.'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438040749025999)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg en farve')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438363915025999)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('\00C6ndr farveformat')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476232610026011)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'da'
,p_message_text=>unistr('Liste over v\00E6rdier')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476314379026011)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5bn liste for: %0')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456618824026005)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'da'
,p_message_text=>unistr('(Fuldf\00F8rt)')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345581206025970)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'da'
,p_message_text=>'Kontakt din applikationsadministrator.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361013535025974)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Kontakt din applikationsadministrator.',
unistr('Detaljer om denne h\00E6ndelse er tilg\00E6ngelige via fejlfindings-ID''et "%0".')))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442642174026000)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'da'
,p_message_text=>unistr('Ret fejl, f\00F8r du gemmer.')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287998145025952)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'da'
,p_message_text=>unistr('%0. Tryk p\00E5 Backspace for at slette.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386187661025982)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'da'
,p_message_text=>'%0 matchninger fundet'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268007822025946)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('1 der blev fundet et s\00F8geresultat')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386037653025982)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'da'
,p_message_text=>'Ingen matchninger blev fundet'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262466031025945)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'da'
,p_message_text=>'Andre'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262356299025945)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'da'
,p_message_text=>unistr('%0 v\00E6rdier valgt')
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457103900026005)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'da'
,p_message_text=>'Aktuel status'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443024126026000)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Filen, der er angivet i elementet %0, findes ikke i APEX_APPLICATION_TEMP_FILES.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431540960025997)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'da'
,p_message_text=>unistr('Aktuel version af data i database er \00E6ndret, siden brugeren initierede opdateringsprocessen.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400652187025987)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'da'
,p_message_text=>unistr('Indl\00E6s ikke')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446968920026002)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'da'
,p_message_text=>'Forbehandlingsfejl'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446715376026002)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'da'
,p_message_text=>unistr('Inds\00E6t r\00E6kke')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460385241026006)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'da'
,p_message_text=>'Sekvens: handling'
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446876081026002)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'da'
,p_message_text=>unistr('Opdater r\00E6kke')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275381431025949)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'da'
,p_message_text=>'Handlinger'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302917246025957)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'da'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289024321025953)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'da'
,p_message_text=>unistr('%0 skal v\00E6re en datov\00E6lger eller en gyldig dato, for eksempel %1.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398295036025986)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'da'
,p_message_text=>'Ryd'
,p_is_js_message=>true
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306416038025958)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'da'
,p_message_text=>unistr('Udf\00F8rt')
,p_is_js_message=>true
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317406384025961)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('%0 har ikke-underst\00F8ttede dele i formatmasken: %1')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302637149025957)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'da'
,p_message_text=>'Time'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386508264025982)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'da'
,p_message_text=>'Pop op-kalender: %0'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302461723025957)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'da'
,p_message_text=>'Uge'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302569462025957)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'da'
,p_message_text=>'Uge'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302892125025957)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'da'
,p_message_text=>'Minutter'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303006757025957)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303416740025957)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste m\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273005022025948)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'da'
,p_message_text=>'Pop op-vindue for %0'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303322828025957)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('Forrige m\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395822289025985)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'da'
,p_message_text=>unistr('Skrivebeskyttet datov\00E6lger')
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304278776025957)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg dato')
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273123210025948)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg dato og klokkesl\00E6t')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270345507025947)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg dag')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273707979025948)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg m\00E5ned og \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270510915025947)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg klokkesl\00E6t')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271054869025947)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'da'
,p_message_text=>'I dag'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288682009025953)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re en gyldig dato, for eksempel %0.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288377397025952)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re mellem %0 og %1.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288432413025952)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re p\00E5 eller efter %0.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288562298025953)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re p\00E5 eller f\00F8r %0.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279939035025950)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'da'
,p_message_text=>'Visuelt skjult redigering'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303268986025957)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5r')
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390211013025983)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'da'
,p_message_text=>'#LABEL# ligger efter den angivne maksimumdato %0.'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390681303025983)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'da'
,p_message_text=>'#LABEL# matcher ikke formatet %0.'
,p_is_js_message=>true
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390102203025983)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# ligger f\00F8r den angivne minimumdato %0.')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390381747025983)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'da'
,p_message_text=>'#LABEL# er ikke i det gyldige interval fra %0 til %1.'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390590440025983)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# er ikke i den gyldige \00E5rr\00E6kke fra %0 til %1.')
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282314779025951)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'da'
,p_message_text=>'Der opstod en intern fejl under behandling af DBMS_CLOUD-anmodningen.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442901439026000)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'da'
,p_message_text=>'Annuller'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468811219026009)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'da'
,p_message_text=>'Luk'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330022165025965)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'da'
,p_message_text=>unistr('Bekr\00E6ftelse')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470864874026009)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442722931026000)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'da'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442860973026000)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'da'
,p_message_text=>'Gem'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310581982025959)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Titel p\00E5 dialogboks')
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350277248025971)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'da'
,p_message_text=>'Visuelt skjult dialogtitel'
,p_is_js_message=>true
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271375339025947)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'da'
,p_message_text=>'Forudbygget funktion til Oracle-dokumentgenerator'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282174282025951)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under udskrivning af et dokument.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259348953025944)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('%s underst\00F8tter ikke %1 som output.')
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271207213025947)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl "%0" under kald af forudbygget funktion til Oracle-dokumentgenerator:'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262716210025945)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('En skabelon er p\00E5kr\00E6vet.')
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288142020025952)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under fildownload.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288028171025952)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'da'
,p_message_text=>'Ingen data fundet, som kan downloades.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291625139025953)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'da'
,p_message_text=>unistr('Denne facilitet er ikke tilg\00E6ngelig i et milj\00F8, der kun findes ved runtime.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344403750025969)
,p_name=>'APEX.ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304315875025957)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'da'
,p_message_text=>unistr('F\00F8lgende fejl opstod under udf\00F8relse af fejlh\00E5ndteringstilbagekald: %0')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316953034025961)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl opstod under maling af fejlside: %0'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306095555025958)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'da'
,p_message_text=>'Intern fejl'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455721039026004)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Kontakt din administrator.',
unistr('Detaljer om denne h\00E6ndelse er tilg\00E6ngelige via fejlfindings-ID "%0".')))
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450365982026003)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'da'
,p_message_text=>unistr('Databasen er \00E5ben for skivebeskyttet adgang.')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480467646026012)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'da'
,p_message_text=>unistr('ORA-28353: Kunne ikke \00E5bne wallet. Applikationsdata er p.t. ikke tilg\00E6ngelige.')
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450444142026003)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Denne side er ikke tilg\00E6ngelig')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309011803025959)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'da'
,p_message_text=>unistr('Tekniske oplysninger (kun tilg\00E6ngelige for udviklere)')
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414905205025991)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'da'
,p_message_text=>'Fejlmeddelelse'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428843903025996)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'da'
,p_message_text=>'Forventet format: %0'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393749383025984)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'da'
,p_message_text=>unistr('Bruger er allerede p\00E5 adgangskontrolliste')
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393617092025984)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'da'
,p_message_text=>unistr('Bekr\00E6ft tilf\00F8jelse af f\00F8lgende %0 bruger(e) p\00E5 <strong>%1</strong>-adgangskontrollisten.')
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394183490025984)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'da'
,p_message_text=>'Dubleret bruger findes'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393829536025984)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'da'
,p_message_text=>'Manglende snabel-a (@) i e-mailadresse'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393933906025984)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'da'
,p_message_text=>'Manglende punktum (@) i e-mailadresse'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394028153025984)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'da'
,p_message_text=>'Brugernavn er for langt'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394385821025984)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'da'
,p_message_text=>unistr('Kun brugere, der er defineret p\00E5 applikationens adgangskontrolliste, kan f\00E5 adgang til denne applikation')
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394492328025984)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'da'
,p_message_text=>unistr('Uventet indstillingsv\00E6rdi: %0 for adgangskontrol')
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394236439025984)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'da'
,p_message_text=>unistr('Alle autentificerede brugere kan f\00E5 adgang til denne applikation')
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438709129025999)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'da'
,p_message_text=>'Deaktiveret'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438674678025999)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'da'
,p_message_text=>'Aktiveret'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438980948025999)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'da'
,p_message_text=>'%0: Er deaktiveret'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438853478025999)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'da'
,p_message_text=>'%0: Er aktiveret'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287402837025952)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('Ikke underst\00F8ttet')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348662472025971)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'da'
,p_message_text=>'Fra'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348557403025971)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'da'
,p_message_text=>'Til'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438575409025999)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'da'
,p_message_text=>'ikke identificeret'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279025499025950)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'da'
,p_message_text=>'%0 bytes'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279582101025950)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'da'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279233857025950)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'da'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279423063025950)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'da'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431777999025997)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'da'
,p_message_text=>'Download'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284806684025951)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'da'
,p_message_text=>'Valgmuligheder'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284505153025951)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'da'
,p_message_text=>'Filtrer'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284772795025951)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'da'
,p_message_text=>'Skjul facet'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309477473025959)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j filter')
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385734567025982)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'da'
,p_message_text=>'Anvendt filter %0'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310133214025959)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'da'
,p_message_text=>'Anvend'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429334930025996)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'da'
,p_message_text=>'Anvend'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310274137025959)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'da'
,p_message_text=>'Annuller'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294097440025954)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8jlediagram')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442079661026000)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'da'
,p_message_text=>'Andre'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294165608025954)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'da'
,p_message_text=>'Cirkeldiagram'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440617473026000)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'da'
,p_message_text=>'Diagram'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293812882025954)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'da'
,p_message_text=>'Antal'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429818641025996)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'da'
,p_message_text=>'Ryd'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429969324025996)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'da'
,p_message_text=>'Ryd alle'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430060049025996)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'da'
,p_message_text=>'Ryd %0'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446502988026002)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'da'
,p_message_text=>unistr('Kolonnen %1, som facetten %0 refererer til, er ikke tilg\00E6ngelig eller er uautoriseret.')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257242300025943)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg filtre, der skal vises')
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383799779025981)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'da'
,p_message_text=>'%0 resultater'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383837741025981)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'da'
,p_message_text=>'%0 valgt'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386634781025982)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'da'
,p_message_text=>'Aktuelle filtre'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262292942025945)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'da'
,p_message_text=>unistr('Facetteret s\00F8gning kr\00E6ver en datakilde p\00E5 regionsniveau.')
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265973929025946)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'da'
,p_message_text=>'Filterliste'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445078652026001)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'da'
,p_message_text=>unistr('Den distinkte v\00E6rdigr\00E6nse (%0) er overskredet for facetten %1.')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431335663025997)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'da'
,p_message_text=>unistr('Facetten %0 underst\00F8ttes ikke for DATE- eller TIMESTAMP-kolonner.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429411283025996)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'da'
,p_message_text=>'Filter %0'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304071397025957)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'da'
,p_message_text=>'%0 (filter anvendt)'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429508119025996)
,p_name=>'APEX.FS.GO'
,p_message_language=>'da'
,p_message_text=>unistr('G\00E5 til')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299517022025956)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'da'
,p_message_text=>'indeholder %0'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430945054025996)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'da'
,p_message_text=>'lig med %0'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299201038025956)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'da'
,p_message_text=>unistr('st\00F8rre end %0')
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299363462025956)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'da'
,p_message_text=>unistr('st\00F8rre end eller lig med %0')
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298925428025956)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'da'
,p_message_text=>'mindre end %0'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299149765025956)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'da'
,p_message_text=>'mindre end eller lig med %0'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298437358025956)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'da'
,p_message_text=>'indeholder ikke %0'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284247124025951)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'da'
,p_message_text=>'er ikke lig med %0'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298510680025956)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'da'
,p_message_text=>'starter ikke med %0'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299451598025956)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'da'
,p_message_text=>'starter med %0'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297506519025955)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'da'
,p_message_text=>'Facetvalg'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273302909025948)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'da'
,p_message_text=>unistr('Filterpr\00E6fikset "%0" er ugyldigt for facetten "%1".')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271732163025947)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'da'
,p_message_text=>unistr('Filterpr\00E6fiks mangler for facetten "%0".')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305965545025958)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'da'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287825110025952)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'da'
,p_message_text=>'indeholder'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286882110025952)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'da'
,p_message_text=>'er lig med'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287578493025952)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'da'
,p_message_text=>unistr('st\00F8rre end')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287602798025952)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'da'
,p_message_text=>unistr('st\00F8rre end eller lig med')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287242760025952)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'da'
,p_message_text=>'mindre end'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287325606025952)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'da'
,p_message_text=>'mindre end eller lig med'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298336171025955)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'da'
,p_message_text=>'indeholder ikke'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287051734025952)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'da'
,p_message_text=>'er ikke lig med'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298270958025955)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'da'
,p_message_text=>'starter ikke med'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124287777758025952)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'da'
,p_message_text=>'starter med'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306307230025958)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Datatypen %0 (%1) underst\00F8ttes ikke for facetten Inputfelt.')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273253696025948)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Filteret "%0" underst\00F8ttes ikke for facetten "%1" (datatypen %2).')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305801240025958)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi')
,p_is_js_message=>true
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431169536025997)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen s\00F8gekolonner er leveret for facetten %0')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257358426025943)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'da'
,p_message_text=>'Flere filtre'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383975449025981)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'da'
,p_message_text=>'Intervalstart'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430618958025996)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'da'
,p_message_text=>'%0 til %1'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430703617025996)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'da'
,p_message_text=>'Over %0'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430811829025996)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'da'
,p_message_text=>'Under %0'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384080054025981)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'da'
,p_message_text=>'Intervalslut'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448642499026002)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'da'
,p_message_text=>'LOV-elementnr. %2 ("%1") for intervalfacetten %0 er ugyldigt (separatoren "|" mangler).'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431041607025997)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('Manuelt input for intervalfacetten %0 underst\00F8ttes p.t. ikke, da kolonnen er DATE eller TIMESTAMP.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430322743025996)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'da'
,p_message_text=>'til'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293980058025954)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'da'
,p_message_text=>'Fjern diagram'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380323135025980)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'da'
,p_message_text=>'Nulstil'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429749435025996)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429640131025996)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g...')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430547247025996)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'da'
,p_message_text=>unistr('- V\00E6lg -')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293768055025954)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'da'
,p_message_text=>'Vis diagram'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430119696025996)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'da'
,p_message_text=>unistr('Vis f\00E6rre')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430262429025996)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'da'
,p_message_text=>'Vis alle'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124430417595025996)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'da'
,p_message_text=>'%0 stjerner og op'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385625887025982)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'da'
,p_message_text=>'Filtrer forslag'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431200065025997)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'da'
,p_message_text=>unistr('Tekstfeltfacetten %0 underst\00F8ttes p.t. kun for NUMBER-kolonner.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256756432025943)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'da'
,p_message_text=>unistr('Samlet antal r\00E6kker')
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446630969026002)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Datatypen %0 (%1) underst\00F8ttes ikke for facetteret s\00F8gning.')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376823265025979)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'da'
,p_message_text=>'Visuelt skjult overskrift'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439112990025999)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('G\00E5 til fejl')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395149630025985)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'da'
,p_message_text=>'Aggreger.'
,p_is_js_message=>true
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323063088025963)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'da'
,p_message_text=>'Tom overskrift'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404490004025988)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'da'
,p_message_text=>'Skjul kontrolbrud'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395235769025985)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'da'
,p_message_text=>'Kontrolbrud.'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404337724025988)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'da'
,p_message_text=>'Udvid kontrolbrud'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404139381025988)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'da'
,p_message_text=>unistr('%0 r\00E6kker slettet')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473282612026010)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'da'
,p_message_text=>'Dubleret identitet'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266157661025946)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'da'
,p_message_text=>unistr('G\00E5r i redigeringstilstand')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392038455025984)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'da'
,p_message_text=>unistr('F\00F8rste')
,p_is_js_message=>true
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264904752025945)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'da'
,p_message_text=>'Skjul dialogboks'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263932395025945)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Flydende overl\00F8b for celleindhold')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265247098025946)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'da'
,p_message_text=>unistr('Vis overl\00F8bsindhold')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339444267025968)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'da'
,p_message_text=>'Sidefod til gitter'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395415253025985)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'da'
,p_message_text=>'Gruppeoverskrift'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395315279025985)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'da'
,p_message_text=>'Overskrift.'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392105737025984)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'da'
,p_message_text=>'Sidste'
,p_is_js_message=>true
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266339284025946)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'da'
,p_message_text=>'Forlader redigeringstilstand'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291014170025953)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'da'
,p_message_text=>unistr('Indl\00E6s alle')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413921003025991)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'da'
,p_message_text=>'Vis flere'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391863783025984)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_is_js_message=>true
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395517169025985)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'da'
,p_message_text=>unistr('Sider\00E6kker')
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304659206025957)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'da'
,p_message_text=>'Side %0'
,p_is_js_message=>true
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392207814025984)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'da'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392397940025984)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'da'
,p_message_text=>'%0 - %1 af %2'
,p_is_js_message=>true
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449200529026002)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'da'
,p_message_text=>'Sidevalg'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339717757025968)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'da'
,p_message_text=>'Sideinddeling'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391901757025984)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'da'
,p_message_text=>'Forrige'
,p_is_js_message=>true
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289990549025953)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'da'
,p_message_text=>'Intervalvisning'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323330069025963)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkevalg')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473054987026010)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8jet')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473163190026010)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'da'
,p_message_text=>unistr('\00C6ndret')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481410541026013)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'da'
,p_message_text=>unistr('Gitterr\00E6kkesekvens %0, Kolonne %1.')
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481515298026013)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'da'
,p_message_text=>unistr('Gitterr\00E6kkesekvens %0.')
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472992930026010)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'da'
,p_message_text=>'Slettet'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395741977025985)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkeoverskrift')
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323225983025963)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkevalg')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291182470025953)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'da'
,p_message_text=>'%0 %1 valgt'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391203590025984)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'da'
,p_message_text=>'%0 celler valgt'
,p_is_js_message=>true
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392420400025984)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'da'
,p_message_text=>unistr('%0 r\00E6kker valgt')
,p_is_js_message=>true
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434529754025998)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg alle')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328025229025964)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg alle r\00E6kker')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404247027025988)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'da'
,p_message_text=>'Side %0'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395607087025985)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg r\00E6kke')
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395998266025985)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'da'
,p_message_text=>'Sorteret stigende %0'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396064659025985)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'da'
,p_message_text=>'Sorteret faldende %0'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391339640025984)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'da'
,p_message_text=>'Sorter stigende'
,p_is_js_message=>true
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391650248025984)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'da'
,p_message_text=>'Sorter stigende %0'
,p_is_js_message=>true
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391401352025984)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'da'
,p_message_text=>'Sorter faldende'
,p_is_js_message=>true
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391770870025984)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'da'
,p_message_text=>'Sorter faldende %0'
,p_is_js_message=>true
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391589425025984)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'da'
,p_message_text=>'Sorter ikke'
,p_is_js_message=>true
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257193123025943)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'da'
,p_message_text=>'Sorteringsvalg'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339531639025968)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'da'
,p_message_text=>'Tilstandsikoner'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339641509025968)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'da'
,p_message_text=>'Status for gitter'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269438983025947)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'da'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269161032025947)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'da'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404043563025988)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'da'
,p_message_text=>'I alt %0'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322815239025963)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'da'
,p_message_text=>'HTTP-anmodningen til "%0" fejlede.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324440543025963)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'da'
,p_message_text=>'Kolonne %0'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324631510025963)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Kolonne %0 og r\00E6kke %1')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324928790025964)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Allerede p\00E5 den f\00F8rste kolonne. Kolonne %0 og r\00E6kke %1')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324876726025964)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Allerede p\00E5 den f\00F8rste r\00E6kke. Kolonne %0 og r\00E6kke %1')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470488857026009)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'da'
,p_message_text=>unistr('Pr\00E6senteret i %0 kolonner og %1 r\00E6kker')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325013650025964)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Allerede p\00E5 den sidste kolonne. Kolonne %0 og r\00E6kke %1')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324737214025963)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Allerede p\00E5 den sidste r\00E6kke. Kolonne %0 og r\00E6kke %1')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403944002025988)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'da'
,p_message_text=>unistr('Pr\00E6senteret i %0 r\00E6kker')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324546205025963)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kke %0')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481221021026013)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'da'
,p_message_text=>'Interaktivt gitter %0'
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388353563025983)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'da'
,p_message_text=>'Handlinger'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389372253025983)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j')
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389234730025983)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j r\00E6kke')
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474812136026011)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'da'
,p_message_text=>'Aggreger'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460483986026006)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'da'
,p_message_text=>'Aggregering'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462197515026007)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'da'
,p_message_text=>'Alle'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419724383025993)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Alle tekstkolonner'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420904258025993)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'da'
,p_message_text=>'Alternativ'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422015071025994)
,p_name=>'APEX.IG.AND'
,p_message_language=>'da'
,p_message_text=>'og'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441416915026000)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'da'
,p_message_text=>'Omtrentligt antal distinkte'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475829026026011)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'da'
,p_message_text=>'Overordnet omtrentligt antal distinkte'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459020249026006)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'da'
,p_message_text=>unistr('Omr\00E5de')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460925334026006)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'da'
,p_message_text=>'Stigende'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421090932025993)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'da'
,p_message_text=>'Autorisation'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474914070026011)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'da'
,p_message_text=>'Automatisk'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441879636026000)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'da'
,p_message_text=>'Gennemsnit'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475550425026011)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'da'
,p_message_text=>'Overordnet gennemsnit'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458589497026005)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'da'
,p_message_text=>'Etiketaksetitel'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458754185026005)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'da'
,p_message_text=>'Decimalpladser'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458693250026005)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdiaksetitel')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464795536026007)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'da'
,p_message_text=>'Baggrundsfarve'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459165106026006)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8jle')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416323494025992)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'da'
,p_message_text=>'mellem'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465993737026008)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'da'
,p_message_text=>'Begge'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459246630026006)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'da'
,p_message_text=>'Boble'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389508221025983)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'da'
,p_message_text=>'Annuller'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421993311025994)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'da'
,p_message_text=>unistr('Forskel p\00E5 sm\00E5 og store bogstaver')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476481144026011)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'da'
,p_message_text=>unistr('(Forskel p\00E5 store og sm\00E5 bogstaver)')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447792007026002)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'da'
,p_message_text=>unistr('\00C6ndringerne er gemt')
,p_is_js_message=>true
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389941859025983)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'da'
,p_message_text=>'Skift visning'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423024063025994)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'da'
,p_message_text=>'Diagram'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419591937025993)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'da'
,p_message_text=>unistr('Din foresp\00F8rgsel overskrider det maksimale antal p\00E5 %0 datapunkter pr. diagram. Anvend et filter for at reducere antallet af records i din basisforesp\00F8rgsel.')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388242897025983)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'da'
,p_message_text=>'Diagramvisning'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396690182025985)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'da'
,p_message_text=>'Ryd'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458099860026005)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Lukke'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464942758026007)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'da'
,p_message_text=>'Farver'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442299000026000)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'da'
,p_message_text=>'Eksempel'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421324341025993)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'da'
,p_message_text=>'Kolonne'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388454236025983)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Kolonner'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350334486025971)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'da'
,p_message_text=>'Kolonnehandlinger'
,p_is_js_message=>true
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350100433025971)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'da'
,p_message_text=>'Handlinger for kolonnen "%0"'
,p_is_js_message=>true
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466781434026008)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Kolonneform\00E5l')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421425993025993)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'da'
,p_message_text=>'Kompleks'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388642149025983)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'da'
,p_message_text=>'Beregn'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416905861025992)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'da'
,p_message_text=>'indeholder'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423244432025994)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'da'
,p_message_text=>'Kontrolbrud'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396402201025985)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'da'
,p_message_text=>'Kopier til Udklipsholder'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396587014025985)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'da'
,p_message_text=>'Kopier ned'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441245574026000)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'da'
,p_message_text=>'Antal'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441375090026000)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'da'
,p_message_text=>'Antal distinkte'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475732801026011)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'da'
,p_message_text=>'Overordnet antal distinkte'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475600352026011)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'da'
,p_message_text=>'Overordnet antal'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473397925026010)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'da'
,p_message_text=>'Opret %0'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419966530025993)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'da'
,p_message_text=>'Data'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466531226026008)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>'Datatype'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466190339026008)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'da'
,p_message_text=>'Dato'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447506760026002)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('Ugyldig datov\00E6rdi')
,p_is_js_message=>true
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417631621025992)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'da'
,p_message_text=>'dage'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420629900025993)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'da'
,p_message_text=>'Standardindstillinger'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420485618025993)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'da'
,p_message_text=>'Standardtype'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389434603025983)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'da'
,p_message_text=>'Slet'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467667467026008)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'da'
,p_message_text=>unistr('Er du sikker p\00E5, at du vil slette denne rapport?')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425089036025995)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Slet r\00E6kke')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423820675025994)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('Slet r\00E6kker')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461007635026006)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'da'
,p_message_text=>'Faldende'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422723782025994)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'da'
,p_message_text=>'Detalje'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387923229025983)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'da'
,p_message_text=>'Detaljevisning'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450060869026003)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkef\00F8lge')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422467448025994)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'da'
,p_message_text=>'Deaktiveret'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417098673025992)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'da'
,p_message_text=>'indeholder ikke'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417242694025992)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'da'
,p_message_text=>'starter ikke med'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459375172026006)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'da'
,p_message_text=>'Krans'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423460500025994)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'da'
,p_message_text=>'Download'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313736346025960)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'da'
,p_message_text=>'Kun data'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468671285026009)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg format')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328841315025965)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'da'
,p_message_text=>'Downloadformatet %0 er ikke aktiveret.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461764043026006)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'da'
,p_message_text=>'Dubletaggregering'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461814211026006)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'da'
,p_message_text=>'Dubletkontrolbrud'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424943806025995)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Dubleret r\00E6kke')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423742621025994)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('Dublerede r\00E6kker')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389032245025983)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'da'
,p_message_text=>'Rediger'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460851274026006)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'da'
,p_message_text=>'Rediger diagram'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341311434025968)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'da'
,p_message_text=>'Rediger %0'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472284200026010)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'da'
,p_message_text=>'Rediger Grupper efter'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379474129025980)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'da'
,p_message_text=>'%0 i redigeringstilstand'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355028951025973)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Gitter er i redigeringstilstand, hold op med at trykke for at skifte til visningstilstand'
,p_is_js_message=>true
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468218138026009)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'da'
,p_message_text=>'Blind kopi (Bcc)'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468469133026009)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'da'
,p_message_text=>'Meddelelse'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468115854026008)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'da'
,p_message_text=>'Kopi (Cc)'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467868544026008)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'da'
,p_message_text=>'E-mail sendt.'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468375325026009)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'da'
,p_message_text=>'Emne'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468045161026008)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'da'
,p_message_text=>'Modtager (til)'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422188704025994)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'da'
,p_message_text=>'Aktiveret'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415376934025991)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'da'
,p_message_text=>'er lig med'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422217580025994)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'da'
,p_message_text=>'Udtryk'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467298683026008)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'da'
,p_message_text=>'Type'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434454600025998)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'da'
,p_message_text=>'Fil er klargjort. Starter download.'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396739090025986)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'da'
,p_message_text=>'Udfyld'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398916213025986)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'da'
,p_message_text=>'Udfyld valgte med'
,p_is_js_message=>true
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398863818025986)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'da'
,p_message_text=>'Udfyld valgte'
,p_is_js_message=>true
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388548789025983)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'da'
,p_message_text=>'Filtrer'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421503785025993)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'da'
,p_message_text=>'Filtre'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475292606026011)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'da'
,p_message_text=>'Filtrer...'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461269408026006)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'da'
,p_message_text=>unistr('F\00F8rste')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388748954025983)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'da'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420000642025993)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'da'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465878555026008)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'da'
,p_message_text=>'Formateringsmaske'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467556195026008)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'da'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467482893026008)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'da'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378575781025980)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'da'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312406305025960)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'da'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424608652025994)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'da'
,p_message_text=>'Fastfrys'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422308756025994)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'da'
,p_message_text=>'Funktioner og operatorer'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459479429026006)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'da'
,p_message_text=>'Tragt'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441181510026000)
,p_name=>'APEX.IG.GO'
,p_message_language=>'da'
,p_message_text=>unistr('G\00E5 til')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415995674025992)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'da'
,p_message_text=>unistr('st\00F8rre end')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416018624025992)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'da'
,p_message_text=>unistr('st\00F8rre end eller lig med')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422607058025994)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'da'
,p_message_text=>'Gitter'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387724010025982)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'da'
,p_message_text=>'Gittervisning'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462034923026006)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'da'
,p_message_text=>'Gruppe'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422805246025994)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'da'
,p_message_text=>'Grupper efter'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388042840025983)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'da'
,p_message_text=>'Gruppevisning'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466401323026008)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'da'
,p_message_text=>'Betingelsestype'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465328680026008)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'da'
,p_message_text=>'Overskrift'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465502423026008)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'da'
,p_message_text=>'Justering af overskrift'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475156626026011)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470616345026009)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Du kan inds\00E6tte, opdatere og slette data direkte i dette interaktive gitter.</p>'),
'',
unistr('<p>Inds\00E6t en ny r\00E6kke ved at klikke p\00E5 knappen Tilf\00F8j r\00E6kke.</p>'),
'',
unistr('<p>Rediger eksisterende data ved at dobbeltklikke p\00E5 en specifik celle. For st\00F8rre redigeringsarbejde skal du klikke p\00E5 Rediger for at g\00E5 i redigeringstilstand. I redigeringstilstand kan du enkeltklikke eller bruge tastaturet til at redigere specifik')
||'ke celler.</p>',
'',
unistr('<p>Brug menuen \00C6ndr til at duplikere og slette r\00E6kker. Du kan aktivere menuen \00C6ndr ved at bruge afkrydsningsfelterne til at v\00E6lge en eller flere r\00E6kker.</p>'),
'',
unistr('<p>Dupliker en valgt r\00E6kke ved at klikke p\00E5 menuen \00C6ndr og v\00E6lge Duplikerede r\00E6kker. Slet en valgt r\00E6kke ved at klikke p\00E5 menuen \00C6ndr og v\00E6lge Slet r\00E6kke.</p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472756264026010)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'da'
,p_message_text=>'Redigeringsmuligheder'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472850738026010)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Et interaktivt gitter pr\00E6senterer et s\00E6t data i en s\00F8gbar rapport, der kan tilpasses. Du kan udf\00F8re talrige operationer for at begr\00E6nse det antal records, der returneres, og \00E6ndre den m\00E5de, som dataene vises p\00E5.</p>'),
'',
unistr('<p>Brug feltet S\00F8g til at filtrere de returnerede records. Klik p\00E5 Handlinger for at f\00E5 adgang til talrige valgmuligheder for modificering af rapportlayoutet, eller brug kolonneoverskriftsmenuerne p\00E5 viste kolonner.</p>'),
'',
unistr('<p>Brug rapportindstillinger til at gemme dine tilpasninger af en rapport. Du kan ogs\00E5 downloade dataene fra rapporten til en ekstern fil eller sende dataene via e-mail til dig selv eller andre.</p>'),
'',
unistr('<p>Se "Using Interactive Grids" i <em>Oracle APEX End User''s Guide</em> for at f\00E5 flere oplysninger.')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472557636026010)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'da'
,p_message_text=>'Oversigt'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470537364026009)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Du kan tilpasse det interaktive gitter til at vise data p\00E5 forskellige m\00E5der ved hj\00E6lp af de indbyggede funktioner.</p>'),
'',
unistr('<p>Brug menuen Kolonneoverskrift eller Handlinger til at bestemme, hvilke kolonner der skal vises i hvilken r\00E6kkef\00F8lge, og fastfryse kolonner. Du kan ogs\00E5 definere forskellige datafiltre og sortere de data, der returneres.</p>'),
'',
unistr('<p>Brug knappen Vis (ud for feltet S\00F8g) til at \00E5bne andre datavisninger, som kan v\00E6re defineret af applikationsudvikleren. Du kan ogs\00E5 oprette et diagram eller se et eksisterende diagram.</p>  '),
'',
unistr('<p><em>Bem\00E6rk: Klik p\00E5 <strong>Hj\00E6lp</strong> i de interaktive gitterdialogbokse for at f\00E5 mere detaljerede oplysninger om den valgte funktion.</em></p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472699253026010)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'da'
,p_message_text=>'Rapporteringsmuligheder'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423602375025994)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til interaktivt gitter')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469413724026009)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at aggregere kolonner. Aggregerede v\00E6rdier vises under dataene eller under hvert brud, hvis kontrolbrud er defineret.</p>'),
'',
'<p><strong>Aggregeringsliste</strong><br>',
unistr('Aggregeringslisten viser definerede aggregeringer. Du kan deaktivere en eksisterende aggregering ved at frav\00E6lge den.<br>'),
unistr('Klik p\00E5 Tilf\00F8j ( &plus; ) for at oprette en ny aggregering eller Slet ( &minus; ) for at fjerne en eksisterende aggregering.</p>'),
'',
'<p><strong>Aggregeringsindstillinger</strong><br>',
unistr('Brug formularen i h\00F8jre side til at definere aggregeringen.<br>'),
unistr('V\00E6lg kolonnenavnet og aggregeringstypen.<br>'),
unistr('Indtast eventuelt et v\00E6rkst\00F8jstip til aggregeringen.<br>'),
unistr('Hvis du har defineret et kontrolbrud, vil valg af <strong>Vis overordnet v\00E6rdi</strong> vise overordnet gennemsnit, total eller lignende v\00E6rdi under dataene.</p>'),
'',
unistr('<p><em>Bem\00E6rk: \00C5bn dialogboksen Aggregering i menuen Handlinger eller ved at klikke p\00E5 kolonneoverskriften og Sum ( &sum; ).</em></p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471674623026010)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til aggregering')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470160359026009)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Brug denne dialogboks til at definere et diagram, der kan vises som en separat datavisning.<br>',
unistr('V\00E6lg en diagramtype og diagramattributter.</p>'),
'<p><strong>Diagramattributter</strong><br>',
unistr('De tilg\00E6ngelige diagramattributter varierer afh\00E6ngigt af diagramtypen.</p>'),
'<p>',
'<ul>',
unistr('  <li>V\00E6lg den kolonne, der indeholder v\00E6rdien af attributten:'),
'    <ul>',
'      <li>Etiket - Teksten for hvert datapunkt.</li>',
unistr('      <li>V\00E6rdi - De data, som skal plottes.</li>'),
unistr('      <li>Serie - Til at definere din dynamiske foresp\00F8rgsel p\00E5 flere serier.</li>'),
unistr('      <li>\00C5bne - Den daglige aktie\00E5bningskurs (kun Aktie).</li>'),
'      <li>Lukke - Den daglige aktielukkekurs (kun Aktie).</li>',
unistr('      <li>H\00F8j - Den h\00F8jeste v\00E6rdi (kun Interval og Aktie).</li>'),
unistr('      <li>Lav - Den laveste v\00E6rdi (kun Interval og Aktie).</li>'),
unistr('      <li>Volumen - Den daglige aktiem\00E6ngde (kun Aktie).</li>'),
unistr('      <li>M\00E5l - M\00E5lv\00E6rdien (kun Tragt).</li>'),
unistr('      <li>X - V\00E6rdien p\00E5 x-aksen (kun Boble og Punkt).</li>'),
unistr('      <li>Y - V\00E6rdien p\00E5 y-aksen (kun Boble og Punkt).</li>'),
unistr('      <li>Z - S\00F8jlens bredde eller boblens radius (kun S\00F8jle, Boble og Interval).</li>'),
'    </ul>',
'  </li>',
'  <li>Retning - Lodret eller vandret.</li>',
unistr('  <li>Aggregering - V\00E6lg, hvordan diagramv\00E6rdierne skal sorteres.</li>'),
'  <li>Stablet - Angiv, om dataelementer er stablet.</li>',
unistr('  <li>Sorter efter - Sorter efter etiketten eller v\00E6rdi(er).'),
'    <ul>',
unistr('      <li>Retning - Sorter efter stigende eller faldende v\00E6rdier.</li>'),
unistr('      <li>NULL-v\00E6rdier - Angiv, hvordan records med NULL-v\00E6rdier sorteres i forhold til records med ikke-NULL-v\00E6rdier.</li>'),
'    </ul>',
'  </li>',
'  <li>Decimalpladser</li>',
unistr('  <li>Titel p\00E5 etiketaksen</li>'),
unistr('  <li>Titel p\00E5 v\00E6rdiaksen</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472035168026010)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til diagrammer')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469177864026009)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at v\00E6lge, hvilke kolonner der skal vises i hvilken r\00E6kkef\00F8lge.</p>'),
'',
unistr('<p>Skjul en kolonne ved at frav\00E6lge den.<br>'),
unistr('Reorganiser kolonner ved at klikke p\00E5 Flyt op ( &uarr; ) eller Flyt ned ( &darr; ).<br>'),
unistr('Brug rullev\00E6lgeren til at vise Alle kolonner, Viste kolonner eller Ikke viste kolonner.</p>'),
'',
'<p>Du kan bruge formularen til at angive minimumbredden af en kolonne i pixel.</p>',
'',
unistr('<p><em>Bem\00E6rk: Du kan ogs\00E5 reorganisere de viste kolonner ved at klikke p\00E5 tr\00E6kh\00E5ndtaget (i starten af kolonneoverskriften) og tr\00E6kke kolonnen mod venstre eller h\00F8jre. Du kan ogs\00E5 \00E6ndre kolonnebredden af de viste kolonner ved at v\00E6lge kolonneseparato')
||unistr('ren mellem overskrifterne og flytte den mod venstre eller h\00F8jre.</em></p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471968277026010)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til kolonner')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469525216026009)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at definere flere kolonner baseret p\00E5 matematiske og funktionelle beregninger, der er udf\00F8rt p\00E5 eksisterende kolonner.</p>'),
'',
'<p><strong>Beregningsliste</strong><br>',
unistr('Beregningslisten viser definerede beregninger. Deaktiver en eksisterende beregning ved at frav\00E6lge den.<br>'),
unistr('Klik p\00E5 Tilf\00F8j ( &plus; ) for at tilf\00F8je en ny beregning eller Slet ( &minus; ) for at fjerne en eksisterende beregning.</p>'),
'',
'<p><strong>Beregningsindstillinger</strong><br>',
'Brug formularen til at definere beregningen.<br>',
'Indtast kolonnedetaljer som for eksempel overskrift, etiket og udvalgte justeringsindstillinger.<br> ',
unistr('Brug tekstomr\00E5det Udtryk til at indtaste kolonne(r) og tilknyttede funktioner for beregningen.<br>'),
unistr('V\00E6lg den \00F8nskede datatype og eventuelt en formatmaske for den nye kolonne.</p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471574408026010)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til beregning')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469809681026009)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at definere et kontrolbrud p\00E5 en eller flere kolonner.</p>'),
'',
'<p><strong>Kontrolbrudsliste</strong><br>',
unistr('Kontrolbrudslisten viser definerede kontrolbrud. Deaktiver en eksisterende kolonne med kontrolbrud ved at frav\00E6lge den.<br>'),
unistr('Klik p\00E5 Tilf\00F8j ( &plus; ) for at medtage en ny kolonne i kontrolbruddet eller Slet ( &minus; ) for at fjerne en eksisterende kolonne fra kontrolbruddet.<br>'),
unistr('Hvis du vil omarrangere kolonner, skal du klikke p\00E5 Flyt op ( &uarr; ) eller Flyt ned ( &darr; ) for at flytte den valgte kolonne op eller ned i forhold til andre kolonner.</p>'),
'',
'<p><strong>Indstillinger for kontrolbrud</strong><br>',
'Brug formularen til at definere kolonnen med kontrolbrud.<br>',
unistr('V\00E6lg en kolonne med kontrolbrud, sorteringsr\00E6kkef\00F8lgen, og hvordan NULL-kolonner skal arrangeres (kolonner uden en v\00E6rdi).</p>'),
'',
unistr('<p><em>Bem\00E6rk: Under visning af det interaktive gitter kan du definere et kontrolbrud ved at klikke p\00E5 en kolonneoverskrift og v\00E6lge kontrolbrudsikonet.</em></p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471234416026009)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til kontrolbrud')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470033711026009)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at downloade alle de aktuelle r\00E6kker til en ekstern fil. Filen vil kun indeholde de aktuelt viste kolonner ved hj\00E6lp af eventuelle filtre og sorteringer, der er anvendt p\00E5 dataene.</p>'),
'',
unistr('<p>V\00E6lg filformatet, og klik p\00E5 Download.<br>'),
unistr('Bem\00E6rk: CSV medtager ikke tekstformatering som for eksempel aggregeringer og kontrolbrud.</p>'),
'',
unistr('<p>Hvis du vil sende filen via e-mail, skal du v\00E6lge Send som e-mail og indtaste e-maildetaljerne (Modtager, Emne og Meddelelse).</p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471088521026009)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til download')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469217720026009)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at konfigurere datafiltre, som begr\00E6nser de returnerede r\00E6kker.</p>'),
'',
'<p><strong>Filterlisten</strong><br>',
unistr('Filterlisten viser definerede filtre. Deaktiver et eksisterende filter ved at frav\00E6lge det.<br>'),
unistr('Klik p\00E5 Tilf\00F8j ( &plus; ) for at oprette et nyt filter eller Slet ( &minus; ) for at fjerne et eksisterende filter.</p>'),
'',
'<p><strong>Filterindstillinger</strong><br>',
'Brug formularen til at definere filteregenskaberne.<br>',
unistr('V\00E6lg den \00F8nskede filtertype:<br>'),
unistr('&nbsp;&nbsp;&nbsp;R\00E6kke - filtrer efter et udtryk i enhver kolonne, der kan filtreres.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Kolonne - filtrer en specifik kolonne med en specificeret operator og v\00E6rdi.</p>'),
'',
unistr('<p><em>Bem\00E6rk: Under visning af det interaktive gitter kan du definere r\00E6kkefiltre ved at skrive direkte i feltet S\00F8g. Klik p\00E5 V\00E6lg kolonner, der skal s\00F8ges i, for at begr\00E6nse s\00F8gningen til en specifik kolonne. Alternativt kan du \00E5bne menuen Kolonneo')
||unistr('verskrift og v\00E6lge en v\00E6rdi for at oprette et kolonnefilter.</em></p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471875473026010)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til filtrering')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469649937026009)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at se dataene, som de var p\00E5 et tidligere tidspunkt.</p>'),
unistr('<p>Indtast antal minutter siden for at udf\00F8re flashback-foresp\00F8rgslen.</p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471426837026010)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til flashback')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472133409026010)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til Grupper efter')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469727431026009)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at fremh\00E6ve r\00E6kker eller kolonner med data baseret p\00E5 den indtastede betingelse.</p>'),
'',
unistr('<p><strong>Fremh\00E6vningsliste</strong><br>'),
unistr('Fremh\00E6vningslisten viser definerede fremh\00E6vninger. Deaktiver en eksisterende fremh\00E6vning ved at frav\00E6lge den.<br>'),
unistr('Klik p\00E5 Tilf\00F8j ( &plus; ) for at oprette en ny fremh\00E6vning eller Slet ( &minus; ) for at fjerne en eksisterende fremh\00E6vning.</p>'),
'',
unistr('<p><strong>Fremh\00E6vningsindstillinger</strong><br>'),
unistr('Brug formularen til at definere fremh\00E6vningsegenskaberne.<br>'),
unistr('Indtast navnet, v\00E6lg R\00E6kke eller Kolonne, og v\00E6lg HTML-farvekoderne for baggrunden og teksten.<br>'),
unistr('V\00E6lg den \00F8nskede <strong>Betingelsestype</strong> for at fremh\00E6ve specifikke data:<br>'),
unistr('&nbsp;&nbsp;&nbsp;R\00E6kke - fremh\00E6v udtrykket i enhver kolonne.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Kolonne - fremh\00E6v i en specifik kolonne baseret p\00E5 den specificerede operator og v\00E6rdi.</p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471326677026009)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til fremh\00E6vning')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469987178026009)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at gemme dine \00E6ndringer af det aktuelle gitterlayout og konfigurationen.<br>'),
unistr('Applikationsudviklere kan definere flere alternative rapportlayouts. Hvis det er tilladt, kan du og andre slutbrugere gemme en rapport som offentlig, s\00E5 rapporten bliver tilg\00E6ngelig for alle andre brugere af gitteret. Du kan ogs\00E5 gemme en rapport som')
||' en privat rapport, som kun du kan se.</p>',
unistr('<p>V\00E6lg mellem de tilg\00E6ngelige typer, og indtast et navn til den gemte rapport.</p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471105306026009)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Hj\00E6lp til rapport'),
''))
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469325619026009)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Brug denne dialogboks til at s\00E6tte visningsr\00E6kkef\00F8lgen.</p>'),
'',
'<p><strong>Sorteringsliste</strong><br>',
'Dialogboksen Sorter viser en liste over konfigurerede sorteringsregler.<br>',
unistr('Klik p\00E5 Tilf\00F8j ( &plus; ) for at oprette en sorteringskolonne eller Slet ( &minus; ) for at fjerne en sorteringskolonne.<br>'),
unistr('Klik p\00E5 Flyt op ( &uarr; ) og Flyt ned ( &darr; ) for at flytte den valgte sorteringskolonne op og ned i forhold til de andre sorteringskolonner.</p>'),
'',
'<p><strong>Sorteringsindstillinger</strong><br>',
unistr('V\00E6lg en sorteringskolonne, sorteringsr\00E6kkef\00F8lgen, og hvordan NULL-kolonner skal arrangeres (kolonner uden en v\00E6rdi).</p>'),
'',
unistr('<p><em>Bem\00E6rk: Data kan sorteres efter kolonner, der ikke er vist, men det er ikke sikkert, at alle kolonner kan sorteres.</em><br>'),
unistr('<em>Viste kolonner kan sorteres ved at trykke p\00E5 Pil op (stigende) eller Pil ned (faldende) i slutningen af kolonneoverskrifterne. Hvis du vil tilf\00F8je en efterf\00F8lgende kolonne i en eksisterende sortering, skal du holde Shift-tasten nede, mens du klik')
||unistr('ker p\00E5 Pil op eller Pil ned.</em></p>')))
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124471701275026010)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til sortering')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470993315026009)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til abonnement')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424593847025994)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'da'
,p_message_text=>'Skjul'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388934881025983)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6v')
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458109936026005)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('H\00F8j')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458952555026005)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'da'
,p_message_text=>'Vandret'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417563201025992)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'da'
,p_message_text=>'timer'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422598814025994)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'da'
,p_message_text=>'Ikon'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387840783025983)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'da'
,p_message_text=>'Ikonvisning'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415778658025992)
,p_name=>'APEX.IG.IN'
,p_message_language=>'da'
,p_message_text=>'i'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424124168025994)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'da'
,p_message_text=>'Inaktiv indstilling'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424217726025994)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'da'
,p_message_text=>'Inaktive indstillinger'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431831356025997)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'da'
,p_message_text=>'Der opstod en intern fejl under behandling af den interaktive gitteranmodning.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319790207025962)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Kolonnefiltertypen "%0" underst\00F8ttes ikke for kolonnen "%1".')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470765517026009)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'da'
,p_message_text=>'Ugyldigt datoformat'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445576508026001)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Interaktivt gitter underst\00F8tter ikke definition af et filter p\00E5 kolonnen %0.')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445405513026001)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'da'
,p_message_text=>'%0 er ikke en gyldig filtertype til definition af et interaktivt gitterfilter.'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326342301025964)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'da'
,p_message_text=>'Ugyldigt talformat'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473473997026010)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'da'
,p_message_text=>'Ugyldig indstilling'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473523303026010)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'da'
,p_message_text=>'Ugyldige indstillinger'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464617177026007)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'da'
,p_message_text=>'Sorter efter er sat til %0, men ingen kolonne er valgt for %0.'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461970396026006)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('Ugyldig v\00E6rdi')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457045016026005)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'da'
,p_message_text=>'Ikke vist'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416548146025992)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'da'
,p_message_text=>'i de sidste'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416749640025992)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('i de n\00E6ste')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415675423025992)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>'er ikke tom'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415546767025992)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'da'
,p_message_text=>'er tom'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465417719026008)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'da'
,p_message_text=>'Etiket'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457499038026005)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Etiket'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461368637026006)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'da'
,p_message_text=>'Sidste'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405896858025988)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'da'
,p_message_text=>'Sidste dag'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406071522025988)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'da'
,p_message_text=>'Sidste time'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406514022025989)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'da'
,p_message_text=>'Sidste minut'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405555749025988)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('Sidste m\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405686308025988)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'da'
,p_message_text=>'Sidste uge'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405761516025988)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'da'
,p_message_text=>'Sidste %0 dage'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405995593025988)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'da'
,p_message_text=>'Sidste %0 timer'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406688737025989)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'da'
,p_message_text=>'Sidste %0 minutter'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406422835025989)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('Sidste %0 m\00E5neder')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406389810025989)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'da'
,p_message_text=>'Sidste %0 uger'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405304747025988)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('Sidste %0 \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405471503025988)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('Sidste \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465659390026008)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'da'
,p_message_text=>'Cellejustering'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465727076026008)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'da'
,p_message_text=>'Brug gruppe til'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416185430025992)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'da'
,p_message_text=>'mindre end'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416276491025992)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'da'
,p_message_text=>'mindre end eller lig med'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459586929026006)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'da'
,p_message_text=>'Linje'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459642794026006)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'da'
,p_message_text=>'Linje med areal'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466022178026008)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'da'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458291745026005)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Lav'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468552800026009)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'da'
,p_message_text=>'Adskil flere adresser med kommaer'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417345937025992)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'da'
,p_message_text=>'matcher almindeligt udtryk'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441704618026000)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'da'
,p_message_text=>'Maksimum'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476050795026011)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'da'
,p_message_text=>'Overordnet maksimum'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441919976026000)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'da'
,p_message_text=>'Median'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476197671026011)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'da'
,p_message_text=>'Overordnet median'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441640910026000)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'da'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417463350025992)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'da'
,p_message_text=>'minutter'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442414794026000)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'da'
,p_message_text=>'Minutter siden'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475942615026011)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'da'
,p_message_text=>'Overordnet minimum'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417890759025992)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('m\00E5neder')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424490767025994)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Dataene indeholder mere end %0 r\00E6kker, hvilket overskrider det tilladte maksimumantal. Anvend flere filtre for at se resultaterne.')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450208269026003)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('Regions statiske ID skal v\00E6re angivet, da siden indeholder flere interaktive gitre.')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420529032025993)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'da'
,p_message_text=>'Navn'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420788164025993)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'da'
,p_message_text=>'Navngivet rapport'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404703486025988)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste dag')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404580143025988)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste time')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406759685025989)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste minut')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405036117025988)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste m\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404928866025988)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste uge')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404807529025988)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 dage')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124404669559025988)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 timer')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406825774025989)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 minutter')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406124813025989)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 m\00E5neder')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406269529025989)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 uger')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405232874025988)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124405199383025988)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416401811025992)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'da'
,p_message_text=>'ikke mellem'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415431404025992)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'da'
,p_message_text=>'er ikke lig med'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480222292026012)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Region med ID''et %0 er ikke en Interaktiv gitterregion eller findes ikke i applikationen %1.'
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415855260025992)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'da'
,p_message_text=>'ikke i'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416628641025992)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'da'
,p_message_text=>'ikke i de sidste'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124416827942025992)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('ikke i de n\00E6ste')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424397023025994)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'da'
,p_message_text=>'Ingen data fundet'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461145555026006)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'da'
,p_message_text=>unistr('NULL-v\00E6rdier')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466217295026008)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'da'
,p_message_text=>'Numerisk'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461424667026006)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'da'
,p_message_text=>'Fra'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461572690026006)
,p_name=>'APEX.IG.ON'
,p_message_language=>'da'
,p_message_text=>'Til'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414619940025991)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'da'
,p_message_text=>'For 1 minut siden'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124469051090026009)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5bn farvev\00E6lger: %0')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457928116026005)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5bne')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421664016025994)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'da'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457320481026005)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'da'
,p_message_text=>'Retning'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459752898026006)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'da'
,p_message_text=>'Cirkel'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124422989430025994)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'da'
,p_message_text=>'Pivoter'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388198873025983)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'da'
,p_message_text=>'Pivotvisning'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468973529026009)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'da'
,p_message_text=>unistr('Adskil v\00E6rdier med "%0"')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459817987026006)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'da'
,p_message_text=>'Polar'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465197352026008)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'da'
,p_message_text=>'Centreret'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465264909026008)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'da'
,p_message_text=>'Slut'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124465088340026007)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'da'
,p_message_text=>'Start'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420886083025993)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'da'
,p_message_text=>unistr('Prim\00E6r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421167785025993)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'da'
,p_message_text=>unistr('Prim\00E6r standard')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437675505025999)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'da'
,p_message_text=>unistr('Prim\00E6r rapport')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311208649025959)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'da'
,p_message_text=>unistr('Inkluder tilg\00E6ngelighedstags')
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308641260025959)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'da'
,p_message_text=>'Liggende'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308735329025959)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'da'
,p_message_text=>unistr('St\00E5ende')
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308527915025959)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'da'
,p_message_text=>'Sideretning'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308410476025959)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'da'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308369116025959)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'da'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311439469025959)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'da'
,p_message_text=>'Tilpasset'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308147171025958)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'da'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308079646025958)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'da'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308256231025958)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'da'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307928640025958)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'da'
,p_message_text=>unistr('Sidest\00F8rrelse')
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273540679025948)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'da'
,p_message_text=>'Fjern RTF-formatering'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124459963373026006)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'da'
,p_message_text=>'Radar'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460038222026006)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'da'
,p_message_text=>'Interval'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470222065026009)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'da'
,p_message_text=>'Opfrisk'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425152190025995)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Opfrisk r\00E6kke')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423953311025994)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('Opfrisk r\00E6kker')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429170950025996)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Interaktiv gitterregion findes ikke i applikationen %0, side %1 og region %2.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389664295025983)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'da'
,p_message_text=>'Fjern %0'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420251799025993)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'da'
,p_message_text=>'Rapport'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479474673026012)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'da'
,p_message_text=>'Rapport slettet'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479178421026012)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'da'
,p_message_text=>'Alternativ rapport gemt for alle brugere'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479001388026012)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'da'
,p_message_text=>'Standardrapport gemt for alle brugere'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479399463026012)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'da'
,p_message_text=>'Privat rapport gemt'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479221821026012)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'da'
,p_message_text=>'Offentlig rapport gemt for alle brugere'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429226755025996)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Gemt interaktivt gitter med navnet %0 findes ikke.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414539204025991)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'da'
,p_message_text=>'Gitterdata, som de var for %0 minutter siden'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414430112025991)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'da'
,p_message_text=>'Gitterdata, som de var for 1 minut siden'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349962468025971)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Interaktiv gitterrapport findes ikke.'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472419861026010)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'da'
,p_message_text=>'Rapport - Rediger'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124429049805025996)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Gemt interaktivt gitter med ID''et %0 findes ikke.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124472387455026010)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'da'
,p_message_text=>'Rapport - Gem som'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389784896025983)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'da'
,p_message_text=>'Gitterindstillinger'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480354756026012)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Gemt interaktivt gitter med det statiske ID %0 findes ikke.'
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475374100026011)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'da'
,p_message_text=>'Rapportvisning'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124388874319025983)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'da'
,p_message_text=>'Nulstil'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425223895025995)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'da'
,p_message_text=>unistr('Tilbagef\00F8r \00E6ndringer')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424026412025994)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('Tilbagef\00F8r r\00E6kker')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421245756025993)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kke')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420171577025993)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kker pr. side')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479969296026012)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkehandlinger')
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481124934026013)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'da'
,p_message_text=>unistr('Handlinger for r\00E6kke %0')
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389135680025983)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'da'
,p_message_text=>'Gem'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434257494025998)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'da'
,p_message_text=>'gemt'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338848074025968)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'da'
,p_message_text=>'Gemt rapport: %0'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387366797025982)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'da'
,p_message_text=>'Gemte rapporter'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387408674025982)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'da'
,p_message_text=>'Standard'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360981127025974)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'da'
,p_message_text=>'En gemt rapport med navnet %0 findes allerede. Indtast et nyt navn.'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387510852025982)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'da'
,p_message_text=>'Privat'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387644275025982)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'da'
,p_message_text=>'Offentlig'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475050301026011)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'da'
,p_message_text=>'Gem som'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423326275025994)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'da'
,p_message_text=>'Gem rapportindstillinger'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460119072026006)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'da'
,p_message_text=>'Punkt'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387233874025982)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g')
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467332833026008)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g: alle tekstkolonner')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387135284025982)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g i: %0')
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466616232026008)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g: fuld tekst')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414336138025991)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g efter ''%0''')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456727908026005)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'da'
,p_message_text=>unistr('- V\00E6lg -')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396894447025986)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'da'
,p_message_text=>'Valg'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449953731026003)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg 1 r\00E6kke i den overordnede region')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124387039789025982)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg kolonner, der skal s\00F8ges i')
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479610733026012)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'da'
,p_message_text=>'Handlinger for valg'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397075746025986)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'da'
,p_message_text=>'Cellevalg'
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396915908025986)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkevalg')
,p_is_js_message=>true
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467949306026008)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'da'
,p_message_text=>'Send som e-mail'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460528261026006)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Serie'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384780704025982)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'da'
,p_message_text=>'Vis'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439930148025999)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('Vis overordnet v\00E6rdi')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424880646025995)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'da'
,p_message_text=>unistr('Enkeltr\00E6kkevisning')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423183101025994)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'da'
,p_message_text=>'Sortering'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460625674026006)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'da'
,p_message_text=>'Sorter efter'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480037014026012)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Du kan kun definere \00E9n sortering pr. kolonne.')
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479811522026012)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'da'
,p_message_text=>unistr('\00C6ndring')
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124461613259026006)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'da'
,p_message_text=>'Stablet'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417137770025992)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'da'
,p_message_text=>'starter med'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460263142026006)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'da'
,p_message_text=>'Aktie'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379551876025980)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'da'
,p_message_text=>unistr('Str\00E6k kolonnebredder')
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124423539642025994)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Abonnement'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441564425026000)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'da'
,p_message_text=>'Sum'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481310885026013)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'da'
,p_message_text=>'Interaktiv gitterrapport: %0, Visning: %1.'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124475480274026011)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'da'
,p_message_text=>'Overordnet sum'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458417024026005)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5l')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464897595026007)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'da'
,p_message_text=>'Tekstfarve'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124389812251025983)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'da'
,p_message_text=>'Skift'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271988450025948)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'da'
,p_message_text=>'Gitter'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439872035025999)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rkt\00F8jstip')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124420324240025993)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'da'
,p_message_text=>'Type'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124424774454025994)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'da'
,p_message_text=>unistr('Oph\00E6v fastfrysning')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421843481025994)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'da'
,p_message_text=>'Enhed'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467790079026008)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'da'
,p_message_text=>unistr('Der er \00E6ndringer, som ikke er gemt. Vil du forts\00E6tte?')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124421733156025994)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457591801026005)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462448406026007)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('En v\00E6rdi er p\00E5kr\00E6vet.')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447651719026002)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi (tidszone kan ikke \00E6ndres)')
,p_is_js_message=>true
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466370933026008)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'da'
,p_message_text=>'Tekst'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458899881026005)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'da'
,p_message_text=>'Lodret'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419850343025993)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'da'
,p_message_text=>'Vis'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354946133025973)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Gitter i visningstilstand, tryk for at redigere'
,p_is_js_message=>true
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456890007026005)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'da'
,p_message_text=>'Vist'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124458324225026005)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Volumen'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417736780025992)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'da'
,p_message_text=>'uger'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456994373026005)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'da'
,p_message_text=>'Mindste kolonnebredde (pixel)'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408903147025989)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'da'
,p_message_text=>'%0 mellem %1 og %2'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408611287025989)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'da'
,p_message_text=>'%0 indeholder %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408795757025989)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'da'
,p_message_text=>'%0 indeholder ikke %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384112184025981)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'da'
,p_message_text=>'%0 starter ikke med %1'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407491427025989)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'da'
,p_message_text=>'%0 er lig med %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407672009025989)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er st\00F8rre end %1')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407761155025989)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er st\00F8rre end eller lig med %1')
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408454675025989)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'da'
,p_message_text=>'%0 i %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409683446025990)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'da'
,p_message_text=>'%0 inden for de sidste %1 dage'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409459033025990)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'da'
,p_message_text=>'%0 i de sidste %1 timer'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409268207025990)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'da'
,p_message_text=>'%0 i de sidste %1 minutter'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410033215025990)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i de sidste %1 m\00E5neder')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409868920025990)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'da'
,p_message_text=>'%0 i de sidste %1 uger'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410222341025990)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i de sidste %1 \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409576100025990)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'da'
,p_message_text=>'%0 inden for den sidste dag'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409334144025990)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'da'
,p_message_text=>'%0 i den sidste time'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409185079025989)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'da'
,p_message_text=>'%0 i det sidste minut'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409951650025990)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i den sidste m\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409756682025990)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'da'
,p_message_text=>'%0 i den sidste uge'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410138145025990)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i det sidste \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412001921025990)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 inden for de n\00E6ste %1 dage')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411842238025990)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i de n\00E6ste %1 timer')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411603845025990)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i de n\00E6ste %1 minutter')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412493026025991)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i de n\00E6ste %1 m\00E5neder')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412217146025991)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i de n\00E6ste %1 uger')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412671390025991)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i de n\00E6ste %1 \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411977640025990)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'da'
,p_message_text=>unistr('%0 inden for den n\00E6ste dag')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411747155025990)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i den n\00E6ste time')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411512865025990)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i det n\00E6ste minut')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412344515025991)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i den n\00E6ste m\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412177753025990)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i den n\00E6ste uge')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412506099025991)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 i det n\00E6ste \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408137427025989)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>'%0 er ikke tom'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408066283025989)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'da'
,p_message_text=>'%0 er tom'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407891413025989)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'da'
,p_message_text=>'%0 er mindre end %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407934345025989)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'da'
,p_message_text=>'%0 er mindre end eller lig med %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408260589025989)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'da'
,p_message_text=>'%0 som %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408864946025989)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'da'
,p_message_text=>'%0 matcher almindeligt udtryk %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414708769025991)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'da'
,p_message_text=>'For %0 minutter siden'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124409058830025989)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'da'
,p_message_text=>'%0 ikke mellem %1 og %2'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407586950025989)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'da'
,p_message_text=>'%0 er ikke lig med %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408527545025989)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'da'
,p_message_text=>'%0 ikke i %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410847201025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'da'
,p_message_text=>'%0 ikke inden for de sidste %1 dage'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410616798025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'da'
,p_message_text=>'%0 ikke i de sidste %1 timer'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410452452025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'da'
,p_message_text=>'%0 ikke i de sidste %1 minutter'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411269210025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i de sidste %1 m\00E5neder')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411001520025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'da'
,p_message_text=>'%0 ikke i de sidste %1 uger'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411423976025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i de sidste %1 \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410710695025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'da'
,p_message_text=>'%0 ikke inden for den sidste dag'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410583062025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'da'
,p_message_text=>'%0 ikke i den sidste time'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410373539025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'da'
,p_message_text=>'%0 ikke i det sidste minut'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411114238025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i den sidste m\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124410943955025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'da'
,p_message_text=>'%0 ikke i den sidste uge'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124411386351025990)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i det sidste \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413211330025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke inden for de n\00E6ste %1 dage')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413045405025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i de n\00E6ste %1 timer')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412802777025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i de n\00E6ste %1 minutter')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413682304025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i de n\00E6ste %1 m\00E5neder')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413412708025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i de n\00E6ste %1 uger')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413896477025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i de n\00E6ste %1 \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413137839025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke inden for den n\00E6ste dag')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412922560025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i den n\00E6ste time')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124412742165025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i det n\00E6ste minut')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413588906025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i den n\00E6ste m\00E5ned')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413301925025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i den n\00E6ste uge')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124413712028025991)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 ikke i det n\00E6ste \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124408364674025989)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'da'
,p_message_text=>'%0 ikke som %1'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415286656025991)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'da'
,p_message_text=>'%0 starter med %1'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457621774026005)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'da'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124417988079025992)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('\00E5r')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457712227026005)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457873390026005)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466846800026008)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'da'
,p_message_text=>'Mandag den 12. januar 2016'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124466987660026008)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'da'
,p_message_text=>'Januar'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467044987026008)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'da'
,p_message_text=>'for 16 timer siden'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124467172723026008)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'da'
,p_message_text=>'om 16 timer'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285177506025952)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'da'
,p_message_text=>'Anvend'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277120031025949)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tr\00E6k dit billede, og brug zoomskyderen til at flytte det i rammen.</p>'),
'',
unistr('<p>N\00E5r der fokuseres p\00E5 billedbesk\00E6ringsv\00E6rkt\00F8jet, bliver f\00F8lgende tastaturgenveje tilg\00E6ngelige:</p>'),
'<ul>',
'    <li>Venstre pil: Flyt billede til venstre*</li>',
'    <li>Pil op: Flyt billede op*</li>',
unistr('    <li>H\00F8jre pil: Flyt billede til h\00F8jre*</li>'),
'    <li>Pil ned: Flyt billede ned*</li>',
'    <li>I: Zoom ind</li>',
'    <li>O: Zoom ud</li>',
'    <li>L: Roter mod venstre</li>',
unistr('    <li>R: Roter mod h\00F8jre</li>'),
'</ul>',
'',
'<p class="margin-top-md"><em>*Hold Shift nede for at flytte hurtigere</em></p>'))
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277371058025949)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til besk\00E6ring af billede')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285241619025952)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'da'
,p_message_text=>'Nulstil'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277612996025949)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Besk\00E6r billede')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285390855025952)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'da'
,p_message_text=>unistr('Flyt skyder for at \00E6ndre zoomniveau')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314965266025961)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'da'
,p_message_text=>unistr('Ugyldig filtype. Underst\00F8ttede filtyper %0.')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449342800026002)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'da'
,p_message_text=>'Gennemse'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449055885026002)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg fil')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449135260026002)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg filer')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314721994025960)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('Tr\00E6k og slip')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315140192025961)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'da'
,p_message_text=>unistr('Tr\00E6k og slip filer')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316576389025961)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg en fil, eller slip en her.')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316612376025961)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg eller slip filer her.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316755002025961)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg en fil, eller slip en her.')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316899343025961)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg eller slip filer her.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315051822025961)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'da'
,p_message_text=>'%0 filer'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314888547025961)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'da'
,p_message_text=>unistr('Fil er for stor. Maks. filst\00F8rrelse er %0.')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295334636025955)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('Flere filuploads underst\00F8ttes ikke.')
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278211906025949)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'da'
,p_message_text=>'Fjern'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283756070025951)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('Adresse p\00E5kr\00E6vet.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282642979025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'da'
,p_message_text=>'By'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283028558025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'da'
,p_message_text=>'Landekode'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282729929025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'da'
,p_message_text=>'Husnr.'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283680382025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'da'
,p_message_text=>'Breddegrad'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283587284025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'da'
,p_message_text=>unistr('L\00E6ngdegrad')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283492794025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'da'
,p_message_text=>unistr('Vis p\00E5 kort')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283152651025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'da'
,p_message_text=>'Score'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282841198025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'da'
,p_message_text=>'Postnr.'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282962005025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'da'
,p_message_text=>'Stat'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282582437025951)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'da'
,p_message_text=>'Gade'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282443755025951)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'da'
,p_message_text=>'Geokodningsresultater'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313979106025960)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'da'
,p_message_text=>'Geokodet'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314080137025960)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'da'
,p_message_text=>'Ikke geokodet'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283371398025951)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'da'
,p_message_text=>'Kort'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283291305025951)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'da'
,p_message_text=>'Ingen adresser fundet.'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124283866014025951)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er p\00E5kr\00E6vet.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390055003025983)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'da'
,p_message_text=>unistr('%0 eller %1 er p\00E5kr\00E6vet.')
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479553842026012)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'da'
,p_message_text=>unistr('Vis hj\00E6lpetekst for %0.')
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285550571025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg billede')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285607329025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg billeder')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285461450025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'da'
,p_message_text=>'Download'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285792311025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('Tr\00E6k og slip')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285863003025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'da'
,p_message_text=>unistr('Tr\00E6k og slip billeder')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285969478025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg et billede, eller slip et her.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286067370025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg eller slip billeder her.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286101861025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg et billede, eller slip et her.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286215687025952)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg eller slip billeder her.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370964627025977)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'da'
,p_message_text=>'Markeret'
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371021477025977)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'da'
,p_message_text=>'Ikke markeret'
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398551514025986)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'da'
,p_message_text=>'Tom skrivebeskyttet kombinationsboks'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396355203025985)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'da'
,p_message_text=>'Tom skrivebeskyttet listeboks'
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396121631025985)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'da'
,p_message_text=>'Skrivebeskyttet kombinationsboks'
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124396241297025985)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'da'
,p_message_text=>'Skrivebeskyttet listeboks'
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311947150025960)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'da'
,p_message_text=>'#LABEL# er ikke i det gyldige interval fra %0 til %1.'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312040959025960)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'da'
,p_message_text=>'#LABEL# er ikke et multiplum af %0.'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399343402025986)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'da'
,p_message_text=>'Skrivebeskyttet kontakt'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339983724025968)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'da'
,p_message_text=>'Skrivebeskyttet redigering med et link'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311593524025959)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal matche v\00E6rdierne %0 og %1.')
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311736709025960)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'da'
,p_message_text=>'Nej'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398020162025986)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'da'
,p_message_text=>'Fra'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398191501025986)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'da'
,p_message_text=>'Til'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311609612025960)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'da'
,p_message_text=>'Ja'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319503008025962)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'da'
,p_message_text=>unistr('Sprogv\00E6lger')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255990982025943)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j post')
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432720400025997)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432816192025997)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'da'
,p_message_text=>'Fjern'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256052938025943)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'da'
,p_message_text=>'Valgte poster'
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436542453025998)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'da'
,p_message_text=>'Avanceret'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436841339025998)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'da'
,p_message_text=>'Annuller'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436635869025998)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'da'
,p_message_text=>unistr('F\00E6lles')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436935450025998)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'da'
,p_message_text=>'Live-skabelonvalg'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437590104025999)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Skabelonvalg er ikke tilg\00E6ngelige, fordi denne komponent ikke er gengivet p\00E5 siden.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436439207025998)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'da'
,p_message_text=>'Ingen skabelonvalg blev fundet.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436707464025998)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'da'
,p_message_text=>'Gem'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290507866025953)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'da'
,p_message_text=>'Ryd cirkel'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292910855025954)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'da'
,p_message_text=>'Tilpassede typografier har ikke gyldigt JSON-format.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290890482025953)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'da'
,p_message_text=>unistr('Afstandsv\00E6rkt\00F8j')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290615892025953)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'da'
,p_message_text=>'Tegn cirkel'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270410207025947)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'da'
,p_message_text=>'Aktuel lokation'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276876585025949)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'da'
,p_message_text=>unistr('F\00F8rste positionskoordinater er ugyldige.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265818855025946)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('F\00F8rste position skal v\00E6re en punktgeometri.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274459738025948)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'da'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269685820025947)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'da'
,p_message_text=>'Lag'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440091628025999)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'da'
,p_message_text=>'Lag: %0'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288846470025953)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'da'
,p_message_text=>'Kort'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258501096025944)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'da'
,p_message_text=>'Meddelelser'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274691327025948)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'da'
,p_message_text=>'miles'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439059197025999)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Dataene indeholder mere end %0 r\00E6kker, hvilket overskrider det tilladte maksimumantal.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268970386025947)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'da'
,p_message_text=>unistr('&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Vilk\00E5r</a> &nbsp;&nbsp; Kortdata &copy; 2021 HERE')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265524507025946)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Datatypen SDO_GEOMETRY er ikke tilg\00E6ngelig i denne database.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269032202025947)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'da'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-bidragydere</a>'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293699774025954)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'da'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-bidragsydere </a>'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269863959025947)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'da'
,p_message_text=>'Punkter'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440179730025999)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'da'
,p_message_text=>'%0 punkter'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290722086025953)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'da'
,p_message_text=>'Rektangelzoom'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290406600025953)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Fjern'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270202159025947)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'da'
,p_message_text=>'Nulstil retning til Nord'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385000252025982)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'da'
,p_message_text=>'Skift til 2D-tilstand'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385126691025982)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'da'
,p_message_text=>'Skift til 3D-tilstand'
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290362166025953)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'da'
,p_message_text=>unistr('Sl\00E5 bem\00E6rkning om copyright til/fra')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290961815025953)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'da'
,p_message_text=>'Samlet afstand'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269986355025947)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'da'
,p_message_text=>'Zoom ind'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270166912025947)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'da'
,p_message_text=>'Zoom ud'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434645978025998)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'da'
,p_message_text=>'Fed'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435550467025998)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'da'
,p_message_text=>'Billede'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435137585025998)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'da'
,p_message_text=>'Indbygget kode'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447809611026002)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Inds\00E6t billede')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447943384026002)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'da'
,p_message_text=>unistr('Inds\00E6t link')
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434794006025998)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'da'
,p_message_text=>'Kursiv'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448510230026002)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'da'
,p_message_text=>'Link'
,p_is_js_message=>true
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435486607025998)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'da'
,p_message_text=>'Liste'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435323802025998)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'da'
,p_message_text=>'Sorteret liste'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434827063025998)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'da'
,p_message_text=>'Eksempel'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434965738025998)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'da'
,p_message_text=>'Intet at vise som eksempel'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435021201025998)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'da'
,p_message_text=>'Gennemstreget'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435225649025998)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'da'
,p_message_text=>'Ikke-sorteret liste'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414105450025991)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'da'
,p_message_text=>'aktuel'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124470336381026009)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'da'
,p_message_text=>'Flere...'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414094574025991)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'da'
,p_message_text=>unistr('Indl\00E6ser')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328269084025965)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'da'
,p_message_text=>'Opdel knap'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328194965025964)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'da'
,p_message_text=>'Opdel menu'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445130323026001)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'da'
,p_message_text=>'Meddelelse'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269239416025947)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'da'
,p_message_text=>'Ingen %0 blev fundet'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419138117025993)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re et tal, der er mindre end eller lig med %0.')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419283894025993)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re et gyldigt tal.')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419326745025993)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'da'
,p_message_text=>'#LABEL# matcher ikke talformatet %0 (eksempel: %1).'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419034260025993)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re et tal, der er st\00F8rre end eller lig med %0.')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418948649025993)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal v\00E6re et tal mellem %0 og %1.')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414283198025991)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'da'
,p_message_text=>unistr('\00E5bnes i nyt vindue')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364074996025975)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'da'
,p_message_text=>'Denne side er allerede afsendt og kan ikke afsendes igen.'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345409406025970)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Applikation "%0" side "%1" blev ikke fundet.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380999862025980)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('#LABEL# skal have en v\00E6rdi.')
,p_is_js_message=>true
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271600042025947)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'da'
,p_message_text=>'Skjul adgangskode'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271538172025947)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'da'
,p_message_text=>'Vis adgangskode'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319116732025962)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g')
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433149837025997)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'da'
,p_message_text=>'Luk'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433055449025997)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'da'
,p_message_text=>'Find%0'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433376730025997)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433251119025997)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'da'
,p_message_text=>'Forrige'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309976023025959)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'da'
,p_message_text=>unistr('Indtast et s\00F8geord p\00E5 mindst %0 tegn.')
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386252315025982)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'da'
,p_message_text=>unistr('Pop op-liste med v\00E6rdier: %0')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310055200025959)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'da'
,p_message_text=>unistr('Indtast et s\00F8geord.')
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257002713025943)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdiliste')
,p_is_js_message=>true
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309829207025959)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'da'
,p_message_text=>'Ingen resultater fundet.'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309708123025959)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'da'
,p_message_text=>'Fjern %0'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124406903845025989)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8geord')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432972280025997)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259190705025944)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('Kr\00E6ver %0.')
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271400248025947)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under udskrivning af rapport.'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282298469025951)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke udskrive dokumentet ved hj\00E6lp af den konfigurerede printserver.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304931688025957)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under evaluering af parameteren %0 under kald af %1. Se fejllog for at f\00E5 detaljer.')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443601078026001)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'da'
,p_message_text=>'Behandler'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302795205025957)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'da'
,p_message_text=>'Tilbage'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303868782025957)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'da'
,p_message_text=>unistr('Denne website har app-funktionalitet. Installer den p\00E5 din enhed for at f\00E5 den bedste oplevelse.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305147798025958)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306706720025958)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'da'
,p_message_text=>'Installer denne app'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291565994025953)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'da'
,p_message_text=>unistr('Din enhed eller browser ser ikke ud til at underst\00F8tte installationen af progressive webapps lige nu.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286654812025952)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'da'
,p_message_text=>unistr('1. Tryk p\00E5 ikonet <strong>Del</strong>')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286765612025952)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'da'
,p_message_text=>unistr('2. Rul ned, og tryk p\00E5 <strong>F\00F8j til startsk\00E6rm</strong>')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303168321025957)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'da'
,p_message_text=>unistr('3. Tryk p\00E5 <strong style="color:#007AE1;">Tilf\00F8j</strong> for at bekr\00E6fte')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302222322025957)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'da'
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
'    <h1>Kan ikke oprette forbindelse</h1>',
unistr('    <p>Der er tilsyneladende et netv\00E6rksproblem. Kontroller din forbindelse, og pr\00F8v igen.</p>'),
unistr('    <button type="button">Pr\00F8v igen</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302101793025957)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'da'
,p_message_text=>'Kan ikke oprette forbindelse'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348743956025971)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'da'
,p_message_text=>'Denne enhed kunne ikke aktivere push-underretninger.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354299973025972)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'da'
,p_message_text=>'KvikValg til %0'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354190541025972)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'da'
,p_message_text=>'Link til KvikValg'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124327969095025964)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'da'
,p_message_text=>'Visuelt skjult alternativknap'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272076433025948)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'da'
,p_message_text=>unistr('Enkeltr\00E6kkevisning')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454789733026004)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400050852025987)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'da'
,p_message_text=>'Heldags'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477681348026012)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'da'
,p_message_text=>'Send invitation'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477434460026012)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'da'
,p_message_text=>'Valgmuligheder'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401896737025987)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'da'
,p_message_text=>'Dagsvisning af hele dagen'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401605621025987)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'da'
,p_message_text=>'Dagsvisning af data med tid '
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445834766026001)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'da'
,p_message_text=>'Dag'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440857781026000)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Beskrivelse'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324336670025963)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'da'
,p_message_text=>'CSV'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324172331025963)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'da'
,p_message_text=>'iCal'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324073618025963)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'da'
,p_message_text=>'PDF'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124324226729025963)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'da'
,p_message_text=>'XML'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323737725025963)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'da'
,p_message_text=>'Slutdato'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323977895025963)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'da'
,p_message_text=>'Begivenhedsnavn'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477521134026012)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'da'
,p_message_text=>'Invitation'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445954699026001)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'da'
,p_message_text=>'Liste'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445654267026001)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5ned')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448280794026002)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462215947026007)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'da'
,p_message_text=>'Ingen begivenheder'
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477833701026012)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'da'
,p_message_text=>'Rediger en eksisterende begivenhed.'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477724543026012)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'da'
,p_message_text=>'Sender en invitation via e-mail.'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448356426026002)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'da'
,p_message_text=>'Forrige'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456087704026005)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'da'
,p_message_text=>'Send e-mail'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455867603026005)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'da'
,p_message_text=>'Send e-mail'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478412693026012)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('Alle felter er p\00E5kr\00E6vet.')
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478384476026012)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'da'
,p_message_text=>'Send invitation'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477388951026011)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'da'
,p_message_text=>'Emne'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455973352026005)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'da'
,p_message_text=>'Til'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323842101025963)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'da'
,p_message_text=>'Startdato'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454001792026004)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'da'
,p_message_text=>unistr('Formular p\00E5 %0')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401460947025987)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'da'
,p_message_text=>'Tid'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448483096026002)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'da'
,p_message_text=>'I dag'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446420460026002)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'da'
,p_message_text=>'Vis'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445794415026001)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'da'
,p_message_text=>'Uge'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401730522025987)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'da'
,p_message_text=>'Ugevisning af hele dagen'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401501307025987)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'da'
,p_message_text=>'Ugevisning af data med tid'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446337328026001)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5r')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446029557026001)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Kolonner...'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446183887026001)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'da'
,p_message_text=>unistr('Indl\00E6s flere...')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375546810025979)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'da'
,p_message_text=>'Tilbage'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317056217025961)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'da'
,p_message_text=>unistr('Indl\00E6s flere...')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319372737025962)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g...')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124446211518026001)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'da'
,p_message_text=>unistr('Indl\00E6s flere...')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448126817026002)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Regions-ID''et %0 blev ikke fundet.'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319202478025962)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Ingen data fundet'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346722916025970)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'da'
,p_message_text=>'Kan ikke nulstille regionssideinddeling.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310444651025959)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under indstilling af regionssideinddeling.'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440227295025999)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Kolonner...'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294730579025954)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'da'
,p_message_text=>unistr('Lazy-indl\00E6sning er ikke kompatibelt med slots i %0, som er en enkelt (partiel) region. Du skal enten deaktivere lazy-indl\00E6sning for denne region eller flytte slotkomponenterne til en anden region.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290034831025953)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'da'
,p_message_text=>'Gruppeskabelon mangler i skabelonkomponent for %0.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124285080872025951)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er en enkelt (delvis) region og har returneret flere r\00E6kker.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448057773026002)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('Regionstypen %0 underst\00F8ttes ikke.')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310354521025959)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under gengivelse af regionen "#COMPONENT_NAME#".'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381036104025980)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('#COLUMN_HEADER# skal have en v\00E6rdi.')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262618475025945)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'da'
,p_message_text=>'Du skal angive et rapportlayout.'
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476934726026011)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'da'
,p_message_text=>'%0, RTF-editor'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383161321025981)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'da'
,p_message_text=>unistr('Rich Text HTML-markup overskrider elementets maksimuml\00E6ngde (faktisk %0, tilladt %1 tegn)')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292517364025954)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'da'
,p_message_text=>'Skrivebeskyttet RTF-editor'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292448443025954)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'da'
,p_message_text=>'RTF-editor'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292240837025954)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'da'
,p_message_text=>'Justering'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292332829025954)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'da'
,p_message_text=>'Ekstra'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292048843025954)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'da'
,p_message_text=>'Skrift'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291933832025954)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'da'
,p_message_text=>'Formatering'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292107073025954)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'da'
,p_message_text=>'Lister'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445252007026001)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'da'
,p_message_text=>'Slet'
,p_is_js_message=>true
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437751521025999)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'da'
,p_message_text=>'Dupliker'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436092343025998)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'da'
,p_message_text=>'Viste kolonner'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435967674025998)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Ekskluder NULL-v\00E6rdier')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124445311509026001)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j')
,p_is_js_message=>true
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399618933025986)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'da'
,p_message_text=>'Flyt ned'
,p_is_js_message=>true
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399789080025986)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'da'
,p_message_text=>'Flyt op'
,p_is_js_message=>true
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435739373025998)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436314369025998)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'da'
,p_message_text=>'Andre kolonner'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435878769025998)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'da'
,p_message_text=>'Forrige'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436156588025998)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kke %0')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124436282677025998)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kke %0 af %1')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437815518025999)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'da'
,p_message_text=>'Opfrisk'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437948436025999)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'da'
,p_message_text=>unistr('Tilbagef\00F8r \00E6ndringer')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124435637437025998)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'da'
,p_message_text=>'Indstillinger'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394814018025985)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'da'
,p_message_text=>'For eksempel %0'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399179201025986)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'da'
,p_message_text=>'Eksempel: %0'
,p_is_js_message=>true
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311879460025960)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'da'
,p_message_text=>'1 resultat'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308908684025959)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'da'
,p_message_text=>'%0 resultater'
,p_is_js_message=>true
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360704748025974)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'da'
,p_message_text=>'Sideinddeling'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360812495025974)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'da'
,p_message_text=>'Resultater, %0 til %1'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256549921025943)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'da'
,p_message_text=>unistr('Log p\00E5 igen')
,p_is_js_message=>true
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256487169025943)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'da'
,p_message_text=>'Din session er afsluttet'
,p_is_js_message=>true
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256633762025943)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'da'
,p_message_text=>unistr('Forl\00E6ng')
,p_is_js_message=>true
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256292567025943)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'da'
,p_message_text=>unistr('Din session afsluttes klokken %0. Vil du forl\00E6nge den?')
,p_is_js_message=>true
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256318720025943)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'da'
,p_message_text=>unistr('Din session afsluttes klokken %0 og kan ikke forl\00E6nges. Gem alt arbejde nu for at undg\00E5 at miste data')
,p_is_js_message=>true
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455681044026004)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af kode til oprydning af databasesession.'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345359706025970)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under behandling af kode til ops\00E6tning af databasesession.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315719970025961)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'da'
,p_message_text=>'Din session er afsluttet.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454885082026004)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'da'
,p_message_text=>unistr('Luk denne dialogboks, og tryk p\00E5 din browsers Genindl\00E6s-knap for at f\00E5 en ny session.')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473753435026010)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'da'
,p_message_text=>'<a href="%0">Log ind</a> igen for at oprette en ny session.'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358087616025974)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'da'
,p_message_text=>'Session ikke gyldig'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401130049025987)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'da'
,p_message_text=>'Ingen dynamiske roller kunne aktiveres i Real Application Security-sessionen for brugeren "%0".'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343247882025969)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'ERR-99900 Kunne ikke oprette entydigt sessions-ID: %0'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272378539025948)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>'Sessionstilstandens datatype-CLOB er ikke tilladt for elementet %0.'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291797192025953)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>unistr('Erstatning af elementer i sessionsdata for datatypen CLOB underst\00F8ttes ikke.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360548695025974)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'da'
,p_message_text=>unistr('Overtr\00E6delse af sessionstilstandsbeskyttelse: Det kan skyldes manuel \00E6ndring af det beskyttede sideelement %0. Hvis du er usikker p\00E5 \00E5rsagen til denne fejl, skal du kontakte systemadministratoren for at f\00E5 hj\00E6lp.')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481739411026013)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'da'
,p_message_text=>unistr('Overtr\00E6delse af sidebeskyttelse: Det kan skyldes afsendelse af en side, der ikke er f\00E6rdigindl\00E6st, eller en manuel \00E6ndring af beskyttede sideelementer. Kontakt applikationsadministratoren for at f\00E5 yderligere hj\00E6lp.')
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480825071026013)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 indeholder et af f\00F8lgende ugyldige tegn &<>"/;,*|=% eller --')
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480937059026013)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'da'
,p_message_text=>unistr('%0 indeholder et af f\00F8lgende ugyldige tegn &<>"/;,*|=% eller -- eller linjeskift.')
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480610333026013)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'da'
,p_message_text=>'%0 indeholder specialtegn. Kun tegnene a-Z, 0-9 og mellemrum er tilladt.'
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480759071026013)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'da'
,p_message_text=>'%0 indeholder <, > eller ", som er ugyldige tegn.'
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318194732025962)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen kontrolsum blev angivet for at vise behandling af en side, der kr\00E6ver en kontrolsum, n\00E5r en eller flere v\00E6rdier for anmodning, rydning af cache eller argument videregives som parametre.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355482495025973)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'da'
,p_message_text=>unistr('Overtr\00E6delse af sessionstilstandsbeskyttelse: Det kan skyldes manuel \00E6ndring af en URL, der indeholder en kontrolsum, eller brug af et link med forkert eller manglende kontrolsum. Hvis du er usikker p\00E5 \00E5rsagen til denne fejl, skal du kontakte systema')
||unistr('dministratoren for at f\00E5 hj\00E6lp.')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437013315025998)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'da'
,p_message_text=>unistr('Sl\00E5 h\00F8j kontrasttilstand fra')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437110089025998)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'da'
,p_message_text=>unistr('Sl\00E5 h\00F8j kontrasttilstand til')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301549888025956)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Applikationsindstillingen %0 kan ikke opdateres, fordi der abonneres p\00E5 den fra en anden applikation.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351804881025972)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'da'
,p_message_text=>'Nederst'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352087629025972)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'da'
,p_message_text=>'Ned'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352174260025972)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'da'
,p_message_text=>'Flyt'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352218447025972)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'da'
,p_message_text=>'Flyt alle'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352349528025972)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'da'
,p_message_text=>'Fjern'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352468614025972)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'da'
,p_message_text=>'Fjern alle'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352521190025972)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'da'
,p_message_text=>'Nulstil'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351717890025972)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'da'
,p_message_text=>unistr('\00D8verst')
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351951299025972)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'da'
,p_message_text=>'Op'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463574590026007)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'da'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464252690026007)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'om %0 dag(e)'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463473851026007)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'da'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464377795026007)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'om %0 time(r)'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463208759026007)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'da'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464480559026007)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'om %0 minut(ter)'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463863345026007)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'da'
,p_message_text=>'%0mo'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464083190026007)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>unistr('om %0 m\00E5ned(er)')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463350937026007)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'da'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464106180026007)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'om %0 sekund(er)'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463607986026007)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'da'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124464585773026007)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'om %0 uge(r)'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463760877026007)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'da'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463946705026007)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>unistr('om %0 \00E5r')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264815121025945)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'da'
,p_message_text=>'[Linje]'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265421633025946)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'da'
,p_message_text=>'[Flere linjer]'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265137742025945)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'da'
,p_message_text=>'[Flere punkter]'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265665100025946)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'da'
,p_message_text=>'[Flere polygoner]'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265748370025946)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'da'
,p_message_text=>'[Geometrisk objekt]'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264797477025945)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'da'
,p_message_text=>'[Punkt (%0,%1)]'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265039033025945)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'da'
,p_message_text=>'[Polygon]'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264221708025945)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'da'
,p_message_text=>'Skjult region: %0'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379346292025980)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'da'
,p_message_text=>'Skjul'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263215972025945)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'da'
,p_message_text=>unistr('Vandret opdeler kan ikke flyttes til venstre eller h\00F8jre')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263441741025945)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'da'
,p_message_text=>unistr('Maksimal st\00F8rrelse p\00E5 %0px er n\00E5et')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264423364025945)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'da'
,p_message_text=>unistr('Minimumst\00F8rrelse p\00E5 %0px er n\00E5et')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264322290025945)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'da'
,p_message_text=>'Region er skjult'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264142818025945)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'da'
,p_message_text=>'Region er gendannet'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263851370025945)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'da'
,p_message_text=>unistr('\00C6ndret st\00F8rrelse til %0px')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264076990025945)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'da'
,p_message_text=>'Gendannet region: %0'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379249035025980)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'da'
,p_message_text=>'Gendan'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263376064025945)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'da'
,p_message_text=>'Lodret opdeler kan ikke flyttes op eller ned'
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428781851025996)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'da'
,p_message_text=>unistr('Ryd bed\00F8mmelse')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418662239025993)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er ikke i det gyldige bed\00F8mmelsesinterval fra 1 - %1')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418740116025993)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'da'
,p_message_text=>'%0 er ikke numerisk'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124414820845025991)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'da'
,p_message_text=>unistr('Meddelelse om udf\00F8relse')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476627293026011)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476543695026011)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'da'
,p_message_text=>'Forrige'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386728016025982)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Der blev ikke fundet nogen record-systemer tilknyttet denne opgaveinstans'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124395001274025985)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Udf\00F8relsen af opgavehandlingen %0 fejlede- opgaven er sat i fejlbeh\00E6ftet tilstand. Kontroller opgavehandlingskoden')
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275260487025949)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j kommentar: ikke autoriseret')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274539911025948)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'da'
,p_message_text=>'Opgaven er allerede tildelt'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267964148025946)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'da'
,p_message_text=>'Tildelt til %0'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274247664025948)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'da'
,p_message_text=>'Annuller opgave: ikke autoriseret'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289876857025953)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke fjerne den aktuelle ejer af denne opgave. Deleger opgaven til en anden deltager, f\00F8r du pr\00F8ver at udf\00F8re denne operation igen.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273861261025948)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'da'
,p_message_text=>'Reserver opgave: ikke autoriseret'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273922806025948)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'da'
,p_message_text=>unistr('Fuldf\00F8r opgave: ikke autoriseret')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274026337025948)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'da'
,p_message_text=>'Deleger opgave: ikke autoriseret'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272423827025948)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'da'
,p_message_text=>unistr('Opgavens forfaldsdato m\00E5 ikke v\00E6re i fortiden.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267706429025946)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'da'
,p_message_text=>'Forfaldt %0'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268139526025946)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Opgavehandlingen %1 fejlede. Fejlmeddelelse - %0'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267801320025946)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'da'
,p_message_text=>'Fejlet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267479467025946)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'da'
,p_message_text=>unistr('Udf\00F8rt')
,p_is_js_message=>true
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267670218025946)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Handlingen %1 blev udf\00F8rt med meddelelsen %0')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270921614025947)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'da'
,p_message_text=>unistr('F\00F8r udl\00F8b')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296539697025955)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'da'
,p_message_text=>'Annuller'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296040069025955)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Opgave annulleret'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296676907025955)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>'Deltageren har ikke tilladelse til at annullere opgaven'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295972009025955)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'da'
,p_message_text=>'Reserver'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296308066025955)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'da'
,p_message_text=>unistr('En anden bruger har allerede reserveret opgaven, eller ogs\00E5 har deltageren ikke tilladelse til at reservere denne opgave')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296152132025955)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'%0 reserverede opgaven'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397295046025986)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'da'
,p_message_text=>unistr('Fuldf\00F8r')
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295781743025955)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Opgave fuldf\00F8rt med resultatet %0')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297004226025955)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>unistr('Opgaven er enten ikke tildelt, eller deltageren har ikke tilladelse til at fuldf\00F8re opgaven')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257450784025943)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'da'
,p_message_text=>unistr('Opgave fuldf\00F8rt uden resultat')
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397336690025986)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'da'
,p_message_text=>'Opret'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290273978025953)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Opgave oprettet med id %0'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397487810025986)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'da'
,p_message_text=>'Deleger'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295821308025955)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Opgave delegeret til den potentielle ejer %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296418773025955)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>unistr('Deltageren er ikke berettiget, eller ogs\00E5 er den nye deltager ikke en potentiel ejer af denne opgave')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269575597025947)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'da'
,p_message_text=>unistr('Udl\00F8ber')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270615630025947)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Opgave udl\00F8bet.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397563288025986)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'da'
,p_message_text=>'Fejl'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266298197025946)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>'Opgaven er ikke tildelt, eller deltageren har ikke tilladelse til at anmode om oplysninger for opgaven'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266462673025946)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>'Enten er der ikke anmodet om oplysninger for opgaven, eller deltageren har ikke tilladelse til at afsende oplysninger for opgaven.'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270071085025947)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Opgave udl\00F8ber, n\00E5r det maksimale antal fornyelser p\00E5 %0 er n\00E5et.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297381278025955)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'da'
,p_message_text=>'Opgaven er ikke i en korrekt tilstand, eller deltageren er ikke en virksomhedsadministrator for denne opgave'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297403689025955)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Handlingen %0 er ukendt eller kan ikke anvendes p\00E5 denne opgave')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397650625025986)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'da'
,p_message_text=>'Frigiv'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383353493025981)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Opgave frigivet, andre kan nu reservere den'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276225422025949)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>'Frigivelse af opgaven er ikke tilladt - brugeren er ikke ejer af opgaven'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293263273025954)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'da'
,p_message_text=>'Fjern ejer'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293451728025954)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Deltageren %0 er fjernet fra opgaven'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270848514025947)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'da'
,p_message_text=>'Forny'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269747273025947)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Opgave fornyet med id''en %0, maksimalt antal fornyelser f\00F8r udl\00F8b er %1.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124270760211025947)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Opgave-id''en %0 fornyet med opgave-id''en %1'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266707591025946)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'da'
,p_message_text=>'Anmod om oplysninger'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266632447025946)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Anmodede %0 om flere oplysninger: %1'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264551573025945)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Sat initiator kan fuldf\00F8res til %0')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266871210025946)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'da'
,p_message_text=>'Afsend oplysninger'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266525061025946)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Anmodede oplysninger afsendt til %0: %1'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397781937025986)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'da'
,p_message_text=>'Opdater kommentar'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294256152025954)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j kommentar: %0')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297154034025955)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>'Opgavetilstand tillader ikke kommentarer'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304465427025957)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('S\00E6t opgavens forfaldsdato til %0')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262547630025945)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'da'
,p_message_text=>'Opdatering forfalder den'
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397845806025986)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'da'
,p_message_text=>'Opdater ejer'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295522718025955)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j den potentielle ejer %0 til opgavedeltagerne')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294620842025954)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'da'
,p_message_text=>'Opdater parametre'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397971450025986)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'da'
,p_message_text=>'Opdater prioritet'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296274334025955)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Indstil opgaveprioritet til %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293578045025954)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Opdaterede parameteren "%0" fra "%1" til "%2".'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277098323025949)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Opgave annulleret, fordi den tilsvarende workflow-instans blev afsluttet.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274117833025948)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'da'
,p_message_text=>'Videresend opgave: ikke autoriseret'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267532291025946)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'da'
,p_message_text=>'Initieret af %0 %1'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276405839025949)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'da'
,p_message_text=>'Der opstod en uventet intern fejl'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274745521025948)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'da'
,p_message_text=>'Opgavehandlingen kan ikke anvendes'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300391770025956)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'da'
,p_message_text=>'Denne potentielle ejer findes ikke.'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276067824025949)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'da'
,p_message_text=>'Godkendt'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276160089025949)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'da'
,p_message_text=>'Afvist'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257536256025943)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'da'
,p_message_text=>unistr('Fuldf\00F8relse af opgave kr\00E6ver et resultat')
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124257739800025943)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>'Opgaven har ikke tilladelse til at have et resultat'
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293313196025954)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'da'
,p_message_text=>'Kan ikke opdatere parameteren %0.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289652011025953)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'da'
,p_message_text=>'Deltageren findes allerede for denne opgaveinstans.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391181463025984)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'da'
,p_message_text=>'Haster'
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268223787025946)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Haster'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124391093960025983)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'da'
,p_message_text=>unistr('H\00F8j')
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268362383025946)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>unistr('H\00F8j prioritet')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390906153025983)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'da'
,p_message_text=>'Middel'
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268448918025946)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Mellem prioritet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390849262025983)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'da'
,p_message_text=>'Lav'
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268503333025947)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Lav prioritet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390749084025983)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'da'
,p_message_text=>'Lavest'
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268612678025947)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Laveste prioritet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274349613025948)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'da'
,p_message_text=>unistr('S\00E6t opgaveprioritet: ikke autoriseret')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275528922025949)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'da'
,p_message_text=>'Tildelt'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275982079025949)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'da'
,p_message_text=>'Annulleret'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275649024025949)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'da'
,p_message_text=>unistr('Fuldf\00F8rt')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275861989025949)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'da'
,p_message_text=>unistr('Fejlbeh\00E6ftet')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124269372727025947)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'da'
,p_message_text=>unistr('Udl\00F8bet')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275734390025949)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'da'
,p_message_text=>'Fejlet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266096412025946)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'da'
,p_message_text=>'Der er anmodet om oplysninger'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275458237025949)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'da'
,p_message_text=>'Ikke-tildelt'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297864429025955)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Oprettelsen af en opgave for opgavedefinitionen %0 i applikationen %1 fejlede.',
'SQLCODE: %2'))
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297785842025955)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'da'
,p_message_text=>unistr('Et fors\00F8g p\00E5 at oprette en opgave til opgavedefinitionen %0 i applikationen %1 fejlede, fordi opgavedefinitionen ikke indeholder nogen potentielle ejere - rediger opgavedefinitionen, og tilf\00F8j mindst \00E9n deltager af typen potentiel ejer')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275096464025948)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Opgavedefinitionen blev ikke fundet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274979837025948)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Deltagere blev ikke fundet til denne opgave'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276345028025949)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'da'
,p_message_text=>unistr('Mere end \00E9n opgave for det angivne opgave-id - kontakt administratoren for databasen')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124275144928025948)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Opgaven blev ikke fundet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124274874513025948)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Opgaveparameteren blev ikke fundet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311121168025959)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'da'
,p_message_text=>'Handling'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311014124025959)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'da'
,p_message_text=>'Godkendelse'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258429596025943)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Ferieregelproceduren %2 kunne ikke udf\00F8res for opgavedefinitionen %0 i applikationen %1.')
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258650245025944)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Deltageren %1 blev tilf\00F8jet som en erstatning for deltageren %0 . \00C5rsag - %2 .')
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462357383026007)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rkt\00F8jslinje')
,p_is_js_message=>true
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315863856025961)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'da'
,p_message_text=>'Applikation'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477060516026011)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'da'
,p_message_text=>'Udvid/skjul navigation'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477119864026011)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'da'
,p_message_text=>'Udvid/skjul sidekolonne'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385548887025982)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'da'
,p_message_text=>'Hovednavigering'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286380019025952)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'da'
,p_message_text=>'"%0" er et ugyldigt pladsholdernavn.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393234140025984)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'da'
,p_message_text=>'1 dag'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393082466025984)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'da'
,p_message_text=>'1 time'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393300908025984)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'da'
,p_message_text=>'%0 dage'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393197111025984)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'da'
,p_message_text=>'%0 timer'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392926301025984)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'da'
,p_message_text=>'%0 minutter'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393538621025984)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'da'
,p_message_text=>'%0 uger'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124393441831025984)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'da'
,p_message_text=>'1 uge'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291254601025953)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'da'
,p_message_text=>'%0 elementer valgt'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291496943025953)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg element')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291369465025953)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg %0')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480103093026012)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'da'
,p_message_text=>'Start af side'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337791805025967)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'da'
,p_message_text=>'Aktiveret'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306235937025958)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under behandling af anmodningen.'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124291807800025953)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Tekstmeddelelsen %0 kan ikke opdateres, da der abonneres p\00E5 den fra en anden applikation.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394984053025985)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi p\00E5kr\00E6vet')
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124311318757025959)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'da'
,p_message_text=>'Overskriftsniveau %0, skjult'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439744680025999)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'da'
,p_message_text=>unistr('Denne side har ikke-gemte \00E6ndringer.')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301368156025956)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'da'
,p_message_text=>'Navigator'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301078073025956)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'da'
,p_message_text=>'Zoom ind'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302032875025957)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'da'
,p_message_text=>'Zoomniveau {0}%'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301108594025956)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'da'
,p_message_text=>'Zoom ud'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301261838025956)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'da'
,p_message_text=>'Nulstilling af zoom'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276789344025949)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'da'
,p_message_text=>unistr('Diagrammet over workflow er ikke tilg\00E6ngeligt p\00E5 dette tidspunkt.')
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276622403025949)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'da'
,p_message_text=>'Diagram over workflow'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278597970025950)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>unistr('Workflow-instansen %0 er i \00F8jeblikket i tilstanden %1. Operationen er derfor ikke tilladt')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281191881025950)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'da'
,p_message_text=>unistr('Instansen %1 for aktiviteten %2 i workflowet %0 blev fuldf\00F8rt')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280920768025950)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'da'
,p_message_text=>'Oprettede en ny instans %1 af aktiviteten %2 i workflowet %0'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272713718025948)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Yderligere datar\00E6kke associeret med denne workflow-aktivitetsinstans blev ikke fundet')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281083945025950)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'da'
,p_message_text=>unistr('Den fejlede instans %1 for aktiviteten %2 i workflowet %0 blev fors\00F8gt igen')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263076448025945)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'da'
,p_message_text=>'Aktivitetsinstansen %1 i workflowet %0 blev afsluttet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296896702025955)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'da'
,p_message_text=>'Aktivitetsinstansen %1 i workflowet %0 fik timeout og blev afbrudt.'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281254233025950)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'da'
,p_message_text=>'Instansen %1 for aktiviteten %2 i workflowet %0 er i tilstanden Venter'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262853293025945)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'da'
,p_message_text=>unistr('Workflow-instansen %0 blev \00E6ndret og genoptaget ved aktiviteten %1')
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280251714025950)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'da'
,p_message_text=>unistr('Den ventende instans %1 i aktiviteten %2 i workflowet %0 blev fuldf\00F8rt')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280079288025950)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'da'
,p_message_text=>unistr('Den ventende aktivitet %1 fejlede, fordi workflowet %0 allerede var i tilstanden Fejlet, f\00F8r aktiviteten blev fuldf\00F8rt')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280168344025950)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'da'
,p_message_text=>unistr('Den ventende aktivitet %1 blev afsluttet, fordi workflowet %0 allerede var i tilstanden Afsluttet, f\00F8r aktiviteten blev fuldf\00F8rt')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124263192803025945)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'da'
,p_message_text=>unistr('Afslutningen af aktiviteten %1 i workflowet %0 fejlede p\00E5 grund af undtagelse - %2')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278765468025950)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'da'
,p_message_text=>unistr('Workflowet er i \00F8jeblikket optaget af at fuldf\00F8re en tidligere operation. Pr\00F8v igen senere')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294876771025954)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'da'
,p_message_text=>unistr('Fuldf\00F8rt %0')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277827000025949)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>unistr('Workflowet %0 kan ikke forts\00E6ttes, fordi det i \00F8jeblikket er ved aktiviteten %1, som ikke er i en ventende tilstand')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289798978025953)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er ikke en gyldig workflow-korrelationskontekst for den proces, der udf\00F8res af denne workflow-aktivitet. Korrelationskonteksten skal v\00E6re en kolonsepareret tekst, der indeholder APEX_APPL_WORKFLOW efterfulgt af workflow-instans-id''en og aktivitets')
||'instans-id''en.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280424516025950)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'da'
,p_message_text=>'Oprettede en ny instans %0 af workflowet %1, version %2'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272559080025948)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Yderligere datar\00E6kke associeret med denne workflow-instans blev ikke fundet')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295064353025954)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'da'
,p_message_text=>'Forfaldt %0'
,p_version_scn=>2692462
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280356530025950)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'da'
,p_message_text=>'Workflowet %0 endte med tilstanden %1'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277579485025949)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>'Datatypen %1 for de betingelser, der sammenlignes i skifteaktiviteten for workflowet %0, er ikke kompatible med betingelsesoperatoren'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267364504025946)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'da'
,p_message_text=>'Initieret af %0 %1'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124290197496025953)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'da'
,p_message_text=>'Oprettede den nye instans %0 af workflowet %1, version %2 - kaldt fra aktivitetsinstansen %4 af workflow-instansen %3'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124262990477025945)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'da'
,p_message_text=>'Aktivitet med den statiske id %1 er ikke en aktivitet i workflowet %0. Kontroller de statiske aktivitets-id''er for den tilsvarende workflow-version.'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288241480025952)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er en p\00E5kr\00E6vet parameter for dette workflow og m\00E5 ikke v\00E6re NULL.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280851672025950)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'da'
,p_message_text=>'Workflow-instansen %0 blev genoptaget'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280736064025950)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'da'
,p_message_text=>unistr('Workflow-instansen %0 blev fors\00F8gt igen')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295194331025955)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'da'
,p_message_text=>unistr('%0 nyt fors\00F8g')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295293196025955)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'da'
,p_message_text=>unistr('%0 nye fors\00F8g')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294923348025954)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'da'
,p_message_text=>'Startet %0'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289197297025953)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'da'
,p_message_text=>'Aktiv'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289324993025953)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'da'
,p_message_text=>unistr('Fuldf\00F8rt')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289457929025953)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'da'
,p_message_text=>'Fejlet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289525815025953)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'da'
,p_message_text=>'Suspenderet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124289274608025953)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'da'
,p_message_text=>'Afsluttet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304510531025957)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'da'
,p_message_text=>'Venter'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280529515025950)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'da'
,p_message_text=>'Workflow-instansen %0 blev suspenderet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286479136025952)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Den n\00E6ste aktivitet for workflow-instansen %0 kan ikke bestemmes. Bekr\00E6ft og ret de betingelser, der er defineret for den aktuelle skifteaktivitet, f\00F8r du pr\00F8ver at udf\00F8re workflowet igen.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124280607392025950)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'da'
,p_message_text=>'Workflow-instansen %0 blev afsluttet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279729721025950)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'da'
,p_message_text=>'Kun virksomhedsadministratoren for workflowet %0 kan genoptage workflowet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279879892025950)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'da'
,p_message_text=>unistr('Workflowet %0 kan kun fors\00F8ges igen af en virksomhedsadministrator og/eller en ejer')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279362568025950)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'da'
,p_message_text=>'Workflow-instansen %0 kan kun suspenderes af en virksomhedsadministrator for workflowet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279605618025950)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'da'
,p_message_text=>'Kun ejere og virksomhedsadministratorer for workflow-instansen %0 kan afslutte workflowet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278093249025949)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'da'
,p_message_text=>'Variabler for workflowet %0 kan kun opdateres af en virksomhedsadministrator, der er defineret for workflowet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292686984025954)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'da'
,p_message_text=>unistr('Workflow-instansen %0 skal v\00E6re i tilstanden Fejlet eller Suspenderet, f\00F8r dens variabler kan opdateres.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284198320025951)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdien af workflow-variablen %0 er opdateret til %1')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294378962025954)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'da'
,p_message_text=>'Workflowet %0 har ikke en aktiv version'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294442552025954)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'da'
,p_message_text=>'Workflowet %0 har ikke en version, der er under udvikling'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124294534777025954)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Workflowet %0 har ikke en version, der er aktiv eller under udvikling'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277429494025949)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Aktivitetsinstansen %1 for workflow-instansen %0 blev ikke fundet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277290385025949)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Workflow-instansen %0 blev ikke fundet'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312389475025960)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'da'
,p_message_text=>'Projektmappen har ikke noget aktivt regneark.'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312294208025960)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'da'
,p_message_text=>'Projektmappen er ikke initialiseret.'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312101723025960)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'da'
,p_message_text=>'Der opstod en intern fejl under oprettelse af XLSX-filen.'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314681865025960)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'da'
,p_message_text=>'Ark'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325213585025964)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'da'
,p_message_text=>unistr('Regnearksnavnet "%0" er allerede i brug. V\00E6lg et andet.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453810335026004)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'da'
,p_message_text=>'Handlinger'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368837262025977)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'da'
,p_message_text=>'Menuen Handlinger'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364510917025975)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j funktion')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364443614025975)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j Grupper efter kolonne')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402096192025987)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j pivotkolonne')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402100043025987)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Tilf\00F8j r\00E6kkekolonne')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336587329025967)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'da'
,p_message_text=>'Aggreger'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375002973025979)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'da'
,p_message_text=>'Aggregering'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355958435025973)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'da'
,p_message_text=>'Gennemsnit'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360243071025974)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'da'
,p_message_text=>'Antal'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356097735025973)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'da'
,p_message_text=>'Maksimum'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356255681025973)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'da'
,p_message_text=>'Median'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356121351025973)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'da'
,p_message_text=>'Minimum'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355873120025973)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'da'
,p_message_text=>'Sum %0'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356901459025973)
,p_name=>'APEXIR_ALL'
,p_message_language=>'da'
,p_message_text=>'Alle'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335861225025967)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Alle kolonner'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315917766025961)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('Alle r\00E6kker')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450879466026003)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'da'
,p_message_text=>'Alternativ'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452492543026003)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'da'
,p_message_text=>'Alternativ standard:  %0 '
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350078421025971)
,p_name=>'APEXIR_AND'
,p_message_language=>'da'
,p_message_text=>'og'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384817822025982)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'da'
,p_message_text=>'Kan ikke importere gemt rapport. Indholdet er beskadiget.'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384948448025982)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'da'
,p_message_text=>'Kan ikke importere gemt rapport. Indholdet er tomt.'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338045363025967)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'da'
,p_message_text=>'Anvend'
,p_is_js_message=>true
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331659962025966)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'da'
,p_message_text=>'Stigende'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353175874025972)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'da'
,p_message_text=>'Pr. %0'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453076104026004)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'da'
,p_message_text=>'Gennemsnit %0'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444628515026001)
,p_name=>'APEXIR_BAR'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8jle')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337326953025967)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'da'
,p_message_text=>'mellem'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330458311025965)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'da'
,p_message_text=>'Baggrundsfarve'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332324356025966)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'da'
,p_message_text=>unistr('bl\00E5')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366423995025976)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'da'
,p_message_text=>'Nederst'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297260312025955)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'da'
,p_message_text=>unistr('Knapper ved siden af s\00F8gelinje i %0')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332933985025966)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'da'
,p_message_text=>'Annuller'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339254093025968)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'da'
,p_message_text=>'Kategori'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330372119025965)
,p_name=>'APEXIR_CELL'
,p_message_language=>'da'
,p_message_text=>'Celle'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356824101025973)
,p_name=>'APEXIR_CHART'
,p_message_language=>'da'
,p_message_text=>'Diagram'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367380444025976)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'da'
,p_message_text=>'Initialiserer...'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407079236025989)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Diagrametiket skal v\00E6re angivet.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419488325025993)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'da'
,p_message_text=>unistr('Din foresp\00F8rgsel overskrider det maksimale antal p\00E5 %0 datapunkter pr. diagram. Anvend et filter for at reducere antallet af records i din basisforesp\00F8rgsel.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418392735025992)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'da'
,p_message_text=>unistr('Det maksimale antal r\00E6kker for en diagramforesp\00F8rgsel begr\00E6nser antallet af r\00E6kker i basisforesp\00F8rgslen, ikke det viste antal r\00E6kker. Din basisforesp\00F8rgsel overskrider det maksimale antal r\00E6kker, som er %0. Anvend et filter til at reducere antallet a')
||unistr('f records i basisforesp\00F8rgslen.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335956058025967)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'da'
,p_message_text=>'Diagramtype'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299807115025956)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'da'
,p_message_text=>'Diagramvisning i %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415051459025991)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'da'
,p_message_text=>'Marker alle'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353573269025972)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg rapportformat')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361342271025974)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'da'
,p_message_text=>'ryd'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332863063025966)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Kolonne'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372667381025978)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Kolonner'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339835401025968)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'da'
,p_message_text=>'Kolonnealiasser'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447446595026002)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'da'
,p_message_text=>'Filtrer...'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307697294025958)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'da'
,p_message_text=>'Kolonneoverskrift'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321753076025963)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'da'
,p_message_text=>'Kolonnehandlinger'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322021525025963)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'da'
,p_message_text=>'Handlinger for kolonnen "%0"'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363427590025975)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'da'
,p_message_text=>'Kolonneoverskriftsmenu'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367101907025976)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'da'
,p_message_text=>'Kolonneoplysninger'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449787887026003)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'da'
,p_message_text=>'Kolonneetiket'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364810477025976)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'da'
,p_message_text=>'Kolonne %0'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347711202025970)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'da'
,p_message_text=>'indeholder'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349047572025971)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'da'
,p_message_text=>'indeholder ikke'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331341671025965)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'da'
,p_message_text=>'i'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349240606025971)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'da'
,p_message_text=>'er ikke inden for de sidste'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358386327025974)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('er ikke i de n\00E6ste')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349195024025971)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'da'
,p_message_text=>'er inden for de sidste'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358247478025974)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('er i de n\00E6ste')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331258519025965)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>'er ikke NULL'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331128352025965)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'da'
,p_message_text=>'er NULL'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330969384025965)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'da'
,p_message_text=>'som'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331432955025965)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'da'
,p_message_text=>'ikke i'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331079380025965)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'da'
,p_message_text=>'ikke som'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348020620025970)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'da'
,p_message_text=>'matcher almindeligt udtryk'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353422673025972)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'da'
,p_message_text=>'Beregning'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418015811025992)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'da'
,p_message_text=>'Beregningsudtryk'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372943502025978)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'da'
,p_message_text=>unistr('Opret en beregning ved hj\00E6lp af kolonnealiasser.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373047845025978)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'da'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373193209025978)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'da'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373232030025978)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'da'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314168556025960)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'da'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357652573025973)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'da'
,p_message_text=>'Beregn'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365476493025976)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'da'
,p_message_text=>'Kontrolbrud'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368468043025977)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'da'
,p_message_text=>'Kontrolbrud'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455064435026004)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Kontrolbrudskolonner'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310805395025959)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'da'
,p_message_text=>'Antal distinkte'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453565051026004)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'da'
,p_message_text=>'Antal distinkte'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453479433026004)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'da'
,p_message_text=>'Antal %0'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426491669025995)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'da'
,p_message_text=>'Dagligt'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124479773364026012)
,p_name=>'APEXIR_DATA'
,p_message_language=>'da'
,p_message_text=>'Data'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367284650025976)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'da'
,p_message_text=>'Rapporter data, som de var for %0 minutter siden.'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300203175025956)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'da'
,p_message_text=>'Datavisning i %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336693669025967)
,p_name=>'APEXIR_DATE'
,p_message_language=>'da'
,p_message_text=>'Dato'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371198287025977)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'da'
,p_message_text=>'Standard'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450665542026003)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'da'
,p_message_text=>'Standardrapporttype'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333094426025966)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'da'
,p_message_text=>'Slet'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336965531025967)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'da'
,p_message_text=>'Vil du slette disse rapportindstillinger?'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437403459025999)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'da'
,p_message_text=>'Slet standardrapport'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365118158025976)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'da'
,p_message_text=>'Slet rapport'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331777717025966)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'da'
,p_message_text=>'Faldende'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339379756025968)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Beskrivelse'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363303112025975)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'da'
,p_message_text=>unistr('Enkeltr\00E6kkevisning')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371621552025978)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkef\00F8lge %0')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372505328025978)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'da'
,p_message_text=>'Deaktiveret'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332557171025966)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'da'
,p_message_text=>'Vist'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335705551025967)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Viste kolonner'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371564677025978)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'da'
,p_message_text=>'Vis i rapport'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366301850025976)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'da'
,p_message_text=>'Ned'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357746757025973)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'da'
,p_message_text=>'Download'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371419354025978)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'da'
,p_message_text=>'Vis ikke'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440728949026000)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6vning med samme betingelse findes allerede.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455207819026004)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Duplikeret pivotkolonne. Pivotkolonneliste skal v\00E6re entydig.')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455482999026004)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'da'
,p_message_text=>'Rediger'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367423174025976)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'da'
,p_message_text=>'Rediger diagramindstillinger'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374065043025978)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'da'
,p_message_text=>'Rediger diagram'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337981138025967)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'da'
,p_message_text=>'Rediger kontrolbrud'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374457705025978)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'da'
,p_message_text=>'Rediger filter'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340978937025968)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'da'
,p_message_text=>'Rediger flashback'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432214362025997)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'da'
,p_message_text=>'Rediger Grupper efter'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374326732025978)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'da'
,p_message_text=>unistr('Rediger fremh\00E6vning')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402315865025987)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'da'
,p_message_text=>'Rediger pivot'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361720266025975)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'da'
,p_message_text=>unistr('Redig\00E9r rapport')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450964167026003)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'da'
,p_message_text=>'E-mail'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323195742025963)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'da'
,p_message_text=>'E-mailadresse'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451261142026003)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'da'
,p_message_text=>'Bcc'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451457170026003)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'da'
,p_message_text=>'Indhold'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451168151026003)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'da'
,p_message_text=>'Cc'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451908813026003)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'da'
,p_message_text=>'Frekvens'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328316029025965)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'da'
,p_message_text=>'E-mail er endnu ikke konfigureret for denne applikation. Kontakt din administrator.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425735525025995)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'da'
,p_message_text=>'E-mailadresse skal angives.'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451542582026003)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'da'
,p_message_text=>unistr('Se vedh\00E6ftet')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451315096026003)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'da'
,p_message_text=>'Emne'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426742459025995)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'da'
,p_message_text=>'E-mailemne skal angives.'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451081004026003)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'da'
,p_message_text=>'Til'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330198472025965)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'da'
,p_message_text=>'Aktiveret'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374230134025978)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'da'
,p_message_text=>'Aktiver/deaktiver'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373726496025978)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'da'
,p_message_text=>'Fejl! %0'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373342282025978)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'da'
,p_message_text=>'Eksempler'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374162977025978)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'da'
,p_message_text=>'Eksempler:'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335666155025967)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Ekskluder NULL-v\00E6rdier')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374737596025979)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'da'
,p_message_text=>'Udvid/skjul'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372354424025978)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'da'
,p_message_text=>'Udtryk'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357284719025973)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'da'
,p_message_text=>'Filtrer'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368360107025977)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'da'
,p_message_text=>'Filtre'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379083122025980)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'da'
,p_message_text=>'Filterudtryk'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477255940026011)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'da'
,p_message_text=>'Filterudtrykket er for langt.'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321922264025963)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'da'
,p_message_text=>'Filtrer forslag'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378964365025980)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'da'
,p_message_text=>'Filtertype'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374940197025979)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg kolonner, der skal s\00F8ges i')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357500857025973)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'da'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372142820025978)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>unistr('En flashback-foresp\00F8rgsel giver dig mulighed for at vise dataene, som de var p\00E5 et tidligere tidspunkt.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426126617025995)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'da'
,p_message_text=>'Varighed af flashback'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427590192025995)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'da'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353363228025972)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'da'
,p_message_text=>'Formateringsmaske %0'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365011075025976)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'da'
,p_message_text=>'Funktion'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372851262025978)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'da'
,p_message_text=>'Funktioner %0'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450580784026003)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'da'
,p_message_text=>'Funktioner/Operatorer'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364743206025976)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'da'
,p_message_text=>'Funktion %0'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357088994025973)
,p_name=>'APEXIR_GO'
,p_message_language=>'da'
,p_message_text=>unistr('G\00E5 til')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330673160025965)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'da'
,p_message_text=>unistr('gr\00F8n')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375617466025979)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Grupper efter kolonner'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375797550025979)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'da'
,p_message_text=>'Grupper efter funktioner'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310930697025959)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'da'
,p_message_text=>'Grupper efter'
,p_is_js_message=>true
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451615031026003)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Grupper efter kolonne %0'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407132850025989)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Grupper efter kolonne skal v\00E6re angivet.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418222604025992)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'da'
,p_message_text=>unistr('Det maksimale antal r\00E6kker for en Grupper efter-foresp\00F8rgsel begr\00E6nser antallet af r\00E6kker i basisforesp\00F8rgslen, ikke det viste antal r\00E6kker. Din basisforesp\00F8rgsel overskrider det maksimale antal r\00E6kker, som er %0. Anvend et filter til at reducere ant')
||unistr('allet af records i basisforesp\00F8rgslen.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398423291025986)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'da'
,p_message_text=>'Grupper efter sortering'
,p_is_js_message=>true
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455186852026004)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'da'
,p_message_text=>unistr('Grupper efter sorteringsr\00E6kkef\00F8lge')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300096568025956)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'da'
,p_message_text=>'Gruppevisning i %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336052626025967)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'da'
,p_message_text=>'Vandret kolonne'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370035717025977)
,p_name=>'APEXIR_HELP'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp')
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361879227025975)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Interaktive rapporter giver slutbrugere mulighed for at tilpasse rapporter. Brugere kan \00E6ndre layoutet af rapportdata ved at v\00E6lge kolonner, anvende filtre, fremh\00E6ve og sortere data. Brugere kan ogs\00E5 definere brud, aggregeringer, diagrammer, grupperi')
||unistr('nger og tilf\00F8je deres egne beregninger. Brugere kan ogs\00E5 konfigurere et abonnement, s\00E5 en HTML-version af rapporten sendes til dem pr. e-mail med et angivet interval. Brugere kan oprette flere varianter af en rapport og gemme dem som navngivne rappor')
||'ter til enten offentlig eller privat visning. ',
'<p/>',
unistr('De f\00F8lgende afsnit opsummerer m\00E5der, som du kan tilpasse en interaktiv rapport p\00E5. Hvis du vil l\00E6re mere, skal du se "Using Interactive Reports" i <i>Oracle APEX End User''s Guide</i>.')))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368934484025977)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'da'
,p_message_text=>unistr('Handlingsmenuen vises til h\00F8jre for knappen Start p\00E5 s\00F8gelinjen. Brug denne menu til at tilpasse en interaktiv rapport.')
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362695396025975)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Aggregeringer er matematiske beregninger, der udf\00F8res mod en kolonne. Aggregeringer vises efter hvert kontrolbrud og i slutningen af rapporten inden for den kolonne, hvor de er defineret. Valgmuligheder inkluderer:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Aggregering</strong> giver dig mulighed for at v\00E6lge en tidligere'),
'defineret aggregering, der skal redigeres.</li>',
unistr('<li><strong>Funktion</strong> er den funktion, der skal udf\00F8res (for eksempel SUM, MIN).</li>'),
unistr('<li><strong>Kolonne</strong> bruges til at v\00E6lge den kolonne, som den matematiske funktion skal anvendes p\00E5. Kun numeriske'),
'kolonner vises.</li>',
'</ul>'))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362770733025975)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Du kan definere \00E9t diagram pr. gemt rapport. N\00E5r'),
unistr('det er defineret, kan du skifte mellem diagram- og rapportvisningerne ved hj\00E6lp af visningsikonerne p\00E5 s\00F8gelinjen.'),
'Valgmuligheder omfatter: ',
'<p>',
'</p><ul>',
'<li><strong>Diagramtype</strong> identificerer den diagramtype, der skal inkluderes.',
unistr('V\00E6lg mellem vandret s\00F8jle, lodret s\00F8jle, cirkel eller linje.</li>'),
unistr('<li><strong>Etiket</strong> giver dig mulighed for at v\00E6lge den kolonne, der skal bruges som etiket.</li>'),
unistr('<li><strong>Aksetitel til etiket</strong> er den titel, der vises p\00E5 aksen, som er associeret med den kolonne, der er valgt til'),
unistr('Etiket. Den er ikke tilg\00E6ngelig for et cirkeldiagram.</li>'),
unistr('<li><strong>V\00E6rdi</strong> giver dig mulighed for at v\00E6lge den kolonne, der skal bruges som v\00E6rdien. Hvis din funktion'),
unistr('er en COUNT, er det ikke n\00F8dvendigt at v\00E6lge en v\00E6rdi.</li>'),
unistr('<li><strong>Aksetitel til v\00E6rdi</strong> er den titel, der vises p\00E5 aksen, som er associeret med den kolonne, der er valgt til '),
unistr('V\00E6rdi. Den er ikke tilg\00E6ngelig for et cirkeldiagram.</li>'),
unistr('<li><strong>Funktion</strong> er en valgfri funktion, der skal udf\00F8res p\00E5 den kolonne, som er valgt til V\00E6rdi.</li>'),
unistr('<li><strong>Sorter</strong> giver dig mulighed for at sortere resultats\00E6ttet.</li></ul>')))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362046700025975)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('N\00E5r du klikker p\00E5 en kolonneoverskrift, vises en kolonneoverskriftsmenu. Valgmuligheder omfatter:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Sorter stigende</strong>-ikonet sorterer rapporten efter kolonnen i stigende r\00E6kkef\00F8lge.</li>'),
unistr('<li><strong>Sorter faldende</strong>-ikonet sorterer rapporten efter kolonnen i faldende r\00E6kkef\00F8lge.</li>'),
'<li><strong>Skjul kolonne</strong> skjuler kolonnen. Ikke alle kolonner kan skjules. Hvis en kolonne ikke kan skjules, er der ikke noget Skjul kolonne-ikon.</li>',
unistr('<li><strong>Brudkolonne</strong> opretter en brudgruppe p\00E5 kolonnen. Den tr\00E6kker kolonnen ud af rapporten som en masterrecord.</li>'),
unistr('<li><strong>Kolonneoplysninger</strong> viser hj\00E6lpetekst om kolonnen, hvis den er tilg\00E6ngelig.</li>'),
unistr('<li><strong>Tekstomr\00E5de</strong> bruges til at indtaste s\00F8gekriterier, hvor der skelnes mellem store og sm\00E5 bogstaver'),
unistr('(intet behov for jokertegn). Hvis du indtaster en v\00E6rdi, reduceres listen over v\00E6rdier'),
unistr('nederst i menuen. Du kan derefter v\00E6lge en v\00E6rdi fra'),
unistr('bunden, og den valgte v\00E6rdi oprettes som et filter ved hj\00E6lp af ''='''),
unistr('(for eksempel <code>column = ''ABC''</code>). Du kan ogs\00E5 klikke p\00E5 Flashlight-ikonet og indtaste en v\00E6rdi, der skal oprettes som et filter med ''LIKE''-modifikatoren'),
'(for eksempel <code>column LIKE ''%ABC%''</code>).</li>',
unistr('<li><strong>Liste over entydige v\00E6rdier</strong> indeholder de f\00F8rste 500 entydige'),
unistr('v\00E6rdier, der overholder dine filterkriterier. Hvis kolonnen er en dato, vises der i stedet'),
unistr('en liste med datointervaller. Hvis du v\00E6lger en v\00E6rdi, oprettes der'),
unistr('et filter ved hj\00E6lp af ''='' (for eksempel <code>column = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362553559025975)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Giver dig mulighed for at f\00F8je beregnede kolonner til din rapport. De kan v\00E6re matematiske beregninger (for eksempel <code>NBR_HOURS/24</code>) eller'),
unistr('Oracle-standardfunktioner, der anvendes p\00E5 eksisterende kolonner. Nogle vises som eksempler, og andre (for eksempel <code>TO_DATE)</code> kan ogs\00E5 bruges). Valgmuligheder inkluderer:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Beregning</strong> giver dig mulighed for at v\00E6lge en tidligere defineret beregning, der skal redigeres.</li>'),
unistr('<li><strong>Kolonneoverskrift</strong> er kolonneoverskriften p\00E5 den nye kolonne.</li>'),
unistr('<li><strong>Formateringsmaske</strong> er en Oracle-formateringsmaske, der skal anvendes p\00E5 kolonnen (for eksempel S9999).</li>'),
unistr('<li><strong>Beregning</strong> er den beregning, der foretages. I beregningen refereres der til kolonner ved hj\00E6lp af de viste aliasser.</li>'),
'</ul>',
unistr('<p>Under beregning vises kolonnerne i din foresp\00F8rgsel med'),
unistr('deres tilknyttede alias. N\00E5r der klikkes p\00E5 kolonnenavnet eller -aliasset, inkluderes'),
'de i beregningen. Ud for Kolonner vises der et tastatur. Dette tastatur fungerer som',
unistr('en genvej til ofte benyttede taster. Helt til h\00F8jre er Funktioner.</p>'),
unistr('<p>Den f\00F8lgende eksempelberegning demonstrerer, hvordan total kompensation vises:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
'(hvor A er ORGANIZATION, B er SALARY, og C er COMMISSION)',
''))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369068278025977)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'da'
,p_message_text=>unistr('Bruges til at oprette en brudgruppe p\00E5 en eller flere kolonner. Dette tr\00E6kker kolonnerne ud af den interaktive rapport og viser dem som en masterrecord.')
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363234836025975)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'da'
,p_message_text=>unistr('Hvis du vil se detaljerne for en enkelt r\00E6kke ad gangen, skal du klikke p\00E5 ikonet for visning af enkelt r\00E6kke p\00E5 den r\00E6kke, som du vil se. Hvis det er tilg\00E6ngeligt, er enkeltr\00E6kkevisning altid den f\00F8rste kolonne. Afh\00E6ngigt af tilpasningen af den inte')
||unistr('raktive rapport er enkeltr\00E6kkevisning muligvis standardvisningen eller en tilpasset side, som kan tillade opdatering.')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363110183025975)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'da'
,p_message_text=>unistr('G\00F8r det muligt at downloade det aktuelle resultats\00E6t. Downloadformaterne inkluderer PDF, Excel, HTML og CSV. Downloadvalgene varierer afh\00E6ngigt at det valgte format. Alle formater kan ogs\00E5 sendes som e-mail.')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362270063025975)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Fokuserer rapporten ved at tilf\00F8je eller modificere <code>WHERE</code>-klausulen p\00E5 foresp\00F8rgslen. Du kan filtrere efter kolonne eller r\00E6kke. '),
unistr('<p>Hvis du filtrerer efter kolonne, skal du v\00E6lge en kolonne (det beh\00F8ver ikke v\00E6re den'),
unistr('viste kolonne), v\00E6lge en Oracle-standardoperator (=, !=, ikke i, mellem) og indtaste et udtryk, der skal sammenlignes med. Der skelnes mellem store og sm\00E5 bogstaver i udtryk. Brug % som jokertegn (for eksempel <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>Hvis du filtrerer efter r\00E6kke, kan du oprette komplekse <code>WHERE</code>-klausuler ved hj\00E6lp af'),
'kolonnealiasser og alle Oracle-funktioner eller -operatorer (for eksempel <code>G = ''VA'' or G = ''CT''</code>, hvor',
'<code>G</code> er aliasset for <code>CUSTOMER_STATE</code>).</p>',
''))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362825854025975)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('En flashback-foresp\00F8rgsel giver dig mulighed for at vise dataene, som de var p\00E5 et tidligere tidspunkt.'),
unistr('Standardtidsrummet, som du kan g\00E5 tilbage, er 3 timer (eller 180'),
'minutter), men det faktiske tidsrum varierer for hver enkelt database.'))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427482898025995)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Med et format kan du tilpasse visningen af rapporten.',
unistr('Format indeholder f\00F8lgende undermenu:</p>'),
'<ul><li>Sorter</li>',
'<li>Kontrolbrud</li>',
unistr('<li>Fremh\00E6v</li>'),
'<li>Beregn</li>',
'<li>Aggreger</li>',
'<li>Diagram</li>',
'<li>Grupper efter</li>',
'<li>Pivot</li>',
'</ul>',
''))
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425611381025995)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Du kan definere \00E9n Grupper efter-visning pr. gemt rapport. N\00E5r den er defineret, kan du skifte mellem Grupper efter- og rapportvisningerne'),
unistr('ved hj\00E6lp af visningsikonerne p\00E5 s\00F8gelinjen. Hvis du vil oprette en Grupper efter-visning, skal du v\00E6lge: '),
'<p></p>',
'<ul>',
'<li>de kolonner, der skal grupperes</li>',
unistr('<li>de kolonner, der skal aggregeres sammen med den funktion, som skal udf\00F8res (gennemsnit, sum, antal osv.)</li>'),
'</ul>'))
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362440490025975)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Giver dig mulighed for at definere et filter. De r\00E6kker, der overholder filterkriterierne, vises fremh\00E6vet ved hj\00E6lp af den karakteristik, der er associeret med filteret. Valgmuligheder omfatter:</p>'),
'<ul>',
'<li><strong>Navn</strong> bruges kun til visning.</li>',
unistr('<li><strong>Sekvens</strong> identificerer den r\00E6kkef\00F8lge, som reglerne evalueres i.</li>'),
'<li><strong>Aktiveret</strong> identificerer, om en regel er aktiveret eller deaktiveret.</li>',
unistr('<li><strong>Fremh\00E6vningstype</strong> identificerer, om r\00E6kken eller cellen skal v\00E6re'),
unistr('fremh\00E6vet. Hvis Celle er valgt, fremh\00E6ves den kolonne, der refereres til i'),
unistr('Fremh\00E6vningsbetingelse.</li>'),
unistr('<li><strong>Baggrundsfarve</strong> er den nye farve for baggrunden af det fremh\00E6vede omr\00E5de.</li>'),
unistr('<li><strong>Tekstfarve</strong> er den nye farve af teksten i det fremh\00E6vede omr\00E5de.</li>'),
unistr('<li><strong>Fremh\00E6vningsbetingelse</strong> definerer din filterbetingelse.</li>'),
'</ul>',
''))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255858619025943)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Du kan definere \00E9n pivotvisning pr. gemt rapport. N\00E5r den er defineret, kan du skifte mellem pivot- og rapportvisningerne ved hj\00E6lp af visningsikonerne p\00E5 s\00F8gelinjen. Hvis du vil oprette en pivotvisning, skal du v\00E6lge: '),
'<p></p>',
'<ul>',
'<li>de kolonner, der skal pivoteres</li>',
unistr('<li>de kolonner, der skal vises som r\00E6kker</li>'),
unistr('<li>de kolonner, der skal aggregeres sammen med den funktion, som skal udf\00F8res (gennemsnit, sum, antal osv.)</li>'),
'</ul>'))
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373551948025978)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hvis du tilpasser en interaktiv rapport, vises rapportindstillingerne',
unistr('under s\00F8gelinjen og over rapporten. Dette omr\00E5de kan skjules og vises ved hj\00E6lp af ikonet til venstre.'),
'<p>',
'For hver rapportindstilling kan du:',
'</p><ul>',
unistr('<li>Redigere en indstilling ved at klikke p\00E5 navnet.</li>'),
unistr('<li>Deaktivere/aktivere en indstilling ved at markere eller fjerne markeringen i afkrydsningsfeltet Aktiver/deaktiver. Brug dette kontrolelement til midlertidigt at sl\00E5 en indstilling til og fra.</li>'),
unistr('<li>Fjerne en indstilling ved at klikke p\00E5 ikonet Fjern.</li>'),
'</ul>',
'<p>Hvis du har oprettet et diagram, en gruppering eller en pivot, kan du skifte mellem dem',
unistr('og basisrapporten ved hj\00E6lp af linkene Rapportvisning, Diagramvisning, Gruppevisning og Pivotvisning,'),
unistr('der vises til h\00F8jre. Hvis du ser diagrammet, grupperingen eller pivoten, kan'),
unistr('du ogs\00E5 bruge linket Rediger til at redigere indstillingerne.</p>'),
''))
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363089442025975)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'da'
,p_message_text=>'Nulstiller rapporten til standardindstillingerne og fjerner eventuelle tilpasninger, som du har foretaget.'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427779541025995)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'da'
,p_message_text=>unistr('S\00E6tter det antal records, der skal vises pr. side.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362920192025975)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Gemmer den tilpassede rapport til senere brug. Du angiver et navn og en valgfri beskrivelse og kan g\00F8re rapporten offentligt tilg\00E6ngelig (det vil sige alle brugere, der kan f\00E5 adgang til den prim\00E6re standardrapport). Du kan gemme fire typer af int')
||'eraktive rapporter:</p>',
'<ul>',
unistr('<li><strong>Prim\00E6r standard</strong> (kun udviklere). Den prim\00E6re standard er den rapport, der vises til at begynde med. Prim\00E6re standardrapporter kan ikke omd\00F8bes eller slettes.</li>'),
unistr('<li><strong>Alternativ rapport</strong> (kun udviklere). Giver udviklere mulighed for at oprette flere rapportlayouts. Kun udviklere kan gemme, omd\00F8be eller slette en alternativ rapport.</li>'),
unistr('<li><strong>Offentlig rapport</strong> (slutbrugere). Kan gemmes, omd\00F8bes eller slettes af den slutbruger, der oprettede den. Andre brugere kan vise og gemme layoutet som en anden rapport.</li>'),
unistr('<li><strong>Privat rapport</strong> (slutbrugere). Kun den slutbruger, der har oprettet rapporten, kan vise, gemme, omd\00F8be eller slette rapporten.</li>'),
'</ul>',
unistr('<p>Hvis du gemmer tilpassede rapporter, vises der en rapportv\00E6lger p\00E5 s\00F8gelinjen til venstre for r\00E6kkev\00E6lgeren (hvis denne funktion er aktiveret).</p>'),
''))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361916434025975)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'da'
,p_message_text=>unistr('\00D8verst p\00E5 hver rapportside findes et s\00F8geomr\00E5de. Dette omr\00E5de (eller s\00F8gelinjen) indeholder f\00F8lgende funktioner:')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428304772025996)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'da'
,p_message_text=>unistr('<li><strong>Menuen Handlinger</strong> g\00F8r det muligt at tilpasse en rapport. Se nedenst\00E5ende afsnit.</li>')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427822734025995)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'da'
,p_message_text=>unistr('<li><strong>Ikonet V\00E6lg kolonner</strong> g\00F8r det muligt at identificere den kolonne, der skal s\00F8ges i (eller alle).</li>')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428178001025996)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'da'
,p_message_text=>'<li><strong>Rapporter</strong> viser alternative standardrapporter og gemte private eller offentlige rapporter.</li>'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428009787025996)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('<li><strong>R\00E6kker</strong> s\00E6tter det antal records, der skal vises pr. side.</li>')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427983115025995)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Tekstomr\00E5de</strong> g\00F8r det muligt at indtaste s\00F8gekriterier uden forskel p\00E5 store og sm\00E5 bogstaver (jokertegn er implicitte).</li>'),
unistr('<li><strong>Knappen G\00E5 til</strong> udf\00F8rer s\00F8gningen. Tryk p\00E5 Enter-tasten udf\00F8rer ogs\00E5 s\00F8gningen, n\00E5r mark\00F8ren er i s\00F8getekstomr\00E5det.</li>')))
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428299153025996)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'da'
,p_message_text=>'<li><strong>Vis-ikoner</strong> skifter mellem ikon-, rapport-, detalje-, diagram-, Grupper efter- og pivotvisninger af rapporten, hvis de er defineret.</li>'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362122803025975)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'da'
,p_message_text=>unistr('Bruges til at modificere de viste kolonner. Kolonnerne til h\00F8jre vises. Kolonnerne til venstre er skjult. Du kan \00E6ndre r\00E6kkef\00F8lgen p\00E5 de viste kolonner ved hj\00E6lp af pilene helt til h\00F8jre. Beregnede kolonner har pr\00E6fikset <strong>**</strong>.')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124362324847025975)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Bruges til at \00E6ndre de kolonner, der skal sorteres p\00E5, og bestemmer, om '),
unistr('der sorteres i stigende eller faldende r\00E6kkef\00F8lge. Du kan ogs\00E5 angive, hvordan du vil h\00E5ndtere'),
unistr('<code>NULL-v\00E6rdier</code>. Standardindstillingen viser altid <code>NULL-v\00E6rdier</code> sidst eller viser dem altid f\00F8rst. Den resulterende sortering vises til h\00F8jre for'),
'kolonneoverskrifterne i rapporten.</p>'))
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425499240025995)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E5r du tilf\00F8jer et abonnement, angiver du en e-mailadresse (eller flere e-mailadresser adskilt af kommaer), et e-mailemne, frekvens samt start- og slutdatoer. De resulterende e-mails inkluderer en eksporteret version (PDF, Excel, HTML eller CSV) af d')
||unistr('en interaktive rapport, som indeholder de aktuelle data, ved hj\00E6lp af den rapportindstilling, der fandtes, da abonnementet blev tilf\00F8jet.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367069725025976)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Skjul kolonne'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357458828025973)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6v')
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368546119025977)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6vninger')
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338762076025968)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6v celle, %0 p\00E5 %1')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373635899025978)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6vningsbetingelse')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338667450025968)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6v r\00E6kke, %0 p\00E5 %1')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426093144025995)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6vningstypografi')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330224756025965)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6vningstype')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444896694026001)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'da'
,p_message_text=>'Vandret'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473840716026010)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'da'
,p_message_text=>'1 inaktiv indstilling'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473960349026010)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'da'
,p_message_text=>'%0 inaktive indstillinger'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363658575025975)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til interaktiv rapport')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374682331025978)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'da'
,p_message_text=>'Ugyldig'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368010191025977)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'da'
,p_message_text=>'Ugyldigt beregningsudtryk. %0'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323667484025963)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'da'
,p_message_text=>unistr('Slutdatoen skal v\00E6re st\00F8rre end startdatoen.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382858187025981)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'da'
,p_message_text=>'Ugyldigt filterudtryk. %0'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452648066026004)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'da'
,p_message_text=>unistr('Ugyldig filterforesp\00F8rgsel')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474055038026010)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'da'
,p_message_text=>'1 ugyldig indstilling'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474124404026010)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'da'
,p_message_text=>'%0 ugyldige indstillinger'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426236756025995)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'da'
,p_message_text=>'(i minutter)'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443240085026000)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'da'
,p_message_text=>'%0 er inden for de sidste %1'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443436430026001)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er inden for de n\00E6ste %1')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443384552026000)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'da'
,p_message_text=>'%0 er ikke inden for de sidste %1'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443588500026001)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('%0 er ikke inden for de n\00E6ste %1')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372757443025978)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'da'
,p_message_text=>'Tastatur'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336490756025967)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'da'
,p_message_text=>'Etiket %0'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366637934025976)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'da'
,p_message_text=>'Aksetitel til etiket'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358964076025974)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'da'
,p_message_text=>'Sidste dag'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359152654025974)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'da'
,p_message_text=>'Sidste time'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358638707025974)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('Sidste m\00E5ned')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358717458025974)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'da'
,p_message_text=>'Sidste uge'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358859113025974)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'da'
,p_message_text=>'Sidste %0 dage'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359032630025974)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'da'
,p_message_text=>'Sidste %0 timer'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358483106025974)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('Sidste %0 \00E5r')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358551815025974)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('Sidste \00E5r')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336375847025967)
,p_name=>'APEXIR_LINE'
,p_message_language=>'da'
,p_message_text=>'Linje'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333137696025966)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'da'
,p_message_text=>'Linje med areal'
,p_version_scn=>2692469
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452560354026003)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'da'
,p_message_text=>unistr('Kortl\00E6g det')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367562161025976)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'da'
,p_message_text=>unistr('Foresp\00F8rgslen estimeres at overskride de maksimalt tilladte ressourcer. Modificer dine rapportindstillinger, og pr\00F8v igen.')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348934662025971)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'da'
,p_message_text=>unistr('Det maksimale antal r\00E6kker for denne rapport er %0 r\00E6kker. Anvend et filter for at reducere antallet af records i din foresp\00F8rgsel.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453174877026004)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'da'
,p_message_text=>'Maksimum %0'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453378001026004)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'da'
,p_message_text=>'Median %0'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295680257025955)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'da'
,p_message_text=>'Meddelelse'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353268397025972)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'da'
,p_message_text=>'For %0 minutter siden'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453237043026004)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'da'
,p_message_text=>'Minimum %0'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452280933026003)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5ned')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426607374025995)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5nedligt')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365883239025976)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'da'
,p_message_text=>'Flyt'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365751544025976)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'da'
,p_message_text=>'Flyt alle'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478984704026012)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('Regions statiske ID skal v\00E6re angivet, da siden indeholder flere interaktive rapporter.')
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331881538025966)
,p_name=>'APEXIR_NAME'
,p_message_language=>'da'
,p_message_text=>'Navn'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361510681025975)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'da'
,p_message_text=>'Ny aggregering'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474702323026011)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'da'
,p_message_text=>'Ny kategori'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361607081025975)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'da'
,p_message_text=>'Ny beregning'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356379464025973)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359498548025974)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste dag')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359285325025974)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste time')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359780763025974)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste m\00E5ned')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359620770025974)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste uge')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359593475025974)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 dage')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359306791025974)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 timer')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359972279025974)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste %0 \00E5r')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124359834309025974)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste \00E5r')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332142634025966)
,p_name=>'APEXIR_NO'
,p_message_language=>'da'
,p_message_text=>'Nej'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374821439025979)
,p_name=>'APEXIR_NONE'
,p_message_language=>'da'
,p_message_text=>'- Ingen -'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425833737025995)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'da'
,p_message_text=>'Ikke en gyldig e-mailadresse.'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297926346025955)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen kolonner valgt til visning. Brug <strong>Kolonner</strong> i handlingsmenuen til at g\00F8re kolonner synlige.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371359553025978)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'da'
,p_message_text=>unistr('NULL-v\00E6rdier altid f\00F8rst')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371241431025977)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'da'
,p_message_text=>unistr('NULL-v\00E6rdier altid sidst')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371720030025978)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'da'
,p_message_text=>'NULL-sortering %0'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368126996025977)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'da'
,p_message_text=>unistr('Flashback-tid skal v\00E6re numerisk.')
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367782304025976)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'da'
,p_message_text=>unistr('Sekvens skal v\00E6re numerisk.')
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372241523025978)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'da'
,p_message_text=>'Operator'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330749229025965)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'da'
,p_message_text=>'orange'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444706550026001)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'da'
,p_message_text=>'Retning'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332666350025966)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'da'
,p_message_text=>'Andet'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298824198025956)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'da'
,p_message_text=>'Sideinddeling i %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312879681025960)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'da'
,p_message_text=>'Sideretning'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313564583025960)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'da'
,p_message_text=>'Liggende'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313664129025960)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'da'
,p_message_text=>unistr('St\00E5ende')
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312737796025960)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'da'
,p_message_text=>unistr('Sidest\00F8rrelse')
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313300383025960)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'da'
,p_message_text=>'A3'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313260282025960)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'da'
,p_message_text=>'A4'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313435549025960)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'da'
,p_message_text=>'Tilpasset'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313084971025960)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'da'
,p_message_text=>'Legal'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312980283025960)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'da'
,p_message_text=>'Letter'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313158970025960)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'da'
,p_message_text=>'Tabloid'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453649352026004)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'da'
,p_message_text=>'Procent af samlet antal %0 (%)'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452840373026004)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'da'
,p_message_text=>'Procent af samlet sum %0 (%)'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451834670026003)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'da'
,p_message_text=>'Procent af samlet antal'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124451794196026003)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'da'
,p_message_text=>'Procent af samlet sum'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336267459025967)
,p_name=>'APEXIR_PIE'
,p_message_language=>'da'
,p_message_text=>'Cirkel'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401948769025987)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'da'
,p_message_text=>'Pivoter'
,p_is_js_message=>true
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403418850025988)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Aggregatfunktion skal v\00E6re angivet.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403618442025988)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'da'
,p_message_text=>unistr('Du kan ikke aggregere p\00E5 en kolonne, der er valgt som r\00E6kkekolonne.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402829268025987)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Pivotkolonner'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402639644025987)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'da'
,p_message_text=>'Pivotkolonne %0'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403267552025988)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Pivotkolonne skal v\00E6re angivet.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255750267025943)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'da'
,p_message_text=>unistr('Det maksimale antal r\00E6kker for en pivotforesp\00F8rgsel begr\00E6nser antallet af r\00E6kker i basisforesp\00F8rgslen, ikke det viste antal r\00E6kker. Din basisforesp\00F8rgsel overskrider det maksimale antal r\00E6kker, som er %0. Anvend et filter til at reducere antallet af ')
||unistr('records i basisforesp\00F8rgslen.')
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403151908025988)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'da'
,p_message_text=>'Pivotsortering'
,p_is_js_message=>true
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369160307025977)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'da'
,p_message_text=>unistr('Pivotkolonnen indeholder for mange distinkte v\00E6rdier - pivot-SQL kan ikke genereres.')
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300147150025956)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'da'
,p_message_text=>'Pivotvisning i %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425982702025995)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'da'
,p_message_text=>'Eksempel'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356497422025973)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'da'
,p_message_text=>'Forrige'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450758529026003)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'da'
,p_message_text=>unistr('Prim\00E6r')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426935972025995)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'da'
,p_message_text=>unistr('Prim\00E6r rapport')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312645987025960)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'da'
,p_message_text=>unistr('Inkluder tilg\00E6ngelighedstags')
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273406697025948)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'da'
,p_message_text=>'Fjern RTF-formatering'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381877188025981)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'da'
,p_message_text=>'Privat'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336890650025967)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'da'
,p_message_text=>'Offentlig'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332458963025966)
,p_name=>'APEXIR_RED'
,p_message_language=>'da'
,p_message_text=>unistr('r\00F8d')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478831578026012)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Regionens statiske ID %0 findes ikke.'
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365998998025976)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'da'
,p_message_text=>'Fjern'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366093246025976)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'da'
,p_message_text=>'Fjern alle'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474210163026010)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'da'
,p_message_text=>'Fjern diagram'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365523883025976)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'da'
,p_message_text=>'Fjern kontrolbrud'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365218880025976)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'da'
,p_message_text=>'Fjern filter'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365392957025976)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'da'
,p_message_text=>'Fjern flashback'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474324541026011)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'da'
,p_message_text=>'Fjern Grupper efter'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124365623816025976)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'da'
,p_message_text=>unistr('Fjern fremh\00E6vning')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474418341026011)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'da'
,p_message_text=>'Fjern pivot'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455560552026004)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'da'
,p_message_text=>'Fjern rapport'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437324693025999)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'da'
,p_message_text=>unistr('Omd\00F8b standardrapport')
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375120607025979)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'da'
,p_message_text=>unistr('Omd\00F8b rapport')
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356724083025973)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'da'
,p_message_text=>'Rapport'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124453798423026004)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'da'
,p_message_text=>'Rapporter'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328906750025965)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Gemt interaktiv rapport med aliasset %0 findes ikke.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382131311025981)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Rapport findes ikke.'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329047279025965)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Det gemte interaktive rapport-ID %0 findes ikke.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373404055025978)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'da'
,p_message_text=>'Rapportindstillinger'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124297640099025955)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'da'
,p_message_text=>'Rapportindstillinger i %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353769929025972)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'da'
,p_message_text=>'Rapportvisning'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357935279025973)
,p_name=>'APEXIR_RESET'
,p_message_language=>'da'
,p_message_text=>'Nulstil'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337041506025967)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'da'
,p_message_text=>'Gendan rapport til standardindstillingerne.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332281268025966)
,p_name=>'APEXIR_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kke')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449842197026003)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'da'
,p_message_text=>unistr('Du kan ikke bruge ROWID som den prim\00E6re n\00F8glekolonne til en REST-datakilde.')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364612642025975)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kker')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427692227025995)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kker pr. side')
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402953302025987)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkekolonner')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402765709025987)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkekolonne %0')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403352057025988)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkekolonne skal v\00E6re angivet.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403539207025988)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkekolonnen skal v\00E6re forskellig fra pivotkolonnen.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379103910025980)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kkefilter')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353846825025972)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kke %0 af %1')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124358189805025974)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kketekst indeholder')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331575010025965)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'da'
,p_message_text=>'Gem'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368792072025977)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'da'
,p_message_text=>'Gemt rapport'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368675147025977)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'da'
,p_message_text=>'Gemt rapport = "%0"'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370830606025977)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'da'
,p_message_text=>'De aktuelle rapportindstillinger anvendes som standard for alle brugere.'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124437213615025999)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'da'
,p_message_text=>'Gem standardrapport'
,p_is_js_message=>true
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357898056025973)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'da'
,p_message_text=>'Gem rapport'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474637512026011)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'da'
,p_message_text=>'Gem rapport *'
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428698093025996)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363528531025975)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8gelinje')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124296901313025955)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8gelinje i %0')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124474576792026011)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g i: %0')
,p_is_js_message=>true
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434130120025998)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g i rapport')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418162758025992)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'da'
,p_message_text=>'Valgte kolonner'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333226297025966)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('- V\00E6lg kolonne -')
,p_version_scn=>2692469
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357124196025973)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg kolonner')
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336790627025967)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'da'
,p_message_text=>unistr('- V\00E6lg funktion -')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364316390025975)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('- V\00E6lg Grupper efter kolonne -')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402470618025987)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('- V\00E6lg pivotkolonne -')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452733909026004)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg r\00E6kke')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402537758025987)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('- V\00E6lg r\00E6kkekolonne -')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284079261025951)
,p_name=>'APEXIR_SEND'
,p_message_language=>'da'
,p_message_text=>'Send'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306523389025958)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'da'
,p_message_text=>'Send som e-mail'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124331903699025966)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'da'
,p_message_text=>'Sekvens'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124357347650025973)
,p_name=>'APEXIR_SORT'
,p_message_language=>'da'
,p_message_text=>'Sorter'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366880809025976)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'da'
,p_message_text=>'Sorter stigende'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366981647025976)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'da'
,p_message_text=>'Sorter faldende'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454912720026004)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'da'
,p_message_text=>unistr('Sorteringsr\00E6kkef\00F8lge')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361224471025974)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'da'
,p_message_text=>'mellemrum'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372446163025978)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'da'
,p_message_text=>'Status %0'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426380847025995)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Abonnement'
,p_is_js_message=>true
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452184879026003)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'da'
,p_message_text=>'Slutter'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271126155025947)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'da'
,p_message_text=>'Spring over, hvis ingen data blev fundet'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452077461026003)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'da'
,p_message_text=>'Starter fra'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452937663026004)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'da'
,p_message_text=>'Sum %0'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443806424026001)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'da'
,p_message_text=>'%0, Rapport = %1, Visning = %2'
,p_version_scn=>2692494
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330865946025965)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'da'
,p_message_text=>'Tekstfarve'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349544923025971)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'da'
,p_message_text=>'dage'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349444197025971)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'da'
,p_message_text=>'timer'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349338906025971)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'da'
,p_message_text=>'minutter'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349753545025971)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('m\00E5neder')
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349655317025971)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'da'
,p_message_text=>'uger'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124349856632025971)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('\00E5r')
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124455316434026004)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'da'
,p_message_text=>'Skift'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366118219025976)
,p_name=>'APEXIR_TOP'
,p_message_language=>'da'
,p_message_text=>unistr('\00D8verst')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448836411026002)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Ikke-grupperet kolonne'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367648008025976)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'da'
,p_message_text=>unistr('Fremh\00E6vningsnavn skal v\00E6re entydigt.')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335543787025967)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('ikke-underst\00F8ttet datatype')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366236366025976)
,p_name=>'APEXIR_UP'
,p_message_language=>'da'
,p_message_text=>'Op'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367831557025976)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'da'
,p_message_text=>'Indtast en gyldig farve.'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124367982530025976)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'da'
,p_message_text=>'Angiv en gyldig formateringsmaske.'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332769129025966)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366709043025976)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Aksetitel til v\00E6rdi')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124374550236025978)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi p\00E5kr\00E6vet')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124336110577025967)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'da'
,p_message_text=>'Lodret kolonne'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444907633026001)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'da'
,p_message_text=>'Lodret'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373849372025978)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'da'
,p_message_text=>'Vis diagram'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432431671025997)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'da'
,p_message_text=>'Vis detaljer'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476736596026011)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Rapporten har ikke nogen %0-visning defineret.'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432569868025997)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'da'
,p_message_text=>'Vis gruppe efter'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432312819025997)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'da'
,p_message_text=>'Vis ikoner'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124402284637025987)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'da'
,p_message_text=>'Vis pivot'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124373930818025978)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'da'
,p_message_text=>'Vis rapport'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426514628025995)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'da'
,p_message_text=>'Ugentligt'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356699811025973)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'da'
,p_message_text=>'Arbejdsrapport'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454356765026004)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'da'
,p_message_text=>'%0 dage'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454221280026004)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'da'
,p_message_text=>'%0 timer'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454139820026004)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'da'
,p_message_text=>'%0 minutter'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454579654026004)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 m\00E5neder')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454473010026004)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'da'
,p_message_text=>'%0 uger'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124454655457026004)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('%0 \00E5r')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124452315223026003)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5r')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124330581710025965)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'da'
,p_message_text=>'gul'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124332078976025966)
,p_name=>'APEXIR_YES'
,p_message_language=>'da'
,p_message_text=>'Ja'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124366593299025976)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'da'
,p_message_text=>'%0 indeholder < eller >, som er ugyldige tegn.'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124390421018025983)
,p_name=>'APEX_REGION'
,p_message_language=>'da'
,p_message_text=>'Region'
,p_version_scn=>2692480
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281542087025950)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'da'
,p_message_text=>'Kan ikke pakke ZIP-fil ud.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281485471025950)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'da'
,p_message_text=>unistr('Signatur ved slutning p\00E5 centralt katalog blev ikke fundet. Denne fil er ikke en ZIP-fil.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124312593651025960)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'da'
,p_message_text=>unistr('API-foruds\00E6tning overskredet')
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334641734025966)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke hente v\00E6rdi for applikationsindstillingen %0, fordi tilknyttet build-valg er deaktiveret.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334531348025966)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke s\00E6tte v\00E6rdi for applikationsindstillingen %0, fordi tilknyttet build-valg er deaktiveret.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447194861026002)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdien af applikationsindstillingen %0 er ugyldig')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447067371026002)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'da'
,p_message_text=>'Anmodet applikationsindstilling %0 er ikke defineret'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447216065026002)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Applikationsindstillingen %0 m\00E5 ikke v\00E6re sat til en NULL-v\00E6rdi')
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321128874025962)
,p_name=>'BACK'
,p_message_language=>'da'
,p_message_text=>'Tilbage'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303546439025957)
,p_name=>'BUILDER'
,p_message_language=>'da'
,p_message_text=>'Generator'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377166782025979)
,p_name=>'BUTTON LABEL'
,p_message_language=>'da'
,p_message_text=>'Knapetiket'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300467922025956)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'da'
,p_message_text=>'Knap-CSS-klasser'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338944103025968)
,p_name=>'BUTTON_ID'
,p_message_language=>'da'
,p_message_text=>unistr('Genereret knap-ID vil enten v\00E6re knappens statiske ID, hvis det er defineret, eller et internt genereret ID i formatet ''B'' || [Internt knap-ID]')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272907187025948)
,p_name=>'CANDLESTICK'
,p_message_language=>'da'
,p_message_text=>'Lysestage'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386950407025982)
,p_name=>'CENTER'
,p_message_language=>'da'
,p_message_text=>'Centreret'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333561697025966)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'da'
,p_message_text=>'%0-anmodning'
,p_version_scn=>2692469
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323565331025963)
,p_name=>'CHECK$'
,p_message_language=>'da'
,p_message_text=>unistr('r\00E6kkev\00E6lger')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124448909558026002)
,p_name=>'CHECKED'
,p_message_language=>'da'
,p_message_text=>'markeret'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425378250025995)
,p_name=>'COLUMN'
,p_message_language=>'da'
,p_message_text=>'Kolonne'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382956718025981)
,p_name=>'COMMENTS'
,p_message_language=>'da'
,p_message_text=>'Kommentarer'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363949923025975)
,p_name=>'CONTINUE'
,p_message_language=>'da'
,p_message_text=>unistr('Forts\00E6t')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321468127025963)
,p_name=>'COPYRIGHT'
,p_message_language=>'da'
,p_message_text=>'Copyright &copy; 1999, %0, Oracle og/eller Oracles associerede selskaber.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369641690025977)
,p_name=>'COUNT'
,p_message_language=>'da'
,p_message_text=>'Antal'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376621037025979)
,p_name=>'CREATE'
,p_message_language=>'da'
,p_message_text=>'Opret'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432017339025997)
,p_name=>'CREATED'
,p_message_language=>'da'
,p_message_text=>'Oprettet'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432174804025997)
,p_name=>'CREATED_BY'
,p_message_language=>'da'
,p_message_text=>'Oprettet af'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353012925025972)
,p_name=>'CREATED_ON'
,p_message_language=>'da'
,p_message_text=>'Oprettet den'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364184911025975)
,p_name=>'CUSTOM'
,p_message_language=>'da'
,p_message_text=>'Tilpasset'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375381817025979)
,p_name=>'CUSTOMIZE'
,p_message_language=>'da'
,p_message_text=>'Tilpas'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377323276025979)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'da'
,p_message_text=>unistr('Sidepr\00E6ferencer nulstillet for brugeren %0.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377457393025979)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'da'
,p_message_text=>unistr('Pr\00E6ferencer \00E6ndret for brugeren %0.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377228437025979)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'da'
,p_message_text=>unistr('Sidepr\00E6ferencer nulstillet for brugeren %0.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338325526025968)
,p_name=>'DAILY'
,p_message_language=>'da'
,p_message_text=>'Dagligt'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301780835025956)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'da'
,p_message_text=>'Uploadet fil er ugyldig eller har den forkerte filtype.'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333711499025966)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'da'
,p_message_text=>unistr('Ugyldig XML- eller JSON-v\00E6lger anvendt.')
,p_version_scn=>2692469
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278854619025950)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'da'
,p_message_text=>unistr('Dataprofil og uploadet fil indeholder ikke en m\00E5ltabelkolonne.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392744439025984)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'da'
,p_message_text=>'Ingen data fundet i uploadet fil.'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392812887025984)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'da'
,p_message_text=>'Ingen data fundet i regnearket "%0".'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298653363025956)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'da'
,p_message_text=>'Den angivne fil er ikke en XLSX-fil.'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124264698624025945)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'da'
,p_message_text=>unistr('Dataindl\00E6sning afsluttet: %0 r\00E6kker behandlet.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124266999151025946)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Dataindl\00E6sning afsluttet: %0 r\00E6kker behandlet med 1 fejl.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267270726025946)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('Dataindl\00E6sning afsluttet: %0 r\00E6kker behandlet med %1 fejl.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267056302025946)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'da'
,p_message_text=>unistr('Dataindl\00E6sning afsluttet: 1 r\00E6kke behandlet.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281326971025950)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('Dataindl\00E6sning afsluttet: 1 r\00E6kke behandlet med fejl.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124267146747025946)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('Dataindl\00E6sning afsluttet: 1 r\00E6kke behandlet uden fejl.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399887258025986)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5lkolonne')
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307007678025958)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'da'
,p_message_text=>unistr('Indl\00E6s ikke')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307122873025958)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'da'
,p_message_text=>'Forbehandlingsfejl'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399927556025987)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'da'
,p_message_text=>'Kildekolonne'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400792686025987)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'da'
,p_message_text=>'Dato-/talformat'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306833288025958)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'da'
,p_message_text=>unistr('Inds\00E6t r\00E6kke')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462945537026007)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'da'
,p_message_text=>unistr('Kunne ikke hente opslagsv\00E6rdien.')
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124432603015025997)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'da'
,p_message_text=>'Data-/tabel-mapping'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400883797025987)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kke')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307204612025958)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'da'
,p_message_text=>'Sekvens: handling'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394525461025985)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'da'
,p_message_text=>'Transformationsreglen fejlede'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306954956025958)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'da'
,p_message_text=>unistr('Opdater r\00E6kke')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369298783025977)
,p_name=>'DATE'
,p_message_language=>'da'
,p_message_text=>'Dato'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342146806025969)
,p_name=>'DAY'
,p_message_language=>'da'
,p_message_text=>'dag'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342228799025969)
,p_name=>'DAYS'
,p_message_language=>'da'
,p_message_text=>'dage'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382643399025981)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'da'
,p_message_text=>'Fejlfinding er ikke aktiveret for denne applikation.'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434323831025998)
,p_name=>'DEFAULT'
,p_message_language=>'da'
,p_message_text=>'Standard'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342966352025969)
,p_name=>'DELETE'
,p_message_language=>'da'
,p_message_text=>'slet'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318583655025962)
,p_name=>'DELETE_MSG'
,p_message_language=>'da'
,p_message_text=>unistr('Vil du udf\00F8re denne slettehandling?')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298104571025955)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'da'
,p_message_text=>'Sessionsoverskrivninger'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299020492025956)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Aktiv\00E9r sessionsoverskrivninger')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299947212025956)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'da'
,p_message_text=>unistr('Der var en fejl under indl\00E6sning af sessionsoverskrivningerne.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299724735025956)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'da'
,p_message_text=>'Der var en fejl under lagring af sessionsoverskrivningerne.'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124299600551025956)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'da'
,p_message_text=>unistr('Sessionsoverskrivninger gemt. Luk denne dialogboks for at se \00E6ndringerne.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272882265025948)
,p_name=>'DIAL_PCT'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5ler (procent)')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124313867078025960)
,p_name=>'DOWNLOAD'
,p_message_language=>'da'
,p_message_text=>'Download'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433494179025997)
,p_name=>'DUP_USER'
,p_message_language=>'da'
,p_message_text=>unistr('Dubleret brugernavn p\00E5 liste.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322265191025963)
,p_name=>'EDIT'
,p_message_language=>'da'
,p_message_text=>'Rediger'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333445059025966)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'E-mailadressen "%0" blev ikke fundet.'
,p_version_scn=>2692469
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316148451025961)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'da'
,p_message_text=>'Denne e-mail er sendt af %0.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433681043025997)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'da'
,p_message_text=>unistr('E-mailadressen er for lang. Gr\00E6nsen er 240 tegn.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363802810025975)
,p_name=>'ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394656780025985)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke s\00E6tte sideelements kildev\00E6rdi for delvis sideopfriskningsomr\00E5de')
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355115759025973)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'da'
,p_message_text=>'Oprettet af'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316474452025961)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskode er udl\00F8bet')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124308890645025959)
,p_name=>'FILE_EMPTY'
,p_message_language=>'da'
,p_message_text=>'Filen er tom.'
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398624938025986)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'da'
,p_message_text=>unistr('Den uploadede fil var st\00F8rre end %0 MB. Upload en mindre fil.')
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318738069025962)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'da'
,p_message_text=>'Brugerautentificering fejlede, og en eller flere filer blev ikke uploadet.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318824027025962)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'da'
,p_message_text=>'Denne instans tillader ikke, at uautentificerede brugere uploader filer.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398772389025986)
,p_name=>'FILTERS'
,p_message_language=>'da'
,p_message_text=>'Filtre'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376795180025979)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('1 fejl er opst\00E5et')
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375984631025979)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('%0 fejl er opst\00E5et')
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321372827025962)
,p_name=>'FORM_OF'
,p_message_language=>'da'
,p_message_text=>'%0 af %1'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360395536025974)
,p_name=>'GO'
,p_message_language=>'da'
,p_message_text=>unistr('G\00E5 til')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462568064026007)
,p_name=>'HELP'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp')
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303633061025957)
,p_name=>'HOME'
,p_message_language=>'da'
,p_message_text=>'Startside'
,p_is_js_message=>true
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341965456025969)
,p_name=>'HOUR'
,p_message_language=>'da'
,p_message_text=>'time'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342099762025969)
,p_name=>'HOURS'
,p_message_language=>'da'
,p_message_text=>'timer'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124323438456025963)
,p_name=>'ICON'
,p_message_language=>'da'
,p_message_text=>'Ikonet %0'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300718025025956)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'da'
,p_message_text=>unistr('Hj\00E6lp til besk\00E6ring af ikon')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301903966025957)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tr\00E6k dit ikon, og brug zoomskyderen til at flytte det i rammen.</p>'),
'',
unistr('<p>N\00E5r du uploader et nyt ikon, \00E6ndres st\00F8rrelsen, s\00E5 det passer til tre formater: foretrukket ikon, lille og stort ikon.</p>'),
'',
unistr('<p>N\00E5r der fokuseres p\00E5 ikonbesk\00E6ringsv\00E6rkt\00F8jet, bliver f\00F8lgende tastaturgenveje tilg\00E6ngelige:</p>'),
'<ul>',
'    <li>Venstre pil: Flyt billede til venstre*</li>',
'    <li>Pil op: Flyt billede op*</li>',
unistr('    <li>H\00F8jre pil: Flyt billede til h\00F8jre*</li>'),
'    <li>Pil ned: Flyt billede ned*</li>',
'    <li>I: Zoom ind</li>',
'    <li>O: Zoom ud</li>',
'    <li>L: Roter mod venstre</li>',
unistr('    <li>R: Roter mod h\00F8jre</li>'),
'</ul>',
'',
'<p class="margin-top-md"><em>*Hold Shift nede for at flytte hurtigere</em></p>'))
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307414886025958)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'da'
,p_message_text=>unistr('Tr\00E6k for at flytte ikon')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307544290025958)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'da'
,p_message_text=>unistr('Flyt skyder for at \00E6ndre zoomniveau')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300524723025956)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'da'
,p_message_text=>'Ikonet Rediger applikation'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300862321025956)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'da'
,p_message_text=>'Ikonet Fejl under lagring'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383295485025981)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'da'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> Denne applikation bruger for\00E6ldede ikoner. Hvis du uploader et nyt ikon, bliver alle de for\00E6ldede ikoner udskiftet.</p>')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124301406167025956)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'da'
,p_message_text=>'Upload et nyt ikon'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377692947025979)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'da'
,p_message_text=>'Ugyldige logon-legitimationsoplysninger'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478720827026012)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'da'
,p_message_text=>unistr('Ugyldig v\00E6rdi for parameter: %0')
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371980671025978)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'da'
,p_message_text=>'Som standardrapportindstillinger'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124372099848025978)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'da'
,p_message_text=>'Som navngivet rapport'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353922160025972)
,p_name=>'IR_ERROR'
,p_message_language=>'da'
,p_message_text=>'%0-fejl. %1'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124353631255025972)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'da'
,p_message_text=>'Kan ikke beregne formularnavigation. %0'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329200138025965)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Interaktiv rapport ikke fundet.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328603109025965)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>unistr('Interaktivt rapportomr\00E5de findes ikke i applikationen %0, side %1 og region %2.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124371842398025978)
,p_name=>'IR_STAR'
,p_message_language=>'da'
,p_message_text=>'Vises kun for udviklere'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360065966025974)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Rapportforesp\00F8rgslen skal have en entydig n\00F8gle for at identificere hver r\00E6kke. Den angivne n\00F8gle kan ikke bruges til denne foresp\00F8rgsel. Definer en entydig n\00F8glekolonne. %0')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360168152025974)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'da'
,p_message_text=>unistr('Rapportforesp\00F8rgslen skal have en entydig n\00F8gle for at identificere hver r\00E6kke. Den angivne n\00F8gle kan ikke bruges til denne foresp\00F8rgsel. Rediger rapportattributterne for at definere en entydig n\00F8glekolonne. %0')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401073868025987)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg fil')
,p_is_js_message=>true
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400937816025987)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'da'
,p_message_text=>unistr('Tr\00E6k og slip filen her, eller')
,p_is_js_message=>true
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321661133025963)
,p_name=>'ITEMS'
,p_message_language=>'da'
,p_message_text=>'Elementer'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355344126025973)
,p_name=>'ITEM_VALUE'
,p_message_language=>'da'
,p_message_text=>unistr('Elementv\00E6rdi')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369915902025977)
,p_name=>'LABEL'
,p_message_language=>'da'
,p_message_text=>'Etiket'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382582700025981)
,p_name=>'LANGUAGE'
,p_message_language=>'da'
,p_message_text=>'Sprog'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342647216025969)
,p_name=>'LAST'
,p_message_language=>'da'
,p_message_text=>'sidste'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318606357025962)
,p_name=>'LENGTH'
,p_message_language=>'da'
,p_message_text=>unistr('L\00E6ngde')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376977559025979)
,p_name=>'LOGIN'
,p_message_language=>'da'
,p_message_text=>'Logon'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418509767025992)
,p_name=>'MANAGE'
,p_message_language=>'da'
,p_message_text=>unistr('H\00E5ndter')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481614339026013)
,p_name=>'MAXIMIZE'
,p_message_language=>'da'
,p_message_text=>'Maksimer'
,p_is_js_message=>true
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341710984025969)
,p_name=>'MINUTE'
,p_message_language=>'da'
,p_message_text=>'minut'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341801942025969)
,p_name=>'MINUTES'
,p_message_language=>'da'
,p_message_text=>'minutter'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433825984025997)
,p_name=>'MISSING_AT'
,p_message_language=>'da'
,p_message_text=>'Manglende "@" i e-mailadresse.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124434023221025997)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'da'
,p_message_text=>'Advarsel: Ingen dialogbokssideskabelon er defineret for dialogbokssiden %0 i applikationen %1.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433710422025997)
,p_name=>'MISSING_DOT'
,p_message_language=>'da'
,p_message_text=>unistr('Manglende "." i e-mailadressedom\00E6ne.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380000116025980)
,p_name=>'MODULE'
,p_message_language=>'da'
,p_message_text=>'Modul'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334275367025966)
,p_name=>'MONTH'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5ned')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338112045025967)
,p_name=>'MONTHLY'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5nedligt')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334332390025966)
,p_name=>'MONTHS'
,p_message_language=>'da'
,p_message_text=>unistr('m\00E5neder')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369596336025977)
,p_name=>'MOVE'
,p_message_language=>'da'
,p_message_text=>'Flyt'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440346373026000)
,p_name=>'MOVE_FROM'
,p_message_language=>'da'
,p_message_text=>'Flyt fra'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440440909026000)
,p_name=>'MOVE_TO'
,p_message_language=>'da'
,p_message_text=>'Flyt til'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124356568259025973)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under sletteoperation p\00E5 flere r\00E6kker: r\00E6kke= %0, %1, %2')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355555846025973)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'da'
,p_message_text=>unistr('M\00E5 ikke v\00E6re en offentlig bruger')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124304105210025957)
,p_name=>'NAME'
,p_message_language=>'da'
,p_message_text=>'Navn'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369723897025977)
,p_name=>'NEW'
,p_message_language=>'da'
,p_message_text=>'Ny'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334075143025966)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'da'
,p_message_text=>unistr('Du kan logge p\00E5 %0 ved at g\00E5 til:')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334124074025966)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'da'
,p_message_text=>'Underretning om ny %0-konto'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462749465026007)
,p_name=>'NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379934228025980)
,p_name=>'NO'
,p_message_language=>'da'
,p_message_text=>'Nej'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124476893516026011)
,p_name=>'NOBODY'
,p_message_language=>'da'
,p_message_text=>'ingen'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343092905025969)
,p_name=>'NOT'
,p_message_language=>'da'
,p_message_text=>'Ikke'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385983170025982)
,p_name=>'NOT_NULL'
,p_message_language=>'da'
,p_message_text=>'Ikke NULL'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355664830025973)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'da'
,p_message_text=>'Ikke %0'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375416211025979)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'da'
,p_message_text=>'ingen data fundet'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385481673025982)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen rapport, der kan opdateres, blev fundet. Operationer til opdatering og sletning af flere r\00E6kker kan kun udf\00F8res p\00E5 tabelformater af typen ''Rapport, der kan opdateres''.')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386389624025982)
,p_name=>'OK'
,p_message_language=>'da'
,p_message_text=>'OK'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381620872025981)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'da'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124480521006026013)
,p_name=>'ORA_06550'
,p_message_language=>'da'
,p_message_text=>'ORA-06550: linje %0, kolonne %1'
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431493727025997)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'da'
,p_message_text=>unistr('Du bruger en for\00E6ldet webbrowser. Du kan se en liste over underst\00F8ttede browsere i installationsvejledningen til Oracle APEX.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326441824025964)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'da'
,p_message_text=>unistr('Der er anmodet om et ugyldigt s\00E6t af r\00E6kker. Kildedataene i rapporten er modificeret.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348484775025971)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'da'
,p_message_text=>'Et gyldigt sidetal skal angives, for eksempel p?n=1234.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352606679025972)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352715125025972)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'da'
,p_message_text=>unistr('N\00E6ste s\00E6t')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352877447025972)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'da'
,p_message_text=>'Forrige'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124352951803025972)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'da'
,p_message_text=>unistr('Forrige s\00E6t')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462622148026007)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg sideinddeling')
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392610503025984)
,p_name=>'PASSWORD'
,p_message_language=>'da'
,p_message_text=>'Adgangskode'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333384781025966)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'da'
,p_message_text=>unistr('Din adgangskode til %0 er \00E6ndret.')
,p_version_scn=>2692469
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321012965025962)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'da'
,p_message_text=>'Adgangskode overholder ikke sitens regler for adgangskodekompleksitet.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320117237025962)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'da'
,p_message_text=>'Ny adgangskode skal indeholde mindst %0 tegn, der ikke indgik i den gamle adgangskode.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320728178025962)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskode m\00E5 ikke indeholde brugernavnet.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320973382025962)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'da'
,p_message_text=>'Adgangskode indeholder et forbudt simpelt ord.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320835609025962)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskode m\00E5 ikke indeholde arbejdsomr\00E5denavnet.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320085986025962)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'da'
,p_message_text=>'Adgangskode skal indeholde mindst %0 tegn.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320225551025962)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskode skal indeholde mindst \00E9t alfabetisk tegn (%0).')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320625902025962)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskode skal indeholde mindst \00E9t lille bogstav.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320393775025962)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskode skal indeholde mindst \00E9t numerisk tegn (0123456789).')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320498585025962)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskode skal indeholde mindst \00E9t tegns\00E6tningstegn (%0).')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124320568016025962)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskode skal indeholde mindst \00E9t stort bogstav.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333899116025966)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'da'
,p_message_text=>'Underretning om nulstilling af adgangskode'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318969044025962)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Adgangskoden kan ikke anvendes, fordi den har v\00E6ret anvendt inden for de seneste %0 dage.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124315683127025961)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'da'
,p_message_text=>'Procentdiagram'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407260917025989)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'da'
,p_message_text=>'Elementer'
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124407383858025989)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'da'
,p_message_text=>'Element'
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381439132025981)
,p_name=>'PERCENT'
,p_message_language=>'da'
,p_message_text=>'Procent'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124350710850025971)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'da'
,p_message_text=>'Kontakt administratoren.'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124462869667026007)
,p_name=>'PREVIOUS'
,p_message_language=>'da'
,p_message_text=>'Forrige'
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399454988025986)
,p_name=>'PRINT'
,p_message_language=>'da'
,p_message_text=>'Udskriv'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380265490025980)
,p_name=>'PRIVILEGES'
,p_message_language=>'da'
,p_message_text=>'Privilegier'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348862532025971)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'da'
,p_message_text=>'Regionreferencer'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369814872025977)
,p_name=>'REPORT'
,p_message_language=>'da'
,p_message_text=>'Rapport'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380176533025980)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'da'
,p_message_text=>'Rapporteringsperiode'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463046700026007)
,p_name=>'REPORT_LABEL'
,p_message_language=>'da'
,p_message_text=>'Rapport: %0'
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380872666025980)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'da'
,p_message_text=>'Rapporttotal'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326526557025964)
,p_name=>'RESET'
,p_message_language=>'da'
,p_message_text=>'Nulstil sideinddeling'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355254228025973)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'da'
,p_message_text=>'Nulstil sideinddeling'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385314258025982)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'da'
,p_message_text=>'Nulstil adgangskode'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361129233025974)
,p_name=>'RESTORE'
,p_message_language=>'da'
,p_message_text=>'Gendan'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124394732777025985)
,p_name=>'RESULTS'
,p_message_language=>'da'
,p_message_text=>'Resultater'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386416143025982)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'da'
,p_message_text=>'Returner til applikation.'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124386882032025982)
,p_name=>'RIGHT'
,p_message_language=>'da'
,p_message_text=>unistr('H\00F8jre')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418801414025993)
,p_name=>'ROW'
,p_message_language=>'da'
,p_message_text=>unistr('R\00E6kke %0')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369449539025977)
,p_name=>'ROW_COUNT'
,p_message_language=>'da'
,p_message_text=>unistr('Antal r\00E6kker')
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259251299025944)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'da'
,p_message_text=>unistr('Sp\00F8rg Oracle')
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259575083025944)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'da'
,p_message_text=>unistr('Luk Sp\00F8rg Oracle')
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259878925025944)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'da'
,p_message_text=>'Underretningsliste'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259412767025944)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5bn Sp\00F8rg Oracle')
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259723873025944)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'da'
,p_message_text=>'Produktoversigt'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259680585025944)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'da'
,p_message_text=>'Forslagsliste'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260559736025944)
,p_name=>'RW_CLEAR'
,p_message_language=>'da'
,p_message_text=>'Ryd'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260449677025944)
,p_name=>'RW_CLOSE'
,p_message_language=>'da'
,p_message_text=>'Luk'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260295307025944)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'da'
,p_message_text=>'Vis mere'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260667273025944)
,p_name=>'RW_GO_TO'
,p_message_language=>'da'
,p_message_text=>unistr('G\00E5 til')
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260054245025944)
,p_name=>'RW_GP_STEP'
,p_message_language=>'da'
,p_message_text=>'Trin'
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260124302025944)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'da'
,p_message_text=>'af'
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259936684025944)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'da'
,p_message_text=>unistr('Sl\00E5 visning af trin til og fra')
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124259010627025944)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'da'
,p_message_text=>'Skjul adgangskode'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260355890025944)
,p_name=>'RW_OPEN'
,p_message_language=>'da'
,p_message_text=>unistr('\00C5bne')
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258838767025944)
,p_name=>'RW_ORACLE'
,p_message_language=>'da'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124258911833025944)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'da'
,p_message_text=>'Vis adgangskode'
,p_is_js_message=>true
,p_version_scn=>2692457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124260738909025944)
,p_name=>'RW_START'
,p_message_language=>'da'
,p_message_text=>'Start'
,p_is_js_message=>true
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124385880931025982)
,p_name=>'SAVE'
,p_message_language=>'da'
,p_message_text=>'Gem'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382073342025981)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'da'
,p_message_text=>'Alternativ standard'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382468262025981)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'da'
,p_message_text=>'Beskrivelse'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381955996025981)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'da'
,p_message_text=>unistr('Prim\00E6r standard')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382712941025981)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'da'
,p_message_text=>unistr('Mere end %0 r\00E6kker tilg\00E6ngelige. For\00F8g r\00E6kkev\00E6lger for at se flere r\00E6kker.')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124450100070026003)
,p_name=>'SEARCH'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8g')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341674772025969)
,p_name=>'SECONDS'
,p_message_language=>'da'
,p_message_text=>'sekunder'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381598312025981)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'da'
,p_message_text=>unistr('Se vedh\00E6ftet')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442175572026000)
,p_name=>'SELECT_ROW'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6lg r\00E6kke')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381269212025981)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'da'
,p_message_text=>unistr('Sl\00E5 sk\00E6rml\00E6sningstilstand fra')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381319290025981)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'da'
,p_message_text=>unistr('Sl\00E5 sk\00E6rml\00E6sningstilstand til')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377564405025979)
,p_name=>'SHOW'
,p_message_language=>'da'
,p_message_text=>'Vis'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443949465026001)
,p_name=>'SHOW_ALL'
,p_message_language=>'da'
,p_message_text=>'Vis alle'
,p_version_scn=>2692494
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124468768042026009)
,p_name=>'SIGN_IN'
,p_message_language=>'da'
,p_message_text=>unistr('Log p\00E5')
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124419679685025993)
,p_name=>'SIGN_OUT'
,p_message_language=>'da'
,p_message_text=>'Log af'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370459925025977)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'da'
,p_message_text=>'For %0 dage siden'
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378023457025980)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'%0 dage fra nu'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370310689025977)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'da'
,p_message_text=>'For %0 timer siden'
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377973456025979)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'%0 timer fra nu'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370244498025977)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'da'
,p_message_text=>'For %0 minutter siden'
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377820549025979)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'%0 minutter fra nu'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370669393025977)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'da'
,p_message_text=>unistr('For %0 m\00E5neder siden')
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378286573025980)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>unistr('%0 m\00E5neder fra nu')
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378444466025980)
,p_name=>'SINCE_NOW'
,p_message_language=>'da'
,p_message_text=>'Nu'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370190493025977)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'da'
,p_message_text=>'For %0 sekunder siden'
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124377792584025979)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'%0 sekunder fra nu'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370525631025977)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'da'
,p_message_text=>'For %0 uger siden'
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378191188025980)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>'%0 uger fra nu'
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124370737002025977)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'da'
,p_message_text=>unistr('For %0 \00E5r siden')
,p_is_js_message=>true
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378389383025980)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'da'
,p_message_text=>unistr('%0 \00E5r fra nu')
,p_is_js_message=>true
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364221686025975)
,p_name=>'STANDARD'
,p_message_language=>'da'
,p_message_text=>'Standard'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381160378025980)
,p_name=>'START_DATE'
,p_message_language=>'da'
,p_message_text=>'Startdato'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316333770025961)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'da'
,p_message_text=>'Du modtager denne e-mail fra et interaktivt rapportabonnement, der er oprettet af %0.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124477989853026012)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'da'
,p_message_text=>'Abonnementer'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427309353025995)
,p_name=>'TAB'
,p_message_language=>'da'
,p_message_text=>'Fane'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341543585025969)
,p_name=>'TITLE'
,p_message_language=>'da'
,p_message_text=>'Titel'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321241218025962)
,p_name=>'TODAY'
,p_message_language=>'da'
,p_message_text=>'I dag'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380738561025980)
,p_name=>'TOTAL'
,p_message_language=>'da'
,p_message_text=>'Total'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322523983025963)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'da'
,p_message_text=>unistr('Der kan maksimalt v\00E6lges %0 kolonner.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278367073025949)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'da'
,p_message_text=>'Skjul alle'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278985463025950)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'da'
,p_message_text=>'Skjul alle under'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124277905652025949)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'da'
,p_message_text=>'Udvid alle'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278606097025950)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'da'
,p_message_text=>'Udvid alle under'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124279162970025950)
,p_name=>'TREE.REPARENT'
,p_message_language=>'da'
,p_message_text=>'Giv ny overordnet'
,p_is_js_message=>true
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401265709025987)
,p_name=>'TREES'
,p_message_language=>'da'
,p_message_text=>unistr('Tr\00E6er')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124444039721026001)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('P\00E5kr\00E6vet')
,p_version_scn=>2692494
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124364976497025976)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'da'
,p_message_text=>'Uautoriseret'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124415168811025991)
,p_name=>'UNAVAILABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Ikke tilg\00E6ngelig')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378870690025980)
,p_name=>'UNKNOWN'
,p_message_language=>'da'
,p_message_text=>'Ukendt'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317214101025961)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('En ikke-genkendt autentificeringsfejl er opst\00E5et.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319466454025962)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'da'
,p_message_text=>unistr('Hvis du ikke l\00E6ngere \00F8nsker at modtage e-mails, skal du klikke p\00E5 <a href="%0">opsig abonnement</a> for at administrere dit abonnement.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124316272778025961)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'da'
,p_message_text=>unistr('Hvis du ikke l\00E6ngere \00F8nsker at modtage e-mails, skal du g\00E5 til f\00F8lgende URL for at administrere dit abonnement:')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124355772388025973)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('ikke-underst\00F8ttet datatype')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342867315025969)
,p_name=>'UPDATE'
,p_message_language=>'da'
,p_message_text=>'opdater'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341462980025968)
,p_name=>'UPDATED'
,p_message_language=>'da'
,p_message_text=>'Opdateret'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284667922025951)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'da'
,p_message_text=>'Opgradering i gang'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124284989762025951)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'da'
,p_message_text=>'Oracle APEX opgraderes til en nyere version. Denne proces tager som regel op til 3 minutter.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348276029025971)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'da'
,p_message_text=>'Den anmodede URL er forbudt. Kontakt din administrator.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124369393490025977)
,p_name=>'USER'
,p_message_language=>'da'
,p_message_text=>'Bruger'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124392575350025984)
,p_name=>'USERNAME'
,p_message_language=>'da'
,p_message_text=>'Brugernavn'
,p_version_scn=>2692482
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433970802025997)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'da'
,p_message_text=>unistr('Brugernavnet er for langt. Gr\00E6nsen er %0 tegn.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376412382025979)
,p_name=>'USERS'
,p_message_language=>'da'
,p_message_text=>'brugere'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124433500385025997)
,p_name=>'USER_EXISTS'
,p_message_language=>'da'
,p_message_text=>'Brugernavn findes allerede.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124447342873026002)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'da'
,p_message_text=>'Profilbillede for bruger %0'
,p_version_scn=>2692495
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309205483025959)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'da'
,p_message_text=>'Automatisering - %0'
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307717462025958)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'da'
,p_message_text=>'Side %0 - %1 '
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310651829025959)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'da'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124310740436025959)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'da'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309624973025959)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8gekonfiguration - %0')
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309503407025959)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'da'
,p_message_text=>'Delt dynamisk LOV - %0'
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124309344464025959)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'da'
,p_message_text=>'Opgavedefinition - %0'
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307840472025958)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'da'
,p_message_text=>'Workflow - %0 '
,p_version_scn=>2692466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329947312025965)
,p_name=>'VALID'
,p_message_language=>'da'
,p_message_text=>'Gyldig'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321570419025963)
,p_name=>'VALIDATIONS'
,p_message_language=>'da'
,p_message_text=>'Valideringer'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382263527025981)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi skal v\00E6re angivet')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428585266025996)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi skal v\00E6re angivet for %0')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351129384025971)
,p_name=>'VERTICAL'
,p_message_language=>'da'
,p_message_text=>'lodret'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342716307025969)
,p_name=>'VIEW'
,p_message_language=>'da'
,p_message_text=>'vis'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376519627025979)
,p_name=>'VIEWS'
,p_message_language=>'da'
,p_message_text=>'visninger'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383033472025981)
,p_name=>'VIEW_ALL'
,p_message_language=>'da'
,p_message_text=>'Vis alle'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322960264025963)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'da'
,p_message_text=>'Visuelt skjult link'
,p_is_js_message=>true
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124363798819025975)
,p_name=>'WARNING'
,p_message_language=>'da'
,p_message_text=>'Advarsel'
,p_is_js_message=>true
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342325225025969)
,p_name=>'WEEK'
,p_message_language=>'da'
,p_message_text=>'uge'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338269290025968)
,p_name=>'WEEKLY'
,p_message_language=>'da'
,p_message_text=>'Ugentligt'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342438532025969)
,p_name=>'WEEKS'
,p_message_language=>'da'
,p_message_text=>'uger'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124382391128025981)
,p_name=>'WELCOME_USER'
,p_message_language=>'da'
,p_message_text=>'Velkommen: %0'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380562130025980)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'da'
,p_message_text=>unistr('Fandt ugyldig v\00E6rdi, verificer de indtastede data.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380644845025980)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Fandt ugyldig v\00E6rdi, verificer de indtastede data.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318495942025962)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'da'
,p_message_text=>unistr('Fandt ugyldig datov\00E6rdi. Verificer datoformatet.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124380435333025980)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'da'
,p_message_text=>unistr('Fandt ugyldig talv\00E6rdi, verificer talformatet.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329515697025965)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'da'
,p_message_text=>unistr('Fandt ugyldig tidsstempelv\00E6rdi. Verificer tidsstempelformatet.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354009357025972)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke binde "%0". Brug dobbelte anf\00F8rselstegn til flerbyteelementer, eller verificer, at l\00E6ngden af elementet er 30 byte eller mindre. Brug v()-syntaks til at referere til elementer, som er l\00E6ngere end 30 byte.')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343857449025969)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'da'
,p_message_text=>unistr('Adgang n\00E6gtet af %0-sikkerhedskontrol')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346312318025970)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Applikation ikke tilg\00E6ngelig')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344715676025969)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'da'
,p_message_text=>'Applikation blev ikke fundet.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344816579025970)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('applikation=%0  arbejdsomr\00E5de=%1')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345293209025970)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'da'
,p_message_text=>unistr('Adgang til denne applikation er begr\00E6nset. Pr\00F8v igen senere.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345178440025970)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'da'
,p_message_text=>unistr('Adgang til denne applikation er begr\00E6nset til applikationsudviklere. Pr\00F8v igen senere.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344319722025969)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'da'
,p_message_text=>'ERR-7744 Kan ikke behandle forgrening til funktion, der returnerer URL.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344272395025969)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'da'
,p_message_text=>'ERR-7744 Kan ikke behandle forgrening til funktion, der returnerer side.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344599751025969)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('ERR-1430 Kald til visning fra sideproces underst\00F8ttes ikke: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345636078025970)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'da'
,p_message_text=>'ERR-1018 Fejl under rydning af trincache.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344014096025969)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'da'
,p_message_text=>'ERR-1005 Ukendt beregningstype.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344915812025970)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('ERR-1201 Sessions-ID ikke sat p\00E5 tilpasset autentificering.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345002225025970)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'da'
,p_message_text=>'side=%0'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344627113025969)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('ERR-7620 Kunne ikke bestemme arbejdsomr\00E5de for applikationen (%0).')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325103129025964)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'da'
,p_message_text=>'Rediger'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343799289025969)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'da'
,p_message_text=>'ERR-1802 Kan ikke finde element-ID''et "%0"'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343459785025969)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'da'
,p_message_text=>'ERR-1002 Kan ikke finde element-ID for elementet "%0" i applikationen "%1".'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343509319025969)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'da'
,p_message_text=>unistr('Uventet fejl, kan ikke finde elementnavn p\00E5 applikations- eller sideniveau.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343927851025969)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Du er allerede p\00E5 den f\00F8rste side med data.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360491889025974)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'da'
,p_message_text=>unistr('Element-ID''et (%0) er ikke et element, der er defineret p\00E5 den aktuelle side.')
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318033837025961)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'da'
,p_message_text=>unistr('Element kan ikke s\00E6ttes ved at videregive argumenter til applikationen.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318338642025962)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'da'
,p_message_text=>'(Ingen kontrolsum blev angivet)'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317851818025961)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'da'
,p_message_text=>unistr('Element kan s\00E6ttes, n\00E5r det f\00F8lges af en kontrolsum af typen "bogm\00E6rke p\00E5 brugerniveau".')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317711819025961)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'da'
,p_message_text=>unistr('Element kan s\00E6ttes, n\00E5r det f\00F8lges af en kontrolsum af typen "bogm\00E6rke p\00E5 applikationsniveau".')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317967062025961)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'da'
,p_message_text=>unistr('Element kan s\00E6ttes, n\00E5r det f\00F8lges af en kontrolsum af typen "session".')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317647329025961)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'da'
,p_message_text=>'Element har ingen beskyttelse.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345785809025970)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen sidehj\00E6lp tilg\00E6ngelig.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124333607892025966)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'da'
,p_message_text=>unistr('Arbejdsomr\00E5det %0 har ikke privilegier til at analysere som skemaet %1.')
,p_version_scn=>2692469
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124344192096025969)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('ERR-1010 Rekursionsgr\00E6nse for forgrening til sideacceptbehandling overskredet. %0')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124300656546025956)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Side utilg\00E6ngelig, du kan ikke k\00F8re et sidem\00F8nster.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124318200952025962)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'da'
,p_message_text=>unistr('Denne side kan ikke kaldes ved hj\00E6lp af en URL eller ved at bruge en GET eller POST til visningsproceduren. Den skal kaldes ved hj\00E6lp af en forgrening af typen "Forgrening til side".')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403019911025988)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under fors\00F8g p\00E5 at gemme ikke-numerisk v\00E6rdi i elementet %0. ')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335327057025967)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'da'
,p_message_text=>'Applikationens analyseskema "%0" findes ikke i databasen.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335488469025967)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'da'
,p_message_text=>unistr('Konti i INTERNAL-arbejdsomr\00E5det kan kun bruges til at f\00E5 adgang til &PRODUCT_NAME. <a href="%0">Administrationsservices</a>.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343347255025969)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'da'
,p_message_text=>'ERR-1029 Kan ikke lagre sessionsoplysninger.  session=%0 element=%1'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346440605025970)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'da'
,p_message_text=>'Kan ikke stoppe sporing: %0'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124343684095025969)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'da'
,p_message_text=>'Uventet fejl'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354444009025972)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'da'
,p_message_text=>'Fejl i update_substitution_cache: %0'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346562194025970)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Applikation og side skal angives for at vise hj\00E6lp.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124368207794025977)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Automatisering ikke fundet.'
,p_version_scn=>2692476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303734858025957)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl i automatiseringsforesp\00F8rgsel: %0')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347635860025970)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'da'
,p_message_text=>'Ryddede %0 sessioner.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288961980025953)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke udf\00F8re %0-kode! Den underst\00F8ttes ikke af databasen eller er ikke aktiveret af instansparameteren MLE_LANGUAGES.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124286554927025952)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('Multilingual Engine er ikke tilg\00E6ngeligt i denne databaseversion!')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325710144025964)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Applikationssamlings-array kan ikke v\00E6re NULL')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325564610025964)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'da'
,p_message_text=>unistr('Det angivne medlemsattributnr. %0 er ugyldigt. Attributnr. skal v\00E6re mellem 1 og %1')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326092421025964)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'da'
,p_message_text=>'Applikationssamling findes'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325819242025964)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('Samlingsnavn kan ikke v\00E6re NULL')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325964884025964)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'da'
,p_message_text=>unistr('Samlingsnavn kan ikke v\00E6re l\00E6ngere end 255 tegn')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325338340025964)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Applikationssamlingen %0 findes ikke'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326143872025964)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'da'
,p_message_text=>unistr('Mark\00F8r er endnu ikke \00E5ben')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325414582025964)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Medlemssekvensen %0 findes ikke i applikationssamlingen %1',
''))
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124325641437025964)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'da'
,p_message_text=>'Medlemssekvensen %0 findes ikke i applikationssamlingen "%1"'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278430193025950)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'da'
,p_message_text=>unistr('Algoritmen %0 underst\00F8ttes ikke for ECDSA.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124278148187025949)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'da'
,p_message_text=>unistr('Den elliptiske kurve %0 underst\00F8ttes ikke.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403853221025988)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'da'
,p_message_text=>unistr('Den kryptografiske funktion "%0" underst\00F8ttes ikke i dette system.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456170567026005)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'da'
,p_message_text=>unistr('Tilg\00E6ngelighedstestet')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347127849025970)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'da'
,p_message_text=>'Luk'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347268095025970)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'da'
,p_message_text=>'Valgmuligheder for sidetilpasning'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347385101025970)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'da'
,p_message_text=>'Standard'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347482529025970)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'da'
,p_message_text=>'Vist'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347571080025970)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'da'
,p_message_text=>'Skjult'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346929189025970)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'da'
,p_message_text=>unistr('Marker de regioner, som du vil inkludere p\00E5 denne side. Markerede regioner vises muligvis ikke, hvis du ikke er i den rigtige applikationskontekst eller ikke har de rette privilegier.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347090360025970)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'da'
,p_message_text=>'Denne side kan ikke tilpasses.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456474233026005)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'da'
,p_message_text=>unistr('Du kan tilpasse udseendet af denne applikation ved at \00E6ndre tematypografien, V\00E6lg en tematypografi p\00E5 listen nedenfor, og klik p\00E5 Anvend \00E6ndringer.')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124457273751026005)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'da'
,p_message_text=>unistr('Omr\00E5devisning')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456342532026005)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'da'
,p_message_text=>'Brug applikationsstandardtypografi'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124456277186026005)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'da'
,p_message_text=>'Udseende '
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400450008025987)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Det kolonneindeks, der refereres til i aggregatfunktionen %0, findes ikke.'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293165244025954)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('Vedh\00E6ftning af dataeksporten underst\00F8ttes ikke for %0-format.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256150626025943)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('CLOB-output underst\00F8ttes ikke for %0-format.')
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400129480025987)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'da'
,p_message_text=>unistr('Kolonneskiftet skal v\00E6re i begyndelsen af kolonne-arrayet.')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400216596025987)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Kolonnegruppeindekset, der refereres til i %0, findes ikke.'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124307320118025958)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'da'
,p_message_text=>'eksport'
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124314553594025960)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'da'
,p_message_text=>unistr('Eksportformatet skal v\00E6re XML med ORDS som printserver.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400565622025987)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>unistr('Det kolonneindeks, der refereres til i fremh\00E6vningen %0, findes ikke.')
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124303903837025957)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'da'
,p_message_text=>'Ugyldigt eksportformat: %0'
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124400375717025987)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Det overordnede gruppeindeks, der refereres til i %0, findes ikke.'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124425526947025995)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Kolonnen %1 i tabellen %0 er en "GENERATED ALWAYS"-identitetskolonne. S\00F8rg for, at ingen kildekolonne er mappet til kolonnen %1 i dialogboksen Konfigurer.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337124350025967)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'da'
,p_message_text=>unistr('Angivet bekr\00E6ftelsesinterval er for lille.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337208095025967)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen kolonner er angivet til dataindl\00E6sning.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338508705025968)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen kolonner fundet for r\00E6kkev\00E6lger "%0". Pr\00F8v at registrere automatisk, eller gennemse JSON-strukturen.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347952960025970)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'da'
,p_message_text=>'Ingen regneark fundet i XLSX-fil.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124293008846025954)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'da'
,p_message_text=>unistr('Anmodede hierarkiniveauer, der skal registreres (%0), overskrider maksimum p\00E5 %1.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124347805271025970)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'da'
,p_message_text=>'Angivet regneark findes ikke i XLSX-fil.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124326273289025964)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'da'
,p_message_text=>unistr('Aktuel version af data i database er \00E6ndret, siden brugeren initierede opdateringsprocessen.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329158584025965)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'da'
,p_message_text=>'Fejl under opdatering af rapportkolonner: %0'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439689440025999)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'da'
,p_message_text=>'Kan ikke konvertere %0 til SDO_GEOMETRY.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376106314025979)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'da'
,p_message_text=>'Kolonnen %0, som er af datatypen %1, kan ikke konverteres til VARCHAR2!'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383581261025981)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Kolonnen "%0", der er angivet for attributten "%1", blev ikke fundet i datakilden!'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319618781025962)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'da'
,p_message_text=>unistr('Filtertypen %0 underst\00F8ttes ikke for kolonner med flere v\00E6rdier.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124443187083026000)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'da'
,p_message_text=>'Ugyldigt "mellem"-filter.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124298780027025956)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen %2-v\00E6rdi fundet i kolonnen %0, r\00E6kke nr. %1.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124295465773025955)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'da'
,p_message_text=>unistr('Kolonnen %0 eller r\00E6kke nr. %1 findes ikke.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124282006355025951)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'da'
,p_message_text=>'Ugyldig LOV-type angivet.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281926062025951)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Ugyldig foresp\00F8rgselstype. Foresp\00F8rgselstype skal v\00E6re Tabel, SQL-foresp\00F8rgsel eller PL/SQL-funktion, der returnerer SQL-foresp\00F8rgsel.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376235068025979)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kunne ikke analysere SQL-foresp\00F8rgsel!'),
'%0'))
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383676644025981)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Den angivne kolonneposition %0 for attributten "%1" blev ikke fundet i SQL-s\00E6tningen!')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124273691381025948)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'da'
,p_message_text=>unistr('For mange elementer brugt i filter med flere v\00E6rdier.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124383443797025981)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'da'
,p_message_text=>'Ingen kolonne angivet for attributten "%0".'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281860576025951)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'da'
,p_message_text=>unistr('PL/SQL-funktionsbr\00F8dtekst returnerede ikke en v\00E6rdi.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124399253228025986)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'da'
,p_message_text=>unistr('REST-datakilden indeholder ikke en operation til h\00E5ndtering af den anmodede DML-handling.')
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124440987945026000)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('Intervalfiltre underst\00F8ttes kun for datatyperne NUMBER, DATE eller TIMESTAMP.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124261816148025944)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'da'
,p_message_text=>'Anmodning fejlede med %0'
,p_version_scn=>2692458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124265302930025946)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'da'
,p_message_text=>unistr('Konvertering fra GeoJSON til SDO_GEOMETRY (kolonne %0) er ikke tilg\00E6ngelig i denne database.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268764967025947)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'da'
,p_message_text=>unistr('SDO_GEOMETRY-konvertering (kolonne %0) underst\00F8ttes ikke for XML-datakilder.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124292884044025954)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'da'
,p_message_text=>unistr('Tegnet %0 underst\00F8ttes ikke som separator for flere v\00E6rdier.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124441091598026000)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Denne funktion kan ikke bruges p\00E5 en foresp\00F8rgselskontekst.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124268865234025947)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>'Uoverensstemmende kolonnedatatype.'
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124302331058025957)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'da'
,p_message_text=>unistr('Denne datakilde underst\00F8tter ikke \00E6ndring af flere r\00E6kker.')
,p_version_scn=>2692463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281741346025951)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'da'
,p_message_text=>unistr('Interne ORDS OUT-bindingsgr\00E6nser er overskredet. Reducer antallet af DML-r\00E6kker.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384462718025981)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'JSON-svaret fra fjernserveren kunne ikke analyseres: ',
'%0'))
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124281685440025950)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'da'
,p_message_text=>'Ukendt eller forkert konteksttype.'
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305795635025958)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'da'
,p_message_text=>unistr('Ikke-underst\00F8ttede komponenter til l\00E6sbar eksport: %0')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124403707812025988)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('Denne filtype underst\00F8ttes ikke af parseren.')
,p_version_scn=>2692487
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354550870025972)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'da'
,p_message_text=>'Uautoriseret adgang (wwv_flow_api.set_credentials ikke sat).'
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329437449025965)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'da'
,p_message_text=>unistr('Arbejdsomr\00E5de blev ikke oprettet, fordi det allerede findes.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124329344054025965)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'da'
,p_message_text=>'Brugergruppe ikke oprettet, fordi den allerede findes.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340796958025968)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'da'
,p_message_text=>'Dubleret brugernavn fundet for %0.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340808286025968)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under indl\00E6sning af brugere. Fejlede p\00E5 brugeren %0.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351651261025972)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'da'
,p_message_text=>unistr('Ville have indl\00E6st %0 brugere.')
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351480076025972)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'da'
,p_message_text=>'Adgangskode'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351500327025972)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'da'
,p_message_text=>'Privilegier'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351236222025971)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'da'
,p_message_text=>'Brugernavn'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431637364025997)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'da'
,p_message_text=>'Fejl under gengivelse af sideelementet #COMPONENT_NAME#.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346680816025970)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke vise sideelement, fordi HTML-formularen endnu ikke var \00E5bnet.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124305091486025957)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under beregning af elementstandardv\00E6rdi for sideelementet #COMPONENT_NAME#.')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345977541025970)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'da'
,p_message_text=>'Fejl under efterberegning af element for sideelementet #COMPONENT_NAME#.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124345855903025970)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under beregning af elementkildev\00E6rdi for sideelementet #COMPONENT_NAME#.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322667992025963)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'da'
,p_message_text=>'Uautoriseret adgang.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124272104486025948)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdien %0 af %1 er ikke en gyldig JSON-array.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346193508025970)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'da'
,p_message_text=>unistr('JavaScript underst\00F8ttes ikke.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346242155025970)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'da'
,p_message_text=>'Liste'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346826447025970)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'da'
,p_message_text=>unistr('Kan ikke initialisere foresp\00F8rgsel.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354882844025973)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Opdatering af %0 underst\00F8ttes ikke.')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348352386025971)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'da'
,p_message_text=>'Ugyldigt element-ID: %0 '
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124376005030025979)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'da'
,p_message_text=>unistr('Der er ingen hj\00E6lp til dette element.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337842037025967)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'da'
,p_message_text=>unistr('Generering af diagramforesp\00F8rgsel fejlede. Kontroller indstillinger for kilde- og kolonne-mapping.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339107143025968)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'da'
,p_message_text=>unistr('Ugyldig v\00E6rdi for parameteren p_mail_id: %0')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375849916025979)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'da'
,p_message_text=>'Kan ikke bruge "Til" eller "Svar til" som "Fra"-adresse, fordi disse indeholder flere e-mailadresser.'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124460791879026006)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'da'
,p_message_text=>unistr('Du har overskredet det maksimale antal e-mailmeddelelser pr. arbejdsomr\00E5de. Kontakt din administrator.')
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317317741025961)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'da'
,p_message_text=>'Denne procedure skal startes fra en applikationssession.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124339006119025968)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'da'
,p_message_text=>unistr('NULL-v\00E6rdi angivet for parameteren %0.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124397112384025986)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'da'
,p_message_text=>'Mailskabelonen "%0" blev ikke fundet i applikationen %1.'
,p_version_scn=>2692483
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124473690920026010)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('Instansparameteren SMTP_HOST_ADDRESS skal v\00E6re sat til at sende mails.')
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124338416147025968)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'da'
,p_message_text=>'Du skal angive en meddelelsesmodtager for at sende e-mail.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124463197144026007)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'da'
,p_message_text=>'Kan ikke oprette SMTP-forbindelse til den konfigurerede e-mailserver.'
,p_version_scn=>2692498
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124438480087025999)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'da'
,p_message_text=>'Ugyldigt Ajax-kald!'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322361828025963)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'da'
,p_message_text=>'Ingen Ajax-funktion er defineret for plug-in''en %0'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428934598025996)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'da'
,p_message_text=>unistr('Ingen udf\00F8relsesfunktion er defineret for plug-in''en %0')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322453024025963)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'da'
,p_message_text=>'Ingen gengivelsesfunktion er defineret for plug-in''en %0'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439367055025999)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'da'
,p_message_text=>'REST-datakildens plug-in "%0" indeholder ikke en "Funktioner"-funktion.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439247924025999)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'da'
,p_message_text=>'REST-datakildens plug-in "%0" indeholder ikke en DML-funktion.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439454530025999)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'da'
,p_message_text=>unistr('REST-datakildens plug-in "%0" indeholder ikke en udf\00F8relsesfunktion.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124439517392025999)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'da'
,p_message_text=>'REST-datakildens plug-in "%0" indeholder ikke en hentefunktion.'
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319897974025962)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl i PLSQL-kode opst\00E5et under plug-in-behandling.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328428800025965)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdi skal v\00E6re angivet.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124361454578025975)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'da'
,p_message_text=>'Datatypen %0 kan ikke konverteres til VARCHAR2!'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449676174026003)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>unistr('Kolonnen "%0", der er angivet for attributten "%1", blev ikke fundet i SQL-s\00E6tning!')
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124276979438025949)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'da'
,p_message_text=>unistr('V\00E6rdien %0 af %1 er ikke en gyldig JSON-array.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124426894244025995)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'da'
,p_message_text=>unistr('En foresp\00F8rgsel p\00E5 en liste over v\00E6rdier (LOV) eller en navngivet liste over v\00E6rdier skal angives for %0.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124428441622025996)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'da'
,p_message_text=>unistr('Forkert antal kolonner er valgt i SQL-foresp\00F8rgslen V\00E6rdiliste for %0. Se eksempel p\00E5 gyldige s\00E6tninger.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449417617026003)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'da'
,p_message_text=>'Ingen kolonne angivet for attributten "%0".'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478687171026012)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'da'
,p_message_text=>unistr('Den indtaste v\00E6rdi %0 for attributten "%1" er ikke numerisk.')
,p_version_scn=>2692500
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124431962368025997)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>unistr('%0 har en forkert datatype i SQL-s\00E6tning. Kolonnenr. %1 er %2, men %3 var forventet.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124449552897026003)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'da'
,p_message_text=>'Kolonnen "%0", der er angivet for attributten "%1", har datatypen %2, men skulle have %3.'
,p_version_scn=>2692496
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319064766025962)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'da'
,p_message_text=>'Kan ikke finde rapportlayoutet.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124306680530025958)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'da'
,p_message_text=>unistr('Gr\00E6nse for baggrundsudf\00F8relser overskredet for %0.')
,p_version_scn=>2692464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256996287025943)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'da'
,p_message_text=>unistr('En anden udf\00F8relse af %0 k\00F8rer allerede.')
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124256846536025943)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'da'
,p_message_text=>unistr('En anden udf\00F8relse af %0 k\00F8rer allerede for konteksten %1.')
,p_version_scn=>2692456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124271840415025947)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'da'
,p_message_text=>unistr('Uploadede filer er ikke synlige i arbejdssessionen for udf\00F8relsen af %0.')
,p_version_scn=>2692459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384384816025981)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'da'
,p_message_text=>unistr('Funktionen Beregn sum kan ikke bruges til rapporter baseret p\00E5 en REST-datakilde.')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124346085207025970)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('ERR-2904 Kan ikke s\00E6tte genvejsv\00E6rdi.')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351067411025971)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'da'
,p_message_text=>'Fejl: Ukendt genvejstype.'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124288783743025953)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'da'
,p_message_text=>unistr('S\00F8geforesp\00F8rgsel er for lang.')
,p_version_scn=>2692462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124340169064025968)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'da'
,p_message_text=>'Kan ikke hente authentication_scheme i applikationen %0.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124348176886025971)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'da'
,p_message_text=>'Kan ikke hente komponenten %0.'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124418468887025992)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'da'
,p_message_text=>'Lejer-ID''et findes allerede for den aktuelle session.'
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124351344705025971)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'da'
,p_message_text=>'E-mail'
,p_version_scn=>2692472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478135948026012)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'da'
,p_message_text=>'Autentificering fejlede.'
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124378771647025980)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'da'
,p_message_text=>unistr('En eller flere cookies, der er sat i apex_util.g_request_cookies, indeholder en ugyldig v\00E6rdi.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124360669112025974)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'da'
,p_message_text=>'Svaret fra UDDI-registreringsdatabasen var ugyldigt.'
,p_version_scn=>2692475
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124319911691025962)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'da'
,p_message_text=>'Den angivne URL returnerede ikke et gyldigt WSDL-dokument.'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322774312025963)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'da'
,p_message_text=>unistr('WSDL-dokumentet indeholder flere SOAP-bindinger. &PRODUCT_NAME. underst\00F8tter kun WSDL''er med \00E9n SOAP-binding. Klik p\00E5 Opret webservicereference manuelt for at forts\00E6tte med at oprette en reference til denne service.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124398310631025986)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'da'
,p_message_text=>'Svaret fra servicen var ikke XML.'
,p_version_scn=>2692484
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478095763026012)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'da'
,p_message_text=>unistr('OAuth-adgangstoken er ikke tilg\00E6ngeligt eller er udl\00F8bet.')
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124442597577026000)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'da'
,p_message_text=>unistr('Du har overskredet det maksimale antal webserviceanmodninger pr. arbejdsomr\00E5de. Kontakt din administrator.')
,p_version_scn=>2692489
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124478291044026012)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'da'
,p_message_text=>unistr('Server svarede med ikke-underst\00F8ttet OAuth-tokentype.')
,p_version_scn=>2692499
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124322131990025963)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'da'
,p_message_text=>unistr('WSDL-dokumentet indeholdt ikke en binding til SOAP, hvilket er p\00E5kr\00E6vet for at tilf\00F8je referencen.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124317582212025961)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'da'
,p_message_text=>unistr('Dette WSDL kr\00E6ver autentificeringslegitimation. Angiv brugernavn og adgangskode nedenfor.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124328523245025965)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'da'
,p_message_text=>unistr('Gengivelsesprogrammet kunne ikke forst\00E5 WSDL-dokumentet. Klik p\00E5 Opret webservicereference manuelt for at forts\00E6tte med at oprette en reference til denne service.')
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124401340674025987)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'da'
,p_message_text=>'Kan ikke behandle opdatering.'
,p_version_scn=>2692485
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427122023025995)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'da'
,p_message_text=>unistr('Retur- og visningskolonne for liste over v\00E6rdier er ens!')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124427036682025995)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'da'
,p_message_text=>unistr('Liste over v\00E6rdier har ingen returkolonne.')
,p_version_scn=>2692488
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354767642025973)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under hentning af kolonnev\00E6rdi: %0')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379664840025980)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'da'
,p_message_text=>unistr('Aktuelle data i tabelformat er for gamle. Kildedataene er modificeret.<br/> Klik <strong><a href="%0">her</a></strong> for at kassere dine \00E6ndringer og genindl\00E6se dataene fra databasen.')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334836390025967)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'da'
,p_message_text=>'Fejl under bestemmelse af sideinddelingsstreng'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334772528025966)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('kan ikke bestemme foresp\00F8rgselsoverskrifter:'),
'%0'))
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334911356025967)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'da'
,p_message_text=>unistr('fejl under erstatning af rapportsidef\00F8dder')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335029756025967)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('kunne ikke analysere SQL-foresp\00F8rgsel:'),
'%0',
'%1'))
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341131869025968)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'da'
,p_message_text=>unistr('Mindste antal anmodede r\00E6kker: %0, r\00E6kker fundet, men ikke vist: %1')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337577518025967)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'da'
,p_message_text=>unistr('foresp\00F8rgselskolonne nr. %0 (%1) er ugyldig, kolonner, der bruger HTML, skal have aliasnavne')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124354681812025972)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'da'
,p_message_text=>unistr('Fejl under hentning af foresp\00F8rgselsoverskrifter: %0')
,p_version_scn=>2692473
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335102366025967)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'rapportfejl:',
'%0'))
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124375228370025979)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'da'
,p_message_text=>'Sorter efter denne kolonne'
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337628650025967)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'da'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Foresp\00F8rgsel kan ikke analyseres. Kontroller syntaksen for din foresp\00F8rgsel.'),
'(%0)',
'</p>'))
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379720992025980)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'da'
,p_message_text=>unistr('Denne formular indeholder \00E6ndringer, der ikke er gemt. Tryk p\00E5 "OK" for at forts\00E6tte uden at gemme dine \00E6ndringer. ')
,p_version_scn=>2692477
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124384257349025981)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'da'
,p_message_text=>unistr('Rapportsideinddelingsskemaet (%0) underst\00F8ttes ikke med den valgte datakilde.')
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124337416744025967)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'da'
,p_message_text=>unistr('foresp\00F8rgselskolonne nr. %0 (%1) er ugyldig, brug kolonnealias')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341281089025968)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'da'
,p_message_text=>unistr('r\00E6kke(r) %0 - %1 af mere end %2')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124381714619025981)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'da'
,p_message_text=>'%0 - %1 af mere end %2'
,p_version_scn=>2692479
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124341011174025968)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'da'
,p_message_text=>unistr('r\00E6kke(r) %0 - %1 af %2')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124321890829025963)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'da'
,p_message_text=>'%0 - %1 af %2'
,p_version_scn=>2692468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124335247692025967)
,p_name=>'Y'
,p_message_language=>'da'
,p_message_text=>'Y'
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124342572459025969)
,p_name=>'YEAR'
,p_message_language=>'da'
,p_message_text=>unistr('\00E5r')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124334484431025966)
,p_name=>'YEARS'
,p_message_language=>'da'
,p_message_text=>unistr('\00E5r')
,p_version_scn=>2692471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124379828575025980)
,p_name=>'YES'
,p_message_language=>'da'
,p_message_text=>'Ja'
,p_version_scn=>2692477
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
 p_id=>wwv_flow_imp.id(109678305570583962.4499)
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
 p_id=>1.4499
,p_name=>'Meddelelser'
,p_alias=>'MESSAGES'
,p_step_title=>'Meddelelser'
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
