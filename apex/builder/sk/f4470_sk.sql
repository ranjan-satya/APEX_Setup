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
,p_default_application_id=>4485
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4485 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4485
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131493225481036050')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'sk'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4485)
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
 p_id=>wwv_flow_imp.id(4485)
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
 p_id=>wwv_flow_imp.id(728504220438374.4485)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4485)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4485)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4485)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4485)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4485)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4485)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4485)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4485)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4485)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4485)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4485)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4485)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4485)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4485)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4485)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4485)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.sk'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4485)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4485)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4485)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4485)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4485)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4485)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4485)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.sk'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4485)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4485)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4485)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4485)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4485)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4485)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.sk'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4485)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4485)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4485)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.sk'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4485)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4485)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4485)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4485)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4485)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4485)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4485)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4485)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4485)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4485)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4485)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4485)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4485)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4485)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4485)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4485)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4485)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.sk'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4485)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4485)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4485)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4485)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4485)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4485)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4485)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4485)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4485)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4485)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4485)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4485)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4485)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4485)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4485)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4485)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4485)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.sk'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4485)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4485)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4485)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4485)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4485)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4485)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4485)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4485)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4485)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4485)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4485)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4485)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4485)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4485)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4485)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.sk'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4485)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4485)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4485)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4485)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4485)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4485)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4485)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4485)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4485)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4485)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4485)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4485)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4485)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4485)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4485)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4485)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4485)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4485)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4485)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4485)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4485)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4485)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4485)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4485)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4485)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4485)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4485)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4485)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4485)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4485)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4485)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4485)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4485)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4485)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4485)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4485)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4485)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4485)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4485)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4485)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4485)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4485)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4485)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4485)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4485)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4485)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4485)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4485)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4485)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4485)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4485)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4485)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4485)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4485)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4485)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4485)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4485)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4485)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4485)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4485)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4485)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4485)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4485)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4485)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4485)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4485)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4485)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4485)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4485)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4485)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4485)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4485)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4485)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4485)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4485)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4485)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4485)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4485)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4485)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4485)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4485)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4485)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4485)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4485)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4485)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4485)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4485)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4485)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4485)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4485)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4485)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4485)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4485)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4485)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4485)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4485)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4485)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4485)
,p_page_name=>'winlov'
,p_page_title=>unistr('Dial\00F3gov\00E9 okno vyh\013Ead\00E1vania')
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
,p_find_button_text=>unistr('Vyh\013Eada\0165')
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>unistr('Zavrie\0165')
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('\010Ealej &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; Sp\00E4\0165')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Riadky #FIRST_ROW# - #LAST_ROW#</div>'
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
 p_id=>wwv_flow_imp.id(649611609668764506.4485)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4485)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4485)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4485)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4485)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4485)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4485)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4485)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4485)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4485)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4485)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4485)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4485)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4485)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4485)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4485)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4485)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4485)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4485)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4485)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4485)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4485)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4485)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4485)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4485)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4485)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4485)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4485)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4485)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4485)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4485)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4485)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4485)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4485)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4485)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4485)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4485)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4485)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4485)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4485)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4485)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4485)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4485)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4485)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4485)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4485)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4485)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4485)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4485)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4485)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4485)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4485)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4485)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4485)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4485)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4485)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4485)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4485)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4485)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4485)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4485)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4485)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4485)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4485)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4485)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4485)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4485)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4485)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4485)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4485)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4485)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4485)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4485)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4485)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4485)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4485)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4485)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4485)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4485)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4485)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4485)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4485)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4485)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4485)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4485)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4485)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4485)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4485)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4485)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4485)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4485)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4485)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4485)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4485)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4485)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4485)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4485)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4485)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4485)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4485)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4485)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4485)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4485)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4485)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4485)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4485)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4485)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4485)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4485)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4485)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4485)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4485)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4485)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4485)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4485)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4485)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4485)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4485)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4485)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4485)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4485)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4485)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4485)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4485)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4485)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4485)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4485)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4485)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4485)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4485)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4485)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4485)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4485)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4485)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4485)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4485)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4485)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4485)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4485)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4485)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4485)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4485)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4485)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4485)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4485)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4485)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4485)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4485)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4485)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4485)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4485)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4485)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4485)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4485)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4485)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4485)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4485)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4485)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4485)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4485)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4485)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4485)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4485)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4485)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4485)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4485)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4485)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4485)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4485)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4485)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4485)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4485)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4485)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4485)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4485)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4485)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4485)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4485)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4485)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4485)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4485)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4485)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4485)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4485)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4485)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4485)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4485)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4485)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4485)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4485)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4485)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4485)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4485)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4485)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4485)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4485)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4485)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4485)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4485)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4485)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4485)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4485)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4485)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4485)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4485)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4485)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4485)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4485)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4485)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4485)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4485)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4485)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4485)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4485)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4485)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4485)
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
 p_id=>wwv_flow_imp.id(129077966851027495)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec %0')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062580173027491)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'sk'
,p_message_text=>unistr('Administr\00E1tor')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062461405027491)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'sk'
,p_message_text=>unistr('Meno pou\017E\00EDvate\013Ea')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125103621027510)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDstup odmietnut\00FD')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082016502027497)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'sk'
,p_message_text=>unistr('Va\0161e konto %0 bolo vytvoren\00E9.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065287295027492)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'sk'
,p_message_text=>unistr('Konto je zamknut\00E9.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049725256027487)
,p_name=>'AM_PM'
,p_message_language=>'sk'
,p_message_text=>'AM / PM'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032547133027482)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'sk'
,p_message_text=>'prepojenie akcie'
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032459917027482)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'sk'
,p_message_text=>unistr('prepojenie dial\00F3gov\00E9ho okna')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196872050027531)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepn\00FA\0165 %0')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204658164027534)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'sk'
,p_message_text=>unistr('(Akt\00EDvne)')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009475677027475)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Cet vymazan\00FD')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009356709027475)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165 \010Det')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005936589027474)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'sk'
,p_message_text=>unistr('Prija\0165')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006082844027474)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'sk'
,p_message_text=>unistr('Odmietnu\0165')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005767204027474)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'sk'
,p_message_text=>unistr('Hist\00F3ria konverz\00E1cie')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009116603027475)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'sk'
,p_message_text=>unistr('Skop\00EDrovan\00E9')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009283487027475)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'sk'
,p_message_text=>unistr('Skop\00EDrovan\00E9 do schr\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008970290027475)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'sk'
,p_message_text=>unistr('Kop\00EDrova\0165')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009030369027475)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'sk'
,p_message_text=>unistr('Skop\00EDrova\0165 do schr\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006445185027474)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Asistent'
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006815142027474)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Umel\00E1 inteligencia je deaktivovan\00E1 na \00FArovni pracovn\00E9ho priestoru alebo in\0161tancie.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046196683027486)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'sk'
,p_message_text=>unistr('Slu\017Eba generat\00EDvnej umelej inteligencie s dan\00FDm ID alebo statick\00FDm ID sa nena\0161la.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044803478027485)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba autentifik\00E1cie alebo zak\00E1zan\00FD pr\00EDstup (HTTP-%1) pre adresu URL %0. Skontrolujte konfigur\00E1ciu slu\017Eby generat\00EDvnej umelej inteligencie %2.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024672606027479)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eiadavka HTTP na slu\017Ebu generat\00EDvnej umelej inteligencie pre %0 zlyhala s chybou HTTP-%1: %2')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049094327027487)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba v po\017Eiadavke HTTP na slu\017Ebu generat\00EDvnej umelej inteligencie pre plugin %0 v re\017Eime %1. Skontrolujte konfigur\00E1ciu slu\017Eby generat\00EDvnej umelej inteligencie.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011805949027476)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDklady')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010219558027475)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'sk'
,p_message_text=>'Asistent'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011617229027476)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010177655027475)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'sk'
,p_message_text=>'Vy'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040807639027484)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('OCI Generative AI moment\00E1lne nepodporuje prostredie \010Detu s viacer\00FDmi spr\00E1vami.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020718077027478)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri sprac\00FAvan\00ED v\00FDzvy %0 pre aplik\00E1ciu %1. Skontrolujte, \010Di je v tejto in\0161tancii dostupn\00FD n\00E1stroj na vytv\00E1ranie aplik\00E1ci\00ED.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025876439027480)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nepodarilo sa spracova\0165 odpove\010F pre slu\017Ebu AI %0, odpove\010F %1')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032092696027482)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165 spr\00E1vu')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020355094027478)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba v backendovej slu\017Ebe AI %0')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006156528027474)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Spr\00E1va')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006247328027474)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'sk'
,p_message_text=>unistr('Sem nap\00ED\0161te spr\00E1vu')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009529440027475)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Avatar pou\017E\00EDvate\013Ea')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009655712027475)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Ei\0165 toto')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006360978027474)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('M\00E1te neodoslan\00FA spr\00E1vu, naozaj to chcete urobi\0165?')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175325988027525)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Volanie Ajax vr\00E1tilo chybu servera %0 pre %1.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102487334027503)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Alias aplik\00E1cie "%0" nie je mo\017En\00E9 skonvertova\0165 na jednozna\010Dn\00E9 ID aplik\00E1cie.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091251162027499)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1816 Neo\010Dak\00E1van\00E1 chyba pri konverzii aliasu aplik\00E1cie p_flow_alias_or_id (%0).')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188606776027529)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomocou kontroln\00E9ho s\00FA\010Dtu aplik\00E1cie sa m\00F4\017Ee jednoducho ur\010Di\0165, \010Di je rovnak\00E1 aplik\00E1cia nasaden\00E1 v r\00E1mci pracovn\00FDch priestorov. Tento kontroln\00FD s\00FA\010Det m\00F4\017Eete porovna\0165 a ur\010Di\0165, \010Di existuje zhoda.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075205246027495)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri spracov\00E1van\00ED funkcie autentifik\00E1cie.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057255066027489)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri spracov\00E1van\00ED funkcie autentifik\00E1cie.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229110390027541)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov n\00E1jomcu %0 vr\00E1ten\00FD slu\017Ebou Oracle Cloud Identity Management nem\00E1 opr\00E1vnenie pre dom\00E9nu %1!<br/><a href="&LOGOUT_URL.">Znovu sa prihl\00E1ste</a> a zadajte n\00E1zov opr\00E1vnen\00E9ho n\00E1jomcu alebo zme\0148te adresu URL.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053326941027488)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'sk'
,p_message_text=>unistr('Va\0161e konto "%0" nem\00E1 potrebn\00E9 privil\00E9gi\00E1 na v\00FDvoj (DB_DEVELOPER alebo DB_ADMINISTRATOR)<br/>pre pracovn\00FD priestor "%1"! <a href="&LOGOUT_URL.">Znovu sa prihl\00E1ste</a> po poskytnut\00ED privil\00E9gi\00ED.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049904914027487)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov n\00E1jomcu vr\00E1ten\00FD slu\017Ebou Oracle Cloud Identity Management nem\00E1 opr\00E1vnenie pre aktu\00E1lny pracovn\00FD priestor!<br/><a href="&LOGOUT_URL.">Znovu sa prihl\00E1ste</a> a zadajte n\00E1zov opr\00E1vnen\00E9ho n\00E1jomcu.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053464910027488)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'sk'
,p_message_text=>unistr('Z bezpe\010Dnostn\00FDch d\00F4vodov nie je povolen\00E9 spustenie aplik\00E1ci\00ED tohto pracovn\00E9ho priestoru prostredn\00EDctvom dom\00E9ny v adrese URL.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074954016027495)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eiadajte administr\00E1tora datab\00E1zy o spustenie $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074813613027495)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'sk'
,p_message_text=>unistr('Bal\00EDk SYS.DBMS_LDAP neexistuje alebo je neplatn\00FD.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074787239027494)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania funkcie \00FApravy pou\017E\00EDvate\013Ea LDAP.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075024272027495)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania autentifik\00E1cie LDAP.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075805379027495)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba v argumente p_flow_page pre proced\00FAru login_page.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075459900027495)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E1 rel\00E1cia p_session v wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126779132027510)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'sk'
,p_message_text=>unistr('Chybne vytvoren\00FD argument pre wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075572127027495)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'sk'
,p_message_text=>unistr('Do prihlasovacej proced\00FAry bolo odovzdan\00E9 meno pou\017E\00EDvate\013Ea null.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062368767027491)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Ak sa chcete znova prihl\00E1si\0165, po\010Dkajte <span id="apex_login_throttle_sec">%0</span> s.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063699368027491)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pokus o prihl\00E1senie bol blokovan\00FD.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124414581027510)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Autentifik\00E1cia "%0" sa nena\0161la')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064130252027491)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'sk'
,p_message_text=>unistr('ID skupiny zabezpe\010Denia je null.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075380536027495)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das vykon\00E1vania procesu dodato\010Dnej autentifik\00E1cie.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075115982027495)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania procesu predbe\017Enej autentifik\00E1cie.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076897813027495)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Otvorte adresu URL v rovnakom preh\013Ead\00E1va\010Di, v ktorom ste iniciovali po\017Eiadavku na znovunastavenie hesla. Ak kliknete na adresu URL na znovunastavenie hesla a budete presmerovan\00ED na prihlasovaciu str\00E1nku, znovu spustite po\017Eiadavku na znovunastavenie h')
||unistr('esla a preh\013Ead\00E1va\010D ponechajte otvoren\00FD.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226682724027541)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'sk'
,p_message_text=>'Adresa URL na znovunastavenie hesla'
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053633974027488)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Skupina spotrebite\013Eov spr\00E1vcu prostriedkov %0 nebola pridelen\00E1 pou\017E\00EDvate\013Eovi %1')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053779066027488)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Eite skupinu DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP na pridelenie ch\00FDbaj\00FAceho privil\00E9gia.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088352210027499)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania funkcie sentry rel\00E1cie.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088404896027499)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania funkcie overenia rel\00E1cie.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088695186027499)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eiadajte administr\00E1tora %0 o konfigur\00E1ciu mechanizmu pre prihl\00E1senie jedn\00FDm vstupom do syst\00E9mu Oracle Application Server.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099069962027502)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'sk'
,p_message_text=>unistr('Prihl\00E1senie SSO vr\00E1tilo neplatn\00FA hodnotu %0 v tokene %1.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075784125027495)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravte sch\00E9mu autentifik\00E1cie a pridajte n\00E1zov aplik\00E1cie.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098734061027502)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD volaj\00FAci proced\00FAry %0:')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098940195027502)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E1 rel\00E1cia aplik\00E1cie v tokene urlc: %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098563404027502)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba v pr\00EDkaze portal_sso_redirect: ch\00FDbaj\00FA inform\00E1cie o registr\00E1cii aplik\00E1cie: %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088543093027499)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'sk'
,p_message_text=>unistr('Bal\00EDk WWSEC_SSO_ENABLER_PRIVATE neexistuje alebo je neplatn\00FD.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075699663027495)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov registrovanej partnerskej aplik\00E1cie sa v sch\00E9me autentifik\00E1cie nena\0161iel.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098667399027502)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FAto aplik\00E1ciu zaregistrujte pod\013Ea popisu v in\0161tala\010Dnej pr\00EDru\010Dke.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088746586027499)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das autentifik\00E1cie prihl\00E1senia jedn\00FDm vstupom.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202006732027533)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'sk'
,p_message_text=>unistr('Neautorizovan\00E1 adresa URL: %0')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088123519027499)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania autentifik\00E1cie.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053575391027488)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pracovn\00FD priestor "%0" je neakt\00EDvny. Kontaktujte administr\00E1tora.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054235724027488)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'sk'
,p_message_text=>'%0'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063304792027491)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDstup zamietnut\00FD na z\00E1klade kontroly zabezpe\010Denia aplik\00E1cie')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063480631027491)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDstup zamietnut\00FD na z\00E1klade kontroly zabezpe\010Denia str\00E1nky')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063500170027491)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania autoriz\00E1cie.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132694750027512)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvoren\00E9 %0 s pou\017Eit\00EDm platformy %1')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132756188027512)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'sk'
,p_message_text=>unistr('s l\00E1skou')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192578594027530)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>'Popis udalosti'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192332862027530)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'sk'
,p_message_text=>unistr('Koncov\00FD d\00E1tum')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192658325027530)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'sk'
,p_message_text=>'ID udalosti'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192212167027530)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Diato\010Dn\00FD d\00E1tum')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192464627027530)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Nadpis udalosti'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035076199027482)
,p_name=>'APEX.CARD'
,p_message_language=>'sk'
,p_message_text=>'Karta'
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035255727027483)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'sk'
,p_message_text=>'Akcia karty'
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129075973829027495)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'sk'
,p_message_text=>unistr('Vizu\00E1lne skryt\00E9 za\010Diarkavacie pol\00ED\010Dko')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077874282027495)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba obsahu kontroln\00E9ho s\00FA\010Dtu')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077719530027495)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba form\00E1tu kontroln\00E9ho s\00FA\010Dtu')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147666478027517)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'sk'
,p_message_text=>unistr('Skop\00EDrovan\00E9 do schr\00E1nky.')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147105291027516)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'sk'
,p_message_text=>unistr('Tento preh\013Ead\00E1va\010D nepodporuje kop\00EDrovanie z tla\010Didla alebo ponuky. Sk\00FAste stla\010Di\0165 Ctrl+C alebo Command+C.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133394146027512)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavrie\0165')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011703430027476)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Obsah editora k\00F3du prekra\010Duje maxim\00E1lnu d\013A\017Eku polo\017Eky (skuto\010Dn\00E1 d\013A\017Eka %0, povolen\00FD po\010Det znakov: %1)')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191854299027530)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'sk'
,p_message_text=>'Kontrast'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186302708027528)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lne')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186263627027528)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Diato\010Dn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190479202027530)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 platn\00E1 farba. Pr\00EDklad: %0')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052854959027488)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Eal\0161ie farby')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052936311027488)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Otvori\0165 v\00FDber farby')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010084665027475)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'sk'
,p_message_text=>unistr('Jazdec komponentu alfa, vodorovn\00FD jazdec. Na navig\00E1ciu pou\017Eite kl\00E1vesy so \0161\00EDpkami.')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009765645027475)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'sk'
,p_message_text=>unistr('Farebn\00E9 spektrum, 4-smern\00FD jazdec. Na navig\00E1ciu pou\017Eite kl\00E1vesy so \0161\00EDpkami.')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009877171027475)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'sk'
,p_message_text=>unistr('Jazdec odtie\0148a, zvisl\00FD jazdec. Na navig\00E1ciu pou\017Eite kl\00E1vesy so \0161\00EDpkami.')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186143929027528)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 farbu')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186495786027528)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zmeni\0165 form\00E1t farby')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224372241027540)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoznam hodn\00F4t')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224476457027540)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'sk'
,p_message_text=>unistr('Otvori\0165 zoznam pre: %0')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204715418027534)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'sk'
,p_message_text=>unistr('(Dokon\010Den\00E9)')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093680537027500)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'sk'
,p_message_text=>unistr('Kontaktujte administr\00E1tora aplik\00E1cie.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109171053027505)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kontaktujte administr\00E1tora aplik\00E1cie.'),
unistr('Detaily tohto incidentu z\00EDskate pomocou ID ladenia "%0".')))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190791668027530)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'sk'
,p_message_text=>unistr('Pred ulo\017Een\00EDm opravte chyby.')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036035111027483)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'sk'
,p_message_text=>unistr('%0. Odstr\00E1\0148te stla\010Den\00EDm kl\00E1vesu Backspace.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134240959027513)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1jden\00E9 zhody: %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016188260027477)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('1 n\00E1jden\00E1 zhoda')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134147654027513)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'sk'
,p_message_text=>unistr('Nena\0161li sa \017Eiadne zhody')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010503412027475)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'sk'
,p_message_text=>unistr('In\00E9')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010411505027475)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det vybran\00FDch hodn\00F4t: %0')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205284601027534)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lny priebeh')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191130119027530)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00E9 pole v polo\017Eke %0 neexistuje v s\00FAboroch APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179699351027526)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lna verzia d\00E1t v datab\00E1ze bola zmenen\00E1, preto\017Ee pou\017E\00EDvate\013E spustil proces aktualiz\00E1cie.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148767491027517)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezavies\0165')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195024881027531)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba predbe\017En\00E9ho spracovania')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194897682027531)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlo\017Ei\0165 riadok')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208465204027535)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'sk'
,p_message_text=>'Poradie: Akcia'
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194907727027531)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualizova\0165 riadok')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023464231027479)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'sk'
,p_message_text=>'Akcie'
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051014702027487)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'sk'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037117524027483)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 mus\00ED by\0165 modul na v\00FDber d\00E1tumu alebo platn\00FD d\00E1tum, napr\00EDklad %1.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146372189027516)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054594441027488)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'sk'
,p_message_text=>'Hotovo'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065537834027492)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 m\00E1 nepodporovan\00E9 \010Dasti v maske form\00E1tu: %1')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050782294027487)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'sk'
,p_message_text=>'Hodina'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134669639027513)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozba\013Eovac\00ED kalend\00E1r: %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050508084027487)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FD\017Ede\0148')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050664416027487)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FD\017Ede\0148')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050921630027487)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'sk'
,p_message_text=>unistr('Min\00FAty')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051155286027487)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'sk'
,p_message_text=>'Mesiac'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051545696027487)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci mesiac')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021104317027478)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozba\013Eovacie okno pre %0')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051415024027487)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'sk'
,p_message_text=>unistr('Predch\00E1dzaj\00FAci mesiac')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143975932027515)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber d\00E1tumu len na \010D\00EDtanie')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052378671027488)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 d\00E1tum')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021289678027478)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 d\00E1tum a \010Das')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018417427027478)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 de\0148')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021841961027479)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 mesiac a rok')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018623336027478)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 \010Das')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019181126027478)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'sk'
,p_message_text=>'Dnes'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036785312027483)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 platn\00FD d\00E1tum, napr\00EDklad %0.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036434910027483)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 v rozsahu od %0 do %1.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036519595027483)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 rovnak\00E9 alebo neskor\0161ie ako %0.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036690261027483)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 rovnak\00E9 alebo skor\0161ie ako %0.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028051312027480)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vizu\00E1lne skryt\00E1 \00FAprava')
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051390966027487)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'sk'
,p_message_text=>'Rok'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138312492027514)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# je nesk\00F4r ako zadan\00FD maxim\00E1lny d\00E1tum %0.')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138711594027514)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# nezodpoved\00E1 form\00E1tu %0.')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138262659027514)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# je sk\00F4r ako zadan\00FD minim\00E1lny d\00E1tum %0.')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138470365027514)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sk'
,p_message_text=>'#LABEL# nie je v platnom rozsahu od %0 do %1.'
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138655091027514)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'sk'
,p_message_text=>'#LABEL# nie je v platnom rozsahu rokov od %0 do %1.'
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030469732027481)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Das spracovania po\017Eiadavky DBMS_CLOUD sa vyskytla intern\00E1 chyba.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191002419027530)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161i\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216963441027538)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavrie\0165')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078141785027496)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'sk'
,p_message_text=>'Potvrdenie'
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218995774027538)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'sk'
,p_message_text=>'Pomoc'
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190823188027530)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'sk'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190916342027530)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058684721027490)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov dial\00F3gov\00E9ho okna')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098350501027502)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vizu\00E1lne skryt\00FD n\00E1zov dial\00F3gov\00E9ho okna')
,p_is_js_message=>true
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019478457027478)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Vopred vytvoren\00E1 funkcia gener\00E1tora dokumentov Oracle')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030222566027481)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das tla\010De dokumentu.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007420776027474)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('%s nepodporuje %1 ako v\00FDstup.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019376394027478)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba "%0" vyvol\00E1vaj\00FAca vopred vytvoren\00FA funkciu gener\00E1tora dokumentov Oracle:')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010834601027475)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eaduje sa \0161abl\00F3na.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036228977027483)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das s\0165ahovania s\00FAboru.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036162046027483)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Nena\0161li sa \017Eiadne stiahnute\013En\00E9 d\00E1ta.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039731508027484)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00E1to funkcia nie je dostupn\00E1 v prostred\00ED Len v \010Dase behu.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092573690027500)
,p_name=>'APEX.ERROR'
,p_message_language=>'sk'
,p_message_text=>'Chyba'
,p_is_js_message=>true
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052498709027488)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Das vykon\00E1vania sp\00E4tn\00E9ho volania rie\0161enia ch\00FDb sa vyskytla nasleduj\00FAca chyba: %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065050181027492)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Das ma\013Eovania chybovej str\00E1nky sa vyskytla chyba: %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054158987027488)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'sk'
,p_message_text=>unistr('Intern\00E1 chyba')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203842338027534)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kontaktujte administr\00E1tora.'),
unistr('Detaily tohto incidentu z\00EDskate pomocou ID ladenia "%0".')))
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198405496027532)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'sk'
,p_message_text=>unistr('Datab\00E1za je otvoren\00E1 pre pr\00EDstup len na \010D\00EDtanie.')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228555435027541)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'sk'
,p_message_text=>unistr('ORA-28353: S\00FAbor wallet sa nepodarilo otvori\0165. Pr\00EDstup k d\00E1tam aplik\00E1cie moment\00E1lne nie je mo\017En\00FD.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198512756027532)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00E1to str\00E1nka nie je dostupn\00E1')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057112928027489)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'sk'
,p_message_text=>unistr('Technick\00E9 inform\00E1cie (dostupn\00E9 len pre v\00FDvoj\00E1rov)')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163004901027521)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Chybov\00E9 hl\00E1senie')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176913610027525)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('O\010Dak\00E1van\00FD form\00E1t: %0')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141867518027515)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017E\00EDvate\013E u\017E je v zozname riadenia pr\00EDstupu')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141787752027515)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'sk'
,p_message_text=>unistr('Potvr\010Fte pridanie nasleduj\00FAcich %0 pou\017E\00EDvate\013Eov do zoznamu riadenia pr\00EDstupu <strong>%1</strong>.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142268995027515)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'sk'
,p_message_text=>unistr('Existuje duplicitn\00FD pou\017E\00EDvate\013E')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141935037027515)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'sk'
,p_message_text=>unistr('V e-mailovej adrese ch\00FDba znak zavin\00E1\010Da (@)')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142066093027515)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'sk'
,p_message_text=>unistr('V e-mailovej adrese ch\00FDba bodka (.)')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142183766027515)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'sk'
,p_message_text=>unistr('Meno pou\017E\00EDvate\013Ea je pr\00EDli\0161 dlh\00E9')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142464419027515)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'sk'
,p_message_text=>unistr('K tejto aplik\00E1cii maj\00FA pr\00EDstup len pou\017E\00EDvatelia definovan\00ED v zozname riadenia pr\00EDstupu do aplik\00E1cie')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142567707027515)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('Neo\010Dak\00E1van\00E1 hodnota nastavenia riadenia pr\00EDstupu: %0')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142392349027515)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'sk'
,p_message_text=>unistr('K tejto aplik\00E1cii maj\00FA pr\00EDstup v\0161etci autentifikovan\00ED pou\017E\00EDvatelia')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186887272027528)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Deaktivovan\00E9')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186713791027528)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktivovan\00E9')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187052139027528)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('%0: Je deaktivovan\00E9')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186906301027528)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('%0: Je aktivovan\00E9')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035586261027483)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nepodporovan\00E9')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096727832027501)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'sk'
,p_message_text=>'Vyp.'
,p_is_js_message=>true
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096679198027501)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'sk'
,p_message_text=>'Zap.'
,p_is_js_message=>true
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186630814027528)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'sk'
,p_message_text=>unistr('neidentifikovan\00E9')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027171430027480)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'sk'
,p_message_text=>'%0 B'
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027692165027480)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'sk'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027305587027480)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'sk'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027540576027480)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'sk'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179828702027526)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Stiahnu\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032925541027482)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Vo\013Eby')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032698756027482)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Filtrova\0165')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032831605027482)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'sk'
,p_message_text=>unistr('Skry\0165 facet')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057584517027489)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 filter')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133836908027512)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Eit\00FD filter %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058207496027489)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177444720027526)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058399410027490)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161i\0165')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042123853027485)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pruhov\00FD graf')
,p_is_js_message=>true
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190141950027529)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'sk'
,p_message_text=>unistr('In\00E9')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042250218027485)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'sk'
,p_message_text=>unistr('Kol\00E1\010Dov\00FD graf')
,p_is_js_message=>true
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188766019027529)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041942257027485)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det')
,p_is_js_message=>true
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177935157027526)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178060415027526)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165 v\0161etko')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178128402027526)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165 %0')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194673097027531)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec %1, na ktor\00FD odkazuje facet %0, nie je k dispoz\00EDcii alebo nie je autorizovan\00FD.')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005340381027474)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte filtre, ktor\00E9 sa maj\00FA zobrazi\0165')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131842691027512)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det v\00FDsledkov: %0')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131950526027512)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybran\00E9: %0')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134798992027513)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lne filtre')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010370077027475)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Ead\00E1vanie na z\00E1klade facetov vy\017Eaduje d\00E1tov\00FD zdroj na \00FArovni oblasti.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014075709027476)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'sk'
,p_message_text=>'Zoznam filtrov'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193152351027530)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Limit jednozna\010Dnej hodnoty (%0) bol prekro\010Den\00FD pre facet %1.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179458412027526)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Facet %0 nie je podporovan\00FD pre st\013Apce DATE ani TIMESTAMP.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177502133027526)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Filtrova\0165 %0')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052186528027488)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 (pou\017Eit\00FD filter)')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177610301027526)
,p_name=>'APEX.FS.GO'
,p_message_language=>'sk'
,p_message_text=>unistr('Prejs\0165')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047655189027486)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'sk'
,p_message_text=>'obsahuje %0'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179011482027526)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'sk'
,p_message_text=>unistr('rovn\00E1 sa %0')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047359005027486)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'sk'
,p_message_text=>unistr('v\00E4\010D\0161ie ako %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047450808027486)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'sk'
,p_message_text=>unistr('v\00E4\010D\0161ie alebo rovnak\00E9 ako %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047064610027486)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'sk'
,p_message_text=>unistr('men\0161ie ako %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047256793027486)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'sk'
,p_message_text=>unistr('men\0161ie alebo rovnak\00E9 ako %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046502254027486)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'sk'
,p_message_text=>'neobsahuje %0'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032367879027482)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'sk'
,p_message_text=>unistr('nerovn\00E1 sa %0')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046683590027486)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'sk'
,p_message_text=>unistr('neza\010D\00EDna sa na %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047575404027486)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'sk'
,p_message_text=>unistr('za\010D\00EDna sa na %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045658088027486)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber facetu')
,p_is_js_message=>true
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021443984027478)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'sk'
,p_message_text=>unistr('Predpona filtra "%0" je neplatn\00E1 pre facet "%1".')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019865050027478)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'sk'
,p_message_text=>unistr('Ch\00FDba predpona filtra pre facet "%0".')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054012707027488)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Oper\00E1tor')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035998005027483)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'sk'
,p_message_text=>'obsahuje'
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034980506027482)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'sk'
,p_message_text=>unistr('rovn\00E1 sa')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035648665027483)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'sk'
,p_message_text=>unistr('je v\00E4\010D\0161ie ako')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035730643027483)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'sk'
,p_message_text=>unistr('v\00E4\010D\0161ie alebo rovn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035350132027483)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'sk'
,p_message_text=>unistr('je men\0161ie ako')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035479160027483)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'sk'
,p_message_text=>unistr('men\0161ie alebo rovn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046465401027486)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'sk'
,p_message_text=>'neobsahuje'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035178123027482)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'sk'
,p_message_text=>unistr('nerovn\00E1 sa')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046323267027486)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'sk'
,p_message_text=>unistr('neza\010D\00EDna znakom')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129035860312027483)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'sk'
,p_message_text=>unistr('za\010D\00EDna sa na')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054410493027488)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tov\00FD typ %0 (%1) pre facet Vstupn\00E9 pole nie je podporovan\00FD.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021399966027478)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Filter "%0" nie je podporovan\00FD pre facet "%1" (d\00E1tov\00FD typ %2).')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053928094027488)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'sk'
,p_message_text=>'Hodnota'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179205847027526)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre facet %0 neboli zadan\00E9 \017Eiadne st\013Apce vyh\013Ead\00E1vania')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005469583027474)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Eal\0161ie filtre')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132064981027512)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diatok rozsahu')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178743582027526)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 a\017E %1')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178833670027526)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'sk'
,p_message_text=>'Nad %0'
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178900949027526)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'sk'
,p_message_text=>'Pod %0'
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132183813027512)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'sk'
,p_message_text=>'Koniec rozsahu'
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196708612027531)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eka ZH #%2 ("%1") pre facet rozsahu %0 je neplatn\00E1 (ch\00FDba odde\013Eova\010D "|").')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179119866027526)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Manu\00E1lny vstup pre facet Rozsah %0 moment\00E1lne nie je podporovan\00FD, preto\017Ee st\013Apec m\00E1 hodnotu DATE alebo TIMESTAMP.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178498239027526)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'sk'
,p_message_text=>'do'
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042035643027485)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 graf')
,p_is_js_message=>true
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128484133027511)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177820250027526)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177798856027526)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'sk'
,p_message_text=>unistr('H\013Eada\0165...')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178642082027526)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'sk'
,p_message_text=>unistr('- Vybra\0165 -')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041836783027485)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 graf')
,p_is_js_message=>true
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178212503027526)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 menej')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178383662027526)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 v\0161etko')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129178566378027526)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 a viac hviezdi\010Diek')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133743415027512)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1vrhy filtra')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179315284027526)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Facet Textov\00E9 pole %0 je moment\00E1lne podporovan\00FD len pre st\013Apce NUMBER.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004853073027474)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00FD po\010Det riadkov')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194703319027531)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tov\00FD typ %0 (%1) nie je podporovan\00FD pre vyh\013Ead\00E1vanie na z\00E1klade facetov.')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124959846027510)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Vizu\00E1lne skryt\00E9 z\00E1hlavie')
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187260206027529)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Prejs\0165 na chybu')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143278651027515)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Agregova\0165.')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071173280027493)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00E1zdne z\00E1hlavie')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152567495027518)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zbali\0165 funkciu Control Break')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143306340027515)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'sk'
,p_message_text=>'Control Break.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152468771027518)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozbali\0165 funkciu Control Break')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152212924027518)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det odstr\00E1nen\00FDch riadkov: %0')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221386898027539)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'sk'
,p_message_text=>unistr('Duplicitn\00E1 identita')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014275733027476)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vstupuje sa do re\017Eimu \00FAprav')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140183198027514)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prv\00E9')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013039256027476)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'sk'
,p_message_text=>unistr('Skry\0165 dial\00F3gov\00E9 okno')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012042708027476)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pl\00E1vaj\00FAci prete\010Den\00FD obsah bunky')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013364023027476)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 prete\010Den\00FD obsah')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087589891027498)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'sk'
,p_message_text=>unistr('P\00E4ta mrie\017Eky')
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143587325027515)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Hlavi\010Dka skupiny')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143484447027515)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Hlavi\010Dka.')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140278653027514)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Posledn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014482496027476)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'sk'
,p_message_text=>unistr('Op\00FA\0161\0165a sa re\017Eim \00FAprav')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039168800027484)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavies\0165 v\0161etky')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162011645027521)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 viac')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139995135027514)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143623857027515)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Riadky str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052793301027488)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'sk'
,p_message_text=>unistr('Str\00E1nka %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140325418027514)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'sk'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140440652027514)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'sk'
,p_message_text=>'%0 - %1 z %2'
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197302858027532)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087811706027498)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'sk'
,p_message_text=>unistr('Str\00E1nkovanie')
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140018296027514)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038088088027483)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'sk'
,p_message_text=>'Zobrazenie rozsahu'
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071442119027494)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber riadkov')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221162153027539)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pridan\00E9')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221217992027539)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zmenen\00E9')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229575065027541)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Poradie riadka mrie\017Eky %0, st\013Apec %1.')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229670002027542)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Poradie riadka mrie\017Eky %0.')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221076414027539)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1nen\00E9')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143882973027515)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'sk'
,p_message_text=>unistr('Hlavi\010Dka str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071363530027493)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber riadka')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039237854027484)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybran\00E9: %0 %1')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139334106027514)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det vybran\00FDch buniek: %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140551177027514)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det vybran\00FDch riadkov: %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182623268027527)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 v\0161etko')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076161260027495)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 v\0161etky riadky')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152356682027518)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'sk'
,p_message_text=>unistr('Str\00E1nka %0')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143764607027515)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 riadok')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144014963027515)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'sk'
,p_message_text=>unistr('Trieden\00E9 vzostupne %0')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144172107027516)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'sk'
,p_message_text=>unistr('Trieden\00E9 zostupne %0')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139430276027514)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165 vzostupne')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139760090027514)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165 vzostupne %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139523307027514)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165 zostupne')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139883665027514)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165 zostupne %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139669999027514)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'sk'
,p_message_text=>unistr('Netriedi\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005242314027474)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Vo\013Eby triedenia')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087699686027498)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'sk'
,p_message_text=>'Ikony stavu'
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087742210027498)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'sk'
,p_message_text=>unistr('Stav mrie\017Eky')
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017562098027477)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'sk'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017274227027477)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'sk'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152163458027518)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'sk'
,p_message_text=>'Celkom %0'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070902383027493)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eiadavka HTTP "%0" zlyhala.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072580896027494)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec %0')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072736198027494)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec %0 a riadok %1')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073046619027494)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('U\017E v prvom st\013Apci. St\013Apec %0 a riadok %1.')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072916723027494)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('U\017E v prvom riadku. St\013Apec %0 a riadok %1.')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218530547027538)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'sk'
,p_message_text=>unistr('Prezentovan\00E9 v %0 st\013Apcoch a %1 riadkoch')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073188805027494)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('U\017E v poslednom st\013Apci. St\013Apec %0 a riadok %1.')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072842214027494)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('U\017E v poslednom riadku. St\013Apec %0 a riadok %1.')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152003786027518)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'sk'
,p_message_text=>unistr('Prezentovan\00E9 v %0 riadkoch')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072623468027494)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'sk'
,p_message_text=>'Riadok %0'
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229369396027541)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Interakt\00EDvna mrie\017Eka %0')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136447069027513)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'sk'
,p_message_text=>'Akcie'
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137465387027514)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137320150027514)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 riadok')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222959466027539)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Agregova\0165')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208583593027535)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Agreg\00E1cia')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210274030027535)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('V\0161etko')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167818372027523)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('V\0161etky textov\00E9 st\013Apce')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169024021027523)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Alternat\00EDvne')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170104111027523)
,p_name=>'APEX.IG.AND'
,p_message_language=>'sk'
,p_message_text=>'a'
,p_is_js_message=>true
,p_version_scn=>2693419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189596713027529)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'sk'
,p_message_text=>unistr('Pribli\017En\00FD po\010Det odli\0161n\00FDch hodn\00F4t')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223910562027540)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00FD pribli\017En\00FD po\010Det odli\0161n\00FDch hodn\00F4t')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207183823027535)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'sk'
,p_message_text=>unistr('Plo\0161n\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209092648027535)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'sk'
,p_message_text=>'Vzostupne'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169107636027523)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Autoriz\00E1cia')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223015116027539)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'sk'
,p_message_text=>'Automaticky'
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189962353027529)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'sk'
,p_message_text=>'Priemer'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223642378027540)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00FD priemer')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206675130027534)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nadpis osi ozna\010Denia')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206863016027534)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det desatinn\00FDch miest')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206731714027534)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Nadpis osi hodnoty'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212898259027536)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'sk'
,p_message_text=>'Farba pozadia'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207223159027535)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pruhov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164408572027522)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'sk'
,p_message_text=>'medzi'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214098526027537)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'sk'
,p_message_text=>'Oboje'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207398114027535)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Bublinov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137644633027514)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161i\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170005203027523)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozl\00ED\0161i\0165 mal\00E9/VE\013DK\00C9')
,p_is_js_message=>true
,p_version_scn=>2693419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224523867027540)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'sk'
,p_message_text=>unistr('(rozli\0161uje mal\00E9 a ve\013Ek\00E9 p\00EDsmen\00E1)')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195892304027531)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zmeny ulo\017Een\00E9')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138010314027514)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zmeni\0165 zobrazenie')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171184230027524)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'sk'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167679139027523)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Dopyt prekra\010Duje maxim\00E1lny po\010Det %0 d\00E1tov\00FDch bodov na graf. Pou\017Eite filter na zn\00ED\017Eenie po\010Dtu z\00E1znamov v z\00E1kladnom dopyte.')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136341104027513)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazenie sch\00E9my')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144704909027516)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206111124027534)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'sk'
,p_message_text=>'Koniec'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213018477027536)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'sk'
,p_message_text=>'Farby'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190330624027529)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Uk\00E1\017Eka')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169489652027523)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136540367027513)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apce')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098430970027502)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Akcie st\013Apca')
,p_is_js_message=>true
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098282894027502)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Akcie pre st\013Apec "%0"')
,p_is_js_message=>true
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214891667027537)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DA\010Del st\013Apca')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169525976027523)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'sk'
,p_message_text=>unistr('Komplexn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136728992027513)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vypo\010D\00EDta\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165029460027522)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'sk'
,p_message_text=>'obsahuje'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171314589027524)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'sk'
,p_message_text=>'Control Break'
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144570164027516)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'sk'
,p_message_text=>unistr('Skop\00EDrova\0165 do schr\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144660276027516)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'sk'
,p_message_text=>unistr('Kop\00EDrova\0165 nadol')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189334620027529)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189446248027529)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det odli\0161n\00FDch hodn\00F4t')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223801647027540)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00FD po\010Det odli\0161n\00FDch hodn\00F4t')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223729018027540)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00FD po\010Det')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221483878027539)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvori\0165 %0')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168076407027523)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1ta')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214624927027537)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tov\00FD typ')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214230606027537)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tum')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195657169027531)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E1 hodnota d\00E1tumu')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165741659027522)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'sk'
,p_message_text=>'d.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168756035027523)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>unistr('Predvolen\00E9 nastavenia')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168556594027523)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Predvolen\00FD typ')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137591289027514)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215731228027537)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'sk'
,p_message_text=>unistr('Naozaj chcete odstr\00E1ni\0165 t\00FAto zostavu?')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173199837027524)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 riadok')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171936693027524)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 riadky')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209155715027535)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'sk'
,p_message_text=>'Zostupne'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170861932027524)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'sk'
,p_message_text=>'Detaily'
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136019305027513)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Detailn\00E9 zobrazenie')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198185936027532)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'sk'
,p_message_text=>'Smer'
,p_is_js_message=>true
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170570855027523)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Deaktivovan\00E9')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165183866027522)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'sk'
,p_message_text=>'neobsahuje'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165350929027522)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'sk'
,p_message_text=>unistr('neza\010D\00EDna znakom')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207416135027535)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'sk'
,p_message_text=>unistr('Prstencov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171527080027524)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'sk'
,p_message_text=>unistr('Stiahnu\0165')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061893228027491)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'sk'
,p_message_text=>unistr('Len d\00E1ta')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216742412027537)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 form\00E1t')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076984657027495)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Form\00E1t na stiahnutie %0 nie je aktivovan\00FD.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209833638027535)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Duplikova\0165 agreg\00E1ciu')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209912997027535)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'sk'
,p_message_text=>unistr('Duplikova\0165 funkciu Control Break')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173062374027524)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Duplikova\0165 riadok')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171824070027524)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('Duplikova\0165 riadky')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137141611027513)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208907850027535)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 graf')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089489327027499)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 %0')
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220315006027539)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 skupinu pod\013Ea')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127562870027511)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 v re\017Eime \00FAprav')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103159970027503)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Mrie\017Eka v re\017Eime \00FAprav, zru\0161te stla\010Denie, ak chcete prepn\00FA\0165 do re\017Eimu zobrazenia')
,p_is_js_message=>true
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216343518027537)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'sk'
,p_message_text=>unistr('Skryt\00E1 k\00F3pia (bcc)')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216538740027537)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'sk'
,p_message_text=>unistr('Spr\00E1va')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216288721027537)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'sk'
,p_message_text=>unistr('K\00F3pia (cc)')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215939828027537)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'sk'
,p_message_text=>unistr('E-mail bol odoslan\00FD.')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216495437027537)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'sk'
,p_message_text=>'Predmet'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216193446027537)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDjemca (komu)')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170212720027523)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktivovan\00E9')
,p_is_js_message=>true
,p_version_scn=>2693419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163444068027521)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'sk'
,p_message_text=>unistr('rovn\00E1 sa')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170312664027523)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDraz')
,p_is_js_message=>true
,p_version_scn=>2693419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215348433027537)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'sk'
,p_message_text=>'Typ'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182596226027527)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FAbor je pripraven\00FD. Sp\00FA\0161\0165a sa s\0165ahovanie.')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144823150027516)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDpl\0148')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147016206027516)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber v\00FDplne s')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146946853027516)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber v\00FDplne')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136647240027513)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Filtrova\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169637490027523)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'sk'
,p_message_text=>'Filtre'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223322997027540)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Filtrova\0165...')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209370964027535)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'sk'
,p_message_text=>unistr('Prv\00E9')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136802170027513)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'sk'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168187133027523)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Form\00E1t')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213932353027537)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'sk'
,p_message_text=>unistr('Maska form\00E1tu')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215640852027537)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'sk'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215550079027537)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'sk'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126616815027510)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'sk'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060588759027490)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'sk'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172774084027524)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zmrazi\0165')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170414350027523)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'sk'
,p_message_text=>unistr('Funkcie a oper\00E1tory')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207519024027535)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Lievikov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189290737027529)
,p_name=>'APEX.IG.GO'
,p_message_language=>'sk'
,p_message_text=>unistr('Prejs\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164025535027521)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'sk'
,p_message_text=>unistr('je v\00E4\010D\0161ie ako')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164151765027522)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'sk'
,p_message_text=>unistr('je v\00E4\010D\0161ie alebo rovnak\00E9 ako')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170711666027524)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'sk'
,p_message_text=>unistr('Mrie\017Eka')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135862526027513)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazenie mrie\017Eky')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210167506027535)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'sk'
,p_message_text=>'Skupina'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170909044027524)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoskupi\0165 pod\013Ea')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136188049027513)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazenie Zoskupi\0165 pod\013Ea')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214577762027537)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'sk'
,p_message_text=>'Typ podmienky'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213480213027536)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Z\00E1hlavie')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213658464027537)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'sk'
,p_message_text=>unistr('Zarovnanie z\00E1hlavia')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223288816027539)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'sk'
,p_message_text=>'Pomoc'
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218796214027538)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>V r\00E1mci tejto interakt\00EDvnej mrie\017Eky m\00F4\017Eete priamo vklada\0165, aktualizova\0165 a odstra\0148ova\0165 d\00E1ta.</p>'),
'',
unistr('<p>Kliknut\00EDm na tla\010Didlo Prida\0165 riadok vlo\017Ete nov\00FD riadok.</p>'),
'',
unistr('<p>Dvojit\00FDm kliknut\00EDm na konkr\00E9tnu bunku upravte existuj\00FAce d\00E1ta. Pri v\00E4\010D\0161\00EDch \00FAprav\00E1ch prejdite kliknut\00EDm na polo\017Eku Upravi\0165 do re\017Eimu \00FAprav. V re\017Eime \00FAprav m\00F4\017Eete kliknut\00EDm alebo pou\017Eit\00EDm kl\00E1vesnice upravi\0165 konkr\00E9tne bunky.</p>'),
'',
unistr('<p>Pomocou ponuky Zmeni\0165 m\00F4\017Eete duplikova\0165 a odstr\00E1ni\0165 riadky. Ponuku Zmeni\0165 aktivujete v\00FDberom jedn\00E9ho alebo viacer\00FDch riadkov pomocou za\010Diarkavac\00EDch pol\00ED.</p>'),
'',
unistr('<p>Duplikujte vybran\00FD riadok kliknut\00EDm na ponuku Zmeni\0165 a v\00FDberom polo\017Eky Duplikova\0165 riadky. Kliknut\00EDm na ponuku Zmeni\0165 a v\00FDberom polo\017Eky Odstr\00E1ni\0165 riadok odstr\00E1\0148te vybran\00FD riadok.</p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220803864027539)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Funkcie \00FApravy')
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220948793027539)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interakt\00EDvna mrie\017Eka predstavuje mno\017Einu d\00E1t v preh\013Ead\00E1vate\013Enej a prisp\00F4sobite\013Enej zostave. M\00F4\017Eete vykona\0165 mnoho oper\00E1ci\00ED a obmedzi\0165 po\010Det vr\00E1ten\00FDch z\00E1znamov alebo zmeni\0165 zobrazenie d\00E1t.</p>'),
'',
unistr('<p>Pomocou po\013Ea H\013Eada\0165 m\00F4\017Eete filtrova\0165 vr\00E1ten\00E9 z\00E1znamy. Kliknut\00EDm na polo\017Eku Akcie z\00EDskate pr\00EDstup k viacer\00FDm vo\013Eb\00E1m na zmenu rozlo\017Eenia zostavy alebo pou\017Eite ponuky Z\00E1hlavie st\013Apca pre zobrazen\00E9 st\013Apce.</p>'),
'',
unistr('<p>Pomocou polo\017Eky Nastavenia zostavy m\00F4\017Eete ulo\017Ei\0165 prisp\00F4sobenia zostavy. D\00E1ta zo zostavy si m\00F4\017Eete stiahnu\0165 aj do extern\00E9ho s\00FAboru alebo ich posla\0165 e-mailom sebe alebo in\00FDm pou\017E\00EDvate\013Eom.</p>'),
'',
unistr('<p>\010Eal\0161ie inform\00E1cie n\00E1jdete v \010Dasti "Using Interactive Reports" (Pou\017E\00EDvanie interakt\00EDvnych zost\00E1v) v pr\00EDru\010Dke <em>Oracle APEX End User''s Guide</em>.')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220680450027539)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Preh\013Ead')
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218621136027538)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou zabudovan\00FDch funkci\00ED m\00F4\017Eete prisp\00F4sobi\0165 interakt\00EDvnu mrie\017Eku tak, aby zobrazovala d\00E1ta r\00F4znymi sp\00F4sobmi.</p>'),
'',
unistr('<p>Pomocou pon\00FAk Z\00E1hlavie st\013Apca alebo Akcie m\00F4\017Eete ur\010Di\0165, ktor\00E9 st\013Apce chcete zobrazi\0165 a v akom porad\00ED, a m\00F4\017Eete tie\017E zmrazi\0165 st\013Apce. M\00F4\017Eete definova\0165 aj r\00F4zne filtre d\00E1t a triedi\0165 vr\00E1ten\00E9 d\00E1ta.</p>'),
'',
unistr('<p>Pomocou tla\010Didla Zobrazi\0165 (ved\013Ea tla\010Didla H\013Eada\0165) z\00EDskate pr\00EDstup k \010Fal\0161\00EDm zobrazen\00EDm d\00E1t, ktor\00E9 definoval v\00FDvoj\00E1r aplik\00E1cie. \010Ealej m\00F4\017Eete vytvori\0165 graf alebo zobrazi\0165 existuj\00FAci graf.</p>  '),
'',
unistr('<p><em>Pozn\00E1mka: Kliknut\00EDm na polo\017Eku <strong>Pomoc</strong> v dial\00F3gu interakt\00EDvnej mrie\017Eky z\00EDskate podrobnej\0161ie inform\00E1cie o vybranej funkcii.</em></p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220797394027539)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'sk'
,p_message_text=>'Funkcie vykazovania'
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171727491027524)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre interakt\00EDvnu mrie\017Eku')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217532519027538)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete agregova\0165 st\013Apce. Agregovan\00E9 hodnoty sa zobrazuj\00FA v dolnej \010Dasti d\00E1t alebo v dolnej \010Dasti ka\017Ed\00E9ho zlomu, pokia\013E s\00FA aktivovan\00E9 znaky Control Break.</p>'),
'',
unistr('<p><strong>Zoznam agreg\00E1ci\00ED</strong><br>'),
unistr('Zoznam agreg\00E1ci\00ED zobrazuje definovan\00E9 agreg\00E1cie. Existuj\00FAcu agreg\00E1ciu deaktivujete tak, \017Ee zru\0161\00EDte jej v\00FDber.<br>'),
unistr('Kliknut\00EDm na polo\017Eku Prida\0165 (&plus;) vytvor\00EDte nov\00FA agreg\00E1ciu a kliknut\00EDm na polo\017Eku Odstr\00E1ni\0165 (&minus;) odoberiete existuj\00FAcu agreg\00E1ciu.</p>'),
'',
unistr('<p><strong>Nastavenia agreg\00E1cie</strong><br>'),
unistr('Pomocou formul\00E1ra vpravo definujete agreg\00E1ciu.<br>'),
unistr('Vyberte n\00E1zov st\013Apca a typ agreg\00E1cie.<br>'),
unistr('M\00F4\017Eete zada\0165 popis agreg\00E1cie.<br>'),
unistr('Ak ste definovali znak Control Break, v\00FDberom polo\017Eky <strong>Zobrazi\0165 celkov\00FA hodnotu</strong> sa v dolnej \010Dasti d\00E1t zobraz\00ED celkov\00E1 priemern\00E1 hodnota, celkov\00E1 hodnota alebo podobn\00E1 hodnota.</p>'),
'',
unistr('<p><em>Pozn\00E1mka: Pr\00EDstup do dial\00F3gov\00E9ho okna Agreg\00E1cia je mo\017En\00FD cez ponuku Akcie alebo kliknut\00EDm na z\00E1hlavie st\013Apca a s\00FA\010Det (&sum;).</em></p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219728204027538)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre agreg\00E1ciu')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218238061027538)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete definova\0165 graf, ktor\00FD sa zobraz\00ED ako samostatn\00E9 zobrazenie d\00E1t.<br>'),
unistr('Vyberte typ grafu a atrib\00FAty grafu.</p>'),
unistr('<p><strong>Atrib\00FAty grafu</strong><br>'),
unistr('Dostupn\00E9 atrib\00FAty grafu sa l\00ED\0161ia v z\00E1vislosti od typu grafu.</p>'),
'<p>',
'<ul>',
unistr('  <li>Vyberte st\013Apec, ktor\00FD obsahuje hodnotu pre atrib\00FAt:'),
'    <ul>',
unistr('      <li>Ozna\010Denie - text pre jednotliv\00E9 d\00E1tov\00E9 body.</li>'),
unistr('      <li>Hodnota - d\00E1ta, ktor\00E9 sa maj\00FA zakresli\0165.</li>'),
unistr('      <li>S\00E9ria - na definovanie dynamick\00E9ho dopytu s viacer\00FDmi s\00E9riami.</li>'),
unistr('      <li>Za\010Diatok - denn\00E1 po\010Diato\010Dn\00E1 cena akci\00ED (len burzov\00E9 grafy).</li>'),
unistr('      <li>Koniec - denn\00E1 z\00E1vere\010Dn\00E1 cena akci\00ED (len burzov\00E9 grafy).</li>'),
unistr('      <li>Maximum - maxim\00E1lna hodnota (len grafy rozsahu a burzov\00E9 grafy).</li>'),
unistr('      <li>Minimum - minim\00E1lna hodnota (len grafy rozsahu a burzov\00E9 grafy).</li>'),
unistr('      <li>Objem - denn\00FD objem akci\00ED (len burzov\00E9 grafy).</li>'),
unistr('      <li>Cie\013E - cie\013Eov\00E1 hodnota (len lievikov\00FD graf).</li>'),
unistr('      <li>X - hodnota osi X (len bublinov\00E9 a rozptylov\00E9 grafy).</li>'),
unistr('      <li>Y - hodnota osi Y (len bublinov\00E9 a rozptylov\00E9 grafy).</li>'),
unistr('      <li>Z - \0161\00EDrka pruhu alebo polomer bubliny (len pruhov\00E9 a bublinov\00E9 grafy a grafy rozsahu).</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Orient\00E1cia - zvisle alebo vodorovne.</li>'),
unistr('  <li>Agreg\00E1cia - vyberte sp\00F4sob agreg\00E1cie hodn\00F4t grafu.</li>'),
unistr('  <li>Kumulovan\00FD - zadajte, \010Di sa maj\00FA d\00E1tov\00E9 polo\017Eky kumulova\0165.</li>'),
unistr('  <li>Triedi\0165 pod\013Ea - triedi\0165 pod\013Ea ozna\010Denia alebo hodn\00F4t.'),
'    <ul>',
unistr('      <li>Smer - vzostupn\00E9 alebo zostupn\00E9 triedenie hodn\00F4t.</li>'),
unistr('      <li>Hodnoty null - zadajte, ako sa maj\00FA triedi\0165 z\00E1znamy s hodnotami null vo vz\0165ahu k z\00E1znamom s hodnotami in\00FDmi ako null.</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Desatinn\00E9 miesta</li>'),
unistr('  <li>Nadpis osi ozna\010Denia</li>'),
'  <li>Nadpis osi hodnoty</li>',
'</ul>',
'</p>'))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220110999027538)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Pomoc pre graf'
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217290540027538)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete vybra\0165, ktor\00E9 st\013Apce a v akom porad\00ED sa zobrazia.</p>'),
'',
unistr('<p>St\013Apec skryjete tak, \017Ee zru\0161\00EDte jeho v\00FDber.<br>'),
unistr('Kliknut\00EDm na polo\017Eku Presun\00FA\0165 nahor (&uarr;) alebo Presun\00FA\0165 nadol (&darr;) m\00F4\017Eete zmeni\0165 poradie st\013Apcov.<br>'),
unistr('Pomocou selektora rozba\013Eovacieho zoznamu zobraz\00EDte v\0161etky st\013Apce, zobrazen\00E9 st\013Apce alebo nezobrazen\00E9 st\013Apce.</p>'),
'',
unistr('<p>Pomocou formul\00E1ra m\00F4\017Eete zada\0165 minim\00E1lnu \0161\00EDrku st\013Apca v pixeloch.</p>'),
'',
unistr('<p><em>Pozn\00E1mka: Poradie zobrazen\00FDch st\013Apcov m\00F4\017Eete zmeni\0165 aj kliknut\00EDm na rukov\00E4\0165 pos\00FAvania (na za\010Diatku z\00E1hlavia st\013Apca) a potiahnut\00EDm st\013Apca do\013Eava alebo doprava. Zmeni\0165 m\00F4\017Eete aj \0161\00EDrku zobrazen\00FDch st\013Apcov, a to v\00FDberom odde\013Eova\010Da st\013Apca medzi z\00E1h')
||unistr('laviami a jeho posunut\00EDm do\013Eava alebo doprava.</em></p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220050979027538)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre st\013Apce')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217608858027538)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete definova\0165 \010Fal\0161ie st\013Apce na z\00E1klade matematick\00FDch a funk\010Dn\00FDch v\00FDpo\010Dtov vykonan\00FDch pre existuj\00FAce st\013Apce.</p>'),
'',
unistr('<p><strong>Zoznam v\00FDpo\010Dtov</strong><br>'),
unistr('Zoznam v\00FDpo\010Dtov zobrazuje definovan\00E9 v\00FDpo\010Dty. Existuj\00FAci v\00FDpo\010Det deaktivujete tak, \017Ee zru\0161\00EDte jeho v\00FDber.<br>'),
unistr('Kliknut\00EDm na polo\017Eku Prida\0165 (&plus;) prid\00E1te nov\00FD v\00FDpo\010Det a kliknut\00EDm na polo\017Eku Odstr\00E1ni\0165 (&minus;) odoberiete existuj\00FAci v\00FDpo\010Det.</p>'),
'',
unistr('<p><strong>Nastavenia v\00FDpo\010Dtu</strong><br>'),
unistr('Pomocou tohto formul\00E1ra definujete v\00FDpo\010Det.<br>'),
unistr('Zadajte detaily st\013Apca, napr\00EDklad ozna\010Denie z\00E1hlavia, a vyberte nastavenia zarovnania.<br> '),
unistr('Pomocou textovej oblasti V\00FDraz zad\00E1te st\013Apce a priraden\00E9 funkcie pre v\00FDpo\010Det.<br>'),
unistr('Pre nov\00FD st\013Apec vyberte pr\00EDslu\0161n\00FD d\00E1tov\00FD typ aj masku form\00E1tu.</p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219628912027538)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre v\00FDpo\010Det')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217993208027538)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete definova\0165 znak Control Break pre jeden alebo viacero st\013Apcov.</p>'),
'',
'<p><strong>Zoznam Control Break</strong><br>',
unistr('Zoznam Control Break zobrazuje definovan\00E9 znaky Control Break. Existuj\00FAci st\013Apec Control Break deaktivujete tak, \017Ee zru\0161\00EDte jeho v\00FDber.<br>'),
unistr('Kliknut\00EDm na polo\017Eku Prida\0165 (&plus;) prid\00E1te do Control Break nov\00FD st\013Apec alebo kliknut\00EDm na polo\017Eku Odstr\00E1ni\0165 (&minus;) odoberiete z Control Break existuj\00FAci st\013Apec.<br>'),
unistr('Ak chcete zmeni\0165 poradie st\013Apcov, kliknite na polo\017Eku Presun\00FA\0165 nahor (&uarr;) alebo Presun\00FA\0165 nadol (&darr; ) a presu\0148te vybran\00FD st\013Apec nad alebo pod ostatn\00E9 st\013Apce.</p>'),
'',
'<p><strong>Nastavenia Control Break</strong><br>',
unistr('Pomocou tohto formul\00E1ra definujete st\013Apec Control Break.<br>'),
unistr('Vybran\00FD st\013Apec Control Break , smer triedenia a sp\00F4sob zoradenia st\013Apcov null (st\013Apcov bez hodnoty).</p>'),
'',
unistr('<p><em>Pozn\00E1mka: Pri zobrazen\00ED interakt\00EDvnej mrie\017Eky m\00F4\017Eete definova\0165 Control Break kliknut\00EDm na z\00E1hlavie st\013Apca a v\00FDberom ikony Control Break.</em></p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219340388027538)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Pomoc pre Control Break'
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218169931027538)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete stiahnu\0165 v\0161etky aktu\00E1lne riadky do extern\00E9ho s\00FAboru. S\00FAbor obsahuje len aktu\00E1lne zobrazen\00E9 st\013Apce a pou\017E\00EDva filtre a triedenia pou\017Eit\00E9 pri d\00E1tach.</p>'),
'',
unistr('<p>Vyberte form\00E1t s\00FAboru a kliknite na polo\017Eku Stiahnu\0165.<br>'),
unistr('Pozn\00E1mka: S\00FAbor CSV nebude obsahova\0165 form\00E1tovanie textu, ako s\00FA agreg\00E1cie a znaky Control Break.</p>'),
'',
unistr('<p>Ak chcete e-mailom odosla\0165 s\00FAbor, vyberte polo\017Eku Odosla\0165 ako e-mail a zadajte detaily e-mailu (pr\00EDjemcu, predmet a spr\00E1vu).</p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219174843027538)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre s\0165ahovanie')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217367120027538)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete konfigurova\0165 filtre d\00E1t, ktor\00E9 obmedzuj\00FA po\010Det vr\00E1ten\00FDch riadkov.</p>'),
'',
'<p><strong>Zoznam filtrov</strong><br>',
unistr('Zoznam filtrov zobrazuje definovan\00E9 filtre. Existuj\00FAci filter deaktivujete tak, \017Ee zru\0161\00EDte jeho v\00FDber.<br>'),
unistr('Kliknut\00EDm na polo\017Eku Prida\0165 (&plus;) vytvor\00EDte nov\00FD filter alebo kliknut\00EDm na polo\017Eku Odstr\00E1ni\0165 (&minus;) odoberiete existuj\00FAci filter.</p>'),
'',
'<p><strong>Nastavenia filtra</strong><br>',
unistr('Pomocou tohto formul\00E1ra definujete vlastnosti filtra.<br>'),
unistr('Vyberte pr\00EDslu\0161n\00FD typ filtra:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Riadok - filtrovanie v\00FDrazu v ka\017Edom filtrovate\013Eom st\013Apci.<br>'),
unistr('&nbsp;&nbsp;&nbsp;St\013Apec - filtrovanie konkr\00E9tneho st\013Apca so zadan\00FDm oper\00E1torom a hodnotou.</p>'),
'',
unistr('<p><em>Pozn\00E1mka: Po\010Das zobrazenia interakt\00EDvnej mrie\017Eky m\00F4\017Eete zadan\00EDm priamo do po\013Ea H\013Eada\0165 definova\0165 filtre riadkov. Kliknut\00EDm na polo\017Eku Vybra\0165 st\013Apce na vyh\013Ead\00E1vanie obmedz\00EDte vyh\013Ead\00E1vanie na konkr\00E9tny st\013Apec. Alternat\00EDvne m\00F4\017Eete vytvori\0165 filter ')
||unistr('st\013Apca tak, \017Ee otvor\00EDte ponuku Z\00E1hlavie st\013Apca a vyberiete hodnotu.</em></p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219980337027538)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Pomoc pre filtrovanie'
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217754471027538)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete zobrazi\0165 d\00E1ta, ako existovali v predch\00E1dzaj\00FAcom \010Dasovom bode.</p>'),
unistr('<p>Na vykonanie dopytu na flashback zadajte po\010Det min\00FAt v minulosti.</p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219536922027538)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Pomoc pre flashback'
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220215281027539)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Pomoc pre zoskupenie'
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217886936027538)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete zv\00FDrazni\0165 riadky alebo st\013Apce d\00E1t na z\00E1klade zadanej podmienky.</p>'),
'',
unistr('<p><strong>Zoznam zv\00FDraznen\00ED</strong><br>'),
unistr('Zoznam zv\00FDraznen\00ED zobraz\00ED definovan\00E9 zv\00FDraznenia. Existuj\00FAce zv\00FDraznenie deaktivujete tak, \017Ee zru\0161\00EDte jeho v\00FDber.<br>'),
unistr('Kliknut\00EDm na polo\017Eku Prida\0165 (&plus;) vytvor\00EDte nov\00E9 zv\00FDraznenie a kliknut\00EDm na polo\017Eku Odstr\00E1ni\0165 (&minus;) odoberiete existuj\00FAce zv\00FDraznenie.</p>'),
'',
unistr('<p><strong>Nastavenia zv\00FDraznenia</strong><br>'),
unistr('Pomocou tohto formul\00E1ra definujete vlastnosti zv\00FDraznenia.<br>'),
unistr('Zadajte n\00E1zov, vyberte polo\017Eku Riadok alebo St\013Apec a vyberte farebn\00E9 ozna\010Denie HTML pre pozadie a text.<br>'),
unistr('Vyberte pr\00EDslu\0161n\00FD <strong>Typ podmienky</strong> na zv\00FDraznenie konkr\00E9tnych d\00E1t:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Riadok - zv\00FDraznenie term\00EDnu v ka\017Edom st\013Apci.<br>'),
unistr('&nbsp;&nbsp;&nbsp;St\013Apec - zv\00FDraznenie v r\00E1mci konkr\00E9tneho st\013Apca na z\00E1klade zadan\00E9ho oper\00E1tora a hodnoty.</p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219456465027538)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre zv\00FDraznenie')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218071409027538)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete ulo\017Ei\0165 vykonan\00E9 zmeny aktu\00E1lneho rozlo\017Eenia a konfigur\00E1cie mrie\017Eky.<br>'),
unistr('V\00FDvoj\00E1ri aplik\00E1ci\00ED m\00F4\017Eu definova\0165 viacer\00E9 alternat\00EDvne rozlo\017Eenia zost\00E1v. Tam kde je to povolen\00E9, m\00F4\017Eete vy a \010Fal\0161\00ED koncov\00ED pou\017E\00EDvatelia ulo\017Ei\0165 zostavu ako verejn\00FA, v\010Faka \010Domu bude dostupn\00E1 v\0161etk\00FDm pou\017E\00EDvate\013Eom mrie\017Eky. Zostavu m\00F4\017Eete ulo\017Ei\0165 aj ako s')
||unistr('\00FAkromn\00FA a budete ju m\00F4c\0165 zobrazi\0165 len vy.</p>'),
unistr('<p>Vyberte z dostupn\00FDch typov a zadajte n\00E1zov ulo\017Eenej zostavy.</p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219237958027538)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Pomoc pre zostavu',
''))
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217434294027538)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomocou tohto dial\00F3gov\00E9ho okna m\00F4\017Eete nastavi\0165 poradie zobrazenia.</p>'),
'',
'<p><strong>Zoznam triedenia</strong><br>',
unistr('Dial\00F3gov\00E9 okno Triedi\0165 zobrazuje zoznam konfigurovan\00FDch pravidiel triedenia.<br>'),
unistr('Kliknut\00EDm na polo\017Eku Prida\0165 (&plus;) vytvor\00EDte st\013Apec triedenia a kliknut\00EDm na polo\017Eku Odstr\00E1ni\0165 (&minus;) st\013Apec triedenia odoberiete.<br>'),
unistr('Kliknut\00EDm na polo\017Eky Presun\00FA\0165 nahor (&uarr;) a Presun\00FA\0165 nadol (&darr;) presuniete vybran\00FD st\013Apec triedenia nad alebo pod ostatn\00E9 st\013Apce triedenia.</p>'),
'',
'<p><strong>Nastavenia triedenia</strong><br>',
unistr('Vyberte st\013Apec triedenia, smer triedenia a sp\00F4sob zoradenia st\013Apcov null (st\013Apcov bez hodnoty).</p>'),
'',
unistr('<p><em>Pozn\00E1mka: D\00E1ta sa m\00F4\017Eu triedi\0165 pod\013Ea st\013Apcov, ktor\00E9 nie s\00FA zobrazen\00E9, ale triedenie nemus\00ED by\0165 mo\017En\00E9 pre v\0161etky st\013Apce.</em><br>'),
unistr('<em>Zobrazen\00E9 st\013Apce sa m\00F4\017Eu triedi\0165 stla\010Den\00EDm \0161\00EDpok nahor (vzostupne) alebo nadol (zostupne) na konci z\00E1hlavia st\013Apcov. Ak chcete do existuj\00FAceho triedenia prida\0165 n\00E1sledn\00FD st\013Apec, podr\017Ete kl\00E1ves Shift a kliknite na \0161\00EDpku nahor alebo nadol.</em></p>')))
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219807996027538)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Pomoc pre triedenie'
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129219081964027538)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Pomoc pre odber'
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172648183027524)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'sk'
,p_message_text=>unistr('Skry\0165')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137046078027513)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zv\00FDrazni\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206260099027534)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'sk'
,p_message_text=>'Maximum'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207039748027535)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'sk'
,p_message_text=>'Vodorovne'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165639582027522)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'sk'
,p_message_text=>'hod.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129170643467027524)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'sk'
,p_message_text=>'Ikona'
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135956163027513)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'sk'
,p_message_text=>'Zobrazenie ikon'
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163890379027521)
,p_name=>'APEX.IG.IN'
,p_message_language=>'sk'
,p_message_text=>'je v'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172251792027524)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'sk'
,p_message_text=>unistr('Neakt\00EDvne nastavenie')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172335574027524)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>unistr('Neakt\00EDvne nastavenia')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179978254027526)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Das spracovania po\017Eiadavky na interakt\00EDvnu mrie\017Eku sa vyskytla intern\00E1 chyba.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067870664027492)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Typ filtra st\013Apca "%0" pre st\013Apec "%1" nie je podporovan\00FD.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218858550027538)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD form\00E1t d\00E1tumu')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193610079027530)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Interakt\00EDvna mrie\017Eka nepodporuje definovanie filtra pre st\013Apec %0.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193565033027530)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je platn\00FD typ filtra na definovanie filtra interakt\00EDvnej mrie\017Eky.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074401920027494)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD form\00E1t \010D\00EDsla')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221524686027539)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E9 nastavenie')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221639781027539)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E9 nastavenia')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212719102027536)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota Triedi\0165 pod\013Ea bola nastaven\00E1 na %0, ale pre %0 nebol vybran\00FD \017Eiadny st\013Apec.')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210088545027535)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E1 hodnota')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205110260027534)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezobrazen\00E9')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164600478027522)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'sk'
,p_message_text=>'je v posl.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164891508027522)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'sk'
,p_message_text=>'je v nasl.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163771551027521)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('nie je pr\00E1zdne')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163676887027521)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('je pr\00E1zdne')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213552048027536)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Ozna\010Denie')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205598621027534)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Ozna\010Denie')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209482981027535)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'sk'
,p_message_text=>unistr('Posledn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153962627027518)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Posledn\00FD de\0148')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154110309027519)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'sk'
,p_message_text=>unistr('Posledn\00E1 hodina')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154600854027519)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('Posledn\00E1 min\00FAta')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153670423027518)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'sk'
,p_message_text=>unistr('Minul\00FD mesiac')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153764416027518)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('Minul\00FD t\00FD\017Ede\0148')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153841287027518)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'sk'
,p_message_text=>'Posl. %0 d.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154093734027518)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'sk'
,p_message_text=>'Posl. %0 hod.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154746081027519)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'sk'
,p_message_text=>'Posl. %0 min.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154500192027519)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'sk'
,p_message_text=>'Posl. %0 mes.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154443459027519)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('Posl. %0 t\00FD\017E.')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153419685027518)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'sk'
,p_message_text=>'Posl. %0 r.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153595019027518)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Minul\00FD rok')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213797233027537)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'sk'
,p_message_text=>'Zarovnanie bunky'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213866883027537)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Ei\0165 skupinu pre')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164284466027522)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'sk'
,p_message_text=>unistr('je men\0161ie ako')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164368722027522)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'sk'
,p_message_text=>unistr('je men\0161ie alebo rovnak\00E9 ako')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207627076027535)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ciarov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207733850027535)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ciarov\00FD s plochou')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214101683027537)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'sk'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206386658027534)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'sk'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216607095027537)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'sk'
,p_message_text=>unistr('Viacer\00E9 adresy odde\013Ete \010Diarkami')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165462249027522)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('zodpoved\00E1 regul\00E1rnemu v\00FDrazu')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189866717027529)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'sk'
,p_message_text=>'Maximum'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224153314027540)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00E9 maximum')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190046238027529)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'sk'
,p_message_text=>unistr('Medi\00E1n')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224256766027540)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00FD medi\00E1n')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189769183027529)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'sk'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165585859027522)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'sk'
,p_message_text=>'min.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190537357027530)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'sk'
,p_message_text=>'min. dozadu'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224036133027540)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00E9 minimum')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165967290027522)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'sk'
,p_message_text=>'mes.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172577331027524)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1ta obsahuj\00FA viac ako %0 riadkov, \010Do prekra\010Duje maxim\00E1lny povolen\00FD po\010Det. Ak chcete zobrazi\0165 v\00FDsledky, pou\017Eite \010Fal\0161ie filtre.')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198393535027532)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Je potrebn\00E9 zada\0165 statick\00E9 ID oblasti, preto\017Ee str\00E1nka obsahuje viacero interakt\00EDvnych mrie\017Eok.')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168637300027523)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168878028027523)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomenovan\00E1 zostava')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152836617027518)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci de\0148')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152621159027518)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAca hodina')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154848787027519)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAca min\00FAta')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153132929027518)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci mesiac')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153032999027518)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci t\00FD\017Ede\0148')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152907136027518)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'sk'
,p_message_text=>'Nasl. %0 d.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129152708170027518)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'sk'
,p_message_text=>'Nasl. %0 hod.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154919972027519)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'sk'
,p_message_text=>'Nasl. %0 min.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154235283027519)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'sk'
,p_message_text=>'Nasl. %0 mes.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129154313546027519)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasl. %0 t\00FD\017E.')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153330506027518)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'sk'
,p_message_text=>'Nasl. %0 r.'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129153205510027518)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci rok')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164558133027522)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'sk'
,p_message_text=>'nie medzi'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163579744027521)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'sk'
,p_message_text=>unistr('nerovn\00E1 sa')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228366549027541)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Oblas\0165 s ID %0 nie je oblas\0165 interakt\00EDvnej mrie\017Eky alebo neexistuje v aplik\00E1cii %1.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163937990027521)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'sk'
,p_message_text=>'nie je v'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164785838027522)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'sk'
,p_message_text=>'nie je v posl.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129164900184027522)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'sk'
,p_message_text=>'nie je v nasl.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172413852027524)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Nena\0161li sa \017Eiadne d\00E1ta')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209271506027535)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'sk'
,p_message_text=>'Hodnoty Null'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214379186027537)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'sk'
,p_message_text=>unistr('Numerick\00E9')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209501477027535)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'sk'
,p_message_text=>'Vyp.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209645600027535)
,p_name=>'APEX.IG.ON'
,p_message_language=>'sk'
,p_message_text=>'Zap.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162780032027521)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'sk'
,p_message_text=>unistr('pred 1 min\00FAtou')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217182080027538)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'sk'
,p_message_text=>unistr('Otvori\0165 v\00FDber farby: %0')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206015974027534)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diatok')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169771280027523)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Oper\00E1tor')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205493570027534)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Orient\00E1cia')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207853594027535)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'sk'
,p_message_text=>unistr('Kol\00E1\010Dov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171008818027524)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'sk'
,p_message_text=>unistr('Kontingen\010Dn\00E1 zostava')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136225122027513)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Kontingen\010Dn\00E9 zobrazenie')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129217051313027538)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnoty odde\013Ete pomocou "%0"')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129207904777027535)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pol\00E1rny')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213201029027536)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'sk'
,p_message_text=>'Stred'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213302913027536)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'sk'
,p_message_text=>'Koniec'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129213134762027536)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diatok')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168912279027523)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'sk'
,p_message_text=>unistr('Prim\00E1rne')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169287778027523)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Prim\00E1rne predvolen\00E9')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185750663027528)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Prim\00E1rna zostava')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059399009027490)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zahrn\00FA\0165 zna\010Dky pr\00EDstupnosti')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056779585027489)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'sk'
,p_message_text=>unistr('Na \0161\00EDrku')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056886320027489)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'sk'
,p_message_text=>unistr('Na v\00FD\0161ku')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056613732027489)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'sk'
,p_message_text=>unistr('Orient\00E1cia str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056586491027489)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'sk'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056478921027489)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'sk'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059583936027490)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlastn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056232154027489)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'sk'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056133001027489)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'sk'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056391968027489)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'sk'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056071485027489)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'sk'
,p_message_text=>unistr('Ve\013Ekos\0165 str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021626273027478)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 form\00E1tovanie RTF')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208099581027535)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Radarov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208174110027535)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozsahov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218305121027538)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnovi\0165')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173235190027524)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnovi\0165 riadok')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172030486027524)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnovi\0165 riadky')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177218551027525)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Oblas\0165 interakt\00EDvnej mrie\017Eky neexistuje v aplik\00E1cii %0, na str\00E1nke %1 a v oblasti %2.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137779557027514)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165 %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168347523027523)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'sk'
,p_message_text=>'Zostava'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227528722027541)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zostava odstr\00E1nen\00E1')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227260137027541)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Alternat\00EDvna zostava ulo\017Een\00E1 pre v\0161etk\00FDch pou\017E\00EDvate\013Eov')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227129892027541)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Predvolen\00E1 zostava ulo\017Een\00E1 pre v\0161etk\00FDch pou\017E\00EDvate\013Eov')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227401448027541)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FAkromn\00E1 zostava ulo\017Een\00E1')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227379408027541)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'sk'
,p_message_text=>unistr('Verejn\00E1 zostava ulo\017Een\00E1 pre v\0161etk\00FDch pou\017E\00EDvate\013Eov')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177377704027526)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Een\00E1 interakt\00EDvna mrie\017Eka s n\00E1zvom %0 neexistuje.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162620015027521)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1ta mrie\017Eky spred %0 min\00FAt')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162538834027521)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1ta mrie\017Eky spred 1 min\00FAty')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098027654027502)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Zostava interakt\00EDvnej mrie\017Eky neexistuje.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220525240027539)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zostava - upravi\0165')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177189156027525)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Een\00E1 interakt\00EDvna mrie\017Eka s ID %0 neexistuje.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129220494604027539)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zostava - ulo\017Ei\0165 ako')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137895654027514)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavenia mrie\017Eky')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228445188027541)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Een\00E1 interakt\00EDvna mrie\017Eka so statick\00FDm ID %0 neexistuje.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223421558027540)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'sk'
,p_message_text=>'Zobrazenie zostavy'
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129136998528027513)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173312337027524)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'sk'
,p_message_text=>unistr('Vr\00E1ti\0165 zmeny')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172160501027524)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('Vr\00E1ti\0165 riadky')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169333235027523)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'sk'
,p_message_text=>'Riadok'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168250903027523)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det riadkov na str\00E1nku')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228054150027541)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'sk'
,p_message_text=>'Akcie pre riadok'
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229221760027541)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'sk'
,p_message_text=>'Akcie pre riadok %0'
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137208549027513)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182348109027527)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'sk'
,p_message_text=>unistr('ulo\017Een\00E9')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086919904027498)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Een\00E1 zostava: %0')
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135435798027513)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Een\00E9 zostavy')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135562885027513)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Predvolen\00E9')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109016771027505)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov ulo\017Eenej zostavy %0 u\017E existuje. Zadajte nov\00FD n\00E1zov.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135655103027513)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FAkromn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135791631027513)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'sk'
,p_message_text=>unistr('Verejn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223129209027539)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165 ako')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171404652027524)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165 nastavenia zostavy')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208280752027535)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozptylov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135390992027513)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215427754027537)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Ead\00E1vanie: V\0161etky textov\00E9 st\013Apce')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135248248027513)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165: %0')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214771169027537)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Ead\00E1vanie: Cel\00FD text')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162483364027521)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'sk'
,p_message_text=>unistr('H\013Eada\0165 "%0"')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204893593027534)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'sk'
,p_message_text=>unistr('- Vybra\0165 -')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144989361027516)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198023669027532)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'sk'
,p_message_text=>'Vyberte jeden riadok v nadradenej oblasti'
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135131038027513)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 st\013Apce na vyh\013Ead\00E1vanie')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227741913027541)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Akcie v\00FDberu')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145116106027516)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber bunky')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145090419027516)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDber riadka')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216012771027537)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165 ako elektronick\00FA po\0161tu')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208647093027535)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00E9ria')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132839260027512)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188079751027529)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 celkov\00FA hodnotu')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172996035027524)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazenie jedn\00E9ho riadka')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171251610027524)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208770406027535)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165 pod\013Ea')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228197767027541)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('M\00F4\017Eete definova\0165 len jedno triedenie na st\013Apec.')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227978038027541)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'sk'
,p_message_text=>unistr('Zmeni\0165')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129209752983027535)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'sk'
,p_message_text=>unistr('Z\00E1sobn\00EDk')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165292854027522)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'sk'
,p_message_text=>unistr('za\010D\00EDna sa na')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208330545027535)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'sk'
,p_message_text=>unistr('Burzov\00FD')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127611155027511)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Roztiahnu\0165 \0161\00EDrky st\013Apcov')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129171650272027524)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'sk'
,p_message_text=>'Odber'
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189610187027529)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FA\010Det')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229491436027541)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'sk'
,p_message_text=>unistr('Interakt\00EDvna mrie\017Eka: zostava: %0, zobrazenie: %1.')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129223538467027540)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00FD s\00FA\010Det')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206526374027534)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Cie\013E')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212910373027536)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'sk'
,p_message_text=>'Farba textu'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129137947199027514)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepn\00FA\0165')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020025628027478)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Mrie\017Eka')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187921525027529)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'sk'
,p_message_text=>'Popis'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129168454361027523)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'sk'
,p_message_text=>'Typ'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129172843021027524)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161i\0165 zmrazenie')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169976771027523)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'sk'
,p_message_text=>'Jednotka'
,p_is_js_message=>true
,p_version_scn=>2693419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215804427027537)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'sk'
,p_message_text=>unistr('Existuj\00FA neulo\017Een\00E9 zmeny. Chcete pokra\010Dova\0165?')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129169827032027523)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'sk'
,p_message_text=>'Hodnota'
,p_is_js_message=>true
,p_version_scn=>2693419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205617837027534)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'sk'
,p_message_text=>'Hodnota'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210501809027536)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eaduje sa hodnota.')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195772787027531)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota (\010Dasov\00E9 p\00E1smo nemo\017Eno zmeni\0165)')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214464041027537)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'sk'
,p_message_text=>'Text'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206955864027534)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'sk'
,p_message_text=>'Zvisle'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167995360027523)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103061413027503)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Mrie\017Eka je v re\017Eime zobrazenia. Stla\010Dte t\00FAto vo\013Ebu, ak chcete prepn\00FA\0165 do re\017Eimu \00FAprav.')
,p_is_js_message=>true
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204986534027534)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazen\00E9')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129206410981027534)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'sk'
,p_message_text=>'Objem'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129165875977027522)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('t\00FD\017E.')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205032138027534)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'sk'
,p_message_text=>unistr('Minim\00E1lna \0161\00EDrka st\013Apca (v pixeloch)')
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157010698027519)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'sk'
,p_message_text=>'%0 je medzi %1 a %2'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156731774027519)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'sk'
,p_message_text=>'%0 obsahuje %1'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156834986027519)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'sk'
,p_message_text=>'%0 neobsahuje %1'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132221441027512)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 sa neza\010D\00EDna na %1')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155538781027519)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 sa rovn\00E1 %1')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155732218027519)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v\00E4\010D\0161ie ako %1')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155862549027519)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v\00E4\010D\0161ie alebo rovnak\00E9 ako %1')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156538247027519)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'sk'
,p_message_text=>'%0 je v %1'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157735185027520)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v posledn\00FDch %1 d\0148och')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157550560027520)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v posledn\00FDch %1 hodin\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157328123027519)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v posledn\00FDch %1 min\00FAtach')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158108790027520)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v posledn\00FDch %1 mesiacoch')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157987243027520)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v posledn\00FDch %1 t\00FD\017Ed\0148och')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158333850027520)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v posledn\00FDch %1 rokoch')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157651514027520)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'sk'
,p_message_text=>'%0 je v poslednom dni'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157425314027520)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'sk'
,p_message_text=>'%0 je v poslednej hodine'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157244130027519)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v poslednej min\00FAte')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158072965027520)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'sk'
,p_message_text=>'%0 je v poslednom mesiaci'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157867545027520)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v poslednom t\00FD\017Edni')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158263448027520)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'sk'
,p_message_text=>'%0 je v poslednom roku'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160107525027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcich %1 d\0148och')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159963774027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcich %1 hodin\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159710899027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcich %1 min\00FAtach')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160591999027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcich %1 mesiacoch')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160303497027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcich %1 t\00FD\017Ed\0148och')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160762116027521)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcich %1 rokoch')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160057628027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcom dni')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159876783027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcej hodine')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159662756027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcej min\00FAte')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160447752027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcom mesiaci')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160254556027520)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcom t\00FD\017Edni')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160648651027521)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je v nasleduj\00FAcom roku')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156257174027519)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota %0 nie je pr\00E1zdna')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156150814027519)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota %0 je pr\00E1zdna')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155917108027519)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je men\0161ie ako %1')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156044020027519)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je men\0161ie alebo rovnak\00E9 ako %1')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156331248027519)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'sk'
,p_message_text=>'%0 je ako %1'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156982912027519)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 zodpoved\00E1 regul\00E1rnemu v\00FDrazu %1')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162837672027521)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'sk'
,p_message_text=>unistr('pred %0 min\00FAtami')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129157164326027519)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je medzi %1 a %2'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155699699027519)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 sa nerovn\00E1 %1')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156648128027519)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je v %1'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158950833027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v posledn\00FDch %1 d\0148och')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158783747027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v posledn\00FDch %1 hodin\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158534955027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v posledn\00FDch %1 min\00FAtach')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159359012027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v posledn\00FDch %1 mesiacoch')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159144952027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v posledn\00FDch %1 t\00FD\017Ed\0148och')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159578751027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v posledn\00FDch %1 rokoch')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158858554027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je v poslednom dni'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158618815027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je v poslednej hodine'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129158423358027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v poslednej min\00FAte')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159254029027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je v poslednom mesiaci'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159049595027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v poslednom t\00FD\017Edni')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129159432114027520)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je v poslednom roku'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161338449027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcich %1 d\0148och')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161101577027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcich %1 hodin\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160968986027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcich %1 min\00FAtach')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161727914027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcich %1 mesiacoch ')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161507818027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcich %1 t\00FD\017Ed\0148och')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161977718027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcich %1 rokoch')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161246662027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcom dni')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161083727027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcej hodine')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129160840828027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcej min\00FAte')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161678308027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcom mesiaci')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161447219027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcom t\00FD\017Edni')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129161827759027521)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je v nasleduj\00FAcom roku')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129156410478027519)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je ako %1'
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163399470027521)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 sa za\010D\00EDna na %1')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205793853027534)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'sk'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166006738027522)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'sk'
,p_message_text=>'r.'
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205897927027534)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'sk'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205999394027534)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'sk'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129214925237027537)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'sk'
,p_message_text=>unistr('Pondelok, 12. janu\00E1r 2016')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215028148027537)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'sk'
,p_message_text=>unistr('Janu\00E1r')
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215176220027537)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'sk'
,p_message_text=>'16 hod. uplynuli'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129215255559027537)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'sk'
,p_message_text=>'o 16 hod.'
,p_is_js_message=>true
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033213827027482)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025218979027480)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Potiahnite obr\00E1zok a pomocou jazdca pribl\00ED\017Eenia zme\0148te jeho poz\00EDciu v r\00E1me.</p>'),
'',
unistr('<p>Pri zameran\00ED na n\00E1stroj na orezanie obr\00E1zka bud\00FA dostupn\00E9 nasleduj\00FAce kl\00E1vesov\00E9 skratky:</p>'),
'<ul>',
unistr('    <li>\0160\00EDpka do\013Eava: presun\00FA\0165 obr\00E1zok do\013Eava*</li>'),
unistr('    <li>\0160\00EDpka nahor: presun\00FA\0165 obr\00E1zok nahor*</li>'),
unistr('    <li>\0160\00EDpka doprava: presun\00FA\0165 obr\00E1zok doprava*</li>'),
unistr('    <li>\0160\00EDpka nadol: presun\00FA\0165 obr\00E1zok nadol*</li>'),
unistr('    <li>I: Pribl\00ED\017Ei\0165</li>'),
unistr('    <li>O: Oddiali\0165</li>'),
unistr('    <li>L: Oto\010Di\0165 do\013Eava</li>'),
unistr('    <li>R: Oto\010Di\0165 doprava</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Na zr\00FDchlenie presunu podr\017Ete stla\010Den\00FD kl\00E1ves Shift</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025414374027480)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre orezanie obr\00E1zka')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033318970027482)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025789922027480)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Oreza\0165 obr\00E1zok')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033418408027482)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Posu\0148te jazdec a upravte \00FArove\0148 pribl\00ED\017Eenia')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063047248027491)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD typ s\00FAboru. Podporovan\00E9 typy s\00FAborov %0.')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197494684027532)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'sk'
,p_message_text=>unistr('Preh\013Ead\00E1va\0165')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197122627027532)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 s\00FAbor')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197287533027532)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 s\00FAbory')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062876163027491)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Presunutie my\0161ou')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063241476027491)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165 s\00FAbory my\0161ou')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064687529027491)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte s\00FAbor alebo sem presu\0148te nejak\00FD s\00FAbor.')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064742322027491)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte s\00FAbory alebo sem presu\0148te nejak\00E9 s\00FAbory.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064883534027491)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte s\00FAbor alebo sem presu\0148te nejak\00FD s\00FAbor.')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064921654027492)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte s\00FAbory alebo sem presu\0148te nejak\00E9 s\00FAbory.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063120834027491)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det s\00FAborov: %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062937027027491)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FAbor je pr\00EDli\0161 ve\013Ek\00FD. Maxim\00E1lna ve\013Ekos\0165 s\00FAboru je %0.')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043448644027485)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nahr\00E1vanie viacer\00FDch s\00FAborov nie je podporovan\00E9.')
,p_is_js_message=>true
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026373503027480)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031863678027482)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Vy\017Eaduje sa adresa.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030709924027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'sk'
,p_message_text=>'Mesto'
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031135390027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'sk'
,p_message_text=>unistr('K\00F3d krajiny')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030813646027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'sk'
,p_message_text=>unistr('\010C\00EDslo domu')
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031782907027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zemepisn\00E1 \0161\00EDrka')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031648009027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zemepisn\00E1 d\013A\017Eka')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031548996027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 na mape')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031255478027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'sk'
,p_message_text=>unistr('Sk\00F3re')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030952180027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'sk'
,p_message_text=>unistr('PS\010C')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031090994027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'sk'
,p_message_text=>unistr('\0160t\00E1t')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030678565027481)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'sk'
,p_message_text=>'Ulica'
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030531525027481)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDsledky geok\00F3dovania')
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062058613027491)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'sk'
,p_message_text=>unistr('S geok\00F3dom')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062153451027491)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Bez geok\00F3du')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031478370027481)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031334582027481)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Nena\0161li sa \017Eiadne adresy.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129031904946027482)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Vy\017Eaduje sa %0.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138123544027514)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eaduje sa %0 alebo %1.')
,p_is_js_message=>true
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227602422027541)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 text pomoci pre %0.')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033685568027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 obraz')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033733124027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'sk'
,p_message_text=>unistr('Zvo\013Ete obr\00E1zky')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033514357027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Stiahnu\0165')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033805098027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Presunutie my\0161ou')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033965377027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165 obr\00E1zky my\0161ou')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034037188027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte obr\00E1zok alebo sem nejak\00FD obr\00E1zok presu\0148te.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034160708027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte alebo sem nejak\00E9 obr\00E1zky presu\0148te.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034254219027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte obr\00E1zok alebo sem nejak\00FD obr\00E1zok presu\0148te.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034370313027482)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte alebo sem nejak\00E9 obr\00E1zky presu\0148te.')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119041465027508)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diarknut\00E9')
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119166162027508)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'sk'
,p_message_text=>unistr('Neza\010Diarknut\00E9')
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146608448027516)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00E1zdne rozba\013Eovacie pole len na \010D\00EDtanie')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144480442027516)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00E1zdne pole so zoznamom len na \010D\00EDtanie')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144214835027516)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozba\013Eovacie pole len na \010D\00EDtanie')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129144394361027516)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'sk'
,p_message_text=>unistr('Pole so zoznamom len na \010D\00EDtanie')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060080776027490)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sk'
,p_message_text=>'#LABEL# nie je v platnom rozsahu od %0 do %1.'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060185118027490)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# nie je n\00E1sobkom hodnoty %0.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147467782027517)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'sk'
,p_message_text=>unistr('Prep\00EDna\010D len na \010D\00EDtanie')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088010748027498)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAprava polo\017Eky Len na \010D\00EDtanie s prepojen\00EDm')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059661704027490)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED zodpoveda\0165 hodnot\00E1m %0 a %1.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059894151027490)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'sk'
,p_message_text=>'Nie'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146139417027516)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'sk'
,p_message_text=>'Vyp.'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146208504027516)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'sk'
,p_message_text=>'Zap.'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059757853027490)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('\00C1no')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067646504027492)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'sk'
,p_message_text=>'Selektor jazyka'
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004093925027473)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 polo\017Eku')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180811509027527)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180924804027527)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004195061027473)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybran\00E9 polo\017Eky')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184644845027528)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'sk'
,p_message_text=>unistr('Roz\0161\00EDren\00E9')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184900959027528)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161i\0165')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184767067027528)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'sk'
,p_message_text=>unistr('V\0161eobecn\00E9')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185079277027528)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Vo\013Eby akt\00EDvnej \0161abl\00F3ny')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185670801027528)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vo\013Eby \0161abl\00F3ny nie s\00FA k dispoz\00EDcii, preto\017Ee tento komponent nie je na str\00E1nke vykreslen\00FD.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184586495027528)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Nena\0161li sa \017Eiadne vo\013Eby \0161abl\00F3ny.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184854286027528)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038616746027484)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165 kruh')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041097864027484)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlastn\00E9 \0161t\00FDly nie s\00FA platn\00FD objekt JSON.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038960755027484)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1stroj Vzdialenos\0165')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038788371027484)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nakresli\0165 kruh')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018582293027478)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lne miesto')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024929925027479)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FAradnice po\010Diato\010Dnej poz\00EDcie s\00FA neplatn\00E9.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013974349027476)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Diato\010Dn\00E1 poz\00EDcia mus\00ED by\0165 geometria bodu.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022501106027479)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'sk'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017706583027477)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'sk'
,p_message_text=>'Vrstva'
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188171693027529)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'sk'
,p_message_text=>'Vrstva: %0'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036925543027483)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'sk'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006668891027474)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'sk'
,p_message_text=>unistr('Spr\00E1vy')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022798201027479)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'sk'
,p_message_text=>'mi'
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187173880027528)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1ta obsahuj\00FA viac ako %0 riadkov, \010Do prekra\010Duje maxim\00E1lny povolen\00FD po\010Det.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017088743027477)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'sk'
,p_message_text=>unistr('&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Podmienky</a> &nbsp;&nbsp; D\00E1ta mapy &copy; 2021 HERE')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013660694027476)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tov\00FD typ SDO_GEOMETRY v tejto datab\00E1ze nie je dostupn\00FD.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017151856027477)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'sk'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Prispievatelia OpenStreetMap </a>'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041708372027484)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'sk'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Prispievatelia OpenStreetMap </a>'
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017988069027477)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'sk'
,p_message_text=>'Body'
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188245761027529)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det bodov: %0')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038842196027484)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'sk'
,p_message_text=>unistr('Pribl\00ED\017Eenie obd\013A\017Enika')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038519139027483)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018393145027477)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165 orient\00E1ciu na sever')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133120610027512)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepn\00FA\0165 na 2D re\017Eim')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133251556027512)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepn\00FA\0165 na 3D re\017Eim')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038407969027483)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepn\00FA\0165 upozornenie o autorsk\00FDch pr\00E1vach')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039076962027484)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'sk'
,p_message_text=>unistr('Celkov\00E1 vzdialenos\0165')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018086549027477)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'sk'
,p_message_text=>unistr('Pribl\00ED\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018200462027477)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'sk'
,p_message_text=>unistr('Oddiali\0165')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182732173027527)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'sk'
,p_message_text=>unistr('Tu\010Dn\00E9')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183623159027527)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Obr\00E1zok')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183240031027527)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlo\017Een\00FD k\00F3d')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195903586027531)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlo\017Ei\0165 obr\00E1zok')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196039915027531)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlo\017Ei\0165 prepojenie')
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182821412027527)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'sk'
,p_message_text=>unistr('Kurz\00EDva')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196666248027531)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'sk'
,p_message_text=>'Prepojenie'
,p_is_js_message=>true
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183577701027527)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'sk'
,p_message_text=>'Zoznam'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183432043027527)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoraden\00FD zoznam')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182909886027527)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Uk\00E1\017Eka')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183089501027527)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'sk'
,p_message_text=>unistr('Ni\010D na zobrazenie uk\00E1\017Eky')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183140644027527)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre\010Diarknut\00E9')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183349416027527)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezoraden\00FD zoznam')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162203936027521)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'sk'
,p_message_text=>unistr('aktu\00E1lne')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129218462808027538)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Eal\0161ie...')
,p_is_js_message=>true
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162115568027521)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'sk'
,p_message_text=>unistr('Zav\00E1dza sa')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076336183027495)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'sk'
,p_message_text=>unistr('Tla\010Didlo rozdelenia')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076277117027495)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'sk'
,p_message_text=>'Ponuka rozdelenia'
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193268447027530)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Spr\00E1va s upozornen\00EDm')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017355489027477)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 sa nena\0161lo')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167229556027522)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 \010D\00EDslo men\0161ie alebo rovnak\00E9 ako %0.')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167328698027522)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 platn\00E9 \010D\00EDslo.')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167482431027523)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# nezodpoved\00E1 \010D\00EDseln\00E9mu form\00E1tu %0 (pr\00EDklad: %1).')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167129836027522)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 \010D\00EDslo v\00E4\010D\0161ie alebo rovnak\00E9 ako %0.')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167002863027522)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED by\0165 \010D\00EDslo medzi %0 a %1.')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162300140027521)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'sk'
,p_message_text=>unistr('otvor\00ED sa v novom okne')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112165542027506)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00E1to str\00E1nka u\017E bola odoslan\00E1 a nem\00F4\017Ee sa znovu odosla\0165.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093545971027500)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Str\00E1nka "%1" aplik\00E1cie "%0" sa nena\0161la.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129035026027511)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('#LABEL# mus\00ED obsahova\0165 hodnotu.')
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019764660027478)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'sk'
,p_message_text=>unistr('Skry\0165 heslo')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019601737027478)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 heslo')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067229873027492)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165')
,p_is_js_message=>true
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181250826027527)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavrie\0165')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181167027027527)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1js\0165 %0')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181408947027527)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181367643027527)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058008211027489)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadajte h\013Eadan\00FD v\00FDraz s minim\00E1lnym po\010Dtom znakov %0.')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134306103027513)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozba\013Eovac\00ED zoznam hodn\00F4t: %0')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058142078027489)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadajte h\013Eadan\00FD v\00FDraz.')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005123591027474)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoznam hodn\00F4t')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057943997027489)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Nena\0161li sa \017Eiadne v\00FDsledky.')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057811402027489)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165 %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155019315027519)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'sk'
,p_message_text=>unistr('Podmienka vyh\013Ead\00E1vania')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181065208027527)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007297443027474)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eaduje sa %0.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019576415027478)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das tla\010De zostavy.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030354954027481)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'sk'
,p_message_text=>unistr('Nepodarilo sa vytla\010Di\0165 dokument pomocou nakonfigurovan\00E9ho tla\010Dov\00E9ho servera.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053071526027488)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das vyhodnocovania parametra %0 pri volan\00ED %1. Detaily n\00E1jdete v protokole ch\00FDb.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191710908027530)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'sk'
,p_message_text=>unistr('Spracov\00E1va sa')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050807626027487)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051938137027488)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00E1to webov\00E1 lokalita m\00E1 funkcionalitu aplik\00E1cie. Na \010Do najlep\0161ie fungovanie si ju nain\0161talujte vo svojom zariaden\00ED.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053252511027488)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054859746027488)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161talova\0165 t\00FAto aplik\00E1ciu')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039657364027484)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zd\00E1 sa, \017Ee va\0161e zariadenie alebo preh\013Ead\00E1va\010D moment\00E1lne nepodporuj\00FA in\0161tal\00E1ciu progres\00EDvnych webov\00FDch aplik\00E1ci\00ED.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034756348027482)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'sk'
,p_message_text=>unistr('1. \0164uknite na ikonu <strong>Zdie\013Ea\0165</strong>')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034830802027482)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'sk'
,p_message_text=>unistr('2. Posu\0148te sa nadol a \0165uknite na polo\017Eku <strong>Prida\0165 na domovsk\00FA str\00E1nku</strong>')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051287979027487)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'sk'
,p_message_text=>unistr('3. \0164uknite na tla\010Didlo <strong style="color:#007AE1;">Prida\0165</strong> na potvrdenie')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050343016027487)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'sk'
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
unistr('    <h1>Pripojenie nie je mo\017En\00E9</h1>'),
unistr('    <p>Zd\00E1 sa, \017Ee nastal probl\00E9m v sieti. Skontrolujte pripojenie a sk\00FAste to znova.</p>'),
unistr('    <button type="button">Sk\00FAsi\0165 znova</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050203805027487)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pripojenie nie je mo\017En\00E9')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096878882027501)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('V tomto zariaden\00ED sa nepodarilo aktivova\0165 upozornenia bez vy\017Eiadania.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102318031027503)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('R\00FDchle v\00FDbery pre %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102278780027503)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepojenie na r\00FDchly v\00FDber')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076082700027495)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'sk'
,p_message_text=>unistr('Vizu\00E1lne skryt\00FD prep\00EDna\010D')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020119338027478)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazenie jedn\00E9ho riadka')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202875883027533)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148133176027517)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Cel\00FD de\0148')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225778056027540)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165 pozvanie')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225547005027540)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Vo\013Eby')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149909025027517)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Denn\00E9 zobrazenie pre cel\00FD de\0148 ')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149768263027517)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'sk'
,p_message_text=>unistr('Denn\00E9 zobrazenie pre d\00E1ta s \010Dasom ')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193903956027531)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('De\0148')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188985674027529)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>'Popis'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072410297027494)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'sk'
,p_message_text=>'CSV'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072219713027494)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'sk'
,p_message_text=>'iCal'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072120195027494)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'sk'
,p_message_text=>'PDF'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072394573027494)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'sk'
,p_message_text=>'XML'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071874978027494)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Koncov\00FD d\00E1tum')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129072018925027494)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov udalosti')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225675122027540)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'sk'
,p_message_text=>'Pozvanie'
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194073194027531)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'sk'
,p_message_text=>'Zoznam'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193783992027530)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'sk'
,p_message_text=>'Mesiac'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196357409027531)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210377537027536)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'sk'
,p_message_text=>unistr('\017Diadne udalosti')
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225907966027540)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravte existuj\00FAcu udalos\0165.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225838500027540)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'sk'
,p_message_text=>'Odosiela sa pozvanie e-mailom.'
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196454781027531)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204117288027534)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165 e-mail')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203975524027534)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165 e-mail')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226546160027541)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('V\0161etky polia s\00FA povinn\00E9.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226438897027541)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165 pozvanie')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225461420027540)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'sk'
,p_message_text=>'Predmet'
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204053545027534)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'sk'
,p_message_text=>'Komu'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071913469027494)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Diato\010Dn\00FD d\00E1tum')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202118503027533)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'sk'
,p_message_text=>unistr('Formul\00E1r pre %0')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149517781027517)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Cas')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196554357027531)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'sk'
,p_message_text=>'Dnes'
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194576773027531)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193866881027531)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FD\017Ede\0148')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149822715027517)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FD\017Edenn\00E9 zobrazenie pre cel\00FD de\0148')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149629451027517)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FD\017Edenn\00E9 zobrazenie pre d\00E1ta s \010Dasom')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194447269027531)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'sk'
,p_message_text=>'Rok'
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194176087027531)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apce...')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194251580027531)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavies\0165 \010Fal\0161ie...')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123603347027509)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065178463027492)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavies\0165 \010Fal\0161ie...')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067405769027492)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'sk'
,p_message_text=>unistr('H\013Eada\0165...')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129194325666027531)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavies\0165 \010Fal\0161ie...')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196297182027531)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('ID oblasti %0 sa nena\0161lo.')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067317076027492)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nena\0161li sa \017Eiadne d\00E1ta')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094808978027501)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 znovunastavi\0165 str\00E1nkovanie oblasti.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058526907027490)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri nastaven\00ED str\00E1nkovania oblasti.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188391429027529)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apce...')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042899368027485)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomal\00E9 zav\00E1dzanie je nekompatibiln\00E9 so slotmi v oblasti %0, ktor\00E1 je jednou (\010Diastkovou) oblas\0165ou. Bu\010F deaktivujte pomal\00E9 zav\00E1dzanie pre t\00FAto oblas\0165, alebo presu\0148te komponenty slotov do inej oblasti.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038136888027483)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'sk'
,p_message_text=>unistr('\0160abl\00F3na skupiny ch\00FDba v komponente \0161abl\00F3ny pre %0.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033197893027482)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je jedna (\010Diastkov\00E1) oblas\0165, ktor\00E1 vr\00E1tila viac riadkov.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196160064027531)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Typ oblasti %0 nie je podporovan\00FD.')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058496383027490)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das vykres\013Eovania oblasti "#COMPONENT_NAME#".')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129178310027511)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('#COLUMN_HEADER# mus\00ED obsahova\0165 hodnotu.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010709729027475)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadajte rozlo\017Eenie zostavy.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225072545027540)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('%0, editor form\00E1tovan\00E9ho textu')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131256534027512)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'sk'
,p_message_text=>unistr('HTML markup form\00E1tovania RTF prekra\010Duje maxim\00E1lnu d\013A\017Eku polo\017Eky (skuto\010Dn\00E1 d\013A\017Eka %0, povolen\00FD po\010Det znakov: %1)')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040626266027484)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Editor form\00E1tovan\00E9ho textu len na \010D\00EDtanie')
,p_is_js_message=>true
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040591153027484)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Editor form\00E1tovan\00E9ho textu')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040343279027484)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'sk'
,p_message_text=>'Zarovnanie'
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040482550027484)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Eal\0161ie n\00E1stroje')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040195213027484)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'sk'
,p_message_text=>unistr('P\00EDsmo')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040096887027484)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'sk'
,p_message_text=>unistr('Form\00E1tovanie')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040265138027484)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'sk'
,p_message_text=>'Zoznamy'
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193367224027530)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185855357027528)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Duplikova\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184106363027528)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazen\00E9 st\013Apce')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184088322027528)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyl\00FA\010Di\0165 hodnoty null')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193421787027530)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147749010027517)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165 nadol')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147869808027517)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165 nahor')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183827827027527)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184491014027528)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Ostatn\00E9 st\013Apce')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183945347027528)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184278143027528)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'sk'
,p_message_text=>'Riadok %0'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129184324426027528)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'sk'
,p_message_text=>'Riadok %0 z %1'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185946301027528)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnovi\0165')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186010070027528)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vr\00E1ti\0165 zmeny')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129183756305027527)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'sk'
,p_message_text=>'Nastavenia'
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142910564027515)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Napr\00EDklad %0')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147277281027516)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDklad: %0')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059942607027490)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('1 v\00FDsledok')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057057261027489)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det v\00FDsledkov: %0')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108807853027505)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Str\00E1nkovanie')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108983083027505)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDsledky, %0 - %1')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004626165027474)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovu sa prihl\00E1si\0165')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004578125027474)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Va\0161a rel\00E1cia bola ukon\010Den\00E1')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004714637027474)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'sk'
,p_message_text=>unistr('Pred\013A\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004330203027473)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'sk'
,p_message_text=>unistr('Va\0161a rel\00E1cia bude ukon\010Den\00E1 o %0. Chcete ju pred\013A\017Ei\0165?')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004409753027473)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'sk'
,p_message_text=>unistr('Va\0161a rel\00E1cia bude ukon\010Den\00E1 o %0 a nem\00F4\017Ee sa pred\013A\017Ei\0165. Teraz ulo\017Ete svoju pr\00E1cu, aby ste sa vyhli strate d\00E1t.')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203775935027534)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania k\00F3du v\00FDmazu datab\00E1zovej rel\00E1cie.')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093435815027500)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das spracovania k\00F3du nastavenia datab\00E1zovej rel\00E1cie.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063876589027491)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Va\0161a rel\00E1cia bola ukon\010Den\00E1.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202917094027533)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'sk'
,p_message_text=>unistr('Zatvorte toto dial\00F3gov\00E9 okno a stla\010Dte tla\010Didlo obnovenia preh\013Ead\00E1va\010Da, aby ste z\00EDskali nov\00FA rel\00E1ciu.')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221808957027539)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('<a href="%0">Prihl\00E1si\0165 sa</a> znova na vytvorenie novej rel\00E1cie.')
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106111439027504)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'sk'
,p_message_text=>unistr('Rel\00E1cia nie je platn\00E1')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149287048027517)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'sk'
,p_message_text=>unistr('V rel\00E1cii Real Application Security nebolo pre pou\017E\00EDvate\013Ea "%0" mo\017En\00E9 aktivova\0165 dynamick\00E9 roly.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091359173027499)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-99900 Nepodarilo sa vytvori\0165 jednozna\010Dn\00E9 ID rel\00E1cie: %0')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020419765027478)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tov\00FD typ CLOB stavu rel\00E1cie nie je pre polo\017Eku %0 povolen\00FD.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039829731027484)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nahradenie polo\017Eiek d\00E1tov\00E9ho typu CLOB stavu rel\00E1cie nie je podporovan\00E9.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108661049027505)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Poru\0161enie ochrany stavu rel\00E1cie: Pr\00ED\010Dinou m\00F4\017Ee by\0165 manu\00E1lna zmena chr\00E1nenej polo\017Eky str\00E1nky %0. Ak neviete, \010Do t\00FAto chybu sp\00F4sobilo, po\017Eiadajte o pomoc administr\00E1tora aplik\00E1cie.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229848830027542)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Poru\0161enie ochrany str\00E1nky: Pr\00ED\010Dinou m\00F4\017Ee by\0165 odoslanie str\00E1nky, ktor\00E1 sa e\0161te nena\010D\00EDtala, alebo manu\00E1lna zmena chr\00E1nen\00FDch polo\017Eiek str\00E1nky. \010Eal\0161iu pomoc v\00E1m poskytne administr\00E1tor aplik\00E1cie.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228931242027541)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 obsahuje jeden z nasleduj\00FAcich neplatn\00FDch znakov &<>"/;,*|=% alebo --')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229004460027541)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 obsahuje jeden z nasleduj\00FAcich neplatn\00FDch znakov &<>"/;,*|=% alebo --, pr\00EDpadne nov\00FD riadok.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228750610027541)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 obsahuje \0161peci\00E1lne znaky. Povolen\00E9 s\00FA len znaky a-Z, 0-9 a medzery.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228861739027541)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 obsahuje <, > alebo ", \010Do s\00FA neplatn\00E9 znaky.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066289330027492)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'sk'
,p_message_text=>unistr('Nebol zadan\00FD \017Eiadny kontroln\00FD s\00FA\010Det na zobrazenie spracovania pre str\00E1nku, ktor\00E1 vy\017Eaduje kontroln\00FD s\00FA\010Det, ke\010F je minim\00E1lne jedna hodnota po\017Eiadavky, v\00FDmazu cache alebo argumentu odovzdan\00E1 ako parameter.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103587177027503)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Poru\0161enie ochrany stavu rel\00E1cie: Pr\00ED\010Dinou m\00F4\017Ee by\0165 manu\00E1lna zmena adresy URL obsahuj\00FAcej kontroln\00FD s\00FA\010Det alebo pou\017Eitie prepojenia s nespr\00E1vnym alebo ch\00FDbaj\00FAcim kontroln\00FDm \00FA\010Dtom. Ak neviete, \010Do t\00FAto chybu sp\00F4sobilo, po\017Eiadajte o pomoc administr\00E1tora ')
||unistr('aplik\00E1cie.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185122487027528)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavi\0165 vypnutie re\017Eimu s vysok\00FDm kontrastom')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185210810027528)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavi\0165 zapnutie re\017Eimu s vysok\00FDm kontrastom')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049644772027487)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavenie aplik\00E1cie %0 nie je mo\017En\00E9 aktualizova\0165, preto\017Ee je odoberan\00E9 z inej aplik\00E1cie.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099982819027502)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'sk'
,p_message_text=>'Na koniec'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100185598027502)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'sk'
,p_message_text=>'Nadol'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100299406027502)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100341552027502)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165 v\0161etko')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100425825027502)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100531822027502)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165 v\0161etko')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100663558027502)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099875822027502)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'sk'
,p_message_text=>unistr('Na za\010Diatok')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100081211027502)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'sk'
,p_message_text=>'Nahor'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211682425027536)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'sk'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212339715027536)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>'o %0 d.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211504987027536)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'sk'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212436549027536)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>'o %0 hod.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211353077027536)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'sk'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212541236027536)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>'o %0 min.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211969621027536)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'sk'
,p_message_text=>'%0 mes.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212184863027536)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>'o %0 mes.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211450183027536)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'sk'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212201804027536)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>'o %0 s.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211758616027536)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'sk'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212604586027536)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>unistr('o %0 t\00FD\017E.')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211846481027536)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'sk'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129212076051027536)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>'o %0 r.'
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012909787027476)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'sk'
,p_message_text=>unistr('[\010Ciara]')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013574281027476)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'sk'
,p_message_text=>unistr('[Viacero \010Diar]')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013200159027476)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'sk'
,p_message_text=>'[Viacero bodov]'
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013731370027476)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'sk'
,p_message_text=>unistr('[Viacer\00E9 mnohouholn\00EDky]')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013877511027476)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'sk'
,p_message_text=>unistr('[Geometrick\00FD objekt]')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012890058027476)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'sk'
,p_message_text=>'[Bod (%0,%1)]'
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013104415027476)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'sk'
,p_message_text=>unistr('[Mnohouholn\00EDk]')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012375479027476)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'sk'
,p_message_text=>unistr('Zbalen\00E1 oblas\0165: %0')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127412431027511)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zbali\0165')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011350845027475)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vodorovne orientovan\00FD rozde\013Eova\010D nemo\017Eno presun\00FA\0165 do\013Eava ani doprava')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011503256027476)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'sk'
,p_message_text=>unistr('Bola dosiahnut\00E1 maxim\00E1lna ve\013Ekos\0165 %0 px')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012508063027476)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'sk'
,p_message_text=>unistr('Bola dosiahnut\00E1 minim\00E1lna ve\013Ekos\0165 %0 px')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012495275027476)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'sk'
,p_message_text=>unistr('Oblas\0165 je zbalen\00E1')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012285170027476)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'sk'
,p_message_text=>unistr('Oblas\0165 je obnoven\00E1')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011909414027476)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'sk'
,p_message_text=>unistr('Ve\013Ekos\0165 bola zmenen\00E1 na %0 px')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012139921027476)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnoven\00E1 oblas\0165: %0')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127372941027511)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnovi\0165')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011405520027476)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'sk'
,p_message_text=>unistr('Zvisle orientovan\00FD rozde\013Eova\010D nemo\017Eno presun\00FA\0165 nahor ani nadol')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176884497027525)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165 hodnotenie')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166761299027522)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je v platnom rozsahu hodnotenia 1 - %1'
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166877461027522)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je numerick\00E1 hodnota')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129162947301027521)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Hl\00E1senie o \00FAspechu')
,p_is_js_message=>true
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224700422027540)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224619050027540)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134842570027513)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Syst\00E9m z\00E1znamov priraden\00FD k tejto in\0161tancii \00FAlohy sa nena\0161iel')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143141218027515)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vykonanie akcie %0 s \00FAlohou zlyhalo - \00FAloha je nastaven\00E1 do stavu S chybou, skontrolujte k\00F3d akcie s \00FAlohou')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023357968027479)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 koment\00E1r: Neautorizovan\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022687649027479)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha je u\017E priraden\00E1')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016027834027477)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'sk'
,p_message_text=>unistr('Priraden\00E9 k %0')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022306740027479)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161i\0165 \00FAlohu: Neautorizovan\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037966093027483)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lneho vlastn\00EDka tejto \00FAlohy nie je mo\017En\00E9 odobra\0165. Sk\00F4r ako t\00FAto oper\00E1ciu zopakujete, \00FAlohu delegujte na in\00E9ho \00FA\010Dastn\00EDka.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021937499027479)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eadova\0165 \00FAlohu: Neautorizovan\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022037805027479)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Dokon\010Di\0165 \00FAlohu: Neautorizovan\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022197298027479)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Delegova\0165 \00FAlohu: Neautorizovan\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020574432027478)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'sk'
,p_message_text=>unistr('Term\00EDn splnenia \00FAlohy nem\00F4\017Ee by\0165 v minulosti.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015874125027477)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'sk'
,p_message_text=>unistr('Term\00EDn %0')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016239286027477)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Akcia \00FAlohy %1 zlyhala. Chybov\00E9 hl\00E1senie - %0')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015940493027477)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'sk'
,p_message_text=>unistr('Ne\00FAspe\0161n\00E9')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015567423027477)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAspech')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015797577027477)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Akcia %1 bola \00FAspe\0161n\00E1 s hl\00E1sen\00EDm %0')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019047868027478)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pred exspir\00E1ciou')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044686280027485)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161i\0165')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044134910027485)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha bola zru\0161en\00E1')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044732263027485)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DA\010Dastn\00EDk nem\00E1 povolen\00E9 zru\0161i\0165 \00FAlohu')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044042514027485)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eadova\0165')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044435002027485)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FAto \00FAlohu u\017E po\017Eaduje in\00FD pou\017E\00EDvate\013E alebo \00FA\010Dastn\00EDk nem\00E1 opr\00E1vnenie na po\017Eadovanie tejto \00FAlohy')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044273729027485)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAlohu po\017Eaduje pou\017E\00EDvate\013E %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145385927027516)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'sk'
,p_message_text=>unistr('Dokon\010Di\0165')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043832711027485)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha bola dokon\010Den\00E1 s v\00FDsledkom %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045121377027485)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha nie je priraden\00E1 alebo \00FA\010Dastn\00EDk nem\00E1 povolen\00E9 dokon\010Di\0165 \00FAlohu')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005589123027474)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha bola dokon\010Den\00E1 bez v\00FDsledku')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145436526027516)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvori\0165')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038314493027483)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Bola vytvoren\00E1 \00FAloha s ID %0')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145501510027516)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Delegova\0165')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043933484027485)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha bola delegovan\00E1 na potenci\00E1lneho vlastn\00EDka %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044561225027485)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DA\010Dastn\00EDk nem\00E1 opr\00E1vnenie alebo nov\00FD \00FA\010Dastn\00EDk nie je potenci\00E1lnym vlastn\00EDkom tejto \00FAlohy')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017605500027477)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'sk'
,p_message_text=>unistr('Exspirova\0165')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018789460027478)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha exspirovala.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145657985027516)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'sk'
,p_message_text=>'Zlyhanie'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014320545027476)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha nie je priraden\00E1 alebo \00FA\010Dastn\00EDk nem\00E1 povolen\00E9 vy\017Eadova\0165 inform\00E1cie pre \00FAlohu')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014512819027476)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('Bu\010F pre \00FAlohu neboli vy\017Eiadan\00E9 \017Eiadne inform\00E1cie, alebo \00FA\010Dastn\00EDk nem\00E1 povolenie na odoslanie inform\00E1ci\00ED pre \00FAlohu.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018174228027477)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavte \00FAlohu ako exspirovan\00FA, preto\017Ee bol dosiahnut\00FD maxim\00E1lny po\010Det obnoven\00ED %0.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045495914027486)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha nie je v spr\00E1vnom stave alebo \00FA\010Dastn\00EDk nie je podnikov\00FDm administr\00E1torom pre t\00FAto \00FAlohu')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045588568027486)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Oper\00E1cia %0 je nezn\00E1ma alebo nie je pou\017Eite\013En\00E1 pre t\00FAto \00FAlohu')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145742566027516)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'sk'
,p_message_text=>unistr('Uvo\013Eni\0165')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131445384027512)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha bola uvo\013Enen\00E1 a ostatn\00ED ju teraz m\00F4\017Eu po\017Eadova\0165')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024342464027479)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('Uvo\013Enenie \00FAlohy nie je povolen\00E9 - pou\017E\00EDvate\013E nie je vlastn\00EDkom \00FAlohy')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041327147027484)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165 vlastn\00EDka')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041572476027484)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DA\010Dastn\00EDk %0 bol z \00FAlohy odobrat\00FD')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018905577027478)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnovi\0165')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017874561027477)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha bola obnoven\00E1 s ID %0, maxim\00E1lny zost\00E1vaj\00FAci po\010Det obnoven\00ED pred exspir\00E1ciou je %1.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129018834406027478)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('ID \00FAlohy %0 bolo obnoven\00E9 s ID \00FAlohy %1')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014835881027476)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eiada\0165 o inform\00E1cie')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014731727027476)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 - vy\017Eiadan\00E9 \010Fal\0161ie inform\00E1cie: %1')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012616536027476)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavi\0165 mo\017Enos\0165 dokon\010Denia inici\00E1torom na %0')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014944029027477)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165 inform\00E1cie')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014664788027476)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eadovan\00E9 inform\00E1cie boli odoslan\00E9 pre %0: %1')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145845475027516)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualizova\0165 koment\00E1r')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042373333027485)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 koment\00E1r: %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045247499027486)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('Stav \00FAlohy nepovo\013Euje \017Eiadne koment\00E1re')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052503244027488)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavte term\00EDn splnenia \00FAlohy na %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010614307027475)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'sk'
,p_message_text=>unistr('Term\00EDn aktualiz\00E1cie')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145942740027516)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualizova\0165 vlastn\00EDka')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043613268027485)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 potenci\00E1lneho vlastn\00EDka %0 k \00FA\010Dastn\00EDkom \00FAlohy')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042768837027485)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualizova\0165 parametre')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146039846027516)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualizova\0165 prioritu')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044361359027485)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavi\0165 prioritu \00FAlohy na %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041656649027484)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Parameter "%0" bol aktualizovan\00FD z "%1" na "%2".')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025103458027480)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha bola zru\0161en\00E1, preto\017Ee zodpovedaj\00FAca in\0161tancia toku \010Dinnost\00ED bola ukon\010Den\00E1.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022275861027479)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Preposla\0165 \00FAlohu: Neautorizovan\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015636948027477)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'sk'
,p_message_text=>'Inicioval %0 %1'
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024530805027479)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyskytla sa neo\010Dak\00E1van\00E1 intern\00E1 chyba')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022838483027479)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Oper\00E1cia \00FAlohy sa nepou\017E\00EDva')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048413870027487)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'sk'
,p_message_text=>unistr('Tento potenci\00E1lny vlastn\00EDk neexistuje.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024121586027479)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'sk'
,p_message_text=>unistr('Schv\00E1len\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024243792027479)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zamietnut\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005627240027474)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'sk'
,p_message_text=>unistr('Dokon\010Denie \00FAlohy vy\017Eaduje v\00FDsledok')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005898869027474)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je povolen\00E9, aby \00FAloha mala v\00FDsledok')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041409072027484)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 aktualizova\0165 parameter %0.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037756411027483)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre t\00FAto in\0161tanciu \00FAlohy u\017E \00FA\010Dastn\00EDk existuje.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139271123027514)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FArna')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016303250027477)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FArna')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139173043027514)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'sk'
,p_message_text=>unistr('Vysok\00E1')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016440419027477)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Vysok\00E1 priorita')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129139058294027514)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'sk'
,p_message_text=>unistr('Stredn\00E1')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016513340027477)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Stredn\00E1 priorita')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138971131027514)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00EDzka')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016674125027477)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00EDzka priorita')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138883386027514)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'sk'
,p_message_text=>unistr('Najni\017E\0161ia')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016751226027477)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Najni\017E\0161ia priorita')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022445880027479)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavi\0165 prioritu \00FAlohy: Neautorizovan\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023656318027479)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'sk'
,p_message_text=>unistr('Priraden\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024024525027479)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161en\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023742450027479)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'sk'
,p_message_text=>unistr('Dokon\010Den\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023994040027479)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'sk'
,p_message_text=>'S chybou'
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129017409917027477)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Exspirovan\00E9')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023817759027479)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Ne\00FAspe\0161n\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129014141809027476)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eaduj\00FA sa inform\00E1cie')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023500047027479)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nepriraden\00E9')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045917767027486)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Vytvorenie novej \00FAlohy pre defin\00EDciu \00FAlohy %0 v aplik\00E1cii %1 zlyhalo.'),
'SQLCODE: %2'))
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045870096027486)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'sk'
,p_message_text=>unistr('Pokus o vytvorenie \00FAlohy pre defin\00EDciu \00FAlohy %0 v aplik\00E1cii %1 zlyhal, preto\017Ee defin\00EDcia \00FAlohy neobsahuje \017Eiadnych potenci\00E1lnych vlastn\00EDkov - upravte defin\00EDciu \00FAlohy a pridajte aspo\0148 jedn\00E9ho \00FA\010Dastn\00EDka typu Potenci\00E1lny vlastn\00EDk')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023173355027479)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Defin\00EDcia \00FAlohy sa nena\0161la')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023002744027479)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DA\010Dastn\00EDci pre \00FAlohu sa nena\0161li')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024430143027479)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Na\0161lo sa viacero \00FAloh s t\00FDmto ID \00FAlohy - kontaktujte administr\00E1tora datab\00E1zy')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129023265944027479)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DAloha sa nena\0161la')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129022985685027479)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Parameter \00FAlohy sa nena\0161iel')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059246608027490)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'sk'
,p_message_text=>'Akcia'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059191713027490)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'sk'
,p_message_text=>unistr('Schv\00E1lenie')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006580712027474)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vykonanie proced\00FAry pravidla dovolenky %2 zlyhalo pre defin\00EDciu \00FAlohy %0 v aplik\00E1cii %1.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006799787027474)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DA\010Dastn\00EDk %1 bol pridan\00FD ako n\00E1hradn\00EDk za \00FA\010Dastn\00EDka %0. D\00F4vod - %2.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210457644027536)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Panel s n\00E1strojmi')
,p_is_js_message=>true
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063964490027491)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Aplik\00E1cia')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225196617027540)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozbali\0165 / zbali\0165 navig\00E1ciu')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225251319027540)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozbali\0165 / zbali\0165 st\013Apec strany')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133650577027512)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Hlavn\00E1 navig\00E1cia')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034430957027482)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'sk'
,p_message_text=>unistr('"%0" je neplatn\00FD n\00E1zov z\00E1stupn\00E9ho symbolu.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141363810027515)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('1 de\0148')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141122849027515)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'sk'
,p_message_text=>'1 hodina'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141483996027515)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'sk'
,p_message_text=>'%0 d.'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141217079027515)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'sk'
,p_message_text=>'%0 hod.'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141027941027515)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'sk'
,p_message_text=>'%0 min.'
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141695557027515)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 t\00FD\017E.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129141518828027515)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('1 t\00FD\017Ede\0148')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039374370027484)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det vybran\00FDch polo\017Eiek: %0')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039579458027484)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 polo\017Eku')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039435964027484)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 %0')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228276869027541)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diatok str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085805044027498)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktivovan\00E9')
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054372836027488)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri spracovan\00ED po\017Eiadavky.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129039936912027484)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Textov\00FA spr\00E1vu %0 nie je mo\017En\00E9 aktualizova\0165, preto\017Ee je odoberan\00E1 z inej aplik\00E1cie.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129143041900027515)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Povinn\00E1 hodnota')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059464396027490)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'sk'
,p_message_text=>unistr('Z\00E1hlavie \00FArovne %0, skryt\00E9')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187868757027529)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00E1to str\00E1nka m\00E1 neulo\017Een\00E9 zmeny.')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049441183027487)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Navig\00E1tor')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049198349027487)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'sk'
,p_message_text=>unistr('Pribl\00ED\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050168948027487)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'sk'
,p_message_text=>unistr('\00DArove\0148 pribl\00ED\017Eenia {0}\00A0%')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049205104027487)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'sk'
,p_message_text=>unistr('Oddiali\0165')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049302117027487)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavenie pribl\00ED\017Eenia')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024884476027479)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'sk'
,p_message_text=>unistr('Diagram toku \010Dinnost\00ED nie je moment\00E1lne pr\00EDstupn\00FD.')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129024753417027479)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Diagram toku \010Dinnost\00ED')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026648982027480)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia toku \010Dinnost\00ED %0 je moment\00E1lne v stave %1. Oper\00E1cia preto nie je povolen\00E1.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029224664027481)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia %1 \010Dinnosti %2 v toku \010Dinnost\00ED %0 bola dokon\010Den\00E1')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029030409027481)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvorila sa nov\00E1 in\0161tancia %1 \010Dinnosti %2 v toku \010Dinnost\00ED %0')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020827496027478)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Eal\0161\00ED riadok d\00E1t priraden\00FD k tejto in\0161tancii \010Dinnosti toku \010Dinnost\00ED sa nena\0161iel')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029151316027481)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zopakoval sa pokus o chybn\00FA in\0161tanciu %1 \010Dinnosti %2 v toku \010Dinnost\00ED %0')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011122028027475)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia \010Dinnosti %1 v toku \010Dinnost\00ED %0 bola ukon\010Den\00E1')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129044958446027485)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Casov\00FD limit in\0161tancie \010Dinnosti %1 v toku \010Dinnost\00ED %0 uplynul a in\0161tancia bola ukon\010Den\00E1.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029314675027481)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia %1 \010Dinnosti %2 v toku \010Dinnost\00ED %0 je v stave \010Dakania')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129010972705027475)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia toku \010Dinnost\00ED %0 bola zmenen\00E1 a znova spusten\00E1 v \010Dinnosti %1')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028372093027480)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Cakaj\00FAca in\0161tancia %1 \010Dinnosti %2 v toku \010Dinnost\00ED %0 bola \00FAspe\0161ne dokon\010Den\00E1')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028173091027480)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Cakaj\00FAca \010Dinnos\0165 %1 pre\0161la do stavu Chybn\00E9, preto\017Ee tok \010Dinnost\00ED %0 bol v stave Chybn\00E9 u\017E pred dokon\010Den\00EDm tejto \010Dinnosti')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028297968027480)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Cakaj\00FAca \010Dinnos\0165 %1 bola ukon\010Den\00E1, preto\017Ee tok \010Dinnost\00ED %0 u\017E bol v stave Ukon\010Den\00E9 e\0161te pred dokon\010Den\00EDm tejto \010Dinnosti')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011286032027475)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Ukon\010Denie \010Dinnosti %1 v toku \010Dinnost\00ED %0 zlyhalo v d\00F4sledku v\00FDnimky - %2')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026845644027480)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED je moment\00E1lne zanepr\00E1zdnen\00FD dokon\010Dovan\00EDm predch\00E1dzaj\00FAcej oper\00E1cie. Sk\00FAste to nesk\00F4r.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042945580027485)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'sk'
,p_message_text=>unistr('Dokon\010Den\00E9 %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025971546027480)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED %0 nem\00F4\017Ee pokra\010Dova\0165, preto\017Ee moment\00E1lne je v \010Dinnosti %1, ktor\00E1 nie je v stave \010Dakania')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037808222027483)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nie je platn\00FD kontext korel\00E1cie toku \010Dinnost\00ED pre proces, ktor\00FD pr\00E1ve vykon\00E1va t\00E1to \010Dinnos\0165 toku \010Dinnost\00ED. Kontext korel\00E1cie mus\00ED by\0165 text oddelen\00FD dvojbodkami, ktor\00FD obsahuje polo\017Eku APEX_APPL_WORKFLOW, po ktorej nasleduje ID in\0161tancie toku \010Dinno')
||unistr('st\00ED a ID in\0161tancie \010Dinnosti.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028596951027481)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvorila sa nov\00E1 in\0161tancia %0 toku \010Dinnost\00ED %1, verzia %2')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020650256027478)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Eal\0161\00ED riadok d\00E1t priraden\00FD k tejto in\0161tancii toku \010Dinnost\00ED sa nena\0161iel')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043125382027485)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'sk'
,p_message_text=>unistr('Term\00EDn %0')
,p_version_scn=>2693390
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028434478027480)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED %0 sa skon\010Dil so stavom %1')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025684035027480)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tov\00FD typ %1 pre podmienky porovn\00E1van\00E9 v \010Dinnosti prepnutia toku \010Dinnost\00ED %0 nie je kompatibiln\00FD s oper\00E1torom podmienky')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015442821027477)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'sk'
,p_message_text=>'Inicioval %0 %1'
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129038273555027483)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvorila sa nov\00E1 in\0161tancia %0 toku \010Dinnost\00ED %1, verzia %2 - vyvolan\00E1 z in\0161tancie \010Dinnosti %4 in\0161tancie toku \010Dinnost\00ED %3')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129011016293027475)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Cinnos\0165 so statick\00FDm ID %1 nie je \010Dinnos\0165ou v toku \010Dinnost\00ED %0. Skontrolujte statick\00E9 ID \010Dinnosti pr\00EDslu\0161nej verzie toku \010Dinnost\00ED.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036364402027483)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 je povinn\00FD parameter pre tento tok \010Dinnost\00ED a nesmie by\0165 NULL.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028937321027481)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia toku \010Dinnost\00ED %0 bola znova spusten\00E1')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028857064027481)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zopakoval sa pokus o in\0161tanciu toku \010Dinnost\00ED %0')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043211421027485)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'sk'
,p_message_text=>'%0 opakovanie'
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043333621027485)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det opakovan\00ED: %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043015707027485)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'sk'
,p_message_text=>unistr('Spusten\00E9 %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037206579027483)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Akt\00EDvne')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037451748027483)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'sk'
,p_message_text=>unistr('Dokon\010Den\00E9')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037532371027483)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Chybn\00E9')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037610460027483)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pozastaven\00E9')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037320915027483)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'sk'
,p_message_text=>unistr('Ukon\010Den\00E9')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052661676027488)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Cakanie')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028629551027481)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia toku \010Dinnost\00ED %0 bola pozastaven\00E1')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034543124027482)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 ur\010Di\0165 nasleduj\00FAcu \010Dinnos\0165 pre in\0161tanciu toku \010Dinnost\00ED %0. Overte a opravte podmienky definovan\00E9 pre aktu\00E1lnu \010Dinnos\0165 prepnutia predt\00FDm, ako sa pok\00FAsite o opakovanie toku \010Dinnost\00ED.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129028793987027481)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia toku \010Dinnost\00ED %0 bola ukon\010Den\00E1')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027877431027480)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED m\00F4\017Ee znova spusti\0165 iba podnikov\00FD administr\00E1tor toku \010Dinnost\00ED %0')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027989134027480)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED %0 m\00F4\017Ee zopakova\0165 iba podnikov\00FD administr\00E1tor alebo vlastn\00EDk')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027417181027480)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tanciu toku \010Dinnost\00ED %0 m\00F4\017Ee pozastavi\0165 iba podnikov\00FD administr\00E1tor toku \010Dinnost\00ED')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027792074027480)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED m\00F4\017Eu ukon\010Di\0165 iba vlastn\00EDci a podnikov\00ED administr\00E1tori in\0161tancie toku \010Dinnost\00ED %0')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026121684027480)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Premenn\00E9 toku \010Dinnost\00ED %0 m\00F4\017Ee aktualizova\0165 iba podnikov\00FD administr\00E1tor definovan\00FD v toku \010Dinnost\00ED')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040759931027484)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia toku \010Dinnost\00ED %0 mus\00ED by\0165 v stave Chybn\00E9 alebo Pozastaven\00E9 predt\00FDm, ako je mo\017En\00E9 aktualizova\0165 jej premenn\00E9.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032276863027482)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota premennej toku \010Dinnost\00ED %0 bola aktualizovan\00E1 na %1')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042479404027485)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED %0 nem\00E1 \017Eiadnu akt\00EDvnu verziu')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042539161027485)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED %0 nem\00E1 \017Eiadnu verziu vo v\00FDvoji')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129042683707027485)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED %0 nem\00E1 \017Eiadnu akt\00EDvnu verziu ani verziu vo v\00FDvoji')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025571052027480)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia \010Dinnosti %1 pre in\0161tanciu toku \010Dinnost\00ED %0 sa nena\0161la')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025357720027480)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('In\0161tancia toku \010Dinnost\00ED %0 sa nena\0161la')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060446260027490)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'sk'
,p_message_text=>unistr('Zo\0161it nem\00E1 \017Eiadny akt\00EDvny zo\0161it.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060336712027490)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zo\0161it nie je inicializovan\00FD.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060248828027490)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pri vytv\00E1ran\00ED s\00FAboru XLSX sa vyskytla intern\00E1 chyba.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062714731027491)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'sk'
,p_message_text=>unistr('H\00E1rok')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073301508027494)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov pracovn\00E9ho h\00E1rka "%0" sa u\017E pou\017E\00EDva. Pou\017Eite in\00FD n\00E1zov.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201968910027533)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'sk'
,p_message_text=>'Akcie'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116987776027507)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'sk'
,p_message_text=>unistr('Ponuka akci\00ED')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112641153027506)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 funkciu')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112558470027506)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 st\013Apec Zoskupi\0165 pod\013Ea')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150169865027517)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 st\013Apec kontingen\010Dnej zostavy')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150280009027517)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Prida\0165 st\013Apec riadka')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084676507027497)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Agregova\0165')
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123190205027509)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Agreg\00E1cia')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104070968027503)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'sk'
,p_message_text=>'Priemer'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108335752027505)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104158426027504)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'sk'
,p_message_text=>'Maximum'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104352339027504)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'sk'
,p_message_text=>unistr('Medi\00E1n')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104220612027504)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'sk'
,p_message_text=>'Minimum'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103993769027503)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FA\010Det %0')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105042352027504)
,p_name=>'APEXIR_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('V\0161etko')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083914416027497)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('V\0161etky st\013Apce')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064029422027491)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('V\0161etky riadky')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198912429027532)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Alternat\00EDvne')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200557051027533)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'sk'
,p_message_text=>unistr('Alternat\00EDvne predvolen\00E9: %0 ')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098115277027502)
,p_name=>'APEXIR_AND'
,p_message_language=>'sk'
,p_message_text=>'a'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132920702027512)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 importova\0165 ulo\017Een\00FA \0161abl\00F3nu. Obsah je po\0161koden\00FD.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133076902027512)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 importova\0165 ulo\017Een\00FA \0161abl\00F3nu. Obsah je pr\00E1zdny.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086186412027498)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Ei\0165')
,p_is_js_message=>true
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079725338027496)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'sk'
,p_message_text=>'Vzostupne'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101229837027503)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Das: %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201109481027533)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'sk'
,p_message_text=>'Priemer %0'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192701219027530)
,p_name=>'APEXIR_BAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pruhov\00FD')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085431497027498)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'sk'
,p_message_text=>'medzi'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078513285027496)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'sk'
,p_message_text=>'Farba pozadia'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080444281027496)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'sk'
,p_message_text=>unistr('modr\00E1')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114598126027507)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'sk'
,p_message_text=>'Na koniec'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045394373027486)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'sk'
,p_message_text=>unistr('Tla\010Didl\00E1 ved\013Ea panela h\013Eadania %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081090868027496)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zru\0161i\0165')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087324731027498)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'sk'
,p_message_text=>unistr('Kateg\00F3ria')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078467904027496)
,p_name=>'APEXIR_CELL'
,p_message_language=>'sk'
,p_message_text=>'Bunka'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104978831027504)
,p_name=>'APEXIR_CHART'
,p_message_language=>'sk'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115442208027507)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'sk'
,p_message_text=>'Inicializuje sa...'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155122810027519)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Ozna\010Denie grafu mus\00ED by\0165 zadan\00E9.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167584164027523)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Dopyt prekra\010Duje maxim\00E1lny po\010Det %0 d\00E1tov\00FDch bodov na graf. Pou\017Eite filter na zn\00ED\017Eenie po\010Dtu z\00E1znamov v z\00E1kladnom dopyte.')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166433576027522)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Maxim\00E1lny po\010Det riadkov pre dopyt Graf obmedzuje po\010Det riadkov v z\00E1kladnom dopyte, nie po\010Det zobrazen\00FDch riadkov.'),
unistr('Z\00E1kladn\00FD dopyt prekra\010Duje maxim\00E1lny po\010Det riadkov %0. Pomocou filtra zn\00ED\017Ete po\010Det z\00E1znamov v z\00E1kladnom dopyte.')))
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084006305027497)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'sk'
,p_message_text=>'Typ grafu'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047951619027486)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'sk'
,p_message_text=>'Zobrazenie grafu pre %0'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163183263027521)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diarknu\0165 v\0161etko')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101633041027503)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyberte form\00E1t zostavy')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109475063027505)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('vymaza\0165')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080918640027496)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120767673027509)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apce')
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087910497027498)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'sk'
,p_message_text=>unistr('Aliasy st\013Apcov')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195584590027531)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Filtrova\0165...')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055711512027489)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'sk'
,p_message_text=>unistr('Hlavi\010Dka st\013Apca')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069843471027493)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Akcie st\013Apca')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070137230027493)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Akcie pre st\013Apec "%0"')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111551243027506)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'sk'
,p_message_text=>unistr('Ponuka z\00E1hlavia st\013Apca')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115216189027507)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'sk'
,p_message_text=>unistr('Inform\00E1cie o st\013Apcoch')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197825615027532)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Ozna\010Denie st\013Apca')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112909906027506)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec %0')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095823500027501)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'sk'
,p_message_text=>'obsahuje'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097157588027501)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'sk'
,p_message_text=>'neobsahuje'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079479696027496)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'sk'
,p_message_text=>'je v'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097351524027501)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'sk'
,p_message_text=>'nie je v posl.'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106409344027504)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'sk'
,p_message_text=>'nie je v nasl.'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097280944027501)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'sk'
,p_message_text=>'je v posl.'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106318072027504)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'sk'
,p_message_text=>'je v nasl.'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079353152027496)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>'nie je null'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079233394027496)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'sk'
,p_message_text=>'je null'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079090881027496)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'sk'
,p_message_text=>unistr('podobn\00E9')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079516146027496)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'sk'
,p_message_text=>'nie je v'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079193364027496)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'sk'
,p_message_text=>unistr('nie podobn\00E9')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096133180027501)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'sk'
,p_message_text=>unistr('zodpoved\00E1 regul\00E1rnemu v\00FDrazu')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101570725027503)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDpo\010Det')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166180868027522)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDraz v\00FDpo\010Dtu')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121064397027509)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvorte v\00FDpo\010Det s pou\017Eit\00EDm aliasov st\013Apcov.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121154522027509)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'sk'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121212681027509)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'sk'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121322565027509)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'sk'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062297864027491)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'sk'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105754494027504)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vypo\010D\00EDta\0165')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113557566027506)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'sk'
,p_message_text=>'Control Break'
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116597131027507)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'sk'
,p_message_text=>'Znaky Control Break'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203124651027533)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Control Break pre st\013Apce')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058965384027490)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det odli\0161n\00FDch hodn\00F4t')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201693516027533)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det odli\0161n\00FDch hodn\00F4t')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201581031027533)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det %0')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174571899027525)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'sk'
,p_message_text=>'Denne'
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227824830027541)
,p_name=>'APEXIR_DATA'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1ta')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115306556027507)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1ta zostavy spred %0 min\00FAt.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048389822027487)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazenie d\00E1t pre %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084712819027497)
,p_name=>'APEXIR_DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tum')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119279037027508)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Predvolen\00E9')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198768390027532)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Predvolen\00FD typ zostavy')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081105021027496)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085043203027498)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'sk'
,p_message_text=>unistr('Chcete odstr\00E1ni\0165 tieto nastavenia zostavy?')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185565683027528)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 predvolen\00FA zostavu')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113239941027506)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 zostavu')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079866018027496)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'sk'
,p_message_text=>'Zostupne'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087466524027498)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>'Popis'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111412580027506)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazenie jedn\00E9ho riadka')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119751665027508)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'sk'
,p_message_text=>'Smer %0'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120669911027508)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Deaktivovan\00E9')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080607627027496)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazen\00E9')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083812594027497)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazen\00E9 st\013Apce')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119694346027508)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 v zostave')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114470864027507)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'sk'
,p_message_text=>'Nadol'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105869301027504)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'sk'
,p_message_text=>unistr('Stiahnu\0165')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119598386027508)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezobrazova\0165')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188899614027529)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'sk'
,p_message_text=>unistr('Zv\00FDraznenie s rovnakou podmienkou u\017E existuje.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203399628027533)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Duplicitn\00FD st\013Apec kontingen\010Dnej zostavy. Zoznam st\013Apcov kontingen\010Dnej zostavy mus\00ED by\0165 jednozna\010Dn\00FD.')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203515848027533)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115576241027507)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 nastavenia grafu')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122154142027509)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 graf')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086010099027498)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 Control Break')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122519177027509)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 filter')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089036768027499)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 flashback')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180348644027526)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 skupinu pod\013Ea')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122496594027509)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 zv\00FDraznenie')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150419726027517)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 kontingen\010Dn\00FA zostavu')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109800963027505)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 zostavu')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199090656027532)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'sk'
,p_message_text=>'E-mail'
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071236856027493)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'sk'
,p_message_text=>unistr('E-mailov\00E1 adresa')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199321919027532)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'sk'
,p_message_text=>unistr('Skryt\00E1 k\00F3pia')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199585241027532)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'sk'
,p_message_text=>'Telo'
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199283340027532)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'sk'
,p_message_text=>unistr('K\00F3pia')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200095866027532)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'sk'
,p_message_text=>'Frekvencia'
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076481854027495)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre t\00FAto aplik\00E1ciu nebol konfigurovan\00FD e-mail. Kontaktujte administr\00E1tora.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173837192027524)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Mus\00ED by\0165 zadan\00E1 e-mailov\00E1 adresa.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199683779027532)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pozrite pr\00EDlohu')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199479802027532)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'sk'
,p_message_text=>'Predmet'
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174887811027525)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Mus\00ED by\0165 zadan\00FD predmet e-mailu.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199127312027532)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'sk'
,p_message_text=>'Komu'
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078246902027496)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktivovan\00E9')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122353158027509)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktivova\0165/deaktivova\0165')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121806431027509)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'sk'
,p_message_text=>'Chyba: %0'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121487738027509)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDklady')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122207492027509)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDklady:')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083709531027497)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyl\00FA\010Di\0165 hodnoty null')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122887639027509)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozbali\0165/Zbali\0165')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120413204027508)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDraz')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105336164027504)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Filtrova\0165')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116463019027507)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'sk'
,p_message_text=>'Filtre'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127176963027510)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDraz filtra')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129225339468027540)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDraz filtra je pr\00EDli\0161 dlh\00FD.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070053145027493)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1vrhy filtra')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127020216027510)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'sk'
,p_message_text=>'Typ filtra'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123008545027509)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 st\013Apce na vyh\013Ead\00E1vanie')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105607295027504)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'sk'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120274611027508)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Dopyt na flashback v\00E1m umo\017E\0148uje zobrazi\0165 d\00E1ta, ako existovali v predch\00E1dzaj\00FAcom \010Dasovom bode.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174270709027525)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'sk'
,p_message_text=>'Trvanie flashbacku'
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175656094027525)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Form\00E1t')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101493081027503)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'sk'
,p_message_text=>unistr('Maska form\00E1tu %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113135565027506)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>'Funkcia'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120926000027509)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'sk'
,p_message_text=>'Funkcie %0'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198657960027532)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'sk'
,p_message_text=>unistr('Funkcie / oper\00E1tory')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112838199027506)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'sk'
,p_message_text=>'Funkcia %0'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105112396027504)
,p_name=>'APEXIR_GO'
,p_message_language=>'sk'
,p_message_text=>unistr('Prejs\0165')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078792116027496)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'sk'
,p_message_text=>unistr('zelen\00E1')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123762678027509)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoskupi\0165 pod\013Ea st\013Apcov')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123889184027509)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoskupi\0165 pod\013Ea funkci\00ED')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129059059868027490)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoskupi\0165 pod\013Ea')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199757167027532)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoskupi\0165 pod\013Ea st\013Apca %0')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155283260027519)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec Zoskupi\0165 pod\013Ea mus\00ED by\0165 zadan\00FD.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166303426027522)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Maxim\00E1lny po\010Det riadkov pre dopyt Zoskupi\0165 pod\013Ea obmedzuje po\010Det riadkov v z\00E1kladnom dopyte, nie po\010Det zobrazen\00FDch riadkov. Z\00E1kladn\00FD dopyt prekra\010Duje maxim\00E1lny po\010Det riadkov %0. Pomocou filtra zn\00ED\017Ete po\010Det z\00E1znamov v z\00E1kladnom dopyte.')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146559353027516)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedenie Zoskupi\0165 pod\013Ea')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203216000027533)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'sk'
,p_message_text=>unistr('Poradie triedenia Zoskupi\0165 pod\013Ea')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048194930027486)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazenie Zoskupi\0165 pod\013Ea pre %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084114778027497)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Vodorovn\00FD st\013Apec')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118183629027508)
,p_name=>'APEXIR_HELP'
,p_message_language=>'sk'
,p_message_text=>'Pomoc'
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109990041027505)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Interakt\00EDvne zostavy umo\017E\0148uj\00FA koncov\00FDm pou\017E\00EDvate\013Eom prisp\00F4sobova\0165 zostavy. Pou\017E\00EDvatelia m\00F4\017Eu v\00FDberom st\013Apcov, pou\017Eit\00EDm filtrov, zv\00FDraznen\00EDm a trieden\00EDm meni\0165 rozlo\017Eenie d\00E1t zostavy. M\00F4\017Eu definova\0165 aj zlomy, agreg\00E1cie, grafy alebo zoskupenia a prid\00E1va')
||unistr('\0165 vlastn\00E9 v\00FDpo\010Dty. Pou\017E\00EDvatelia si m\00F4\017Eu nastavi\0165 odber, aby im mohla by\0165 v ur\010Denom intervale e-mailom odoslan\00E1 verzia HTML zostavy. \010Ealej m\00F4\017Eu vytv\00E1ra\0165 viacer\00E9 varianty zostavy a uklada\0165 ich ako pomenovan\00E9 zostavy na verejn\00E9 alebo s\00FAkromn\00E9 zobrazovan')
||'ie. ',
'<p/>',
unistr('V nasleduj\00FAcich sekci\00E1ch s\00FA zhrnut\00E9 sp\00F4soby prisp\00F4sobenia interakt\00EDvnej zostavy. \010Eal\0161ie inform\00E1cie n\00E1jdete v \010Dasti "Using Interactive Reports" (Pou\017E\00EDvanie interakt\00EDvnych zost\00E1v) pr\00EDru\010Dke <i>Oracle APEX End User''s Guide</i>.')))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117048385027507)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'sk'
,p_message_text=>unistr('Ponuka Akcie sa zobrazuje napravo od tla\010Didla Prejs\0165 na paneli vyh\013Ead\00E1vania. Pomocou tejto ponuky m\00F4\017Eete prisp\00F4sobi\0165 interakt\00EDvnu zostavu.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110779425027506)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Agreg\00E1ty s\00FA matematick\00E9 v\00FDpo\010Dty vykon\00E1van\00E9 v st\013Apci. Zobrazuj\00FA sa za ka\017Ed\00FDm znakom Control Break a na konci zostavy v r\00E1mci st\013Apca, pre ktor\00FD s\00FA definovan\00E9. Medzi vo\013Eby patria:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Agreg\00E1cia</strong> v\00E1m umo\017E\0148uje vybra\0165 predt\00FDm definovan\00FA agreg\00E1ciu na \00FApravu.</li>'),
unistr('<li><strong>Funkcia</strong> predstavuje funkciu na vykonanie (napr\00EDklad SUM, MIN).</li>'),
unistr('<li><strong>St\013Apec</strong> sa pou\017E\00EDva na v\00FDber st\013Apca, pre ktor\00FD sa pou\017Eije matematick\00E1 funkcia. Zobrazuj\00FA sa len numerick\00E9 st\013Apce.</li>'),
'</ul>'))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110820455027506)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('M\00F4\017Eete definova\0165 jeden graf na jednu ulo\017Een\00FA zostavu. Po definovan\00ED m\00F4\017Eete pomocou ikon zobrazenia na paneli vyh\013Ead\00E1vania prep\00EDna\0165 medzi zobrazen\00EDm grafu a zobrazen\00EDm zostavy. Medzi vo\013Eby patria:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>Typ grafu</strong> identifikuje typ grafu, ktor\00FD sa m\00E1 pou\017Ei\0165.'),
unistr('Vybra\0165 m\00F4\017Eete vodorovn\00FD pruhov\00FD, zvisl\00FD pruhov\00FD, kol\00E1\010Dov\00FD alebo \010Diarov\00FD graf.</li>'),
unistr('<li><strong>Ozna\010Denie</strong> v\00E1m umo\017E\0148uje vybra\0165 st\013Apec, ktor\00FD sa m\00E1 pou\017Ei\0165 ako ozna\010Denie.</li>'),
unistr('<li><strong>Nadpis osi pre ozna\010Denie</strong> je nadpis, ktor\00FD sa zobraz\00ED na osi spojenej s vybran\00FDm st\013Apcom pre ozna\010Denie.'),
unistr('T\00E1to vo\013Eba nie je k dispoz\00EDcii pre kol\00E1\010Dov\00FD graf.</li>'),
unistr('<li><strong>Hodnota</strong> v\00E1m umo\017E\0148uje vybra\0165 st\013Apec, ktor\00FD sa m\00E1 pou\017Ei\0165 ako hodnota.'),
unistr('Ak pou\017Eijete funkciu COUNT, hodnotu nie je potrebn\00E9 vybra\0165.</li>'),
unistr('<li><strong>Nadpis osi pre hodnotu</strong> je nadpis, ktor\00FD sa zobraz\00ED na osi spojenej s vybran\00FDm st\013Apcom pre hodnotu.'),
unistr('T\00E1to vo\013Eba nie je k dispoz\00EDcii pre kol\00E1\010Dov\00FD graf.</li>'),
unistr('<li><strong>Funkcia</strong> je volite\013En\00E1 funkcia, ktor\00E1 sa m\00E1 vykona\0165 vo vybranom st\013Apci pre hodnotu.</li>'),
unistr('<li><strong>Triedi\0165</strong> v\00E1m umo\017E\0148uje triedi\0165 mno\017Einu v\00FDsledkov.</li></ul>')))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110149328027505)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kliknut\00EDm na \013Eubovo\013En\00E9 z\00E1hlavie st\013Apca sa zobraz\00ED ponuka z\00E1hlavia st\013Apca. Medzi vo\013Eby patr\00ED:'),
'<p></p>',
'<ul>',
unistr('<li>Ikona <strong>Triedi\0165 vzostupne</strong> triedi zostavu pod\013Ea st\013Apca vo vzostupnom porad\00ED.</li>'),
unistr('<li>Ikona <strong>Triedi\0165 zostupne</strong> triedi zostavu pod\013Ea st\013Apca v zostupnom porad\00ED.</li>'),
unistr('<li><strong>Skry\0165 st\013Apec</strong> skryje st\013Apec. Nie je mo\017En\00E9 skry\0165 v\0161etky st\013Apce. Ak st\013Apec nie je mo\017En\00E9 skry\0165, ikona Skry\0165 st\013Apec sa nezobraz\00ED.</li>'),
unistr('<li><strong>Zalamovac\00ED st\013Apec</strong> vytvor\00ED zalamovaciu skupinu pre st\013Apec. T\00FDmto sa vytiahne st\013Apec zo zostavy ako hlavn\00FD z\00E1znam.</li>'),
unistr('<li><strong>Inform\00E1cie o st\013Apci</strong> zobrazia text pomoci k st\013Apcu (ak je k dispoz\00EDcii),</li>'),
unistr('<li><strong>Textov\00E1 oblas\0165</strong> sa pou\017E\00EDva na zadanie krit\00E9ri\00ED vyh\013Ead\00E1vania bez rozli\0161ovania ve\013Ek\00FDch a mal\00FDch p\00EDsmen'),
unistr('(bez potreby z\00E1stupn\00FDch znakov). Zadan\00EDm hodnoty sa zmen\0161\00ED zoznam'),
unistr('hodn\00F4t v dolnej \010Dasti ponuky. Potom m\00F4\017Eete vybra\0165 hodnotu'),
unistr('zdola a vybran\00E1 hodnota sa pou\017Eije ako filter s pou\017Eit\00EDm "="'),
unistr('(napr\00EDklad <code>column = ''ABC''</code>). Alternat\00EDvne m\00F4\017Eete klikn\00FA\0165 na ikonu baterky a zada\0165 hodnotu, ktor\00E1 sa vytvor\00ED ako filter s modifik\00E1torom ''LIKE'''),
unistr('(napr\00EDklad <code>column LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>Zoznam jednozna\010Dn\00FDch hodn\00F4t</strong> obsahuje prv\00FDch 500 jednozna\010Dn\00FDch'),
unistr('hodn\00F4t, ktor\00E9 zodpovedaj\00FA krit\00E9ri\00E1m filtra. Ak st\013Apec predstavuje d\00E1tum, namiesto toho sa zobraz\00ED zoznam rozsahov d\00E1tumu. Ak vyberiete hodnotu, vytvor\00ED sa '),
unistr('filter s pou\017Eit\00EDm "=" (napr\00EDklad <code>column = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110629962027505)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Umo\017E\0148uje v\00E1m prida\0165 vypo\010D\00EDtan\00E9 st\013Apce do zostavy. M\00F4\017Ee \00EDs\0165 o matematick\00E9 v\00FDpo\010Dty (napr\00EDklad <code>NBR_HOURS/24</code>) alebo \0161tandardn\00E9 funkcie Oracle'),
unistr('pou\017Eit\00E9 v existuj\00FAcich st\013Apcoch. Niektor\00E9 sa zobrazuj\00FA ako pr\00EDklady a m\00F4\017Eu sa pou\017Ei\0165 aj in\00E9 (napr\00EDklad <code>TO_DATE)</code>. Medzi vo\013Eby patria:'),
'<p></p>',
'<ul>',
unistr('<li><strong>V\00FDpo\010Det</strong> v\00E1m umo\017E\0148uje vybra\0165 predt\00FDm definovan\00FD v\00FDpo\010Det na \00FApravu.</li>'),
unistr('<li><strong>Z\00E1hlavie st\013Apca</strong> je z\00E1hlavie nov\00E9ho st\013Apca.</li>'),
unistr('<li><strong>Maska form\00E1tu</strong> je maska form\00E1tu Oracle, ktor\00E1 sa pou\017Eije pre st\013Apec (napr\00EDklad S9999).</li>'),
unistr('<li><strong>V\00FDpo\010Det</strong> je v\00FDpo\010Det, ktor\00FD sa m\00E1 vykona\0165. V r\00E1mci v\00FDpo\010Dtu sa odkazuje na st\013Apce pomocou zobrazen\00FDch aliasov.</li>'),
'</ul>',
unistr('<p>Pod v\00FDpo\010Dtom sa st\013Apce v dopyte zobrazuj\00FA'),
unistr('s pr\00EDslu\0161n\00FDm aliasom. Ak kliknete na n\00E1zov alebo alias st\013Apca, zahrnie'),
unistr('sa do v\00FDpo\010Dtu. Ved\013Ea st\013Apcov je kl\00E1vesnica, ktor\00E1 funguje ako '),
unistr('odkaz na be\017Ene pou\017E\00EDvan\00E9 kl\00E1vesy. \010Ealej vpravo s\00FA funkcie.</p>'),
unistr('<p>Nasleduj\00FAci vzorov\00FD v\00FDpo\010Det zn\00E1zor\0148uje, ako zobrazi\0165 celkov\00E9 odme\0148ovanie:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(kde A je ORGANIZ\00C1CIA, B je PLAT a C je PROV\00CDZIA)'),
''))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117185585027507)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017E\00EDva sa na vytvorenie zalamovacej skupiny pre jeden alebo viacero st\013Apcov. T\00FDmto sa vytiahnu st\013Apce z interakt\00EDvnej zostavy, ktor\00E9 sa zobrazia ako hlavn\00FD z\00E1znam.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111361189027506)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Ak chcete zobrazi\0165 detaily jedn\00E9ho riadka v ur\010Ditom \010Dase, kliknite na ikonu zobrazenia jedn\00E9ho riadka pre riadok, ktor\00FD chcete zobrazi\0165. Ak je zobrazenie jedn\00E9ho riadka k dispoz\00EDcii, v\017Edy sa zobraz\00ED ako prv\00FD st\013Apec. V z\00E1vislosti od prisp\00F4sobenia inte')
||unistr('rakt\00EDvnej zostavy m\00F4\017Ee v pr\00EDpade zobrazenia jedn\00E9ho riadka \00EDs\0165 o \0161tandardn\00E9 zobrazenie alebo vlastn\00FA str\00E1nku, ktor\00E1 m\00F4\017Ee umo\017E\0148ova\0165 aktualiz\00E1ciu.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111270198027506)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'sk'
,p_message_text=>unistr('Umo\017E\0148uje stiahnutie aktu\00E1lnej mno\017Einy v\00FDsledkov. Form\00E1ty s\0165ahovania zah\0155\0148aj\00FA PDF, Excel, HTML a CSV. Vo\013Eby s\0165ahovania sa l\00ED\0161ia v z\00E1vislosti od vybran\00E9ho form\00E1tu. V\0161etky form\00E1ty je mo\017En\00E9 posla\0165 aj e-mailom.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110329340027505)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Zameria zostavu pridan\00EDm alebo modifikovan\00EDm klauzuly <code>WHERE</code> v dopyte. M\00F4\017Eete filtrova\0165 na z\00E1klade st\013Apca alebo riadka. '),
unistr('<p>Ak filtrujete pod\013Ea st\013Apca, vyberte st\013Apec'),
unistr('(nemus\00ED \00EDs\0165 o zobrazen\00FD st\013Apec), vyberte \0161tandardn\00FD oper\00E1tor Oracle (=, !=, not in, between) a zadajte v\00FDraz na porovnanie. Vo v\00FDrazoch sa rozli\0161uj\00FA ve\013Ek\00E9 a mal\00E9 p\00EDsmen\00E1. Ako z\00E1stupn\00FD znak pou\017Eite % (napr\00EDklad <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>Ak filtrujete pod\013Ea riadka, m\00F4\017Eete vytvori\0165 komplexn\00E9 klauzuly <code>WHERE</code> s pou\017Eit\00EDm'),
unistr('aliasov st\013Apcov a funkci\00ED alebo oper\00E1torov Oracle (napr\00EDklad <code>G = ''VA'' alebo G = ''CT''</code>, kde'),
'<code>G</code> je alias pre <code>CUSTOMER_STATE</code>).</p>',
''))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110907819027506)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'sk'
,p_message_text=>unistr('Dopyt na flashback v\00E1m umo\017E\0148uje zobrazi\0165 d\00E1ta tak, ako existovali v predch\00E1dzaj\00FAcom \010Dasovom bode. Predvolen\00FD \010Dasov\00FD interval flashbacku s\00FA 3 hodiny (alebo 180 min\00FAt), ale skuto\010Dn\00E1 hodnota sa bude pre jednotliv\00E9 datab\00E1zy l\00ED\0161i\0165.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175583735027525)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Form\00E1t v\00E1m umo\017E\0148uje prisp\00F4sobi\0165 zobrazenie zostavy.'),
unistr('Form\00E1t obsahuje nasleduj\00FAcu podponuku:</p>'),
unistr('<ul><li>Triedi\0165</li>'),
'<li>Control Break</li>',
unistr('<li>Zv\00FDrazni\0165</li>'),
unistr('<li>Vypo\010D\00EDta\0165</li>'),
unistr('<li>Agregova\0165</li>'),
'<li>Graf</li>',
unistr('<li>Zoskupi\0165 pod\013Ea</li>'),
unistr('<li>Kontingen\010Dn\00E1 zostava</li>'),
'</ul>',
''))
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173791450027524)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('M\00F4\017Eete definova\0165 jedno zobrazenie Zoskupi\0165 pod\013Ea na ulo\017Een\00FA zostavu.'),
unistr('Po definovan\00ED m\00F4\017Eete pomocou ikon zobrazenia na paneli vyh\013Ead\00E1vania'),
unistr('prep\00EDna\0165 medzi zobrazen\00EDm Zoskupi\0165 pod\013Ea a Zostava. Ak chcete vytvori\0165 zobrazenie Zoskupi\0165 pod\013Ea,'),
'vyberte:',
'<p></p><ul>',
unistr('<li>st\013Apce, ktor\00E9 sa maj\00FA zoskupi\0165</li>'),
unistr('<li>st\013Apce na agregovanie spolu s funkciou, ktor\00E1 sa m\00E1 vykona\0165 (priemer, s\00FA\010Det, po\010Det at\010F.)</li>'),
'</ul>'))
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110529337027505)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Umo\017E\0148uje v\00E1m definova\0165 filter. Riadky, ktor\00E9 sp\013A\0148aj\00FA krit\00E9ri\00E1 filtra, sa zobrazuj\00FA zv\00FDraznen\00E9 s pou\017Eit\00EDm charakterist\00EDk priraden\00FDch k filtru. Medzi vo\013Eby patria:</p>'),
'<ul>',
unistr('<li><strong>N\00E1zov</strong> sa pou\017E\00EDva iba na zobrazenie.</li>'),
unistr('<li><strong>Poradie</strong> identifikuje poradie, v ktorom sa vyhodnocuj\00FA pravidl\00E1.</li>'),
unistr('<li><strong>Aktivovan\00E9</strong> identifikuje, \010Di je pravidlo aktivovan\00E9 alebo deaktivovan\00E9.</li>'),
unistr('<li><strong>Typ zv\00FDraznenia</strong> identifikuje, \010Di by mal by\0165 riadok alebo'),
unistr('st\013Apec zv\00FDraznen\00FD. Ak je vybran\00E1 bunka, zv\00FDrazn\00ED sa st\013Apec,'),
unistr('na ktor\00FD odkazuje podmienka zv\00FDraznenia.</li>'),
unistr('<li><strong>Farba pozadia</strong> predstavuje nov\00FA farbu pozadia zv\00FDraznenej oblasti.</li>'),
unistr('<li><strong>Farba textu</strong> predstavuje nov\00FA farbu textu vo zv\00FDraznenej oblasti.</li>'),
unistr('<li><strong>Podmienka zv\00FDraznenia</strong> definuje podmienku filtra.</li>'),
'</ul>',
''))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129003945166027473)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('M\00F4\017Eete definova\0165 jedno kontingen\010Dn\00E9 zobrazenie na ulo\017Een\00FA zostavu. Po definovan\00ED m\00F4\017Eete pomocou ikon zobrazenia na paneli vyh\013Ead\00E1vania prep\00EDna\0165 medzi kontingen\010Dn\00FDm zobrazen\00EDm a zobrazen\00EDm zostavy. Ak chcete vytvori\0165 kontingen\010Dn\00E9 zobrazenie, vyberte: '),
'<p></p>',
'<ul>',
unistr('<li>st\013Apce, pre ktor\00E9 sa m\00E1 vytvori\0165 kontingen\010Dn\00E9 zobrazenie,</li>'),
unistr('<li>st\013Apce, ktor\00E9 sa zobrazia ako riadky,</li>'),
unistr('<li>st\013Apce na agregovanie spolu s funkciou, ktor\00E1 sa m\00E1 vykona\0165 (priemer, s\00FA\010Det, po\010Det at\010F.)</li>'),
'</ul>'))
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121624752027509)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ak prisp\00F4sob\00EDte interakt\00EDvnu zostavu, nastavenia zostavy sa zobrazia'),
unistr('pod panelom vyh\013Ead\00E1vania a nad zostavou. T\00FAto oblas\0165 je mo\017En\00E9 zbali\0165 a rozbali\0165 pomocou ikony v\013Eavo.'),
'<p>',
unistr('Pre ka\017Ed\00E9 nastavenie zostavy m\00F4\017Eete:'),
'</p><ul>',
unistr('<li>Upravi\0165 nastavenie kliknut\00EDm na n\00E1zov.</li>'),
unistr('<li>Deaktivova\0165/aktivova\0165 nastavenie zru\0161en\00EDm za\010Diarknutia alebo za\010Diarknut\00EDm pol\00ED\010Dka Aktivova\0165/deaktivova\0165. Pomocou tohto ovl\00E1dacieho prvku m\00F4\017Eete nastavenie do\010Dasne vypn\00FA\0165 a zapn\00FA\0165.</li>'),
unistr('<li>Odstr\00E1ni\0165 nastavenie kliknut\00EDm na ikonu Odobra\0165.</li>'),
'</ul>',
unistr('<p>Ak ste vytvorili graf, zoskupenie alebo kontingen\010Dn\00E9 zobrazenie, m\00F4\017Eete prep\00EDna\0165 medzi nimi a z\00E1kladnou zostavou pomocou prepojen\00ED Zobrazenie zostavy, Zobrazenie grafu, Zobrazenie Zoskupi\0165 pod\013Ea a Kontingen\010Dn\00E9 zobrazenie, ktor\00E9 s\00FA vpravo. V pr\00EDpad')
||unistr('e grafu, zoskupenia alebo kontingen\010Dn\00E9ho zobrazenia m\00F4\017Eete na \00FApravu nastaven\00ED pou\017Ei\0165 aj prepojenie Upravi\0165.</p>'),
''))
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111121745027506)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnov\00ED predvolen\00E9 nastavenia zostavy, pri\010Dom odstr\00E1ni vykonan\00E9 prisp\00F4sobenia.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175816168027525)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastav\00ED po\010Det z\00E1znamov, ktor\00E9 sa maj\00FA zobrazi\0165 na str\00E1nke.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111041875027506)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Ulo\017E\00ED prisp\00F4soben\00FA zostavu na bud\00FAce pou\017Eitie. Zad\00E1vate n\00E1zov a volite\013En\00FD popis a m\00F4\017Eete nastavi\0165 verejn\00FD pr\00EDstup k zostave (pre v\0161etk\00FDch pou\017E\00EDvate\013Eov, ktor\00ED maj\00FA pr\00EDstup k prim\00E1rnej predvolenej zostave). M\00F4\017Eete ulo\017Ei\0165 \0161tyri typy interakt\00EDvnych zo')
||unistr('st\00E1v:</p>'),
'<ul>',
unistr('<li><strong>Prim\00E1rne predvolen\00E9</strong> (len pre v\00FDvoj\00E1ra). Prim\00E1rna predvolen\00E1 zostava sa zobrazuje ako prv\00E1. Prim\00E1rne predvolen\00E9 zostavy nemo\017Eno premenova\0165 ani odstr\00E1ni\0165.</li>'),
unistr('<li><strong>Alternat\00EDvna zostava</strong> (len pre v\00FDvoj\00E1ra). V\00FDvoj\00E1rom umo\017E\0148uje vytvori\0165 viacer\00E9 rozlo\017Eenia zost\00E1v. Alternat\00EDvnu zostavu m\00F4\017Eu ulo\017Ei\0165, premenova\0165 alebo odstr\00E1ni\0165 len v\00FDvoj\00E1ri.</li>'),
unistr('<li><strong>Verejn\00E1 zostava</strong> (pre koncov\00E9ho pou\017E\00EDvate\013Ea). Ulo\017Ei\0165, premenova\0165 alebo odstr\00E1ni\0165 ju m\00F4\017Ee koncov\00FD pou\017E\00EDvate\013E, ktor\00FD ju vytvoril. Ostatn\00ED pou\017E\00EDvatelia m\00F4\017Eu zobrazi\0165 a ulo\017Ei\0165 rozlo\017Eenie ako in\00FA zostavu.</li>'),
unistr('<li><strong>S\00FAkromn\00E1 zostava</strong> (pre koncov\00E9ho pou\017E\00EDvate\013Ea). Zostavu m\00F4\017Ee zobrazi\0165, ulo\017Ei\0165, premenova\0165 alebo odstr\00E1ni\0165 len koncov\00FD pou\017E\00EDvate\013E, ktor\00FD ju vytvoril.</li>'),
'</ul>',
unistr('<p>Ak ulo\017E\00EDte prisp\00F4soben\00E9 zostavy, selektor Zostavy sa zobraz\00ED na paneli vyh\013Ead\00E1vania na\013Eavo od selektora Riadky (ak je t\00E1to funkcia aktivovan\00E1).</p>'),
''))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110002675027505)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'sk'
,p_message_text=>unistr('V hornej \010Dasti ka\017Edej str\00E1nky zostavy je oblas\0165 vyh\013Ead\00E1vania. T\00E1to oblas\0165 (alebo panel vyh\013Ead\00E1vania) poskytuje nasleduj\00FAce funkcie:')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176413433027525)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'sk'
,p_message_text=>unistr('<li><strong>Ponuka Akcie</strong> v\00E1m umo\017E\0148uje prisp\00F4sobi\0165 zostavu. Pozrite si nasleduj\00FAce sekcie.</li>')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175943412027525)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'sk'
,p_message_text=>unistr('<li><strong>Ikona Vybra\0165 st\013Apce</strong> v\00E1m umo\017E\0148uje identifikova\0165 st\013Apec (alebo v\0161etky st\013Apce) na vyh\013Ead\00E1vanie.</li>')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176218302027525)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'sk'
,p_message_text=>unistr('<li><strong>Zostavy</strong> zobrazuj\00FA alternat\00EDvne predvolen\00E9 a ulo\017Een\00E9 s\00FAkromn\00E9 alebo verejn\00E9 zostavy.</li>')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176117900027525)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('<li>Vo\013Eba <strong>Riadky</strong> nastav\00ED po\010Det z\00E1znamov, ktor\00E9 sa maj\00FA zobrazi\0165 na jednej str\00E1nke.</li>')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176049021027525)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Textov\00E1 oblas\0165</strong> v\00E1m umo\017E\0148uje zada\0165 krit\00E9ri\00E1 vyh\013Ead\00E1vania, v ktor\00FDch sa nerozli\0161uj\00FA mal\00E9 a ve\013Ek\00E9 p\00EDsmen\00E1 (z\00E1stupn\00E9 znaky s\00FA implicitn\00E9).</li>'),
unistr('<li><strong>Tla\010Didlo Prejs\0165</strong> spust\00ED vyh\013Ead\00E1vanie. Ke\010F je kurzor v textovej oblasti vyh\013Ead\00E1vania, vyh\013Ead\00E1vanie sa spust\00ED aj stla\010Den\00EDm kl\00E1vesu Enter.</li>')))
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176384091027525)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Tla\010Didlo <li><strong>Zobrazi\0165 ikony</strong> prep\00EDna medzi zobrazen\00EDm ikony, zostavy, detailov, grafu, zoskupenia a kontingen\010Dn\00FDm zobrazen\00EDm zostavy, ak s\00FA definovan\00E9.</li>')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110298301027505)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017E\00EDva sa na modifik\00E1ciu zobrazen\00FDch st\013Apcov. Zobrazuj\00FA sa st\013Apce vpravo. St\013Apce v\013Eavo s\00FA skryt\00E9. Poradie zobrazen\00FDch st\013Apcov m\00F4\017Eete zmeni\0165 pomocou \0161\00EDpok \00FAplne vpravo. Vypo\010D\00EDtan\00E9 st\013Apce maj\00FA predponu <strong>**</strong>.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129110473749027505)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pou\017E\00EDva sa na zmenu st\013Apcov na triedenie a ur\010D\00ED, \010Di'),
unistr('triedi\0165 v zostupnom alebo vzostupnom porad\00ED. M\00F4\017Eete tie\017E zada\0165, ako postupova\0165 pri hodnot\00E1ch'),
unistr('<code>NULL</code>. Pri predvolenom nastaven\00ED sa hodnoty <code>NULL</code> v\017Edy zobrazuj\00FA na konci alebo na za\010Diatku. V\00FDsledn\00E9 triedenie sa zobrazuje napravo od'),
unistr('z\00E1hlav\00ED st\013Apcov v zostave.</p>')))
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173530606027524)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Ke\010F prid\00E1te odber, zadajte e-mailov\00FA adresu (alebo viacer\00E9 e-mailov\00E9 adresy oddelen\00E9 \010Diarkami), predmet e-mailu, frekvenciu a po\010Diato\010Dn\00FD a koncov\00FD d\00E1tum. V\00FDsledn\00E9 e-maily zah\0155\0148aj\00FA exportovan\00FA verziu (PDF, Excel, HTML alebo CSV) interakt\00EDvnej zostavy,')
||unistr(' ktor\00E1 obsahuje aktu\00E1lne d\00E1ta a pou\017E\00EDva nastavenia zostavy, ktor\00E9 existovali po\010Das prid\00E1vania odberu.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115148811027507)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Skry\0165 st\013Apec')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105510764027504)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zv\00FDrazni\0165')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116695650027507)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zv\00FDraznenia')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086866195027498)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zv\00FDrazni\0165 bunku, %0 v %1')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121705151027509)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'sk'
,p_message_text=>unistr('Podmienka zv\00FDraznenia')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086772570027498)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zv\00FDrazni\0165 riadok, %0 v %1')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174191072027525)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'sk'
,p_message_text=>unistr('\0160t\00FDl zv\00FDraznenia')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078312307027496)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Typ zv\00FDraznenia')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192980651027530)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'sk'
,p_message_text=>'Vodorovne'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221954425027539)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'sk'
,p_message_text=>unistr('1 neakt\00EDvne nastavenie')
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222080070027539)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det neakt\00EDvnych nastaven\00ED: %0')
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111767845027506)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre interakt\00EDvnu zostavu')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122766555027509)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E9')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116106912027507)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD v\00FDraz v\00FDpo\010Dtu. %0')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071714240027494)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Koncov\00FD d\00E1tum mus\00ED by\0165 neskor\0161\00ED ako po\010Diato\010Dn\00FD d\00E1tum.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130960835027512)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD v\00FDraz filtra. %0')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200715139027533)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD dopyt filtra')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222119072027539)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'sk'
,p_message_text=>unistr('1 neplatn\00E9 nastavenie')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222221388027539)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det neplatn\00FDch nastaven\00ED: %0')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174346551027525)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'sk'
,p_message_text=>unistr('(v min\00FAtach)')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191308412027530)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'sk'
,p_message_text=>'%0 je v posl. %1'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191567793027530)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'sk'
,p_message_text=>'%0 je v nasl. %1'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191471110027530)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je v posl. %1'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191643914027530)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'sk'
,p_message_text=>'%0 nie je v nasl. %1'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120841549027509)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'sk'
,p_message_text=>unistr('Kl\00E1vesnica')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084510659027497)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Ozna\010Denie %0')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114789222027507)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nadpis osi pre ozna\010Denie')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107064489027504)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Posledn\00FD de\0148')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107283549027504)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'sk'
,p_message_text=>unistr('Posledn\00E1 hodina')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106769239027504)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'sk'
,p_message_text=>unistr('Minul\00FD mesiac')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106844483027504)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('Minul\00FD t\00FD\017Ede\0148')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106918890027504)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'sk'
,p_message_text=>'Posl. %0 d.'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107199386027504)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'sk'
,p_message_text=>'Posl. %0 hod.'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106524346027504)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'sk'
,p_message_text=>'Posl. %0 r.'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106613472027504)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Minul\00FD rok')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084464349027497)
,p_name=>'APEXIR_LINE'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ciarov\00FD')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081267033027496)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ciarov\00FD s plochou')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200648385027533)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'sk'
,p_message_text=>unistr('Mapova\0165')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115677554027507)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'sk'
,p_message_text=>unistr('Odhaduje sa, \017Ee dopyt prekra\010Duje maxim\00E1lny povolen\00FD po\010Det prostriedkov. Zme\0148te nastavenia zostavy a sk\00FAste to znova.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097081357027501)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Maxim\00E1lny po\010Det riadkov pre t\00FAto zostavu je %0. Pou\017Eite filter na zn\00ED\017Eenie po\010Dtu z\00E1znamov v dopyte.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201224985027533)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'sk'
,p_message_text=>'Maximum %0'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201413088027533)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'sk'
,p_message_text=>unistr('Medi\00E1n %0')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043782048027485)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Spr\00E1va')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101305603027503)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'sk'
,p_message_text=>unistr('pred %0 min\00FAtami')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201335094027533)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'sk'
,p_message_text=>'Minimum %0'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200398962027532)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'sk'
,p_message_text=>'Mesiac'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174748510027525)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'sk'
,p_message_text=>unistr('Mesa\010Dne')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113923710027506)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113892439027506)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165 v\0161etko')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129227051726027541)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Je potrebn\00E9 zada\0165 statick\00E9 ID oblasti, preto\017Ee str\00E1nka obsahuje viacero interakt\00EDvnych zost\00E1v.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079950338027496)
,p_name=>'APEXIR_NAME'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109657397027505)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Nov\00E1 agreg\00E1cia')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222838065027539)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Nov\00E1 kateg\00F3ria')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109763782027505)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Nov\00FD v\00FDpo\010Det')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104465714027504)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107550789027505)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci de\0148')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107321642027504)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAca hodina')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107864557027505)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci mesiac')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107773721027505)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci t\00FD\017Ede\0148')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107667644027505)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'sk'
,p_message_text=>'Nasl. %0 d.'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107494547027505)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'sk'
,p_message_text=>'Nasl. %0 hod.'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108057133027505)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'sk'
,p_message_text=>'Nasl. %0 r.'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129107925776027505)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nasleduj\00FAci rok')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080209600027496)
,p_name=>'APEXIR_NO'
,p_message_language=>'sk'
,p_message_text=>'Nie'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122983808027509)
,p_name=>'APEXIR_NONE'
,p_message_language=>'sk'
,p_message_text=>unistr('- \017Diadne -')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173914705027524)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E1 e-mailov\00E1 adresa.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046014027027486)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie s\00FA vybran\00E9 \017Eiadne st\013Apce na zobrazenie. Pomocou polo\017Eky <strong>St\013Apce</strong> v ponuke akci\00ED nastavte st\013Apce ako vidite\013En\00E9.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119432928027508)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnoty null v\017Edy na za\010Diatku')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119398417027508)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnoty null v\017Edy na konci')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119833779027508)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'sk'
,p_message_text=>'Triedenie null %0'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116245670027507)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Cas flashbacku mus\00ED by\0165 numerick\00FD.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115806747027507)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'sk'
,p_message_text=>unistr('Poradie mus\00ED by\0165 numerick\00E9.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120369098027508)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Oper\00E1tor')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078828080027496)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'sk'
,p_message_text=>unistr('oran\017Eov\00E1')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192884824027530)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Orient\00E1cia')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080778202027496)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'sk'
,p_message_text=>unistr('In\00E9')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046929376027486)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'sk'
,p_message_text=>unistr('Str\00E1nkovanie pre %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060925003027490)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Orient\00E1cia str\00E1nky')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061661727027490)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'sk'
,p_message_text=>unistr('Na \0161\00EDrku')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061749691027491)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'sk'
,p_message_text=>unistr('Na v\00FD\0161ku')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060834134027490)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'sk'
,p_message_text=>unistr('Ve\013Ekos\0165 str\00E1nky')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061485407027490)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'sk'
,p_message_text=>'A3'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061334722027490)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'sk'
,p_message_text=>'A4'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061593924027490)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlastn\00E9')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061136453027490)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'sk'
,p_message_text=>'Legal'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061087587027490)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'sk'
,p_message_text=>'Letter'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061295659027490)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'sk'
,p_message_text=>'Tabloid'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201790901027533)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'sk'
,p_message_text=>unistr('Percento celkov\00E9ho po\010Dtu %0 (%)')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200952874027533)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'sk'
,p_message_text=>unistr('Percento celkov\00E9ho s\00FA\010Dtu %0 (%)')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199989899027532)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Percento celkov\00E9ho po\010Dtu')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129199834602027532)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'sk'
,p_message_text=>unistr('Percento celkov\00E9ho s\00FA\010Dtu')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084309288027497)
,p_name=>'APEXIR_PIE'
,p_message_language=>'sk'
,p_message_text=>unistr('Kol\00E1\010Dov\00FD')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150059876027517)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'sk'
,p_message_text=>unistr('Kontingen\010Dn\00E1 zostava')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151575710027518)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Agreg\00E1t mus\00ED by\0165 zadan\00FD.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151727783027518)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybran\00FD st\013Apec nemo\017Eno agregova\0165 ako st\013Apec riadka.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150909681027518)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apce kontingen\010Dnej zostavy')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150753397027517)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec kontingen\010Dnej zostavy %0')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151380474027518)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec kontingen\010Dnej zostavy mus\00ED by\0165 zadan\00FD.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129003864269027473)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Maxim\00E1lny po\010Det riadkov pre dopyt na kontingen\010Dn\00FA zostavu obmedzuje po\010Det riadkov v z\00E1kladnom dopyte, nie po\010Det zobrazen\00FDch riadkov. Z\00E1kladn\00FD dopyt prekra\010Duje maxim\00E1lny po\010Det riadkov %0. Pomocou filtra zn\00ED\017Ete po\010Det z\00E1znamov v z\00E1kladnom dopyte.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151246296027518)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedenie kontingen\010Dnej zostavy')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117281248027507)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec kontingen\010Dnej zostavy obsahuje pr\00EDli\0161 ve\013Ea odli\0161n\00FDch hodn\00F4t - pr\00EDkaz SQL kontingen\010Dnej zostavy nemo\017Eno vygenerova\0165.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048253219027486)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'sk'
,p_message_text=>unistr('Kontingen\010Dn\00E9 zobrazenie pre %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174048777027525)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Uk\00E1\017Eka')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104502327027504)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198826255027532)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'sk'
,p_message_text=>unistr('Prim\00E1rne')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175025668027525)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Prim\00E1rna zostava')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060744270027490)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zahrn\00FA\0165 zna\010Dky pr\00EDstupnosti')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021514783027478)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 form\00E1tovanie RTF')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129974665027511)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FAkromn\00E9')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084929412027498)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'sk'
,p_message_text=>unistr('Verejn\00E9')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080590105027496)
,p_name=>'APEXIR_RED'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Derven\00E1')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226999964027541)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Statick\00E9 ID oblasti %0 neexistuje.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114019321027507)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114108591027507)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Odobra\0165 v\0161etko')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222344941027539)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 graf')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113673873027506)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 Control Break')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113364519027506)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 filter')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113402200027506)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 flashback')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222419111027539)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 nastavenie Zoskupi\0165 pod\013Ea')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113752997027506)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 zv\00FDraznenie')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222580429027539)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 kontingen\010Dn\00FA zostavu')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203664411027533)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Odstr\00E1ni\0165 zostavu')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185452282027528)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Premenova\0165 predvolen\00FA zostavu')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123224305027509)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Premenova\0165 zostavu')
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104847614027504)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'sk'
,p_message_text=>'Zostava'
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201801046027533)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'sk'
,p_message_text=>'Zostavy'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077022137027495)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Een\00E1 interakt\00EDvna zostava s aliasom %0 neexistuje.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130299520027511)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>'Zostava neexistuje.'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077198296027495)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('ID ulo\017Eenej interakt\00EDvnej zostavy %0 neexistuje.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121550292027509)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'sk'
,p_message_text=>'Nastavenia zostavy'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045733874027486)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'sk'
,p_message_text=>'Nastavenia zostavy pre %0'
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101856031027503)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'sk'
,p_message_text=>'Zobrazenie zostavy'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106046473027504)
,p_name=>'APEXIR_RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085171741027498)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnovte predvolen\00E9 nastavenia zostavy.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080309782027496)
,p_name=>'APEXIR_ROW'
,p_message_language=>'sk'
,p_message_text=>'Riadok'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197994218027532)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnotu ROWID nem\00F4\017Eete pou\017Ei\0165 ako st\013Apec prim\00E1rneho k\013E\00FA\010Da pre d\00E1tov\00FD zdroj REST.')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112717411027506)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'sk'
,p_message_text=>'Riadky'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175717186027525)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det riadkov na str\00E1nku')
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151061912027518)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apce riadka')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150815577027518)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec riadka %0')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151429086027518)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec riadka mus\00ED by\0165 zadan\00FD.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151630792027518)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec riadka sa mus\00ED l\00ED\0161i\0165 od st\013Apca kontingen\010Dnej zostavy.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127253382027510)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'sk'
,p_message_text=>'Filter riadkov'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101910406027503)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'sk'
,p_message_text=>'Riadok %0 z %1'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129106283272027504)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'sk'
,p_message_text=>'Text riadka obsahuje'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129079627343027496)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116860065027507)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Een\00E1 zostava')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116799946027507)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Een\00E1 zostava = "%0"')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118934427027508)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lne nastavenia zostavy sa pou\017Eij\00FA ako predvolen\00E9 nastavenia pre v\0161etk\00FDch pou\017E\00EDvate\013Eov.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129185382755027528)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165 predvolen\00FA zostavu')
,p_is_js_message=>true
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105964363027504)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165 zostavu')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222793717027539)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165 zostavu *')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176750184027525)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111632772027506)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Panel h\013Eadania')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129045075739027485)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'sk'
,p_message_text=>unistr('Panel h\013Eadania %0')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129222605499027539)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165: %0')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182273645027527)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165 zostavu')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166219617027522)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybran\00E9 st\013Apce')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081315189027496)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('- Vybra\0165 st\013Apec -')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105275415027504)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 st\013Apce')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084823961027498)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('- Vybra\0165 funkciu -')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112417184027506)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('- Vybra\0165 st\013Apec Zoskupi\0165 pod\013Ea -')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150570422027517)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('- Vybra\0165 st\013Apec kontingen\010Dnej zostavy -')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200849123027533)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 riadok')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150668578027517)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('- Vybra\0165 st\013Apec riadka -')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032124798027482)
,p_name=>'APEXIR_SEND'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165')
,p_is_js_message=>true
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054638754027488)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'sk'
,p_message_text=>unistr('Odosla\0165 ako elektronick\00FA po\0161tu')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080032405027496)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'sk'
,p_message_text=>'Poradie'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129105403566027504)
,p_name=>'APEXIR_SORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114963192027507)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165 vzostupne')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115015810027507)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165 zostupne')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203088767027533)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'sk'
,p_message_text=>'Poradie triedenia'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109338829027505)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'sk'
,p_message_text=>'medzera'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120557943027508)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'sk'
,p_message_text=>'Stav %0'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174447889027525)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'sk'
,p_message_text=>'Odber'
,p_is_js_message=>true
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200201309027532)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'sk'
,p_message_text=>unistr('Kon\010D\00ED')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019256606027478)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'sk'
,p_message_text=>unistr('Vynecha\0165, ak sa nena\0161li \017Eiadne d\00E1ta')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200133203027532)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010D\00EDna sa od')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129201008756027533)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FA\010Det %0')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191989403027530)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'sk'
,p_message_text=>'%0, zostava = %1, zobrazenie = %2'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078981048027496)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'sk'
,p_message_text=>'Farba textu'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097659549027501)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'sk'
,p_message_text=>'d.'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097520326027501)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'sk'
,p_message_text=>'hod.'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097473102027501)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'sk'
,p_message_text=>'min.'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097836384027501)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'sk'
,p_message_text=>'mes.'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097703656027501)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('t\00FD\017E.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129097979107027502)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'sk'
,p_message_text=>'r.'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129203471264027533)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepn\00FA\0165')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114211274027507)
,p_name=>'APEXIR_TOP'
,p_message_language=>'sk'
,p_message_text=>unistr('Na za\010Diatok')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129196997813027531)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezoskupen\00FD st\013Apec')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115713141027507)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov zv\00FDraznenia mus\00ED by\0165 jednozna\010Dn\00FD.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083615714027497)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('nepodporovan\00FD d\00E1tov\00FD typ')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114366359027507)
,p_name=>'APEXIR_UP'
,p_message_language=>'sk'
,p_message_text=>'Nahor'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129115998203027507)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadajte platn\00FA farbu.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116099145027507)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadajte platn\00FA masku form\00E1tu.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080818168027496)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'sk'
,p_message_text=>'Hodnota'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114803982027507)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'sk'
,p_message_text=>'Nadpis osi pre hodnotu'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122629516027509)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Povinn\00E1 hodnota')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129084255995027497)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Zvisl\00FD st\013Apec')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129193067910027530)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'sk'
,p_message_text=>'Zvisle'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129121941537027509)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 graf')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180547950027527)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 detaily')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224890943027540)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Zostava nem\00E1 definovan\00E9 zobrazenie %0.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180667456027527)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 zoskupenie pod\013Ea')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180457990027526)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'sk'
,p_message_text=>'Ikony zobrazenia'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129150303675027517)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 kontingen\010Dn\00FA zostavu')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129122090083027509)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 zostavu')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174681543027525)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FD\017Edenne')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104774900027504)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Pracovn\00E1 zostava')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202405870027533)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'sk'
,p_message_text=>'%0 d.'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202332527027533)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'sk'
,p_message_text=>'%0 hod.'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202276784027533)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'sk'
,p_message_text=>'%0 min.'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202617062027533)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'sk'
,p_message_text=>'%0 mes.'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202583225027533)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 t\00FD\017E.')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129202704018027533)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'sk'
,p_message_text=>'%0 r.'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129200403131027533)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'sk'
,p_message_text=>'Rok'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078670118027496)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'sk'
,p_message_text=>unistr('\017Elt\00E1')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129080155278027496)
,p_name=>'APEXIR_YES'
,p_message_language=>'sk'
,p_message_text=>unistr('\00C1no')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129114633820027507)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 obsahuje < or >, \010Do s\00FA neplatn\00E9 znaky.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129138556969027514)
,p_name=>'APEX_REGION'
,p_message_language=>'sk'
,p_message_text=>unistr('Oblas\0165')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029626671027481)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 extrahova\0165 s\00FAbor ZIP.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029505201027481)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Podpis End-of-central-directory sa nena\0161iel. Tento s\00FAbor nie je s\00FAbor ZIP.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129060675433027490)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'sk'
,p_message_text=>unistr('Predbe\017En\00E1 podmienka API bola poru\0161en\00E1')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082741404027497)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnotu nastavenia aplik\00E1cie %0 nie je mo\017En\00E9 z\00EDska\0165, preto\017Ee je deaktivovan\00E1 s\00FAvisiaca vo\013Eba kompil\00E1cie.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082663687027497)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnotu nastavenia aplik\00E1cie %0 nie je mo\017En\00E9 nastavi\0165, preto\017Ee je deaktivovan\00E1 s\00FAvisiaca vo\013Eba kompil\00E1cie.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195267096027531)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota nastavenia aplik\00E1cie %0 je neplatn\00E1')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195197195027531)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eadovan\00E9 nastavenie aplik\00E1cie %0 nie je definovan\00E9')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195325787027531)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavenie aplik\00E1cie %0 nesmie obsahova\0165 hodnotu null')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069292617027493)
,p_name=>'BACK'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051695207027488)
,p_name=>'BUILDER'
,p_message_language=>'sk'
,p_message_text=>unistr('Gener\00E1tor')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125229201027510)
,p_name=>'BUTTON LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Ozna\010Denie tla\010Didla')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048598624027487)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedy CSS tla\010Didla')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087097400027498)
,p_name=>'BUTTON_ID'
,p_message_language=>'sk'
,p_message_text=>unistr('Generovan\00E9 ID tla\010Didla bude statick\00E9 ID tla\010Didla (ak je definovan\00E9) alebo (ak nie je definovan\00E9) interne generovan\00E9 ID vo form\00E1te "B" || [Intern\00E9 ID tla\010Didla]')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021015389027478)
,p_name=>'CANDLESTICK'
,p_message_language=>'sk'
,p_message_text=>unistr('Svie\010Dkov\00FD')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129135001776027513)
,p_name=>'CENTER'
,p_message_language=>'sk'
,p_message_text=>'V strede'
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081697564027497)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eiadavka %0')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071692721027494)
,p_name=>'CHECK$'
,p_message_language=>'sk'
,p_message_text=>'selektor riadkov'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197067246027531)
,p_name=>'CHECKED'
,p_message_language=>'sk'
,p_message_text=>unistr('za\010Diarknut\00E9')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173410528027524)
,p_name=>'COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131044531027512)
,p_name=>'COMMENTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Koment\00E1re')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112004761027506)
,p_name=>'CONTINUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pokra\010Dova\0165')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069596446027493)
,p_name=>'COPYRIGHT'
,p_message_language=>'sk'
,p_message_text=>unistr('Copyright &copy; 1999, %0, spolo\010Dnos\0165 Oracle a/alebo jej pobo\010Dky.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117784664027508)
,p_name=>'COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124798929027510)
,p_name=>'CREATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvori\0165')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180155953027526)
,p_name=>'CREATED'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvoren\00E9')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180225954027526)
,p_name=>'CREATED_BY'
,p_message_language=>'sk'
,p_message_text=>'Vytvoril'
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101186904027503)
,p_name=>'CREATED_ON'
,p_message_language=>'sk'
,p_message_text=>unistr('Vytvoren\00E9 d\0148a')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112288674027506)
,p_name=>'CUSTOM'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlastn\00E9')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123449788027509)
,p_name=>'CUSTOMIZE'
,p_message_language=>'sk'
,p_message_text=>unistr('Prisp\00F4sobi\0165')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125449038027510)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Preferencie str\00E1nky boli znovunastaven\00E9 pre pou\017E\00EDvate\013Ea %0.')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125545618027510)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'sk'
,p_message_text=>unistr('Preferencie boli zmenen\00E9 pre pou\017E\00EDvate\013Ea %0.')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125393446027510)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Preferencie str\00E1nky boli znovunastaven\00E9 pre pou\017E\00EDvate\013Ea %0.')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086451345027498)
,p_name=>'DAILY'
,p_message_language=>'sk'
,p_message_text=>'Denne'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049826384027487)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nahran\00FD s\00FAbor je neplatn\00FD alebo m\00E1 nespr\00E1vnu pr\00EDponu.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081843394027497)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Eit\00FD neplatn\00FD selektor XML alebo JSON.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026948286027480)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'sk'
,p_message_text=>unistr('Profil d\00E1t a nahran\00FD s\00FAbor neobsahuj\00FA \017Eiadny st\013Apec cie\013Eovej tabu\013Eky.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140880616027515)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'sk'
,p_message_text=>unistr('V nahranom s\00FAbore sa nena\0161li \017Eiadne d\00E1ta.')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140927576027515)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'sk'
,p_message_text=>unistr('V pracovnom h\00E1rku "%0" sa nena\0161li \017Eiadne d\00E1ta.')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046778916027486)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00FD s\00FAbor nie je s\00FAborom XLSX.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129012779874027476)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavedenie d\00E1t bolo dokon\010Den\00E9: po\010Det spracovan\00FDch riadkov: %0.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015038405027477)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavedenie d\00E1t bolo dokon\010Den\00E9: po\010Det spracovan\00FDch riadkov s jednou chybou: %0.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015373609027477)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavedenie d\00E1t bolo dokon\010Den\00E9: po\010Det spracovan\00FDch riadkov s %1 chybami: %0.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015117852027477)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavedenie d\00E1t bolo dokon\010Den\00E9: spracovan\00FD 1 riadok.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029418288027481)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavedenie d\00E1t bolo dokon\010Den\00E9: spracovan\00FD bol jeden riadok s chybou.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129015295831027477)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavedenie d\00E1t bolo dokon\010Den\00E9: spracovan\00FD bol jeden riadok bez chyby.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147984904027517)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'sk'
,p_message_text=>unistr('Cie\013Eov\00FD st\013Apec')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055121220027489)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezavies\0165')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055214937027489)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba predbe\017En\00E9ho spracovania')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148059824027517)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'sk'
,p_message_text=>unistr('Zdrojov\00FD st\013Apec')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148863221027517)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Form\00E1t d\00E1tumu / \010D\00EDsla')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054962667027489)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vlo\017Ei\0165 riadok')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211013258027536)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Nepodarilo sa vyvola\0165 hodnotu vyh\013Ead\00E1vacieho k\00F3du.')
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180793056027527)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'sk'
,p_message_text=>unistr('Mapovanie d\00E1t / tabuliek')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148950528027517)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'sk'
,p_message_text=>'Riadok'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055361360027489)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'sk'
,p_message_text=>'Poradie: Akcia'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142691518027515)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pravidlo transform\00E1cie zlyhalo')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055014287027489)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualizova\0165 riadok')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117343191027508)
,p_name=>'DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tum')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090271210027499)
,p_name=>'DAY'
,p_message_language=>'sk'
,p_message_text=>unistr('de\0148')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090300734027499)
,p_name=>'DAYS'
,p_message_language=>'sk'
,p_message_text=>'d.'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130754579027512)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'sk'
,p_message_text=>unistr('Ladenie pre t\00FAto aplik\00E1ciu nie je aktivovan\00E9.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182477782027527)
,p_name=>'DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Predvolen\00E9')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091006670027499)
,p_name=>'DELETE'
,p_message_language=>'sk'
,p_message_text=>unistr('odstr\00E1ni\0165')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066695163027492)
,p_name=>'DELETE_MSG'
,p_message_language=>'sk'
,p_message_text=>unistr('Chcete vykona\0165 t\00FAto akciu odstr\00E1nenia?')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046291593027486)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepisy rel\00E1cie')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047154380027486)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktivova\0165 prepisy rel\00E1cie')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048022738027486)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'sk'
,p_message_text=>unistr('Pri zav\00E1dzan\00ED prepisov rel\00E1cie sa vyskytla chyba.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047804059027486)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pri ukladan\00ED prepisov rel\00E1cie sa vyskytla chyba.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129047739721027486)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepisy rel\00E1cie boli ulo\017Een\00E9. Zmeny sa prejavia po zatvoren\00ED tohto dial\00F3gov\00E9ho okna.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020997937027478)
,p_name=>'DIAL_PCT'
,p_message_language=>'sk'
,p_message_text=>unistr('Mera\010D (percento)')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129061952824027491)
,p_name=>'DOWNLOAD'
,p_message_language=>'sk'
,p_message_text=>unistr('Stiahnu\0165')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181537377027527)
,p_name=>'DUP_USER'
,p_message_language=>'sk'
,p_message_text=>unistr('Duplicitn\00E9 meno pou\017E\00EDvate\013Ea v r\00E1mci zoznamu.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070319923027493)
,p_name=>'EDIT'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081524661027497)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('E-mailov\00E1 adresa "%0" sa nena\0161la.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064266684027491)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Tento e-mail je od odosielate\013Ea %0.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181780764027527)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'sk'
,p_message_text=>unistr('E-mailov\00E1 adresa je pr\00EDli\0161 dlh\00E1. Limit je 240 znakov.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111956369027506)
,p_name=>'ERROR'
,p_message_language=>'sk'
,p_message_text=>'Chyba'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142772121027515)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 nastavi\0165 zdrojov\00FA hodnotu polo\017Eky str\00E1nky pre oblas\0165 \010Diasto\010Dn\00E9ho obnovenia str\00E1nky')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103259741027503)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'sk'
,p_message_text=>'Vytvoril'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064534410027491)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Platnos\0165 hesla uplynula')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129056906313027489)
,p_name=>'FILE_EMPTY'
,p_message_language=>'sk'
,p_message_text=>unistr('S\00FAbor je pr\00E1zdny.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146710004027516)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Ve\013Ekos\0165 nahran\00E9ho s\00FAboru bola viac ako %0 MB. Nahrajte men\0161\00ED s\00FAbor.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066869659027492)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Autentifik\00E1cia pou\017E\00EDvate\013Ea zlyhala a jeden alebo viacero s\00FAborov sa nepodarilo nahra\0165.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066988352027492)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00E1to in\0161tancia nepovo\013Euje neautentifikovan\00FDm pou\017E\00EDvate\013Eom nahr\00E1va\0165 s\00FAbory.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146860500027516)
,p_name=>'FILTERS'
,p_message_language=>'sk'
,p_message_text=>'Filtre'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124835156027510)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'sk'
,p_message_text=>'Vyskytla sa jedna chyba'
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124071323027510)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'sk'
,p_message_text=>'Vyskytli sa chyby (%0)'
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069492299027493)
,p_name=>'FORM_OF'
,p_message_language=>'sk'
,p_message_text=>'%0 z %1'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108453501027505)
,p_name=>'GO'
,p_message_language=>'sk'
,p_message_text=>unistr('Prejs\0165')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210633019027536)
,p_name=>'HELP'
,p_message_language=>'sk'
,p_message_text=>'Pomoc'
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051741491027488)
,p_name=>'HOME'
,p_message_language=>'sk'
,p_message_text=>'Domov'
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090029474027499)
,p_name=>'HOUR'
,p_message_language=>'sk'
,p_message_text=>'hodina'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090137644027499)
,p_name=>'HOURS'
,p_message_language=>'sk'
,p_message_text=>'hod.'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071525025027494)
,p_name=>'ICON'
,p_message_language=>'sk'
,p_message_text=>'Ikona %0'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048844324027487)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'sk'
,p_message_text=>'Pomoc pre orezanie ikony'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050075706027487)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>My\0161ou posu\0148te ikonu a pomocou jazdca pribl\00ED\017Eenia zme\0148te poz\00EDciu ikony v r\00E1me.</p>'),
'',
unistr('<p>Ke\010F nahr\00E1vate nov\00FA ikonu, jej ve\013Ekos\0165 sa zmen\00ED tak, aby zodpovedala trom form\00E1tom: ikona webovej lokality, mal\00E1 ikona a ve\013Ek\00E1 ikona.</p>'),
'',
unistr('<p>Pri zameran\00ED na n\00E1stroj na orezanie ikony bud\00FA dostupn\00E9 nasleduj\00FAce kl\00E1vesov\00E9 skratky:</p>'),
'<ul>',
unistr('    <li>\0160\00EDpka do\013Eava: presun\00FA\0165 obr\00E1zok do\013Eava*</li>'),
unistr('    <li>\0160\00EDpka nahor: presun\00FA\0165 obr\00E1zok nahor*</li>'),
unistr('    <li>\0160\00EDpka doprava: presun\00FA\0165 obr\00E1zok doprava*</li>'),
unistr('    <li>\0160\00EDpka nadol: presun\00FA\0165 obr\00E1zok nadol*</li>'),
unistr('    <li>I: Pribl\00ED\017Ei\0165</li>'),
unistr('    <li>O: Oddiali\0165</li>'),
unistr('    <li>L: Oto\010Di\0165 do\013Eava</li>'),
unistr('    <li>R: Oto\010Di\0165 doprava</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>* Na zr\00FDchlenie presunu podr\017Ete stla\010Den\00FD kl\00E1ves Shift</em></p>')))
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055525629027489)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Potiahnite my\0161ou a zme\0148te poz\00EDciu ikony')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055639566027489)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Posu\0148te jazdec a upravte \00FArove\0148 pribl\00ED\017Eenia')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048626561027487)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165 ikonu aplik\00E1cie')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048971699027487)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri ukladan\00ED ikony')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131366079027512)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'sk'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> T\00E1to aplik\00E1cia pou\017E\00EDva star\0161ie ikony. Nahran\00EDm novej ikony sa nahradia v\0161etky star\0161ie ikony.</p>')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129049558673027487)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'sk'
,p_message_text=>unistr('Nahra\0165 nov\00FA ikonu')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125798123027510)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E9 prihlasovacie doklady')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226815621027541)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E1 hodnota pre parameter: %0')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120084013027508)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'sk'
,p_message_text=>unistr('Ako predvolen\00E9 nastavenia zostavy')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129120128226027508)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Ako pomenovan\00E1 zostava')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102007244027503)
,p_name=>'IR_ERROR'
,p_message_language=>'sk'
,p_message_text=>'Chyba %0. %1'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101766676027503)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 vypo\010D\00EDta\0165 navig\00E1ciu vo formul\00E1ri. %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077331625027495)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Interakt\00EDvna zostava sa nena\0161la.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076703961027495)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Oblas\0165 interakt\00EDvnej zostavy neexistuje v aplik\00E1cii %0, na str\00E1nke %1 a v oblasti %2.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129119985959027508)
,p_name=>'IR_STAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazen\00E9 len pre v\00FDvoj\00E1rov')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108124518027505)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Dopyt na zostavu po\017Eaduje na identifik\00E1ciu ka\017Ed\00E9ho riadka jednozna\010Dn\00FD k\013E\00FA\010D. Zadan\00FD k\013E\00FA\010D sa pre tento dopyt ned\00E1 pou\017Ei\0165. Definujte st\013Apec jednozna\010Dn\00E9ho k\013E\00FA\010Da. %0')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108269181027505)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'sk'
,p_message_text=>unistr('Dopyt na zostavu po\017Eaduje na identifik\00E1ciu ka\017Ed\00E9ho riadka jednozna\010Dn\00FD k\013E\00FA\010D. Zadan\00FD k\013E\00FA\010D sa pre tento dopyt ned\00E1 pou\017Ei\0165. Upravte atrib\00FAty zostavy na definovanie st\013Apca jednozna\010Dn\00E9ho k\013E\00FA\010Da. %0')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149143634027517)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 s\00FAbor')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149099512027517)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'sk'
,p_message_text=>unistr('Sem presu\0148te s\00FAbor alebo')
,p_is_js_message=>true
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069732642027493)
,p_name=>'ITEMS'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eky')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103454380027503)
,p_name=>'ITEM_VALUE'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota polo\017Eky')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118049465027508)
,p_name=>'LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Ozna\010Denie')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130650897027511)
,p_name=>'LANGUAGE'
,p_message_language=>'sk'
,p_message_text=>'Jazyk'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090763946027499)
,p_name=>'LAST'
,p_message_language=>'sk'
,p_message_text=>'posl.'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066786243027492)
,p_name=>'LENGTH'
,p_message_language=>'sk'
,p_message_text=>unistr('D\013A\017Eka')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125052841027510)
,p_name=>'LOGIN'
,p_message_language=>'sk'
,p_message_text=>unistr('Prihl\00E1senie')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166605024027522)
,p_name=>'MANAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Spravova\0165')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229731454027542)
,p_name=>'MAXIMIZE'
,p_message_language=>'sk'
,p_message_text=>unistr('Maximalizova\0165')
,p_is_js_message=>true
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089889775027499)
,p_name=>'MINUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('min\00FAta')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089932721027499)
,p_name=>'MINUTES'
,p_message_language=>'sk'
,p_message_text=>'min.'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181930430027527)
,p_name=>'MISSING_AT'
,p_message_language=>'sk'
,p_message_text=>unistr('V e-mailovej adrese ch\00FDba "@".')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182100618027527)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'sk'
,p_message_text=>unistr('Upozornenie: Pre str\00E1nku dial\00F3gov\00E9ho okna %0 v aplik\00E1cii %1 nebola definovan\00E1 \017Eiadna \0161abl\00F3na str\00E1nky dial\00F3gov\00E9ho okna.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181849845027527)
,p_name=>'MISSING_DOT'
,p_message_language=>'sk'
,p_message_text=>unistr('V dom\00E9ne e-mailovej adresy ch\00FDba ".".')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128152074027511)
,p_name=>'MODULE'
,p_message_language=>'sk'
,p_message_text=>'Modul'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082309710027497)
,p_name=>'MONTH'
,p_message_language=>'sk'
,p_message_text=>'Mesiac'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086281614027498)
,p_name=>'MONTHLY'
,p_message_language=>'sk'
,p_message_text=>unistr('Mesa\010Dne')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082406651027497)
,p_name=>'MONTHS'
,p_message_language=>'sk'
,p_message_text=>'mes.'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117611786027508)
,p_name=>'MOVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188429188027529)
,p_name=>'MOVE_FROM'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165 z')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129188505403027529)
,p_name=>'MOVE_TO'
,p_message_language=>'sk'
,p_message_text=>unistr('Presun\00FA\0165 do')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129104618982027504)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri oper\00E1cii odstr\00E1nenia viacer\00FDch riadkov: riadok = %0, %1, %2')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103629358027503)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'sk'
,p_message_text=>unistr('Nesmie \00EDs\0165 o verejn\00E9ho pou\017E\00EDvate\013Ea')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052206624027488)
,p_name=>'NAME'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117883868027508)
,p_name=>'NEW'
,p_message_language=>'sk'
,p_message_text=>unistr('Nov\00E9')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082174100027497)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'sk'
,p_message_text=>unistr('Tu sa m\00F4\017Eete prihl\00E1si\0165 do %0:')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082290974027497)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Upozornenie na nov\00E9 konto %0')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210884378027536)
,p_name=>'NEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128007762027511)
,p_name=>'NO'
,p_message_language=>'sk'
,p_message_text=>'Nie'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129224998949027540)
,p_name=>'NOBODY'
,p_message_language=>'sk'
,p_message_text=>'nikto'
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091189316027499)
,p_name=>'NOT'
,p_message_language=>'sk'
,p_message_text=>'Nie'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134066250027513)
,p_name=>'NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>'Nie je null'
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103747980027503)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'sk'
,p_message_text=>'Nie je %0'
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123548422027509)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('nena\0161li sa \017Eiadne d\00E1ta')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133532285027512)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Nena\0161la sa zostava, ktor\00FA mo\017Eno aktualizova\0165. Oper\00E1cie aktualiz\00E1cie a odstr\00E1nenia viacer\00FDch riadkov je mo\017En\00E9 vykon\00E1va\0165 len pre tabu\013Ekov\00E9 formul\00E1re typu Aktualizovate\013En\00E1 zostava.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134483405027513)
,p_name=>'OK'
,p_message_language=>'sk'
,p_message_text=>'OK'
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129742664027511)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'sk'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129228697737027541)
,p_name=>'ORA_06550'
,p_message_language=>'sk'
,p_message_text=>unistr('ORA-06550: Riadok %0, st\013Apec %1')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179539445027526)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017E\00EDvate zastaran\00FD webov\00FD preh\013Ead\00E1va\010D. Zoznam podporovan\00FDch preh\013Ead\00E1va\010Dov n\00E1jdete v pr\00EDru\010Dke Oracle APEX Installation Guide.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074500842027494)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eadovan\00E1 neplatn\00E1 mno\017Eina riadkov, zdrojov\00E9 d\00E1ta zostavy boli modifikovan\00E9.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096569991027501)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Je potrebn\00E9 zada\0165 platn\00E9 \010D\00EDslo str\00E1nky, napr\00EDklad p?n=1234.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100753419027502)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Ealej')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100833694027502)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'sk'
,p_message_text=>unistr('\010Eal\0161ia mno\017Eina')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129100935019027502)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129101084718027503)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'sk'
,p_message_text=>unistr('Predch\00E1dzaj\00FAca mno\017Eina')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210761069027536)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 str\00E1nkovanie')
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140757662027515)
,p_name=>'PASSWORD'
,p_message_language=>'sk'
,p_message_text=>'Heslo'
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081421308027496)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'sk'
,p_message_text=>unistr('Va\0161e heslo pre %0 bolo zmenen\00E9.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069115786027493)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo nezodpoved\00E1 pravidl\00E1m zlo\017Eitosti hesla tejto lokality.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068271552027493)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nov\00E9 heslo sa mus\00ED l\00ED\0161i\0165 od star\00E9ho hesla aspo\0148 v %0 znakoch.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068887372027493)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo nesmie obsahova\0165 meno pou\017E\00EDvate\013Ea.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069038486027493)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo obsahuje zak\00E1zan\00E9 jednoduch\00E9 slovo.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068989120027493)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo nesmie obsahova\0165 n\00E1zov pracovn\00E9ho priestoru.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068108626027492)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo mus\00ED obsahova\0165 aspo\0148 %0 znakov.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068386083027493)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo mus\00ED obsahova\0165 aspo\0148 jeden abecedn\00FD znak (%0).')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068728298027493)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo mus\00ED obsahova\0165 aspo\0148 jedno mal\00E9 p\00EDsmeno.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068406188027493)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo mus\00ED obsahova\0165 aspo\0148 jeden numerick\00FD znak (0123456789).')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068560459027493)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo mus\00ED obsahova\0165 aspo\0148 jedno interpunk\010Dn\00E9 znamienko (%0).')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068638596027493)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo mus\00ED obsahova\0165 aspo\0148 jedno ve\013Ek\00E9 p\00EDsmeno.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081901182027497)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'sk'
,p_message_text=>'Upozornenie na znovunastavenie hesla'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067026391027492)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Heslo nie je mo\017En\00E9 pou\017Ei\0165, preto\017Ee bolo pou\017Eit\00E9 v posledn\00FDch %0 d\0148och.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129063757584027491)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'sk'
,p_message_text=>unistr('Percentu\00E1lny graf')
,p_is_js_message=>true
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155346957027519)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eky')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129155452114027519)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eka')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129550315027511)
,p_name=>'PERCENT'
,p_message_language=>'sk'
,p_message_text=>'Percento'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129098852140027502)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Kontaktujte administr\00E1tora.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129210960374027536)
,p_name=>'PREVIOUS'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00E4\0165')
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147555510027517)
,p_name=>'PRINT'
,p_message_language=>'sk'
,p_message_text=>unistr('Tla\010Di\0165')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128352379027511)
,p_name=>'PRIVILEGES'
,p_message_language=>'sk'
,p_message_text=>unistr('Privil\00E9gi\00E1')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096992682027501)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'sk'
,p_message_text=>'Referencie oblasti'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117991622027508)
,p_name=>'REPORT'
,p_message_language=>'sk'
,p_message_text=>'Zostava'
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128287219027511)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'sk'
,p_message_text=>unistr('Vykazovan\00E9 obdobie')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211109178027536)
,p_name=>'REPORT_LABEL'
,p_message_language=>'sk'
,p_message_text=>'Zostava: %0'
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128997231027511)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'sk'
,p_message_text=>'Zostava celkom'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074626583027494)
,p_name=>'RESET'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165 str\00E1nkovanie')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103382569027503)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165 str\00E1nkovanie')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133412221027512)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'sk'
,p_message_text=>unistr('Znovunastavi\0165 heslo')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109297998027505)
,p_name=>'RESTORE'
,p_message_language=>'sk'
,p_message_text=>unistr('Obnovi\0165')
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129142844345027515)
,p_name=>'RESULTS'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDsledky')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134566548027513)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1vrat do aplik\00E1cie.')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129134907714027513)
,p_name=>'RIGHT'
,p_message_language=>'sk'
,p_message_text=>'Vpravo'
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166907166027522)
,p_name=>'ROW'
,p_message_language=>'sk'
,p_message_text=>'Riadok %0'
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117569732027508)
,p_name=>'ROW_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det riadkov')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007338341027474)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Sp\00FDta\0165 sa Oracle')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007689163027474)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavrie\0165 Sp\00FDta\0165 sa Oracle')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007997384027474)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoznam upozornen\00ED')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007531545027474)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Otvori\0165 Sp\00FDta\0165 sa Oracle')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007824763027474)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'sk'
,p_message_text=>'Mapa produktu'
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007769293027474)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoznam n\00E1vrhov')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008667254027475)
,p_name=>'RW_CLEAR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vymaza\0165')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008555987027475)
,p_name=>'RW_CLOSE'
,p_message_language=>'sk'
,p_message_text=>'Koniec'
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008300979027475)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 viac')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008772031027475)
,p_name=>'RW_GO_TO'
,p_message_language=>'sk'
,p_message_text=>unistr('Prejs\0165 na')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008105772027475)
,p_name=>'RW_GP_STEP'
,p_message_language=>'sk'
,p_message_text=>'Krok'
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008229315027475)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'sk'
,p_message_text=>'z'
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008010382027475)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'sk'
,p_message_text=>unistr('Prepn\00FA\0165 zobrazenie krokov')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007164644027474)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'sk'
,p_message_text=>unistr('Skry\0165 heslo')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008404499027475)
,p_name=>'RW_OPEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diatok')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129006914504027474)
,p_name=>'RW_ORACLE'
,p_message_language=>'sk'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129007091980027474)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 heslo')
,p_is_js_message=>true
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129008826449027475)
,p_name=>'RW_START'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diatok')
,p_is_js_message=>true
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129133901802027513)
,p_name=>'SAVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Ulo\017Ei\0165')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130184578027511)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Alternat\00EDvne predvolen\00E9')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130552681027511)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'sk'
,p_message_text=>'Popis'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130073022027511)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Prim\00E1rne predvolen\00E9')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130862833027512)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'sk'
,p_message_text=>unistr('K dispoz\00EDcii je viac riadkov ako %0. Zv\00FD\0161te hodnotu selektora riadkov na zobrazenie \010Fal\0161\00EDch riadkov.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129198218073027532)
,p_name=>'SEARCH'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyh\013Eada\0165')
,p_version_scn=>2693425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089799712027499)
,p_name=>'SECONDS'
,p_message_language=>'sk'
,p_message_text=>'s.'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129679016027511)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pozrite pr\00EDlohu')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190232746027529)
,p_name=>'SELECT_ROW'
,p_message_language=>'sk'
,p_message_text=>unistr('Vybra\0165 riadok')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129359364027511)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavi\0165 vypnutie re\017Eimu pom\00F4cky na \010D\00EDtanie obrazovky')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129498578027511)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'sk'
,p_message_text=>unistr('Nastavi\0165 zapnutie re\017Eimu pom\00F4cky na \010D\00EDtanie obrazovky')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125600147027510)
,p_name=>'SHOW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192047736027530)
,p_name=>'SHOW_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 v\0161etko')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129216835723027537)
,p_name=>'SIGN_IN'
,p_message_language=>'sk'
,p_message_text=>unistr('Prihl\00E1si\0165 sa')
,p_version_scn=>2693429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129167770385027523)
,p_name=>'SIGN_OUT'
,p_message_language=>'sk'
,p_message_text=>unistr('Odhl\00E1si\0165 sa')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118524542027508)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'sk'
,p_message_text=>unistr('pred %0 d\0148ami')
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126127206027510)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 dn\00ED odteraz')
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118459703027508)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'sk'
,p_message_text=>'pred %0 hodinami'
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126085993027510)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 hod\00EDn odteraz')
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118347327027508)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'sk'
,p_message_text=>unistr('pred %0 min\00FAtami')
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125963010027510)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 min\00FAt odteraz')
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118772696027508)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'sk'
,p_message_text=>'pred %0 mesiacmi'
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126321343027510)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>'%0 mesiacov odteraz'
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126590675027510)
,p_name=>'SINCE_NOW'
,p_message_language=>'sk'
,p_message_text=>'Teraz'
,p_is_js_message=>true
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118263581027508)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'sk'
,p_message_text=>'Pred %0 sekundami'
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129125896246027510)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 sek\00FAnd odteraz')
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118690768027508)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'sk'
,p_message_text=>unistr('pred %0 t\00FD\017Ed\0148ami')
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126285827027510)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 t\00FD\017Ed\0148ov odteraz')
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129118841004027508)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'sk'
,p_message_text=>'pred %0 rokmi'
,p_is_js_message=>true
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126419767027510)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'sk'
,p_message_text=>'%0 rokov odteraz'
,p_is_js_message=>true
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129112313541027506)
,p_name=>'STANDARD'
,p_message_language=>'sk'
,p_message_text=>unistr('\0160tandardn\00E9')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129254762027511)
,p_name=>'START_DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Diato\010Dn\00FD d\00E1tum')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064479133027491)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'sk'
,p_message_text=>unistr('Tento e-mail ste dostali na z\00E1klade odberu interakt\00EDvnej zostavy, ktor\00FD vytvoril pou\017E\00EDvate\013E %0.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226043236027540)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'sk'
,p_message_text=>'Odbery'
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175420191027525)
,p_name=>'TAB'
,p_message_language=>'sk'
,p_message_text=>'Karta'
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089619606027499)
,p_name=>'TITLE'
,p_message_language=>'sk'
,p_message_text=>'Nadpis'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069314725027493)
,p_name=>'TODAY'
,p_message_language=>'sk'
,p_message_text=>'Dnes'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128841364027511)
,p_name=>'TOTAL'
,p_message_language=>'sk'
,p_message_text=>'Celkom'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070681523027493)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Je mo\017En\00E9 vybra\0165 maxim\00E1lne %0 st\013Apcov.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026402177027480)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zbali\0165 v\0161etko')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027093110027480)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zbali\0165 v\0161etko pod')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026019396027480)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozbali\0165 v\0161etko')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026734710027480)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'sk'
,p_message_text=>unistr('Rozbali\0165 v\0161etko pod')
,p_is_js_message=>true
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129027209744027480)
,p_name=>'TREE.REPARENT'
,p_message_language=>'sk'
,p_message_text=>unistr('Nov\00E1 nadraden\00E1 polo\017Eka')
,p_is_js_message=>true
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149357494027517)
,p_name=>'TREES'
,p_message_language=>'sk'
,p_message_text=>'Stromy'
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129192196081027530)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Povinn\00E9')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129113006166027506)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Neautorizovan\00E9')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129163236445027521)
,p_name=>'UNAVAILABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nedostupn\00E9')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126957156027510)
,p_name=>'UNKNOWN'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezn\00E1me')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065303002027492)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Vyskytla sa nerozpoznan\00E1 chyba autentifik\00E1cie.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067534654027492)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'sk'
,p_message_text=>unistr('Ak u\017E \010Falej nechcete by\0165 pr\00EDjemcom t\00FDchto e-mailov, kliknite na polo\017Eku <a href="%0">Zru\0161i\0165 odber</a> a vykonajte spr\00E1vu svojho odberu.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129064344855027491)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'sk'
,p_message_text=>unistr('Ak u\017E \010Falej nechcete by\0165 pr\00EDjemcom t\00FDchto e-mailov, na nasleduj\00FAcej adrese URL m\00F4\017Eete spravova\0165 svoj odber:')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129103869232027503)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('nepodporovan\00FD d\00E1tov\00FD typ')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090967333027499)
,p_name=>'UPDATE'
,p_message_language=>'sk'
,p_message_text=>unistr('aktualizova\0165')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089530881027499)
,p_name=>'UPDATED'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualizovan\00E9')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129032753878027482)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'sk'
,p_message_text=>unistr('Prebieha zv\00FD\0161enie verzie')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129033088513027482)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'sk'
,p_message_text=>unistr('Prech\00E1dza sa na nov\0161iu verziu produktu Oracle APEX. Tento proces obvykle trv\00E1 3 min\00FAty.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096325092027501)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eadovan\00E1 adresa URL bola zak\00E1zan\00E1. Kontaktujte administr\00E1tora.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129117453983027508)
,p_name=>'USER'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017E\00EDvate\013E')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129140664301027514)
,p_name=>'USERNAME'
,p_message_language=>'sk'
,p_message_text=>unistr('Meno pou\017E\00EDvate\013Ea')
,p_version_scn=>2693416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129182083568027527)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'sk'
,p_message_text=>unistr('Meno pou\017E\00EDvate\013Ea je pr\00EDli\0161 dlh\00E9. Limit je %0 znakov.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124502627027510)
,p_name=>'USERS'
,p_message_language=>'sk'
,p_message_text=>unistr('pou\017E\00EDvatelia')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129181600743027527)
,p_name=>'USER_EXISTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Meno pou\017E\00EDvate\013Ea u\017E existuje.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129195476740027531)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Obr\00E1zok profilu pre pou\017E\00EDvate\013Ea %0')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057345008027489)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Automatiz\00E1cia - %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055825790027489)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Str\00E1nka %0 - %1 ')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058785550027490)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'sk'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129058845161027490)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'sk'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057778334027489)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'sk'
,p_message_text=>unistr('Konfigur\00E1cia vyh\013Ead\00E1vania - %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057691636027489)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'sk'
,p_message_text=>unistr('Zdie\013Ean\00FD dynamick\00FD ZH - %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129057441062027489)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'sk'
,p_message_text=>unistr('Defin\00EDcia \00FAlohy - %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055912063027489)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'sk'
,p_message_text=>unistr('Tok \010Dinnost\00ED - %0 ')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129078062250027495)
,p_name=>'VALID'
,p_message_language=>'sk'
,p_message_text=>unistr('Platn\00E9')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069611016027493)
,p_name=>'VALIDATIONS'
,p_message_language=>'sk'
,p_message_text=>'Overenia'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130300873027511)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'sk'
,p_message_text=>unistr('Je potrebn\00E9 zada\0165 hodnotu')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176686458027525)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre %0 mus\00ED by\0165 zadan\00E1 hodnota')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099251742027502)
,p_name=>'VERTICAL'
,p_message_language=>'sk'
,p_message_text=>unistr('zvisl\00E9')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090873558027499)
,p_name=>'VIEW'
,p_message_language=>'sk'
,p_message_text=>unistr('zobrazi\0165')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124630216027510)
,p_name=>'VIEWS'
,p_message_language=>'sk'
,p_message_text=>'zobrazenia'
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131100387027512)
,p_name=>'VIEW_ALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazi\0165 v\0161etko')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129071034320027493)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'sk'
,p_message_text=>unistr('Vizu\00E1lne skryt\00E9 prepojenie')
,p_is_js_message=>true
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129111827382027506)
,p_name=>'WARNING'
,p_message_language=>'sk'
,p_message_text=>'Upozornenie'
,p_is_js_message=>true
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090406072027499)
,p_name=>'WEEK'
,p_message_language=>'sk'
,p_message_text=>unistr('t\00FD\017Ede\0148')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086319095027498)
,p_name=>'WEEKLY'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FD\017Edenne')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090539673027499)
,p_name=>'WEEKS'
,p_message_language=>'sk'
,p_message_text=>unistr('t\00FD\017E.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129130443332027511)
,p_name=>'WELCOME_USER'
,p_message_language=>'sk'
,p_message_text=>'Vitajte: %0'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128651649027511)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'sk'
,p_message_text=>unistr('Na\0161la sa neplatn\00E1 hodnota, overte zadan\00E9 d\00E1ta.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128771539027511)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Na\0161la sa neplatn\00E1 hodnota, overte zadan\00E9 d\00E1ta.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066589222027492)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'sk'
,p_message_text=>unistr('Na\0161la sa neplatn\00E1 hodnota d\00E1tumu, overte form\00E1t d\00E1tumu.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129128544471027511)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'sk'
,p_message_text=>unistr('Na\0161la sa neplatn\00E1 \010D\00EDseln\00E1 hodnota, overte form\00E1t \010D\00EDsla.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077683233027495)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'sk'
,p_message_text=>unistr('Na\0161la sa neplatn\00E1 hodnota \010Dasovej zna\010Dky. Overte form\00E1t \010Dasovej zna\010Dky.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102143138027503)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Viazanie "%0" nie je mo\017En\00E9. Pou\017Eite dvojit\00E9 \00FAvodzovky pre viacbajtov\00E9 polo\017Eky alebo overte, \017Ee d\013A\017Eka polo\017Eky neprekra\010Duje 30 bajtov. Ak chcete odkazova\0165 na polo\017Eky dlh\0161ie ako 30 bajtov, pou\017Eite syntax v().')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091961266027500)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDstup odmietnut\00FD na z\00E1klade kontroly zabezpe\010Denia %0')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094451217027500)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Aplik\00E1cia nie je k dispoz\00EDcii')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092806261027500)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Aplik\00E1cia sa nena\0161la.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092952566027500)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('aplik\00E1cia=%0  pracovn\00FD priestor=%1')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093372790027500)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDstup k tejto aplik\00E1cii je obmedzen\00FD. Sk\00FAste to znova nesk\00F4r.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093273241027500)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDstup k tejto aplik\00E1cii je obmedzen\00FD na v\00FDvoj\00E1rov aplik\00E1ci\00ED. Sk\00FAste to znova nesk\00F4r.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092416787027500)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-7744 Nie je mo\017En\00E9 spracova\0165 vetvenie na funkciu, ktor\00E1 vr\00E1ti adresu URL.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092316604027500)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-7744 Nie je mo\017En\00E9 spracova\0165 vetvenie na funkciu, ktor\00E1 vr\00E1ti str\00E1nku.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092680275027500)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1430 Nepodporovan\00E9 volanie na zobrazenie z procesu str\00E1nky: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093706305027500)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1018 Chyba pri vymaz\00E1van\00ED cache kroku.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092154935027500)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1005 Nezn\00E1my typ v\00FDpo\010Dtu.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093031541027500)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1201 ID rel\00E1cie nie je nastaven\00E9 na vlastn\00FA autentifik\00E1ciu.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093128734027500)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('str\00E1nka=%0')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092732622027500)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-7620 Nepodarilo sa ur\010Di\0165 pracovn\00FD priestor pre aplik\00E1ciu (%0).')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073201076027494)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'sk'
,p_message_text=>unistr('Upravi\0165')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091823481027500)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1802 Nena\0161lo sa ID polo\017Eky "%0"')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091527197027500)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1002 Nena\0161lo sa ID polo\017Eky "%0" v aplik\00E1cii "%1".')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091612904027500)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'sk'
,p_message_text=>unistr('Neo\010Dak\00E1van\00E1 chyba, nena\0161iel sa n\00E1zov polo\017Eky na \00FArovni aplik\00E1cie alebo str\00E1nky.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092040340027500)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('U\017E sa nach\00E1dzate na prvej str\00E1nke d\00E1t.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108511776027505)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'sk'
,p_message_text=>unistr('V pr\00EDpade ID polo\017Eky (%0) nejde o polo\017Eku definovan\00FA na aktu\00E1lnej str\00E1nke.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066160910027492)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eku nie je mo\017En\00E9 nastavi\0165 odovzdan\00EDm argumentov do aplik\00E1cie.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066473226027492)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'sk'
,p_message_text=>unistr('(Nebol zadan\00FD \017Eiadny kontroln\00FD s\00FA\010Det)')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065910628027492)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eku je mo\017En\00E9 nastavi\0165, ke\010F m\00E1 pridelen\00FD kontroln\00FD s\00FA\010Det "z\00E1lo\017Eka na \00FArovni pou\017E\00EDvate\013Ea".')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065875043027492)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eku je mo\017En\00E9 nastavi\0165, ke\010F m\00E1 pridelen\00FD kontroln\00FD s\00FA\010Det "z\00E1lo\017Eka na \00FArovni aplik\00E1cie".')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066087655027492)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eku je mo\017En\00E9 nastavi\0165, ke\010F m\00E1 pridelen\00FD kontroln\00FD s\00FA\010Det "rel\00E1cia".')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065797785027492)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eka nem\00E1 \017Eiadnu ochranu.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093827164027500)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'sk'
,p_message_text=>unistr('Pomoc pre str\00E1nku nie je k dispoz\00EDcii.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129081785219027497)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'sk'
,p_message_text=>unistr('Pracovn\00FD priestor %0 nem\00E1 \017Eiadne privil\00E9gi\00E1, aby sa syntakticky analyzoval ako sch\00E9ma %1.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129092220898027500)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1010 Bol prekro\010Den\00FD limit rekurzie spracovania prijatia vetvenia na str\00E1nku. %0')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129048746939027487)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Str\00E1nka je nedostupn\00E1, nemo\017Eno spusti\0165 vzor str\00E1nky.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129066337889027492)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FAto str\00E1nku nemo\017Eno vyvola\0165 pomocou adresy URL ani pomocou pr\00EDkazov GET alebo POST na zobrazenie proced\00FAry. Je potrebn\00E9 ju vyvola\0165 pomocou typu vetvenia "Vetvi\0165 na str\00E1nku".')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151163044027518)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri pokuse o ulo\017Eenie nenumerickej hodnoty v polo\017Eke %0.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083493385027497)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Sch\00E9ma syntaktickej anal\00FDzy aplik\00E1cie "%0" v datab\00E1ze neexistuje.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083514776027497)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'sk'
,p_message_text=>unistr('Kont\00E1 v INTERNOM pracovnom priestore sa m\00F4\017Eu pou\017Ei\0165 len na pr\00EDstup do produktu &PRODUCT_NAME. <a href="%0">Slu\017Eby administr\00E1cie</a>.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091454434027500)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-1029 Nie je mo\017En\00E9 ulo\017Ei\0165 inform\00E1cie o rel\00E1cii.  Rel\00E1cia=%0 polo\017Eka=%1')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094529586027500)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Trasovanie nie je mo\017En\00E9 zastavi\0165: %0')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129091722933027500)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Neo\010Dak\00E1van\00E1 chyba')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102507020027503)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'sk'
,p_message_text=>'Chyba v update_substitution_cache: %0'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094629588027501)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Na zobrazenie pomoci je potrebn\00E9 zada\0165 aplik\00E1ciu a str\00E1nku.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129116313789027507)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Automatiz\00E1cia sa nena\0161la.')
,p_version_scn=>2693411
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129051826456027488)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba automatiza\010Dn\00E9ho dopytu: %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095759025027501)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det \00FAplne vymazan\00FDch rel\00E1ci\00ED: %0.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129037065654027483)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('K\00F3d %0 nie je mo\017En\00E9 spusti\0165! Nie je podporovan\00FD v datab\00E1ze alebo nie je aktivovan\00FD parametrom in\0161tancie MLE_LANGUAGES.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129034605880027482)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Multilingual Engine nie je v tejto verzii datab\00E1zy k dispoz\00EDcii!')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073898580027494)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Pole kolekcie aplik\00E1cie nesmie by\0165 null')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073664249027494)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00FD po\010Det atrib\00FAtov \010Dlena %0 je neplatn\00FD. Po\010Det atrib\00FAtov mus\00ED by\0165 v rozsahu od 1 do %1.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074181600027494)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Kolekcia aplik\00E1cie existuje')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073980579027494)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov kolekcie nem\00F4\017Ee by\0165 null')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074027414027494)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'sk'
,p_message_text=>unistr('N\00E1zov kolekcie nem\00F4\017Ee ma\0165 viac ako 255 znakov')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073456118027494)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Kolekcia aplik\00E1cie %0 neexistuje')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074202792027494)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Kurzor zatia\013E nie je otvoren\00FD')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073570936027494)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Poradie \010Dlenov %0 v kolekcii aplik\00E1cie %1 neexistuje'),
''))
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129073732619027494)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('Poradie \010Dlenov %0 v kolekcii aplik\00E1cie "%1" neexistuje')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026534956027480)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'sk'
,p_message_text=>unistr('Algoritmus %0 nie je podporovan\00FD pre ECDSA.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129026237166027480)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'sk'
,p_message_text=>unistr('Eliptick\00E1 krivka %0 nie je podporovan\00E1.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151903739027518)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Kryptografick\00E1 funkcia "%0" nie je v tomto syst\00E9me podporovan\00E1.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204219330027534)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDstupnos\0165 testovan\00E1')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095292684027501)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'sk'
,p_message_text=>unistr('Zavrie\0165')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095369523027501)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'sk'
,p_message_text=>unistr('Vo\013Eby prisp\00F4sobenia str\00E1nky')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095467789027501)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'sk'
,p_message_text=>unistr('Predvolen\00E9')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095529065027501)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'sk'
,p_message_text=>unistr('Zobrazen\00E9')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095643734027501)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Skryt\00E9')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095013664027501)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'sk'
,p_message_text=>unistr('Za\010Diarknite oblasti, ktor\00E9 chcete zahrn\00FA\0165 na str\00E1nku. Za\010Diarknut\00E9 oblasti sa nemusia zobrazi\0165, pokia\013E nie ste v spr\00E1vnom kontexte aplik\00E1cie alebo nem\00E1te spr\00E1vne privil\00E9gi\00E1.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095110745027501)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FAto str\00E1nku nie je mo\017En\00E9 prisp\00F4sobi\0165.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204533277027534)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'sk'
,p_message_text=>unistr('Vzh\013Ead tejto aplik\00E1cie m\00F4\017Eete personalizova\0165 zmenou \0161t\00FDlu mot\00EDvu. Vyberte \0161t\00FDl mot\00EDvu v zozname ni\017E\0161ie a kliknite na polo\017Eku Pou\017Ei\0165 zmeny.')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129205389273027534)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'sk'
,p_message_text=>'Zobrazenie oblasti'
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204454232027534)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pou\017Ei\0165 predvolen\00FD \0161t\00FDl aplik\00E1cie')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129204317036027534)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Vzh\013Ead ')
,p_version_scn=>2693426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148541794027517)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Index st\013Apca, na ktor\00FD sa odkazuje v agreg\00E1cii %0, neexistuje.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041257746027484)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pripojenie exportu d\00E1t nie je podporovan\00E9 pre form\00E1t %0.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004289713027473)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('V\00FDstup CLOB pre form\00E1t %0 nie je podporovan\00FD.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148278210027517)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'sk'
,p_message_text=>unistr('Zlom st\013Apca mus\00ED by\0165 na za\010Diatku po\013Ea st\013Apcov.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148339947027517)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Index skupiny st\013Apcov, na ktor\00FD sa odkazuje v %0, neexistuje.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129055438243027489)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'sk'
,p_message_text=>'export'
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129062622272027491)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'sk'
,p_message_text=>unistr('Form\00E1t exportu mus\00ED by\0165 XML s pou\017Eit\00EDm tla\010Dov\00E9ho servera ORDS.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148646569027517)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Index st\013Apca, na ktor\00FD sa odkazuje vo zv\00FDraznen\00ED %0, neexistuje.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129052002090027488)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD form\00E1t exportu: %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129148498852027517)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Index nadradenej skupiny, na ktor\00FD sa odkazuje v %0, neexistuje.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129173651033027524)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec %1 tabu\013Eky %0 je st\013Apec identity, ktor\00FD je definovan\00FD ako "GENERATED ALWAYS". Zabezpe\010Dte, aby k st\013Apcu %1 v dial\00F3govom okne Konfigurova\0165 nebol mapovan\00FD \017Eiadny zdrojov\00FD st\013Apec.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085260401027498)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00FD interval potvrdenia je pr\00EDli\0161 mal\00FD.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085390838027498)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Neboli zadan\00E9 \017Eiadne st\013Apce na zavedenie d\00E1t.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086693492027498)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre selektor riadkov "%0" sa nena\0161li \017Eiadne st\013Apce. Sk\00FAste automatick\00FA detekciu alebo skontrolujte \0161trukt\00FAru JSON.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096019289027501)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('V s\00FAbore XLSX sa nena\0161li \017Eiadne pracovn\00E9 h\00E1rky.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129041116203027484)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eadovan\00FD po\010Det \00FArovn\00ED hierarchie na zis\0165ovanie (%0) prekra\010Duje maximum %1.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129095948145027501)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00FD pracovn\00FD h\00E1rok v s\00FAbore XLSX neexistuje.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129074387209027494)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lna verzia d\00E1t v datab\00E1ze bola zmenen\00E1, preto\017Ee pou\017E\00EDvate\013E spustil proces aktualiz\00E1cie.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077272278027495)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri aktualiz\00E1cii st\013Apcov zostavy: %0')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187761677027529)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 nemo\017Eno skonvertova\0165 na SDO_GEOMETRY.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124277275027510)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec %0, ktor\00FD je d\00E1tov\00E9ho typu %1, nemo\017Eno konvertova\0165 na VARCHAR2!')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131656476027512)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec "%0" zadan\00FD pre atrib\00FAt "%1" sa v d\00E1tovom zdroji nena\0161iel!')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067751381027492)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'sk'
,p_message_text=>unistr('Typ filtra %0 nie je podporovan\00FD pre st\013Apce s viacer\00FDmi hodnotami.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129191280332027530)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD filter "medzi".')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129046868890027486)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('V st\013Apci %0 v riadku \010D. %1 sa nena\0161la \017Eiadna hodnota %2.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129043553155027485)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec %0 alebo riadok \010D. %1 neexistuje.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030178626027481)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Bol zadan\00FD neplatn\00FD typ ZH.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129030082812027481)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00FD typ dopytu. Typom dopytu mus\00ED by\0165 tabu\013Eka, dopyt SQL alebo funkcia PL/SQL, ktor\00E1 vracia dopyt SQP.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124340236027510)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nepodarilo sa syntakticky analyzova\0165 dopyt SQL!'),
'%0'))
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131756781027512)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00E1 poz\00EDcia st\013Apca %0 pre atrib\00FAt "%1" sa v pr\00EDkaze SQL nena\0161la!')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129021717450027479)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'sk'
,p_message_text=>unistr('Vo filtri viacer\00FDch hodn\00F4t je pou\017Eit\00FDch pr\00EDli\0161 ve\013Ea polo\017Eiek.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129131570780027512)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre atrib\00FAt "%0" nie je zadan\00FD \017Eiadny st\013Apec.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029971907027481)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Telo funkcie PL/SQL nevr\00E1tilo hodnotu.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129147375299027516)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tov\00FD zdroj REST neobsahuje oper\00E1ciu na spracovanie po\017Eadovanej akcie DML.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189087822027529)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('Filtre rozsahu s\00FA podporovan\00E9 len pre d\00E1tov\00E9 typy NUMBER, DATE alebo TIMESTAMP.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129009925221027475)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eiadavka zlyhala s %0')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129013401887027476)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'sk'
,p_message_text=>unistr('Konverzia GeoJSON na SDO_GEOMETRY (st\013Apec %0) nie je v tejto datab\00E1ze k dispoz\00EDcii.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016891612027477)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'sk'
,p_message_text=>unistr('Konverzia SDO_GEOMETRY (st\013Apec %0) nie je podporovan\00E1 pre d\00E1tov\00E9 zdroje XML.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129040972982027484)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'sk'
,p_message_text=>unistr('Znak %0 nie je podporovan\00FD ako odde\013Eova\010D viacer\00FDch hodn\00F4t.')
,p_version_scn=>2693390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129189186476027529)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00E1to funkcia sa nem\00F4\017Ee pou\017Ei\0165 pre kontext dopytu.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129016906884027477)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezhoda d\00E1tov\00E9ho typu st\013Apca.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129050406766027487)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'sk'
,p_message_text=>unistr('Tento d\00E1tov\00FD zdroj nepodporuje zmenu viacer\00FDch riadkov.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029877812027481)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Intern\00E9 limity v\00E4zby ORDS OUT boli prekro\010Den\00E9. Zn\00ED\017Ete po\010Det riadkov DML.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132569032027512)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Odpove\010F JSON zo vzdialen\00E9ho servera nebolo mo\017En\00E9 syntakticky analyzova\0165: '),
'%0'))
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129029789808027481)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nezn\00E1my alebo nespr\00E1vny typ kontextu.')
,p_version_scn=>2693387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053889176027488)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'sk'
,p_message_text=>unistr('Nepodporovan\00E9 komponenty pre \010Ditate\013En\00FD export: %0')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129151835691027518)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('Syntaktick\00FD analyz\00E1tor nepodporuje tento typ s\00FAboru.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102660859027503)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Neautorizovan\00FD pr\00EDstup (nie je nastaven\00E9 wwv_flow_api.set_credentials).')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077598610027495)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'sk'
,p_message_text=>unistr('Pracovn\00FD priestor nebol vytvoren\00FD, preto\017Ee u\017E existuje.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129077475329027495)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'sk'
,p_message_text=>unistr('Skupina pou\017E\00EDvate\013Eov nebola vytvoren\00E1, preto\017Ee u\017E existuje.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088828291027499)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'sk'
,p_message_text=>unistr('Na\0161lo sa duplicitn\00E9 meno pou\017E\00EDvate\013Ea pre %0.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088914383027499)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri zaveden\00ED pou\017E\00EDvate\013Eov. Zlyhanie pri pou\017E\00EDvate\013Eovi %0.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099764114027502)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Det na\010D\00EDtan\00FDch pou\017E\00EDvate\013Eov by bol %0.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099527855027502)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'sk'
,p_message_text=>'Heslo'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099603728027502)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'sk'
,p_message_text=>unistr('Privil\00E9gi\00E1')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099334507027502)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'sk'
,p_message_text=>unistr('Meno pou\017E\00EDvate\013Ea')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129179774577027526)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Das vykres\013Eovania polo\017Eky str\00E1nky #COMPONENT_NAME# sa vyskytla chyba.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094723862027501)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Polo\017Eku str\00E1nky nie je mo\017En\00E9 zobrazi\0165, preto\017Ee formul\00E1r HTML zatia\013E nebol otvoren\00FD.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129053119633027488)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri v\00FDpo\010Dte predvolenej hodnoty polo\017Eky str\00E1nky #COMPONENT_NAME#.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094083849027500)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba v n\00E1slednom v\00FDpo\010Dte polo\017Eky pre polo\017Eku str\00E1nky #COMPONENT_NAME#.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129093978976027500)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri v\00FDpo\010Dte zdrojovej hodnoty polo\017Eky pre polo\017Eku str\00E1nky #COMPONENT_NAME#.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070722689027493)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'sk'
,p_message_text=>unistr('Neautorizovan\00FD pr\00EDstup.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129020206752027478)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota %0 z %1 nie je platn\00FDm po\013Eom JSON.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094260526027500)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'sk'
,p_message_text=>unistr('JavaScript nie je podporovan\00FD.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094314279027500)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'sk'
,p_message_text=>'Zoznam'
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094961448027501)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'sk'
,p_message_text=>unistr('Dopyt nie je mo\017En\00E9 inicializova\0165.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102976777027503)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualiz\00E1cia %0 nie je podporovan\00E1.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096409058027501)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E9 ID polo\017Eky: %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129124178982027510)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre t\00FAto polo\017Eku neexistuje \017Eiadna pomoc.')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085952343027498)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Generovanie dopytu na graf zlyhalo. Skontrolujte nastavenia mapovania zdroja a st\013Apca.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087228076027498)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E1 hodnota parametra p_mail_id: %0')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123926953027509)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnoty v poli "Komu" alebo "Odpoveda\0165 komu" nie je mo\017En\00E9 pou\017Ei\0165 ako adresu odosielate\013Ea, preto\017Ee tieto polia obsahuj\00FA viacer\00E9 e-mailov\00E9 adresy.')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129208877520027535)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Prekro\010Dili ste maxim\00E1lny po\010Det e-mailov\00FDch spr\00E1v na jeden pracovn\00FD priestor. Kontaktujte administr\00E1tora.')
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065410720027492)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'sk'
,p_message_text=>unistr('T\00FAto proced\00FAru je potrebn\00E9 vyvola\0165 z rel\00E1cie aplik\00E1cie.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129087187524027498)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00E1 bola hodnota null pre parameter %0.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129145284079027516)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('\0160abl\00F3na e-mailu "%0" sa v aplik\00E1cii %1 nena\0161la.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129221770746027539)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Parameter in\0161tancie SMTP_HOST_ADDRESS mus\00ED by\0165 nastaven\00FD, aby bolo mo\017En\00E9 odosiela\0165 e-maily.')
,p_version_scn=>2693430
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129086523691027498)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Na odoslanie e-mailu je potrebn\00E9 zada\0165 pr\00EDjemcu spr\00E1vy.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129211254985027536)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Nemo\017Eno vytvori\0165 pripojenie SMTP na konfigurovan\00FD e-mailov\00FD server.')
,p_version_scn=>2693427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129186540020027528)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'sk'
,p_message_text=>unistr('Neplatn\00E9 volanie Ajax!')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070458463027493)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre plugin %0 nebola definovan\00E1 \017Eiadna funkcia Ajax')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129177038133027525)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre plugin %0 nebola definovan\00E1 \017Eiadna funkcia vykonania')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070558800027493)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre plugin %0 nebola definovan\00E1 \017Eiadna funkcia vykreslenia')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187423774027529)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Plugin d\00E1tov\00E9ho zdroja REST "%0" neobsahuje funkciu "Mo\017Enosti".')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187375234027529)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Plugin d\00E1tov\00E9ho zdroja REST "%0" neobsahuje funkciu DML.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187563545027529)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Plugin d\00E1tov\00E9ho zdroja REST "%0" neobsahuje funkciu vykonania.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129187672099027529)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'sk'
,p_message_text=>unistr('Plugin d\00E1tov\00E9ho zdroja REST "%0" neobsahuje funkciu vyvolania.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067907043027492)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\010Das spracovania pluginu sa zistila chyba v k\00F3de PLSQL.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076500070027495)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Je potrebn\00E9 zada\0165 hodnotu.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129109523315027505)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'sk'
,p_message_text=>unistr('D\00E1tov\00FD typ %0 nie je mo\017En\00E9 konvertova\0165 na VARCHAR2!')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197741504027532)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec "%0" zadan\00FD pre atrib\00FAt "%1" sa v pr\00EDkaze SQL nena\0161iel!')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129025077879027479)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'sk'
,p_message_text=>unistr('Hodnota %0 z %1 nie je platn\00FDm po\013Eom JSON.')
,p_version_scn=>2693386
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129174988635027525)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre %0 mus\00ED by\0165 zadan\00FD dopyt na zoznam hodn\00F4t (ZH) alebo pomenovan\00FD zoznam hodn\00F4t.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129176533666027525)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'sk'
,p_message_text=>unistr('V dopyte SQL na ZH pre %0 bol vybran\00FD nespr\00E1vny po\010Det st\013Apcov. Pozrite si pr\00EDklady platn\00FDch pr\00EDkazov.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197539654027532)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre atrib\00FAt "%0" nie je zadan\00FD \017Eiadny st\013Apec.')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226719882027541)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00E1 hodnota %0 pre atrib\00FAt "%1" nie je numerick\00E1.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129180015193027526)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('%0 m\00E1 nespr\00E1vny d\00E1tov\00FD typ v pr\00EDkaze SQL. \010C\00EDslo st\013Apca %1 je %2, ale o\010Dak\00E1vala sa hodnota %3.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129197645969027532)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apec "%0" zadan\00FD pre atrib\00FAt "%1" m\00E1 d\00E1tov\00FD typ %2, ale mal by ma\0165 %3.')
,p_version_scn=>2693424
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129067166094027492)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'sk'
,p_message_text=>unistr('Nemo\017Eno n\00E1js\0165 rozlo\017Eenie zostavy.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129054743336027488)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Limit sp\00FA\0161\0165ania v pozad\00ED prekro\010Dil %0.')
,p_version_scn=>2693391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129005017541027474)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'sk'
,p_message_text=>unistr('U\017E prebieha in\00E9 vykon\00E1vanie procesu %0.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129004951458027474)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre kontext %1 u\017E prebieha in\00E9 vykon\00E1vanie procesu %0.')
,p_version_scn=>2693383
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129019929739027478)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'sk'
,p_message_text=>unistr('Nahran\00E9 s\00FAbory nie s\00FA vidite\013En\00E9 v pracovnej rel\00E1cii na vykonanie procesu %0.')
,p_version_scn=>2693384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132400021027512)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'sk'
,p_message_text=>unistr('Pre zostavy na z\00E1klade d\00E1tov\00E9ho zdroja REST nie je mo\017En\00E9 pou\017Ei\0165 funkciu Vypo\010D\00EDta\0165 s\00FA\010Det.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129094147357027500)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('ERR-2904 Nie je mo\017En\00E9 nastavi\0165 hodnotu odkazu.')
,p_version_scn=>2693400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099148506027502)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba: Nezn\00E1my typ odkazu.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129036896018027483)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'sk'
,p_message_text=>unistr('Dopyt vyh\013Ead\00E1vania je pr\00EDli\0161 dlh\00FD.')
,p_version_scn=>2693388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129088294143027499)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 vyvola\0165 authentication_scheme v aplik\00E1cii %0.')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129096231167027501)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Nie je mo\017En\00E9 vyvola\0165 komponent %0.')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129166515181027522)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'sk'
,p_message_text=>unistr('ID n\00E1jomcu u\017E existuje pre aktu\00E1lnu rel\00E1ciu.')
,p_version_scn=>2693418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129099432008027502)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'sk'
,p_message_text=>'E-mail'
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226208045027540)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'sk'
,p_message_text=>unistr('Autentifik\00E1cia zlyhala.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129126832754027510)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'sk'
,p_message_text=>unistr('Jeden alebo viacero s\00FAborov cookie nastaven\00FDch v parametri apex_util.g_request_cookies obsahuje neplatn\00FA hodnotu.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129108797910027505)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'sk'
,p_message_text=>unistr('Odpove\010F z registra UDDI bola neplatn\00E1.')
,p_version_scn=>2693410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129068085232027492)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'sk'
,p_message_text=>unistr('Zadan\00E1 adresa URL nevr\00E1tila platn\00FD dokument WSDL.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070840360027493)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'sk'
,p_message_text=>unistr('Dokument WSDL obsahuje viacer\00E9 viazania SOAP. &PRODUCT_NAME. podporuje len WSDL s jedn\00FDm viazan\00EDm SOAP. Ak chcete pokra\010Dova\0165 vo vytv\00E1ran\00ED referencie pre t\00FAto slu\017Ebu, kliknite na polo\017Eku Manu\00E1lne vytvori\0165 referenciu na webov\00FA slu\017Ebu.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129146420686027516)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'sk'
,p_message_text=>unistr('Odpove\010F zo slu\017Eby nebola vo form\00E1te XML.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226157752027540)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Pr\00EDstupov\00FD token OAuth nie je dostupn\00FD alebo jeho platnos\0165 uplynula.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129190683115027530)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'sk'
,p_message_text=>unistr('Prekro\010Dili ste maxim\00E1lny po\010Det po\017Eiadaviek na webov\00FA slu\017Ebu na jeden pracovn\00FD priestor. Kontaktujte administr\00E1tora.')
,p_version_scn=>2693422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129226398988027540)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'sk'
,p_message_text=>unistr('Server odpovedal nepodporovan\00FDm typom tokenu OAuth.')
,p_version_scn=>2693431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129070202178027493)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'sk'
,p_message_text=>unistr('Dokument WSDL neobsahoval viazanie pre SOAP, ktor\00E9 je potrebn\00E9 na pridanie referencie.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129065617370027492)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'sk'
,p_message_text=>unistr('WSDL vy\017Eaduje doklady autentifik\00E1cie. Ni\017E\0161ie zadajte meno pou\017E\00EDvate\013Ea a heslo.')
,p_version_scn=>2693392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129076637244027495)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'sk'
,p_message_text=>unistr('Vykres\013Eovac\00ED mechanizmus nerozpoznal dokument WSDL. Ak chcete pokra\010Dova\0165 vo vytv\00E1ran\00ED referencie na t\00FAto slu\017Ebu, kliknite na polo\017Eku Manu\00E1lne vytvori\0165 referenciu na webov\00FA slu\017Ebu.')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129149406518027517)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktualiz\00E1ciu nemo\017Eno spracova\0165.')
,p_version_scn=>2693417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175247513027525)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'sk'
,p_message_text=>unistr('St\013Apce vr\00E1tenia a zobrazenia zoznamu hodn\00F4t s\00FA rovnak\00E9!')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129175154930027525)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Zoznam hodn\00F4t nem\00E1 st\013Apec vr\00E1tenia.')
,p_version_scn=>2693421
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102824612027503)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri vyvol\00E1van\00ED hodnoty st\013Apca: %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127768442027511)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'sk'
,p_message_text=>unistr('Aktu\00E1lne d\00E1ta tabu\013Ekov\00E9ho formul\00E1ra s\00FA pr\00EDli\0161 star\00E9. Zdrojov\00E9 d\00E1ta boli modifikovan\00E9.<br/> Kliknite <strong><a href="%0">sem</a></strong>, ak chcete zru\0161i\0165 zmeny a znovu zavies\0165 d\00E1ta z datab\00E1zy.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082911357027497)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba po\010Das ur\010Dovania re\0165azca str\00E1nkovania')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082880857027497)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('nie je mo\017En\00E9 ur\010Di\0165 z\00E1hlavia dopytu:'),
'%0'))
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083082973027497)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'sk'
,p_message_text=>unistr('chyba po\010Das vykon\00E1vania nahraden\00ED p\00E4ty zostavy')
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083175353027497)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('nepodarilo sa syntakticky analyzova\0165 dopyt SQL:'),
'%0',
'%1'))
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089229315027499)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'sk'
,p_message_text=>unistr('Po\017Eadovan\00FD minim\00E1lny po\010Det riadkov: %0, n\00E1jden\00E9, ale nezobrazen\00E9 riadky: %1')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085630305027498)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'sk'
,p_message_text=>unistr('st\013Apec dopytu #%0 (%1) je neplatn\00FD, st\013Apce pou\017E\00EDvaj\00FAce HTML vy\017Eaduj\00FA n\00E1zvy aliasu')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129102752414027503)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'sk'
,p_message_text=>unistr('Chyba pri z\00EDskavan\00ED z\00E1hlav\00ED dopytu: %0')
,p_version_scn=>2693409
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083204367027497)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'chyba zostavy:',
'%0'))
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129123352401027509)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'sk'
,p_message_text=>unistr('Triedi\0165 pod\013Ea tohto st\013Apca')
,p_version_scn=>2693412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085775297027498)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'sk'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Dopyt nie je mo\017En\00E9 syntakticky analyzova\0165, skontrolujte syntax dopytu.'),
'(%0)',
'</p>'))
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127860606027511)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'sk'
,p_message_text=>unistr('Tento formul\00E1r obsahuje neulo\017Een\00E9 zmeny. Stla\010Dte tla\010Didlo OK, ak chcete pokra\010Dova\0165 bez ulo\017Eenia zmien. ')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129132317953027512)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'sk'
,p_message_text=>unistr('Sch\00E9ma str\00E1nkovania zostavy (%0) pre vybran\00FD d\00E1tov\00FD zdroj nie je podporovan\00E1.')
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129085584975027498)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'sk'
,p_message_text=>unistr('st\013Apec dopytu #%0 (%1) je neplatn\00FD, pou\017Eite alias st\013Apca')
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089344436027499)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'sk'
,p_message_text=>'riadky %0 - %1 z viac ako %2'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129129862144027511)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'sk'
,p_message_text=>'%0 - %1 z viac ako %2'
,p_version_scn=>2693414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129089155533027499)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'sk'
,p_message_text=>'riadky %0 - %1 z %2'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129069930229027493)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'sk'
,p_message_text=>'%0 - %1 z %2'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129083357518027497)
,p_name=>'Y'
,p_message_language=>'sk'
,p_message_text=>'Y'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129090662525027499)
,p_name=>'YEAR'
,p_message_language=>'sk'
,p_message_text=>'rok'
,p_version_scn=>2693398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129082565305027497)
,p_name=>'YEARS'
,p_message_language=>'sk'
,p_message_text=>'r.'
,p_version_scn=>2693397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129127953738027511)
,p_name=>'YES'
,p_message_language=>'sk'
,p_message_text=>unistr('\00C1no')
,p_version_scn=>2693414
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
 p_id=>wwv_flow_imp.id(109678305570583962.4485)
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
 p_id=>1.4485
,p_name=>unistr('Spr\00E1vy')
,p_alias=>'MESSAGES'
,p_step_title=>unistr('Spr\00E1vy')
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
