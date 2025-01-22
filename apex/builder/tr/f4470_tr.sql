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
,p_default_application_id=>4488
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4488 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4488
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131600612532038091')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'tr'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4488)
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
 p_id=>wwv_flow_imp.id(4488)
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
 p_id=>wwv_flow_imp.id(728504220438374.4488)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4488)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4488)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4488)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4488)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4488)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4488)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4488)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4488)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4488)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4488)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4488)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4488)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4488)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4488)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4488)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4488)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.tr'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4488)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4488)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4488)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4488)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4488)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4488)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4488)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.tr'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4488)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4488)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4488)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4488)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4488)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4488)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.tr'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4488)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4488)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4488)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.tr'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4488)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4488)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4488)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4488)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4488)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4488)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4488)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4488)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4488)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4488)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4488)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4488)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4488)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4488)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4488)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4488)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4488)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.tr'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4488)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4488)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4488)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4488)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4488)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4488)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4488)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4488)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4488)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4488)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4488)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4488)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4488)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4488)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4488)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4488)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4488)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.tr'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4488)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4488)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4488)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4488)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4488)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4488)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4488)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4488)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4488)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4488)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4488)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4488)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4488)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4488)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4488)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.tr'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4488)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4488)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4488)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4488)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4488)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4488)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4488)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4488)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4488)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4488)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4488)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4488)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4488)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4488)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4488)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4488)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4488)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4488)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4488)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4488)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4488)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4488)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4488)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4488)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4488)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4488)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4488)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4488)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4488)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4488)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4488)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4488)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4488)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4488)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4488)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4488)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4488)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4488)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4488)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4488)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4488)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4488)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4488)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4488)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4488)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4488)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4488)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4488)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4488)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4488)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4488)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4488)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4488)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4488)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4488)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4488)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4488)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4488)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4488)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4488)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4488)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4488)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4488)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4488)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4488)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4488)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4488)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4488)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4488)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4488)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4488)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4488)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4488)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4488)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4488)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4488)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4488)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4488)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4488)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4488)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4488)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4488)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4488)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4488)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4488)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4488)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4488)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4488)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4488)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4488)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4488)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4488)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4488)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4488)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4488)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4488)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4488)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4488)
,p_page_name=>'winlov'
,p_page_title=>unistr('\0130leti\015Fim Kutusunu Ara')
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
,p_find_button_text=>'Ara'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Kapat'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('\0130leri &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; \00D6nceki')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">Sat\0131r(lar) #FIRST_ROW# - #LAST_ROW#</div>')
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
 p_id=>wwv_flow_imp.id(649611609668764506.4488)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4488)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4488)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4488)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4488)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4488)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4488)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4488)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4488)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4488)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4488)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4488)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4488)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4488)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4488)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4488)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4488)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4488)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4488)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4488)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4488)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4488)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4488)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4488)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4488)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4488)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4488)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4488)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4488)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4488)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4488)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4488)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4488)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4488)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4488)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4488)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4488)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4488)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4488)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4488)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4488)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4488)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4488)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4488)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4488)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4488)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4488)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4488)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4488)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4488)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4488)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4488)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4488)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4488)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4488)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4488)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4488)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4488)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4488)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4488)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4488)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4488)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4488)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4488)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4488)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4488)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4488)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4488)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4488)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4488)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4488)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4488)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4488)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4488)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4488)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4488)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4488)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4488)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4488)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4488)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4488)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4488)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4488)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4488)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4488)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4488)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4488)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4488)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4488)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4488)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4488)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4488)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4488)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4488)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4488)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4488)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4488)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4488)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4488)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4488)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4488)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4488)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4488)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4488)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4488)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4488)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4488)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4488)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4488)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4488)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4488)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4488)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4488)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4488)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4488)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4488)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4488)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4488)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4488)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4488)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4488)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4488)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4488)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4488)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4488)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4488)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4488)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4488)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4488)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4488)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4488)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4488)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4488)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4488)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4488)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4488)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4488)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4488)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4488)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4488)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4488)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4488)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4488)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4488)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4488)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4488)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4488)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4488)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4488)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4488)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4488)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4488)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4488)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4488)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4488)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4488)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4488)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4488)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4488)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4488)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4488)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4488)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4488)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4488)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4488)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4488)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4488)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4488)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4488)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4488)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4488)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4488)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4488)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4488)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4488)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4488)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4488)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4488)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4488)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4488)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4488)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4488)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4488)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4488)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4488)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4488)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4488)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4488)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4488)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4488)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4488)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4488)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4488)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4488)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4488)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4488)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4488)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4488)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4488)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4488)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4488)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4488)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4488)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4488)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4488)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4488)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4488)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4488)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4488)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4488)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4488)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4488)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4488)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4488)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4488)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4488)
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
 p_id=>wwv_flow_imp.id(130434597820027930)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun %0')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419159174027925)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00F6netici')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419082762027925)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 Ad\0131')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481762440027944)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Eri\015Fim Reddedildi')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438680171027931)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 hesab\0131n\0131z olu\015Fturuldu.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421887352027926)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'tr'
,p_message_text=>'Hesap kilitli.'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406300992027921)
,p_name=>'AM_PM'
,p_message_language=>'tr'
,p_message_text=>'AM / PM'
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389198443027916)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'tr'
,p_message_text=>unistr('eylem ba\011Flant\0131s\0131')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389077614027916)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'tr'
,p_message_text=>unistr('ileti\015Fim kutusu ba\011Flant\0131s\0131')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553405124027966)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7i\015F Yap %0')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561226753027968)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'tr'
,p_message_text=>'(Etkin)'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366024340027909)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'tr'
,p_message_text=>'Sohbet temizlendi'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365974807027909)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'tr'
,p_message_text=>'Sohbeti temizle'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362596999027908)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'tr'
,p_message_text=>'Kabul et'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362634520027908)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'tr'
,p_message_text=>'Reddet'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362371720027908)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'tr'
,p_message_text=>unistr('Konu\015Fma Tarih\00E7esi')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365727539027909)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'tr'
,p_message_text=>unistr('Kopyaland\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365801100027909)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'tr'
,p_message_text=>unistr('Panoya kopyaland\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365576033027909)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'tr'
,p_message_text=>'Kopyala'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365656308027909)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'tr'
,p_message_text=>'Panoya kopyala'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363046771027908)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Yard\0131mc\0131')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363481591027908)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'tr'
,p_message_text=>unistr('Adaptif Zeka \00E7al\0131\015Fma alan\0131 veya an d\00FCzeyinde devre d\0131\015F\0131.')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402792821027920)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'tr'
,p_message_text=>unistr('Belirtilen No veya statik No olan \00DCretken Adaptif Zeka bulunamad\0131.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401460621027920)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('URL %0 i\00E7in kimlik do\011Frulama hatas\0131 veya yasakl\0131 eri\015Fim (HTTP-%1). L\00FCtfen %2 \00DCretken Adaptif Zeka Hizmetinin konfig\00FCrasyonunu kontrol edin.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381299605027914)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DCretken Adaptif Zeka Hizmeti HTTP talebi %0 konumundaki HTTP-%1 ile ba\015Far\0131s\0131z oldu: %2')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405694843027921)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 modundaki %0 eklentisi i\00E7in \00DCretken Adaptif Zeka Hizmetine HTTP talebinde hata olu\015Ftu. L\00FCtfen \00DCretken Adaptif Zeka Hizmetinin konfig\00FCrasyonunu kontrol edin.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368465201027910)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6rnekler')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366857147027909)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'tr'
,p_message_text=>unistr('Yard\0131mc\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368288972027910)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366752108027909)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'tr'
,p_message_text=>'Siz'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397474506027918)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('OCI \00DCretken Adaptif Zeka mevcut durumda birden fazla mesaj olan sohbet deneyimini desteklemiyor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377396893027912)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 uygulamas\0131 i\00E7in %0 bilgi istemi i\015Flenirken hata olu\015Ftu. L\00FCtfen Uygulama Olu\015Fturucunun bu an \00FCzerinde kullan\0131labilir olup olmad\0131\011F\0131n\0131 kontrol edin.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382443080027914)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Adaptif Zeka hizmeti %0 i\00E7in yan\0131t i\015Flenemiyor, yan\0131t %1')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388682734027916)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Mesaj G\00F6nder')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376940040027912)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 arka u\00E7 Adaptif Zeka Hizmeti hatas\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362768824027908)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'tr'
,p_message_text=>'Mesaj'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362867609027908)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'tr'
,p_message_text=>unistr('Mesaj\0131n\0131z\0131 buraya yaz\0131n')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366102034027909)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 avatar\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366255893027909)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'tr'
,p_message_text=>'Bunu kullan'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362994036027908)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6nderilmemi\015F bir mesaj\0131n\0131z var, emin misiniz?')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531973458027959)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ajax \00E7a\011Fr\0131s\0131, %1 i\00E7in %0 sunucu hatas\0131n\0131 d\00F6nd\00FCrd\00FC.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459004267027937)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama di\011Fer ad\0131 "%0", benzersiz uygulama No olarak d\00F6n\00FC\015Ft\00FCr\00FClemiyor.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447862942027934)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1816 Uygulama di\011Fer ad\0131 p_flow_alias_or_id (%0) d\00F6n\00FC\015Ft\00FCr\00FCl\00FCrken beklenmeyen hata olu\015Ftu.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545218672027963)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama sa\011Flama toplam\0131, ayn\0131 uygulaman\0131n \00E7al\0131\015Fma alanlar\0131nda devreye al\0131n\0131p al\0131nmad\0131\011F\0131n\0131 belirlemenin kolay bir yoludur. E\015Fle\015Fme olup olmad\0131\011F\0131n\0131 belirlemek i\00E7in bu sa\011Flama toplam\0131n\0131 kar\015F\0131la\015Ft\0131rabilirsiniz.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431812005027929)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulama fonksiyonu i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413841314027923)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulama fonksiyonu i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585763412027975)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'tr'
,p_message_text=>unistr('Oracle Bulut Kimlik Y\00F6netimi taraf\0131ndan d\00F6nd\00FCr\00FClen Ge\00E7ici Kullan\0131c\0131 Ad\0131 %0, etki alan\0131 %1 i\00E7in yetkilendirilmemi\015F!<br/>L\00FCtfen <a href="&LOGOUT_URL.">yeniden oturum a\00E7\0131n</a> ve yetkilendirilmi\015F bir ge\00E7ici kullan\0131c\0131 ad\0131 belirtin veya URL''nizi de\011Fi\015Ftiri')
||'n.'
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409950001027922)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'tr'
,p_message_text=>unistr('Hesab\0131n\0131z "%0" \00E7al\0131\015Fma alan\0131 "%1" i\00E7in gerekli geli\015Ftirme yetkilerine (DB_DEVELOPER veya DB_ADMINISTRATOR)<br/>sahip de\011Fil! L\00FCtfen yetkiler sa\011Fland\0131ktan sonra <a href="&LOGOUT_URL.">tekrar oturum a\00E7\0131n</a>.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406502424027921)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'tr'
,p_message_text=>unistr('Oracle Bulut Kimlik Y\00F6netimi taraf\0131ndan d\00F6nd\00FCr\00FClen Ge\00E7ici Kullan\0131c\0131 Ad\0131 ge\00E7erli \00E7al\0131\015Fma alan\0131 i\00E7in yetkilendirilmemi\015F!<br/>L\00FCtfen <a href="&LOGOUT_URL.">yeniden oturum a\00E7\0131n</a> ve yetkilendirilmi\015F bir ge\00E7ici kullan\0131c\0131 ad\0131 belirtin.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410036721027922)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCvenlik nedeniyle URL''deki etki alan\0131 yoluyla bu \00E7al\0131\015Fma alan\0131 uygulamalar\0131n\0131n \00E7al\0131\015Ft\0131r\0131lmalar\0131na izin verilmez.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431595563027929)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen veritaban\0131 y\00F6neticinizden $OH/rdbms/admin/catldap.sql komutunu \00E7al\0131\015Ft\0131rmas\0131n\0131 isteyin.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431429624027929)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'tr'
,p_message_text=>unistr('SYS.DBMS_LDAP paketi mevcut de\011Fil veya ge\00E7ersiz.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431373031027929)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenleme LDAP (Hafif Dizin Eri\015Fimi \0130leti\015Fim Kural\0131) kullan\0131c\0131 fonksiyonu i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431604246027929)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('LDAP (Hafif Dizin Eri\015Fimi \0130leti\015Fim Kural\0131) do\011Frulamas\0131 i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432442927027929)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'tr'
,p_message_text=>unistr('login_page prosed\00FCr\00FCne ili\015Fkin p_flow_page ba\011F\0131ms\0131z de\011Fi\015Fkeninde hata.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432008572027929)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'tr'
,p_message_text=>unistr('wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1 i\00E7inde ge\00E7ersiz p_session.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483390852027945)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'tr'
,p_message_text=>unistr('wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2 i\00E7in hatal\0131 ba\011F\0131ms\0131z de\011Fi\015Fken.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432101415027929)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum a\00E7ma prosed\00FCr\00FCne bo\015F kullan\0131c\0131 ad\0131 iletildi.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418940990027925)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen tekrar oturum a\00E7mak i\00E7in <span id="apex_login_throttle_sec">%0</span> saniye bekleyin.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420244543027925)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum a\00E7ma denemesi engellendi.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481016236027944)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulama "%0" bulunamad\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420759457027925)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCvenlik grubu No bo\015F.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431905046027929)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulama sonras\0131 i\015Flemi y\00FCr\00FCt\00FCl\00FCrken hata olu\015Ftu.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431771249027929)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulama \00F6ncesi i\015Flemi i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433492185027929)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('L\00FCtfen URL''yi Parola S\0131f\0131rlama iste\011Fini ba\015Flatt\0131\011F\0131n\0131z taray\0131c\0131da a\00E7\0131n. Parola S\0131f\0131rlama URL''sine t\0131klarsan\0131z ve oturum a\00E7ma sayfas\0131na y\00F6nlendirilirseniz'),
unistr('l\00FCtfen Parola S\0131f\0131rlama''y\0131 tekrar ba\015Flat\0131n ve taray\0131c\0131y\0131'),
unistr('a\00E7\0131k b\0131rak\0131n.')))
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583263050027975)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola S\0131f\0131rlama URL''si')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410204495027922)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 Kaynak Y\00F6neticisi t\00FCketici grubu, %1 i\00E7in yetkilendirilmemi\015F')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410363387027922)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen eksik yetkiyi sa\011Flamak \00FCzere DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP kullan\0131n.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444993533027933)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum sentry fonksiyonu i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445092101027933)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum do\011Frulama fonksiyonu i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445227005027933)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen %0 y\00F6neticinizden Oracle Uygulama Sunucusu Tek Ad\0131ml\0131 Oturum A\00E7ma i\00E7in motoru konfig\00FCre etmesini isteyin.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455654111027936)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 belirtecinde tek ad\0131ml\0131 oturum a\00E7ma taraf\0131ndan ge\00E7ersiz %0 d\00F6nd\00FCr\00FCld\00FC.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432368075027929)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen do\011Frulama \015Femas\0131n\0131 d\00FCzenleyin ve uygulama ad\0131n\0131 ekleyin.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455375268027936)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 prosed\00FCr\00FC i\00E7in \00E7a\011Fr\0131y\0131 yapan ge\00E7ersiz:')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455501144027936)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('urlc belirtecinde ge\00E7ersiz uygulama oturumu: %0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455138701027936)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'tr'
,p_message_text=>unistr('portal_sso_redirect i\00E7inde hata: eksik uygulama kay\0131t bilgileri: %0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445153726027933)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'tr'
,p_message_text=>unistr('WWSEC_SSO_ENABLER_PRIVATE paketi mevcut de\011Fil veya ge\00E7ersiz.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432239055027929)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulama \015Femas\0131nda kay\0131tl\0131 ortak uygulama ad\0131 bulunam\0131yor.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455269138027936)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen bu uygulamay\0131 kurulum k\0131lavuzunda a\00E7\0131kland\0131\011F\0131 gibi kaydedin.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445341251027933)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('SSO (Tek Ad\0131ml\0131 Oturum A\00E7ma) do\011Frulamas\0131 i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558605581027967)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'tr'
,p_message_text=>unistr('Yetkilendirilmemi\015F URL: %0')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444763995027933)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulama i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410182594027922)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7al\0131\015Fma alan\0131 "%0" etkin de\011Fil. Y\00F6neticiniz ile ileti\015Fime ge\00E7in.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410865727027922)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'tr'
,p_message_text=>'%0'
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419996264027925)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Eri\015Fim, Uygulama g\00FCvenlik kontrol\00FC taraf\0131ndan reddedildi')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420086452027925)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Eri\015Fim, Sayfa g\00FCvenlik kontrol\00FC taraf\0131ndan reddedildi')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420121455027925)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Yetkilendirme i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489294257027946)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 kullan\0131larak %0 ile olu\015Fturuldu')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489355311027946)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'tr'
,p_message_text=>'sevgi'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549162592027964)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkinlik A\00E7\0131klamas\0131')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548959101027964)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'tr'
,p_message_text=>unistr('Biti\015F Tarihi')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549272442027964)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'tr'
,p_message_text=>'Etkinlik No'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548848031027964)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7 Tarihi')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549017055027964)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkinlik Ba\015Fl\0131\011F\0131')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391623663027917)
,p_name=>'APEX.CARD'
,p_message_language=>'tr'
,p_message_text=>'Kart'
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391871549027917)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'tr'
,p_message_text=>'Kart eylemi'
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432502070027929)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rsel olarak sakl\0131 onay kutusu')
,p_is_js_message=>true
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434494189027930)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Sa\011Flama toplam\0131 i\00E7erik hatas\0131')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434373251027929)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Sa\011Flama toplam\0131 format hatas\0131')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504289202027951)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'tr'
,p_message_text=>unistr('Panoya kopyaland\0131.')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503758422027951)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu taray\0131c\0131, bir d\00FC\011Fme veya men\00FCden kopyalamay\0131 desteklemiyor. Ctrl+C veya Command+C deneyin.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489992345027947)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'tr'
,p_message_text=>'Kapat'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368342624027910)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'tr'
,p_message_text=>unistr('Kod D\00FCzenleyici i\00E7eri\011Fi \00F6\011Fenin maksimum uzunlu\011Funu a\015F\0131yor (fiili %0, izin verilen %1 karakter)')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548404122027964)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'tr'
,p_message_text=>'Kontrast'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542918620027963)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542860269027962)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547067935027964)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL# ge\00E7erli bir renk olmal\0131d\0131r. \00D6rnek :%0')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409402034027922)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'tr'
,p_message_text=>unistr('Di\011Fer renkler')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409522007027922)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'tr'
,p_message_text=>unistr('Renk se\00E7iciyi a\00E7')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366660740027909)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'tr'
,p_message_text=>unistr('Alfa Kayd\0131r\0131c\0131, yatay kayd\0131r\0131c\0131. Gezinmek i\00E7in ok tu\015Flar\0131n\0131 kullan\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366306294027909)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'tr'
,p_message_text=>unistr('Renk Skalas\0131, 4 y\00F6nl\00FC kayd\0131r\0131c\0131. Gezinmek i\00E7in ok tu\015Flar\0131n\0131 kullan\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366444603027909)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'tr'
,p_message_text=>unistr('Hue Kayd\0131r\0131c\0131, dikey kayd\0131r\0131c\0131. Gezinmek i\00E7in ok tu\015Flar\0131n\0131 kullan\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542794320027962)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir renk se\00E7in')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543071434027963)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Renk format\0131n\0131 de\011Fi\015Ftir')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580955762027974)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Ferler Listesi')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581020454027974)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eunun i\00E7in listeyi a\00E7: %0')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561384942027968)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'tr'
,p_message_text=>unistr('(Tamamland\0131)')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450228287027934)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama y\00F6neticiniz ile ileti\015Fime ge\00E7in.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465737830027939)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Uygulama y\00F6neticiniz ile ileti\015Fime ge\00E7in.'),
unistr('Bu vaka ile ilgili detaylara hata ay\0131klama no "%0" yoluyla ula\015F\0131labilir.')))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547364859027964)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'tr'
,p_message_text=>unistr('Kaydetmeden \00F6nce hatalar\0131 d\00FCzeltin.')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392659971027917)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'tr'
,p_message_text=>unistr('%0. Silmek i\00E7in Geri tu\015Funa bas\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490807606027947)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 e\015Fle\015Fme bulundu')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372771591027911)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('1 bulunan e\015Fle\015Fme')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490706201027947)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'tr'
,p_message_text=>unistr('E\015Fle\015Fme bulunamad\0131')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367148498027909)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'tr'
,p_message_text=>unistr('Di\011Ferleri')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367043234027909)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 de\011Fer se\00E7ildi')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561896706027968)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli \0130lerleme')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547774227027964)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00F6\011Fesinde belirtilen dosya, APEX_APPLICATION_TEMP_FILES i\00E7inde mevcut de\011Fil.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536247909027961)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'tr'
,p_message_text=>unistr('Veritaban\0131ndaki verilerin mevcut s\00FCr\00FCm\00FC, kullan\0131c\0131n\0131n g\00FCncelleme i\015Flemini ba\015Flatmas\0131ndan bu yana de\011Fi\015Fti.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505333108027951)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCkleme Yapma')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551626410027965)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6n i\015Fleme hatas\0131')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551430549027965)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r ekle')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565094177027969)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ra Eylemi')
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551519560027965)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r\0131 g\00FCncelle')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380077493027913)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'tr'
,p_message_text=>'Eylemler'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407644002027921)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'tr'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393758056027917)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 bir tarih se\00E7ici veya ge\00E7erli bir tarih olmal\0131d\0131r, \00F6rne\011Fin %1.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502913761027950)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'tr'
,p_message_text=>'Temizle'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411112577027922)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'tr'
,p_message_text=>'Bitti'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422199106027926)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, %1 format maskesinde desteklenmeyen par\00E7alara sahip')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407300812027921)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'tr'
,p_message_text=>'Saat'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491235392027947)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131lan Takvim Men\00FCs\00FC: %0')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407119976027921)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'tr'
,p_message_text=>'Hafta'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407289215027921)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'tr'
,p_message_text=>'Hft'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407504932027921)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'tr'
,p_message_text=>unistr('Dakika Say\0131s\0131')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407782261027921)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'tr'
,p_message_text=>'Ay'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408194852027922)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'tr'
,p_message_text=>'Sonraki Ay'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377739967027912)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7in a\00E7\0131lan pencere')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408048379027922)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nceki Ay')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500588615027950)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'tr'
,p_message_text=>unistr('Salt okunur tarih se\00E7ici')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408926375027922)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Tarih Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377808924027913)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'tr'
,p_message_text=>unistr('Tarih ve Saat Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375001905027912)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCn Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378453780027913)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ay ve Y\0131l Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375290664027912)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'tr'
,p_message_text=>unistr('Saat Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375761131027912)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Bug\00FCn')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393386305027917)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL# ge\00E7erli bir tarih olmal\0131d\0131r, \00F6rne\011Fin %0.')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393099423027917)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL# %0 ile %1 aras\0131nda olmal\0131d\0131r.')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393122218027917)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, %0 tarihinde veya bu tarihten sonra olmal\0131d\0131r.')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393271454027917)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, %0 tarihinde veya bu tarihten \00F6nce olmal\0131d\0131r.')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384696519027915)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FClemeyen Metin d\00FCzenleme')
,p_is_js_message=>true
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407972532027922)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\0131l')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494923196027948)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, belirtilen %0 maksimum tarihinden sonrad\0131r.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495315914027948)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL# %0 format\0131yla e\015Fle\015Fmiyor.')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494881088027948)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, belirtilen %0 minimum tarihinden \00F6ncedir.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495001820027948)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, ge\00E7erli %0 - %1 aral\0131\011F\0131nda de\011Fil.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495236317027948)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, ge\00E7erli%0 - %1 y\0131l aral\0131\011F\0131nda de\011Fil.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387073197027915)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('DBMS_CLOUD talebi i\015Flenirken dahili bir hata olu\015Ftu.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547650616027964)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ptal')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573538617027972)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'tr'
,p_message_text=>'Kapat'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434773260027930)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'tr'
,p_message_text=>'Teyit'
,p_is_js_message=>true
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575569184027972)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'tr'
,p_message_text=>unistr('Yard\0131m')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547427791027964)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'tr'
,p_message_text=>'Tamam'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547542572027964)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'tr'
,p_message_text=>'Kaydet'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415280767027924)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leti\015Fim Kutusu Ba\015Fl\0131\011F\0131')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454995627027936)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rsel olarak sakl\0131 ileti\015Fim kutusu ba\015Fl\0131\011F\0131')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376006737027912)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'tr'
,p_message_text=>unistr('Oracle Dok\00FCman Olu\015Fturucu \00D6nceden Olu\015Fturulmu\015F Fonksiyonu')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386827244027915)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Dok\00FCman yazd\0131r\0131l\0131rken hata olu\015Ftu.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364026944027908)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('%s \00E7\0131kt\0131 olarak %1 desteklemez.')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375938731027912)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Oracle Dok\00FCman Olu\015Fturucu \00D6nceden Olu\015Fturulmu\015F Fonksiyonu \00E7a\011Fr\0131l\0131rken "%0" hatas\0131 olu\015Ftu:')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367411724027909)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir \015Fablon gereklidir.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392835915027917)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya indirilirken hata olu\015Ftu.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392792678027917)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ndirilebilir veri bulunamad\0131.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396383487027918)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu \00F6zellik Yaln\0131zca \00C7al\0131\015Ft\0131rma Zaman\0131 ortam\0131nda kullan\0131lamaz.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449107728027934)
,p_name=>'APEX.ERROR'
,p_message_language=>'tr'
,p_message_text=>'Hata'
,p_is_js_message=>true
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409048171027922)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('Hata i\015Flemeyi geri \00E7a\011F\0131rma y\00FCr\00FCt\00FCl\00FCrken \015Fu hata olu\015Ftu: %0')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421694280027926)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Hata sayfas\0131 boyan\0131rken hata olu\015Ftu: %0')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410753187027922)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'tr'
,p_message_text=>'Dahili Hata'
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560490682027968)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Y\00F6neticiniz ile ileti\015Fime ge\00E7in.'),
unistr('Bu vaka ile ilgili detaylara hata ay\0131klama no "%0" yoluyla ula\015F\0131labilir.')))
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555087171027966)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'tr'
,p_message_text=>unistr('Veritaban\0131 sadece salt okunur eri\015Fim i\00E7in a\00E7\0131k.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585110916027975)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'tr'
,p_message_text=>unistr('ORA-28353: Anahtar c\00FCdan a\00E7\0131lamad\0131. Uygulama verilerine mevcut durumda eri\015Filemiyor.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555144907027966)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu sayfa kullan\0131lam\0131yor.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413776887027923)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'tr'
,p_message_text=>unistr('Teknik Bilgiler (yaln\0131zca geli\015Ftiriciler i\00E7in mevcut)')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519656328027955)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('Hata Mesaj\0131')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533536456027960)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'tr'
,p_message_text=>'Beklenen format: %0'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498426902027949)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 zaten Eri\015Fim Kontrol Listesinde')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498380739027949)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen a\015Fa\011F\0131daki %0 kullan\0131c\0131n\0131n <strong>%1</strong> eri\015Fim kontrol listesine eklendi\011Fini teyit edin.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498874386027949)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'tr'
,p_message_text=>unistr('Tekrarlanan kullan\0131c\0131 mevcut')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498597607027949)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta adresinde (@) i\015Fareti eksik.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498605224027949)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'tr'
,p_message_text=>'E-posta adresinde nokta (.) eksik.'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498750339027949)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 ad\0131 \00E7ok uzun')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499009571027949)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'tr'
,p_message_text=>unistr('Yaln\0131zca uygulama eri\015Fim kontrol listesinde tan\0131mlanan kullan\0131c\0131lar bu uygulamaya eri\015Febilir')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499125581027949)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('Beklenmeyen Eri\015Fim Kontrol\00FC Ayar De\011Feri :%0')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498987929027949)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulanm\0131\015F t\00FCm kullan\0131c\0131lar bu uygulamaya eri\015Febilir')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543403913027963)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'tr'
,p_message_text=>unistr('Devre d\0131\015F\0131')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543399609027963)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'tr'
,p_message_text=>'Etkin'
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543661258027963)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0: Devre D\0131\015F\0131 B\0131rak\0131ld\0131')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543551166027963)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0: Etkinle\015Ftirildi')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392197229027917)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>'Desteklenmiyor'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453318991027935)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'tr'
,p_message_text=>unistr('Kapal\0131')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453282652027935)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131k')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543204244027963)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'tr'
,p_message_text=>unistr('tan\0131mlanmad\0131')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383738428027914)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'tr'
,p_message_text=>'%0 Bayt'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384287225027914)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'tr'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383967457027914)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'tr'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384164828027914)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'tr'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536410405027961)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ndir')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389506644027916)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7enekler')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389210118027916)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'tr'
,p_message_text=>'Filtre'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389456226027916)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'tr'
,p_message_text=>'Faseti Gizle'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414179466027923)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'tr'
,p_message_text=>'Filtre Ekle'
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490450284027947)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 Filtresi Uyguland\0131')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414808047027924)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'tr'
,p_message_text=>'Uygula'
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534054492027960)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'tr'
,p_message_text=>'Uygula'
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414947983027924)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ptal')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398702400027919)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7ubuk Grafik')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546769119027964)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'tr'
,p_message_text=>unistr('Di\011Ferleri')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398802515027919)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'tr'
,p_message_text=>'Pasta Grafik'
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545345038027963)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'tr'
,p_message_text=>'Grafik'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398585444027919)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Say\0131')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534579024027960)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'tr'
,p_message_text=>'Temizle'
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534633708027960)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Temizle')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534743199027960)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00F6\011Fesini temizle')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551220925027965)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('Faset %0 taraf\0131ndan referans g\00F6sterilen s\00FCtun %1 kullan\0131lam\0131yor veya yetkilendirilmemi\015F.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361965006027908)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6sterilecek Filtreleri se\00E7in')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488400228027946)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sonu\00E7')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488578800027946)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 se\00E7ildi')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491363563027947)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'tr'
,p_message_text=>'Mevcut filtreler'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366955640027909)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'tr'
,p_message_text=>unistr('Fasetli Arama, b\00F6lge d\00FCzeyinde Veri Kayna\011F\0131 gerektirir.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370613404027910)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'tr'
,p_message_text=>'Filtre listesi'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549718198027965)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'tr'
,p_message_text=>unistr('Farkl\0131 de\011Fer s\0131n\0131r\0131 (%0), faset %1 i\00E7in a\015F\0131ld\0131.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536083975027960)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('Faset %0, DATE veya TIMESTAMP s\00FCtunlar i\00E7in desteklenmiyor.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534110240027960)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00F6\011Fesini filtrele')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408762859027922)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 (Filtre Uyguland\0131)')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534254272027960)
,p_name=>'APEX.FS.GO'
,p_message_language=>'tr'
,p_message_text=>'Git'
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404292836027920)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7erir')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535691945027960)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'tr'
,p_message_text=>unistr('e\015Fittir %0')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403909484027920)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'tr'
,p_message_text=>unistr('bundan b\00FCy\00FCkt\00FCr: %0')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404046524027920)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'tr'
,p_message_text=>unistr('b\00FCy\00FCkt\00FCr veya e\015Fittir %0')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403607282027920)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'tr'
,p_message_text=>unistr('bundan k\00FC\00E7\00FCkt\00FCr: %0')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403839573027920)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'tr'
,p_message_text=>unistr('k\00FC\00E7\00FCkt\00FCr veya e\015Fittir %0')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403141944027920)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7ermez')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388946343027916)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'tr'
,p_message_text=>unistr('e\015Fit de\011Fildir %0')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403216637027920)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 ile ba\015Flamaz')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404145392027920)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130le ba\015Flar')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402237950027920)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'tr'
,p_message_text=>unistr('Faset Se\00E7imi')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378067035027913)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'tr'
,p_message_text=>unistr('Faset "%1" i\00E7in "%0" filtre \00F6n eki ge\00E7ersiz.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376464079027912)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'tr'
,p_message_text=>unistr('Faset "%0" i\00E7in filtre \00F6n eki eksik.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410653136027922)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015Fle\00E7')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392521693027917)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7erir')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391556452027917)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'tr'
,p_message_text=>unistr('e\015Fittir')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392246011027917)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'tr'
,p_message_text=>unistr('b\00FCy\00FCkt\00FCr')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392386218027917)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'tr'
,p_message_text=>unistr('b\00FCy\00FCkt\00FCr veya e\015Fittir')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391915988027917)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'tr'
,p_message_text=>unistr('k\00FC\00E7\00FCkt\00FCr')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392016530027917)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'tr'
,p_message_text=>unistr('k\00FC\00E7\00FCkt\00FCr veya e\015Fittir')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403007081027920)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7ermez')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391709082027917)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'tr'
,p_message_text=>unistr('e\015Fit de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402956021027920)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Fununla ba\015Flamaz:')
,p_is_js_message=>true
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392419415027917)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'tr'
,p_message_text=>unistr('ile ba\015Flar')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411015759027922)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 veri tipi (%1), Giri\015F Alan\0131 faset i\00E7in desteklenmiyor.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377907009027913)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Faset "%1" i\00E7in "%0" filtresi desteklenmiyor (veri tipi %2)')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410502051027922)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535849087027960)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'tr'
,p_message_text=>unistr('Faset %0 i\00E7in sa\011Flanan arama s\00FCtunu yok')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362077821027908)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'tr'
,p_message_text=>'Daha Fazla Filtre'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488683970027946)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'tr'
,p_message_text=>unistr('Aral\0131k Ba\015Flang\0131c\0131')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535369394027960)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'tr'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535452850027960)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 de\011Ferinin \00FCzerinde')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535535022027960)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 de\011Ferinin alt\0131nda')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488787367027946)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'tr'
,p_message_text=>unistr('Aral\0131k Sonu')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553313647027966)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Ferler Listesi \00F6\011Fesi #%2 ("%1") aral\0131k faseti %0 i\00E7in ge\00E7ersiz ("|" ay\0131r\0131c\0131s\0131 eksik).')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535742432027960)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun DATE veya TIMESTAMP oldu\011Fu i\00E7in Aral\0131k faseti %0 i\00E7in Manuel Giri\015F mevcut durumda desteklenmiyor.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535098021027960)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'tr'
,p_message_text=>'-'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398634936027919)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafi\011Fi Kald\0131r')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485076968027945)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131f\0131rla')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534451108027960)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'tr'
,p_message_text=>'Ara'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534390423027960)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'tr'
,p_message_text=>'Ara...'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535209384027960)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'tr'
,p_message_text=>unistr('- Se\00E7 -')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398440099027919)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafi\011Fi G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534867983027960)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'tr'
,p_message_text=>unistr('Daha Az G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130534945692027960)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535133647027960)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 y\0131ld\0131z ve yukar\0131s\0131')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490320409027947)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Filtre \00F6nerileri')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130535943223027960)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('Metin Alan\0131 faset %0 mevcut durumda sadece NUMBER s\00FCtunlar i\00E7in destekleniyor.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361459408027908)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Toplam Sat\0131r Say\0131s\0131')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551363438027965)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 veri tipi (%1), fasetli arama i\00E7in desteklenmiyor.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481534826027944)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rsel olarak sakl\0131 ba\015Fl\0131k')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543881124027963)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'tr'
,p_message_text=>'Hataya git'
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499811775027949)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('Birle\015Ftir.')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427728979027927)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015F ba\015Fl\0131k')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509154608027952)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'tr'
,p_message_text=>'Kontrol kesmesini daralt'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499998897027950)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'tr'
,p_message_text=>'Kontrol kesmesi.'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509089995027952)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'tr'
,p_message_text=>unistr('Kontrol kesmesini geni\015Flet')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508813332027952)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sat\0131r silindi')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577918859027973)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'tr'
,p_message_text=>'Tekrarlanan kimlik'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370833871027910)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenleme moduna giriliyor')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496712650027949)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130lk')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369616375027910)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leti\015Fim kutusunu gizle')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368605112027910)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fi\015Fken ta\015Fma h\00FCcre i\00E7eri\011Fi')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369986307027910)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'tr'
,p_message_text=>unistr('Ta\015Fma i\00E7eri\011Fini g\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444186586027933)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'tr'
,p_message_text=>'Grid Altbilgisi'
,p_is_js_message=>true
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500123939027950)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('Grup \00FCstbilgisi')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500090345027950)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DCstbilgi.')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496829221027949)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'tr'
,p_message_text=>'Son'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371049607027911)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenleme modundan \00E7\0131k\0131l\0131yor')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395711017027918)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Y\00FCkle')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518601629027955)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'tr'
,p_message_text=>unistr('Daha Fazla G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496503959027949)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500256082027950)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa sat\0131rlar\0131')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409397632027922)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'tr'
,p_message_text=>'Sayfa %0'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496983718027949)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'tr'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497047993027949)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'tr'
,p_message_text=>'%0 - %1 / %2'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553977048027966)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa Se\00E7imi')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444454460027933)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfaland\0131rma')
,p_is_js_message=>true
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496632316027949)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394650106027917)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Aral\0131k g\00F6r\00FCnt\00FCleme')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428087884027928)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Se\00E7imi')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577784704027973)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'tr'
,p_message_text=>'Eklendi'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577862960027973)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fi\015Ftirildi')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130586150113027976)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('Grid sat\0131r s\0131ras\0131 %0, S\00FCtun %1.')
,p_is_js_message=>true
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130586291271027976)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('Grid sat\0131r s\0131ras\0131 %0.')
,p_is_js_message=>true
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577649833027973)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'tr'
,p_message_text=>'Silindi'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500438969027950)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r \00FCstbilgisi')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427918167027928)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Se\00E7imi')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395877808027918)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 %1 se\00E7ildi')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495935395027948)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 h\00FCcre se\00E7ildi')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497146003027949)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sat\0131r se\00E7ildi')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539200691027961)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432799905027929)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm Sat\0131rlar\0131 Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508922705027952)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'tr'
,p_message_text=>'Sayfa %0'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500348426027950)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500647126027950)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'tr'
,p_message_text=>unistr('Artan D\00FCzende S\0131raland\0131 %0')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500758348027950)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'tr'
,p_message_text=>unistr('Azalan D\00FCzende S\0131raland\0131 %0')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496018541027948)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'tr'
,p_message_text=>unistr('Artan D\00FCzende S\0131rala')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496319009027948)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'tr'
,p_message_text=>unistr('Artan D\00FCzende S\0131rala %0')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496164961027948)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'tr'
,p_message_text=>unistr('Azalan D\00FCzende S\0131rala')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496455018027948)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'tr'
,p_message_text=>unistr('Azalan D\00FCzende S\0131rala %0')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130496279307027948)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ralama Yapma')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361846218027908)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ralama se\00E7enekleri')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444208921027933)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'tr'
,p_message_text=>'Durum Simgeleri'
,p_is_js_message=>true
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444311170027933)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'tr'
,p_message_text=>unistr('Grid Stat\00FCs\00FC')
,p_is_js_message=>true
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374112920027911)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'tr'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373860882027911)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'tr'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508737586027952)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'tr'
,p_message_text=>'Toplam %0'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427516133027927)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" i\00E7in HTTP iste\011Fi ba\015Far\0131s\0131z oldu.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429130901027928)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun %0')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429333081027928)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun %0 ve sat\0131r %1')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429619574027928)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Zaten ilk s\00FCtunda. S\00FCtun %0 ve sat\0131r %1')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429521704027928)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Zaten ilk sat\0131rda. S\00FCtun %0 ve sat\0131r %1')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575135189027972)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 s\00FCtunda ve %1 sat\0131rda sunuldu')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429703809027928)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Zaten en son s\00FCtunda. S\00FCtun %0 ve sat\0131r %1')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429456212027928)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Zaten en son sat\0131rda. S\00FCtun %0 ve sat\0131r %1')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508625250027952)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sat\0131rda sunuldu')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429261828027928)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r %0')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585944126027976)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli Grid %0')
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493032983027947)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'tr'
,p_message_text=>'Eylemler'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494031363027948)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'tr'
,p_message_text=>'Ekle'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493943436027948)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Ekle')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579537129027974)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Birle\015Ftir')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565101917027969)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'tr'
,p_message_text=>'Toplama'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566837574027970)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524418158027957)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm Metin S\00FCtunlar\0131')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525643762027957)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'tr'
,p_message_text=>'Alternatif'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526712128027958)
,p_name=>'APEX.IG.AND'
,p_message_language=>'tr'
,p_message_text=>'ve'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546134281027963)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'tr'
,p_message_text=>unistr('Farkl\0131 Olanlar\0131 Yakla\015F\0131k Say')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580592841027974)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'tr'
,p_message_text=>unistr('Genel Yakla\015F\0131k Say\0131m Fark\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563714352027969)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'tr'
,p_message_text=>'Alan'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565652755027969)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'tr'
,p_message_text=>'Artan'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525710211027957)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'tr'
,p_message_text=>'Yetkilendirme'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579694188027974)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'tr'
,p_message_text=>'Otomatik'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546583393027964)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'tr'
,p_message_text=>'Ortalama'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580259324027974)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'tr'
,p_message_text=>'Genel Ortalama'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563297732027969)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Etiket Ekseni Ba\015Fl\0131\011F\0131')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563491690027969)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'tr'
,p_message_text=>unistr('Ondal\0131k Basamaklar')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563308952027969)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer Ekseni Ba\015Fl\0131\011F\0131')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569473733027970)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'tr'
,p_message_text=>'Arka Plan Rengi'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563874002027969)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7ubuk')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521018275027956)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'tr'
,p_message_text=>unistr('aras\0131nda')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570654650027971)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'tr'
,p_message_text=>unistr('Her \0130kisi')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563927238027969)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kabarc\0131k')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494201904027948)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ptal')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526659232027958)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00FCy\00FCk/K\00FC\00E7\00FCk Harf Duyarl\0131')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581111022027974)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'tr'
,p_message_text=>unistr('(B\00FCy\00FCk/K\00FC\00E7\00FCk Harf Duyarl\0131)')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552432888027965)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fi\015Fiklikler kaydedildi')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494618630027948)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCn\00FCm\00FC De\011Fi\015Ftir')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527797531027958)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'tr'
,p_message_text=>'Grafik'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524207323027957)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sorgunuz grafik ba\015F\0131na maksimum %0 veri noktas\0131n\0131 a\015F\0131yor. L\00FCtfen temel sorgunuzdaki kay\0131tlar\0131n say\0131s\0131n\0131 azaltmak i\00E7in bir filtre uygulay\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492987556027947)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafik G\00F6r\00FCn\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501357577027950)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'tr'
,p_message_text=>'Temizle'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562790385027968)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Kapat'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569613350027971)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'tr'
,p_message_text=>'Renkler'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546994073027964)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nizleme')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526069211027957)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493101200027947)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunlar')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455041691027936)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Eylemleri')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454879690027936)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" s\00FCtunu i\00E7in eylemler')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571451313027971)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Amac\0131')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526129511027957)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'tr'
,p_message_text=>unistr('Karma\015F\0131k')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493337734027948)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'tr'
,p_message_text=>'Hesapla'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521681579027956)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7erir')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527942457027958)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'tr'
,p_message_text=>'Kontrol Kesmesi'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501114639027950)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'tr'
,p_message_text=>'Panoya Kopyala'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501258604027950)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'tr'
,p_message_text=>'Kopyala'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545950894027963)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'tr'
,p_message_text=>'Say'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546019485027963)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'tr'
,p_message_text=>unistr('Farkl\0131 Olanlar\0131 Say')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580427311027974)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'tr'
,p_message_text=>unistr('Genel Say\0131m Fark\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580334687027974)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'tr'
,p_message_text=>unistr('Genel Say\0131m')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578057562027973)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 Olu\015Ftur')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524673220027957)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'tr'
,p_message_text=>'Veri'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571288501027971)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri T\00FCr\00FC')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570812593027971)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'tr'
,p_message_text=>'Tarih'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552299484027965)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz Tarih De\011Feri')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522311129027956)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('g\00FCnler')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525364409027957)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ayar \00D6nde\011Ferleri')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525119808027957)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCr \00D6nde\011Feri')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494114175027948)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'tr'
,p_message_text=>'Sil'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572382926027971)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu raporu silmek istedi\011Finize emin misiniz?')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529799762027959)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r\0131 Sil')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528590640027958)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131rlar\0131 Sil')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565761474027969)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'tr'
,p_message_text=>'Azalan'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527415973027958)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'tr'
,p_message_text=>'Detail'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492613127027947)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Detay G\00F6r\00FCn\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554711843027966)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00F6n')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527192663027958)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'tr'
,p_message_text=>unistr('Devre d\0131\015F\0131')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521755384027956)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7ermez')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521987561027956)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Fununla ba\015Flamaz:')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564076180027969)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'tr'
,p_message_text=>'Halka'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528147358027958)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ndir')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418469910027925)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'tr'
,p_message_text=>'Sadece Veri'
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573360839027972)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'tr'
,p_message_text=>unistr('Format Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433584991027929)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ndirme Format %0 etkin de\011Fil.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566485988027970)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Tekrarlanan Birle\015Ftirme')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566588353027970)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'tr'
,p_message_text=>'Tekrarlanan Kontrol Kesmesi'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529601746027958)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r\0131 \00C7o\011Falt')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528409311027958)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('Tekrarlanan Sat\0131rlar')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493776902027948)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenle')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565551180027969)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafik D\00FCzenle')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446062731027933)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00D6\011Fesini D\00FCzenle')
,p_is_js_message=>true
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576919846027973)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Grup D\00FCzenleme \00D6l\00E7\00FCt\00FC')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484175338027945)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 d\00FCzenleme modunda')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459758544027937)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Elektronik tablo d\00FCzenleme modunda; g\00F6r\00FCnt\00FCleme moduna ge\00E7mek i\00E7in bas\0131l\0131 durumdan \00E7\0131kar\0131n')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572991469027972)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'tr'
,p_message_text=>unistr('Kapal\0131 Kopya (gizli)')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573176109027972)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'tr'
,p_message_text=>'Mesaj'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572851906027971)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'tr'
,p_message_text=>'Kopya (bilgi)'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572519244027971)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta g\00F6nderildi.')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573041234027972)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'tr'
,p_message_text=>'Konu'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572741890027971)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'tr'
,p_message_text=>unistr('Al\0131c\0131 (Kime)')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526862501027958)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'tr'
,p_message_text=>'Etkin'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520046200027956)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'tr'
,p_message_text=>unistr('e\015Fittir')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526962364027958)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130fade')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571967096027971)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCr')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539188992027961)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya haz\0131rland\0131. \0130ndirme i\015Flemi ba\015Flat\0131l\0131yor.')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501428301027950)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'tr'
,p_message_text=>'Doldur'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503699543027951)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7imi \015Fununla doldur')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503511037027951)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7imi Doldur')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493254799027948)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'tr'
,p_message_text=>'Filtre'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526239161027957)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'tr'
,p_message_text=>'Filtreler'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579940394027974)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'tr'
,p_message_text=>'Filtrele...'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565929651027969)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130lk')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493437789027948)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'tr'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524707841027957)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'tr'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570538826027971)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'tr'
,p_message_text=>'Format Maskesi'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572231000027971)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'tr'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572150682027971)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'tr'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483242156027945)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'tr'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417156936027924)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'tr'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529356039027958)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'tr'
,p_message_text=>'Dondur'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527045259027958)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'tr'
,p_message_text=>unistr('Fonksiyonlar ve \0130\015Fle\00E7ler')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564198880027969)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'tr'
,p_message_text=>'Huni'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545868590027963)
,p_name=>'APEX.IG.GO'
,p_message_language=>'tr'
,p_message_text=>'Git'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520675108027956)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'tr'
,p_message_text=>unistr('b\00FCy\00FCkt\00FCr')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520718238027956)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'tr'
,p_message_text=>unistr('b\00FCy\00FCkt\00FCr veya e\015Fittir')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527346799027958)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'tr'
,p_message_text=>'Grid'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492440528027947)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('K\0131lavuz G\00F6r\00FCn\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566706416027970)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'tr'
,p_message_text=>'Grup'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527523263027958)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Gruplama \00D6l\00E7\00FCt\00FC')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492780686027947)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCn\00FCme G\00F6re Grupland\0131r')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571132332027971)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ko\015Ful T\00FCr\00FC')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570078276027971)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Fl\0131k')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570274974027971)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Fl\0131k Hizalama')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579804068027974)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'tr'
,p_message_text=>unistr('Yard\0131m')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575369060027972)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Verileri do\011Frudan bu etkile\015Fimli grid i\00E7inde ekleyebilir, g\00FCncelleyebilir ve silebilirsiniz.</p>'),
'',
unistr('<p>Sat\0131r Ekle d\00FC\011Fmesine t\0131klayarak yeni bir s\00FCtun ekleyin.</p>'),
'',
unistr('<p>Belirli bir h\00FCcreye \00E7ift t\0131klayarak mevcut verileri d\00FCzenleyin. Daha kapsaml\0131 d\00FCzenleme i\015Fleri i\00E7in d\00FCzenleme moduna girmek \00FCzere D\00FCzenle''ye t\0131klay\0131n. D\00FCzenleme modunda tek t\0131klama yapabilir veya belirli h\00FCcreleri d\00FCzenlemek i\00E7in klavyeyi kullanab')
||'ilirsiniz.</p>',
'',
unistr('<p>Sat\0131rlar\0131 kopyalamak ve silmek i\00E7in De\011Fi\015Ftir men\00FCs\00FCn\00FC kullan\0131n. De\011Fi\015Ftir men\00FCs\00FCn\00FC etkinle\015Ftirmek i\00E7in bir veya daha fazla sat\0131r se\00E7mek \00FCzere onay kutular\0131n\0131 kullan\0131n.</p>'),
'',
unistr('<p>De\011Fi\015Ftir men\00FCs\00FCne t\0131klayarak ve Sat\0131r Kopyala''y\0131 se\00E7erek se\00E7ili bir sat\0131r\0131 kopyalay\0131n. De\011Fi\015Ftir men\00FCs\00FCne t\0131klayarak ve Sat\0131r Sil'' se\00E7erek se\00E7ili bir sat\0131r\0131 silin.</p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577491938027973)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenleme Yetenekleri')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577577852027973)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Etkile\015Fimli bir grid, arama yap\0131labilen, uyarlanabilir bir rapordaki veri k\00FCmesini temsil eder. D\00F6nen kay\0131t say\0131s\0131n\0131 s\0131n\0131rland\0131rmak ve verilerin g\00F6r\00FCnt\00FClenme bi\00E7imini de\011Fi\015Ftirmek i\00E7in farkl\0131 i\015Flemler ger\00E7ekle\015Ftirebilirsiniz.</p>'),
'',
unistr('<p>D\00F6nen kay\0131t say\0131s\0131n\0131 filtrelemek i\00E7in Arama alan\0131n\0131 kullan\0131n. Rapor yerle\015Fimini de\011Fi\015Ftirmek i\00E7in farkl\0131 se\00E7eneklere eri\015Fmek \00FCzere Eylemler''e t\0131klay\0131n veya g\00F6r\00FCnt\00FClenen s\00FCtunlardaki S\00FCtun Ba\015Fl\0131\011F\0131 men\00FClerini kullan\0131n.</p>'),
'',
unistr('<p>Rapora ili\015Fkin \00F6zelle\015Ftirmelerinizi kaydetmek i\00E7in Rapor Ayarlar\0131''n\0131 kullan\0131n. Ayr\0131ca rapor verilerini harici bir dosyaya indirebilir veya verileri kendinize veya ba\015Fkalar\0131na e-posta ile g\00F6nderebilirsiniz.</p>'),
'',
unistr('<p>Daha fazla bilgi edinmek i\00E7in, <em>Oracle Application Express (APEX) Son Kullan\0131c\0131 K\0131lavuzu</em>''nda "Etkile\015Fimli Grid Kullanma" b\00F6l\00FCm\00FCne bak\0131n.')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577274005027973)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('Genel Bak\0131\015F')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575284083027972)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Yerle\015Fik yetenekleri kullanarak verileri farkl\0131 \015Fekillerde g\00F6r\00FCnt\00FClemek i\00E7in etkile\015Fimli grid''i \00F6zelle\015Ftirebilirsiniz.</p>'),
'',
unistr('<p>Hangi s\00FCtunlar\0131n g\00F6r\00FCnt\00FCleneceklerini, s\00FCtunlar\0131n hangi s\0131rada g\00F6r\00FCnt\00FCleneceklerini belirlemek i\00E7in S\00FCtun Ba\015Fl\0131\011F\0131 men\00FClerini kullan\0131n ve s\00FCtunlar\0131 dondurun. Ayr\0131ca \00E7e\015Fitli veri filtreleri de tan\0131mlayabilir ve d\00F6nen verileri s\0131ralayabilirsiniz.</p>'),
'',
unistr('<p>Uygulama geli\015Ftirici taraf\0131ndan tan\0131mlanm\0131\015F olabilen di\011Fer veri g\00F6r\00FCn\00FCmlerine eri\015Fmek i\00E7in G\00F6r\00FCnt\00FCle d\00FC\011Fmesini (Arama alan\0131n\0131n yan\0131nda) kullan\0131n. Ayr\0131ca bir grafik olu\015Fturabilir veya mevcut bir grafi\011Fi g\00F6r\00FCnt\00FCleyebilirsiniz.</p>'),
'',
unistr('<p><em>Not: Se\00E7ilen fonksiyon ile ilgili daha detayl\0131 bilgileri elde etmek i\00E7in etkile\015Fimli grid ileti\015Fim kutusundaki <strong>Yard\0131m</strong> ba\011Flant\0131s\0131na t\0131klay\0131n.</em></p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577305937027973)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'tr'
,p_message_text=>'Raporlama Yetenekleri'
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528395242027958)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli Grid Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574184840027972)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\00FCtunlar\0131 birle\015Ftirmek i\00E7in bu ileti\015Fim kutusunu kullan\0131n. Birle\015Ftirilmi\015F de\011Ferler verilerin alt\0131nda veya Kontrol Kesmeleri tan\0131mlanm\0131\015Fsa her kesmenin alt\0131nda g\00F6r\00FCnt\00FClenir.</p>'),
'',
unistr('<p><strong>Birle\015Ftirme Listesi</strong><br>'),
unistr('Birle\015Ftirme listesi tan\0131ml\0131 birle\015Ftirmeleri g\00F6r\00FCnt\00FCler. Mevcut bir birle\015Ftirmenin se\00E7imini kald\0131rarak birle\015Ftirmeyi devre d\0131\015F\0131 b\0131rak\0131n.<br>'),
unistr('Yeni bir birle\015Ftirme eklemek i\00E7in Ekle''ye ( &plus; ) veya mevcut bir birle\015Ftirmeyi kald\0131rmak i\00E7in Sil''e ( &minus; ) t\0131klay\0131n.</p>'),
'',
unistr('<p><strong>Birle\015Ftirme Ayarlar\0131</strong><br>'),
unistr('Birle\015Ftirmeyi tan\0131mlamak i\00E7in sa\011Fdaki formu kullan\0131n.<br>'),
unistr('S\00FCtun ad\0131n\0131 ve Birle\015Ftirme tipini se\00E7in.<br>'),
unistr('\0130ste\011Fe ba\011Fl\0131 olarak, birle\015Ftirme i\00E7in bir ara\00E7 ipucu girin.<br>'),
unistr('Bir Kontrol Kesmesi tan\0131mlad\0131ysan\0131z <strong>Genel De\011Feri G\00F6ster</strong> se\00E7ilmesi genel ortalamay\0131, toplam\0131 veya benzer de\011Feri verilerin alt k\0131sm\0131nda g\00F6r\00FCnt\00FCler.</p>'),
'',
unistr('<p><em>Not: Birle\015Ftirme ileti\015Fim kutusuna Eylemler men\00FCs\00FCnden veya s\00FCtun ba\015Fl\0131\011F\0131na ve toplama ( &sum; ) t\0131klayarak eri\015Fin.</em></p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576373092027973)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Toplama Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574861462027972)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Ayr\0131 bir veri g\00F6r\00FCn\00FCm\00FC olarak g\00F6r\00FCnt\00FClenen bir grafik tan\0131mlamak i\00E7in bu ileti\015Fim kutusunu kullan\0131n.<br>'),
unistr('Bir grafik Tipi ve grafik \00F6zellikleri se\00E7in.</p>'),
unistr('<p><strong>Grafik \00D6zellikleri</strong><br>'),
unistr('Kullan\0131labilir grafik \00F6zellikleri, grafik tipine g\00F6re de\011Fi\015Fir.</p>'),
'<p>',
'<ul>',
unistr('  <li>\00D6zelli\011Fin de\011Ferini i\00E7eren s\00FCtunu se\00E7in:'),
'    <ul>',
unistr('      <li>Etiket - Her veri noktas\0131 i\00E7in metin.</li>'),
unistr('      <li>De\011Fer - Grafi\011Fi \00E7izilecek veriler.</li>'),
unistr('      <li>Seri - \00C7ok serili dinamik sorgunuzu tan\0131mlamak i\00E7in.</li>'),
unistr('      <li>A\00E7\0131l\0131\015F - G\00FCnl\00FCk stok a\00E7\0131l\0131\015F fiyat\0131 (sadece Stok).</li>'),
unistr('      <li>Kapan\0131\015F - G\00FCnl\00FCk stok kapan\0131\015F fiyat\0131 (sadece Stok).</li>'),
unistr('      <li>Y\00FCksek - Y\00FCksek de\011Fer (sadece Aral\0131k ve Stok).</li>'),
unistr('      <li>D\00FC\015F\00FCk - D\00FC\015F\00FCk de\011Fer (sadece Aral\0131k ve Stok).</li>'),
unistr('      <li>Hacim - G\00FCnl\00FCk stok hacmi (sadece Stok).</li>'),
unistr('      <li>Hedef - Hedef de\011Fer (sadece Huni).</li>'),
unistr('      <li>X - X ekseni de\011Feri (sadece Kabarc\0131k ve Noktal\0131).</li>'),
unistr('      <li>Y - Y ekseni de\011Feri (sadece Kabarc\0131k ve Noktal\0131).</li>'),
unistr('      <li>Z - \00C7ubuk geni\015Fli\011Fi veya kabarc\0131k \00E7ap\0131 (sadece \00C7ubuk, Kabarc\0131k ve Aral\0131k).</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Y\00F6nelim - Dikey veya yatay.</li>'),
unistr('  <li>Birle\015Ftirme - Grafik de\011Ferlerinin nas\0131l birle\015Ftirilece\011Fini se\00E7in.</li>'),
unistr('  <li>Y\0131\011F\0131n - Veri \00F6\011Felerinin y\0131\011F\0131l\0131 olup olmayaca\011F\0131n\0131 belirleyin.</li>'),
unistr('  <li>S\0131ralama \00D6l\00E7\00FCt\00FC - Etikete veya de\011Ferlere g\00F6re s\0131ralay\0131n.'),
'    <ul>',
unistr('      <li>Y\00F6n - Artan veya azalan de\011Ferlere g\00F6re s\0131ralay\0131n.</li>'),
unistr('      <li>De\011Fer atanmam\0131\015F kay\0131tlar - De\011Fer atanmam\0131\015F kay\0131tlar\0131n de\011Fersiz b\0131rak\0131lmam\0131\015F kay\0131tlara g\00F6re nas\0131l s\0131ralanaca\011F\0131n\0131 belirleyin.</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Ondal\0131k Basamaklar</li>'),
unistr('  <li>Etiket Ekseni Ba\015Fl\0131\011F\0131</li>'),
unistr('  <li>De\011Fer Ekseni Ba\015Fl\0131\011F\0131</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576776454027973)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafik Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573841395027972)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Hangi s\00FCtunlar\0131n g\00F6r\00FCnt\00FClenece\011Fini ve hangi s\0131rada g\00F6r\00FCnt\00FCleneceklerini se\00E7mek i\00E7in bu ileti\015Fim kutusunu kullan\0131n.</p>'),
'',
unistr('<p>Bir s\00FCtunun se\00E7imini kald\0131rarak s\00FCtunu gizleyin.<br>'),
unistr('Yukar\0131 Ta\015F\0131 ( &uarr; ) veya A\015Fa\011F\0131 Ta\015F\0131 ( &darr; ) ba\011Flant\0131lar\0131n\0131 kullanarak s\00FCtunlar\0131 yeniden s\0131ralay\0131n.<br>'),
unistr('T\00FCm s\00FCtunlar\0131, G\00F6r\00FCnt\00FClenen s\00FCtunlar\0131 veya G\00F6r\00FCnt\00FClenmeyen s\00FCtunlar\0131 listelemek i\00E7in a\015Fa\011F\0131 a\00E7\0131lan se\00E7iciyi kullan\0131n.</p>'),
'',
unistr('<p>\0130ste\011Fe ba\011Fl\0131 olarak, s\00FCtunun minimum geni\015Fli\011Fini piksel olarak belirtmek i\00E7in formu kullan\0131n.</p>'),
'',
unistr('<p><em>Not: Ayr\0131ca, g\00F6r\00FCnt\00FClenen s\00FCtunlar\0131 s\00FCr\00FCkleme tutamac\0131na t\0131klayarak (s\00FCtun ba\015Fl\0131\011F\0131n\0131n ba\015F\0131nda) ve s\00FCtunu sola veya sa\011Fa s\00FCr\00FCkleyerek de yeniden s\0131ralayabilirsiniz. Ayr\0131ca, g\00F6r\00FCnt\00FClenen s\00FCtunlar\0131n s\00FCtun geni\015Fli\011Fini, ba\015Fl\0131klar aras\0131ndaki s\00FCtun a')
||unistr('y\0131r\0131c\0131s\0131n\0131 se\00E7erek ve sola veya sa\011Fa ta\015F\0131yarak da de\011Fi\015Ftirebilirsiniz.</em></p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576609629027973)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunlar Yard\0131m')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574295808027972)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Mevcut s\00FCtunlar i\00E7in ger\00E7ekle\015Ftirilen matematiksel ve fonksiyonel hesaplamalar\0131 esas alarak ek s\00FCtunlar tan\0131mlamak i\00E7in bu ileti\015Fim kutusunu kullan\0131n.</p>'),
'',
'<p><strong>Hesaplama Listesi</strong><br>',
unistr('Hesaplama listesi tan\0131ml\0131 hesaplamalar\0131 g\00F6r\00FCnt\00FCler. Mevcut bir hesaplaman\0131n se\00E7imini kald\0131rarak hesaplamay\0131 devre d\0131\015F\0131 b\0131rak\0131n.<br>'),
unistr('Yeni bir hesaplama eklemek i\00E7in Ekle''ye ( &plus; ) veya mevcut bir hesaplamay\0131 kald\0131rmak i\00E7in Sil''e ( &minus; ) t\0131klay\0131n.</p>'),
'',
unistr('<p><strong>Hesaplama Ayarlar\0131</strong><br>'),
unistr('Hesaplamay\0131 tan\0131mlamak i\00E7in formu kullan\0131n.<br>'),
unistr('Ba\015Fl\0131k, etiket gibi s\00FCtun detaylar\0131n\0131 girin ve hizalama ayarlar\0131n\0131 se\00E7in.<br> '),
unistr('Hesaplama i\00E7in ili\015Fkili fonksiyonlar\0131 ve s\00FCtunlar\0131 girmek \00FCzere \0130fade metin alan\0131n\0131 kullan\0131n.<br>'),
unistr('Yeni s\00FCtun i\00E7in uygun veri tipini ve iste\011Fe ba\011Fl\0131 olarak bir format maskesi se\00E7in.</p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576212168027972)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Hesaplama Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574568234027972)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Bir veya daha fazla s\00FCtunda kontrol kesmesi tan\0131mlamak i\00E7in bu ileti\015Fim kutusunu kullan\0131n.</p>'),
'',
'<p><strong>Kontrol Kesmesi Listesi</strong><br>',
unistr('Kontrol Kesmesi listesi, tan\0131ml\0131 kontrol kesmelerini g\00F6r\00FCnt\00FCler. Mevcut bir kontrol sekmesinin se\00E7imini kald\0131rarak kesmeyi devre d\0131\015F\0131 b\0131rak\0131n.<br>'),
unistr('Kontrol kesmesine yeni bir s\00FCtun dahil etmek i\00E7in Ekle''ye ( &plus; ) veya kontrol kesmesinden mevcut bir s\00FCtunu kald\0131rmak i\00E7in Sil''e ( &minus; ) t\0131klay\0131n.<br>'),
unistr('S\00FCtunlar\0131 yeniden s\0131raland\0131rmak i\00E7in se\00E7ilen s\00FCtunu di\011Fer s\00FCtunlara g\00F6re yukar\0131 ve a\015Fa\011F\0131 ta\015F\0131mak \00FCzere Yukar\0131 Ta\015F\0131 ( &uarr; ) veya A\015Fa\011F\0131 Ta\015F\0131 ( &darr; ) ba\011Flant\0131lar\0131na t\0131klay\0131n.</p>'),
'',
unistr('<p><strong>Kontrol Kesmesi Ayarlar\0131</strong><br>'),
unistr('Kontrol kesmesi s\00FCtununu tan\0131mlamak i\00E7in formu kullan\0131n.<br>'),
unistr('Kontrol kesmesi s\00FCtunu, s\0131ralama y\00F6n\00FC ve bo\015F s\00FCtunlar\0131n (de\011Fer i\00E7ermeyen s\00FCtunlar) nas\0131l s\0131ralanaca\011F\0131n\0131 se\00E7in.</p>'),
'',
unistr('<p><em>Not: Etkile\015Fimli bir grid g\00F6r\00FCnt\00FClenirken bir S\00FCtun Ba\015Fl\0131\011F\0131na t\0131klayarak ve kontrol kesmesi simgesini se\00E7erek bir kontrol kesmesi tan\0131mlayabilirsiniz.</em></p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575925504027972)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kontrol Kesmesi Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574754825027972)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00FCm ge\00E7erli sat\0131rlar\0131 harici bir dosyaya indirmek i\00E7in bu ileti\015Fim kutusunu kullan\0131n. Dosya, verilere uygulanan filtreleri ve s\0131ralamalar\0131 kullanarak sadece mevcut durumda g\00F6r\00FCnt\00FClenen s\00FCtunlar\0131 i\00E7erir.</p>'),
'',
unistr('<p>Dosya format\0131n\0131 se\00E7in ve \0130ndir''e t\0131klay\0131n.<br>'),
unistr('Not: CSV, birle\015Ftirmeler veya kontrol kesmeleri gibi metin formatlama i\00E7ermez.</p>'),
'',
unistr('<p>Dosyay\0131 e-posta ile g\00F6ndermek i\00E7in E-Posta Olarak G\00F6nder''i se\00E7in ve e-posta detaylar\0131n\0131 girin (Kime, Konu ve Mesaj).</p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575790116027972)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ndirme Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573956172027972)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>D\00F6nen sat\0131r say\0131s\0131n\0131 s\0131n\0131rlayan veri filtrelerini konfig\00FCre etmek i\00E7in bu ileti\015Fim kutusunu kullan\0131n.</p>'),
'',
'<p><strong>Filtre Listesi</strong><br>',
unistr('Filtre listesi tan\0131ml\0131 filtreleri g\00F6r\00FCnt\00FCler. Mevcut bir filtrenin se\00E7imini kald\0131rarak filtreyi devre d\0131\015F\0131 b\0131rak\0131n.<br>'),
unistr('Yeni bir filtre olu\015Fturmak i\00E7in Ekle''ye ( &plus; ) t\0131klay\0131n veya mevcut bir filtreyi kald\0131rmak i\00E7in Sil''e ( &minus; ) t\0131klay\0131n.</p>'),
'',
unistr('<p><strong>Filtre Ayarlar\0131</strong><br>'),
unistr('Filtre niteliklerini tan\0131mlamak \00FCzere formu kullan\0131n.<br>'),
unistr('Uygun filtre tipini se\00E7in:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Sat\0131r - filtrelenebilir herhangi bir s\00FCtunda bir ifade i\00E7in filtreleyin.<br>'),
unistr('&nbsp;&nbsp;&nbsp;S\00FCtun - belirli bir s\00FCtunu belirtilen bir i\015Fle\00E7 ve de\011Fer ile filtreleyin.</p>'),
'',
unistr('<p><em>Not: Etkile\015Fimli grid g\00F6r\00FCnt\00FClenirken do\011Frudan Arama alan\0131na yazarak sat\0131r filtrelerini tan\0131mlayabilirsiniz. Aramay\0131 belirli bir s\00FCtun ile s\0131n\0131rland\0131rmak i\00E7in Aranacak S\00FCtunlar\0131 Se\00E7''e t\0131klay\0131n. Alternatif olarak bir S\00FCtun Ba\015Fl\0131\011F\0131 men\00FCs\00FC a\00E7\0131n v')
||unistr('e bir s\00FCtun filtresi olu\015Fturmak i\00E7in bir de\011Fer se\00E7in.</em></p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576549233027973)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Filtreleme Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574358371027972)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Verileri \00F6nceki bir zaman noktas\0131nda mevcut olduklar\0131 gibi g\00F6r\00FCnt\00FClemek i\00E7in bu ileti\015Fim kutusunu kullan\0131n.</p>'),
unistr('<p>Flashback sorgusunu y\00FCr\00FCtmek i\00E7in ge\00E7mi\015Fteki dakika say\0131s\0131n\0131 girin.</p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576176225027972)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Flashback Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576823290027973)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Grup \00D6l\00E7\00FCt\00FC Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574437144027972)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Girilen ko\015Fulu esas alarak veri sat\0131rlar\0131n\0131 veya s\00FCtunlar\0131n\0131 vurgulamak i\00E7in bu ileti\015Fim kutusunu kullan\0131n.</p>'),
'',
'<p><strong>Vurgu Listesi</strong><br>',
unistr('Vurgu listesi, tan\0131ml\0131 vurgular\0131 g\00F6r\00FCnt\00FCler. Mevcut bir vurgunun se\00E7imini kald\0131rarak vurguyu devre d\0131\015F\0131 b\0131rak\0131n.<br>'),
unistr('Yeni bir vurgu olu\015Fturmak i\00E7in Ekle''ye ( &plus; ) t\0131klay\0131n veya mevcut bir vurguyu kald\0131rmak i\00E7in Sil''e ( &minus; ) t\0131klay\0131n.</p>'),
'',
unistr('<p><strong>Vurgu Ayarlar\0131</strong><br>'),
unistr('Vurgu niteliklerini tan\0131mlamak i\00E7in formu kullan\0131n.<br>'),
unistr('Ad\0131 girin, Sat\0131r veya S\00FCtun se\00E7in ve arka plan ve metin i\00E7in HTML renk kodlar\0131n\0131 se\00E7in.<br>'),
unistr('Belirli verileri vurgulamak \00FCzere uygun <strong>Ko\015Ful Tipi</strong>''ni se\00E7in:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Sat\0131r - ifadeyi herhangi bir s\00FCtunda vurgulay\0131n.<br>'),
unistr('&nbsp;&nbsp;&nbsp;S\00FCtun - belirtilen i\015Fleci ve de\011Feri esas alarak belirli bir s\00FCtunda vurgulay\0131n.</p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576079717027972)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Vurgulama Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574633264027972)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Ge\00E7erli grid yerle\015Fimi ve konfig\00FCrasyonu i\00E7in yapt\0131\011F\0131n\0131z de\011Fi\015Fiklikleri kaydetmek i\00E7in bu ileti\015Fim kutusunu kullan\0131n.<br>'),
unistr('Uygulama geli\015Ftiriciler birden fazla alternatif rapor yerle\015Fimi tan\0131mlayabilir. \0130zin verilen yerlerde siz ve di\011Fer son kullan\0131c\0131lar bir raporu Genel olarak kaydedebilir ve bu raporu grid''in t\00FCm son kullan\0131c\0131lar\0131 taraf\0131ndan kullan\0131labilir duruma getir')
||unistr('ir. Bir raporu ayr\0131ca sadece sizin g\00F6r\00FCnt\00FCleyebilece\011Finiz bi\00E7imde \00D6zel rapor olarak da kaydedebilirsiniz.</p>'),
unistr('<p>Kullan\0131labilir tipler aras\0131ndan se\00E7im yap\0131n ve kaydedilmi\015F rapor i\00E7in bir ad girin.</p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575834585027972)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Rapor Yard\0131m\0131'),
''))
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574075002027972)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>G\00F6r\00FCnt\00FCleme s\0131ras\0131n\0131 belirlemek i\00E7in bu ileti\015Fim kutusunu kullan\0131n.</p>'),
'',
unistr('<p><strong>S\0131ralama Listesi</strong><br>'),
unistr('S\0131ralama ileti\015Fim kutusu, konfig\00FCre edilen s\0131ralama kurallar\0131n\0131n bir listesini g\00F6r\00FCnt\00FCler.<br>'),
unistr('S\0131ralama s\00FCtunu olu\015Fturmak i\00E7in Ekle''ye ( &plus; ) veya bir s\0131ralama s\00FCtununu kald\0131rmak i\00E7in Sil''e ( &minus; ) t\0131klay\0131n.<br>'),
unistr('Se\00E7ili s\0131ralama s\00FCtununu di\011Fer s\0131ralama s\00FCtunlar\0131na g\00F6re yukar\0131 ve a\015Fa\011F\0131 ta\015F\0131mak i\00E7in Yukar\0131 Ta\015F\0131 ( &uarr; ) ve A\015Fa\011F\0131 Ta\015F\0131 ( &darr; ) ba\011Flant\0131lar\0131na t\0131klay\0131n.</p>'),
'',
unistr('<p><strong>S\0131ralama Ayarlar\0131</strong><br>'),
unistr('Bir s\0131ralama s\00FCtunu, s\0131ralama y\00F6n\00FC ve bo\015F s\00FCtunlar\0131n (de\011Feri olmayan s\00FCtunlar) nas\0131l s\0131ralanacaklar\0131n\0131 se\00E7in.</p>'),
'',
unistr('<p><em>Not: Veriler g\00F6r\00FCnt\00FClenmeyen s\00FCtunlara g\00F6re s\0131ralanabilir ancak t\00FCm s\00FCtunlar s\0131ralanabilir olmayabilir.</em><br>'),
unistr('<em>G\00F6r\00FCnt\00FClenen s\00FCtunlar s\00FCtun ba\015Fl\0131klar\0131n\0131n sonundaki yukar\0131 (artan) veya a\015Fa\011F\0131 (azalan) oklar\0131na bas\0131larak s\0131ralanabilir. Mevcut bir s\0131ralamaya sonradan bir s\00FCtun eklemek i\00E7in Shift tu\015Funa bas\0131n ve yukar\0131 veya a\015Fa\011F\0131 okuna t\0131klay\0131n.</em></p>')))
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130576401770027973)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ralama Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575640098027972)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Abonelik Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529220973027958)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'tr'
,p_message_text=>'Gizle'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493641008027948)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'tr'
,p_message_text=>'Vurgula'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562818716027969)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCksek')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563678464027969)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'tr'
,p_message_text=>'Yatay'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522201223027956)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'tr'
,p_message_text=>'saatler'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527244990027958)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'tr'
,p_message_text=>'Simge'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492557245027947)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Simge G\00F6r\00FCn\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520493263027956)
,p_name=>'APEX.IG.IN'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528865378027958)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'tr'
,p_message_text=>'Etkin Olmayan Ayar'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528920609027958)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>'Etkin Olmayan Ayarlar'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536543118027961)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli Grid iste\011Fi i\015Flenirken dahili bir hata olu\015Ftu.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424478828027926)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Filtre Tipi "%0", s\00FCtun "%1" i\00E7in desteklenmiyor.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575408175027972)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz Tarih Format\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550224018027965)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli Grid, %0 s\00FCtununda bir filtre tan\0131mlamay\0131 desteklemiyor.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550154578027965)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, Etkile\015Fimli Grid filtresi tan\0131mlamak i\00E7in ge\00E7erli bir filtre tipi de\011Fil.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431055418027928)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz Say\0131 Format\0131')
,p_is_js_message=>true
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578182368027973)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz Ayar')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578208199027973)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz Ayarlar')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569374800027970)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ralama \00D6l\00E7\00FCt\00FC %0 olarak ayarland\0131, ancak %0 i\00E7in hi\00E7bir s\00FCtun se\00E7ilmedi.')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566647556027970)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz De\011Fer')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561757406027968)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FClenmiyor')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521243680027956)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Fu zaman diliminde:')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521462722027956)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'tr'
,p_message_text=>'gelecek'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520385543027956)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('bo\015F de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520272625027956)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('bo\015F')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570121873027971)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'tr'
,p_message_text=>'Etiket'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562142191027968)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Etiket'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566013368027969)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'tr'
,p_message_text=>'Son'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510509082027953)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Son G\00FCn')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510789882027953)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'tr'
,p_message_text=>'Son Saat'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511265423027953)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'tr'
,p_message_text=>'Son Dakika'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510294384027953)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en Ay')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510317866027953)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en Hafta')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510415126027953)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('Son %0 G\00FCn')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510670289027953)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'tr'
,p_message_text=>'Son %0 Saat'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511336874027953)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'tr'
,p_message_text=>'Son %0 Dakika'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511142870027953)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'tr'
,p_message_text=>'Son %0 Ay'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511044959027953)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'tr'
,p_message_text=>'Son %0 Hafta'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510045583027953)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en %0 Y\0131l')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510157021027953)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en Y\0131l')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570343609027971)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'tr'
,p_message_text=>unistr('H\00FCcre Hizalama')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570472256027971)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'tr'
,p_message_text=>unistr('Grubu \015Eunun i\00E7in Kullan')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520869181027956)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'tr'
,p_message_text=>unistr('k\00FC\00E7\00FCkt\00FCr')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520913506027956)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'tr'
,p_message_text=>unistr('k\00FC\00E7\00FCkt\00FCr veya e\015Fittir')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564250767027969)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7izgi')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564308370027969)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'tr'
,p_message_text=>unistr('Alan\0131 Olan \00C7izgi')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570721818027971)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'tr'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562950900027969)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FC\015F\00FCk')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573283508027972)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7oklu adresleri virg\00FClle ay\0131r')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522085111027956)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('d\00FCzenli ifadeyi e\015Fle\015Ftirir')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546461783027964)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'tr'
,p_message_text=>'Maksimum'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580737470027974)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'tr'
,p_message_text=>'Genel Maksimum'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546641122027964)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'tr'
,p_message_text=>'Orta'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580806180027974)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'tr'
,p_message_text=>'Genel Orta'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546382229027964)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'tr'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522124346027956)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'tr'
,p_message_text=>'dakikalar'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547140337027964)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('Dakika \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580656602027974)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'tr'
,p_message_text=>'Genel Minimum'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522561885027956)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'tr'
,p_message_text=>'aylar'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529114023027958)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Veriler, izin verilen maksimum de\011Feri a\015Fan %0''dan fazla sat\0131r i\00E7eriyor. Sonu\00E7lar\0131 g\00F6r\00FCnt\00FClemek i\00E7in l\00FCtfen ek filtreler uygulay\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554944985027966)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge Statik No, sayfa birden fazla Etkile\015Fimli Grid i\00E7erdi\011Finden belirtilmelidir.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525205454027957)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'tr'
,p_message_text=>'Ad'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525442656027957)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Adland\0131r\0131lm\0131\015F Rapor')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509436431027952)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki G\00FCn')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509221857027952)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'tr'
,p_message_text=>'Sonraki Saat'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511440506027953)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'tr'
,p_message_text=>'Sonraki Dakika'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509708189027952)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'tr'
,p_message_text=>'Sonraki Ay'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509697260027952)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'tr'
,p_message_text=>'Sonraki Hafta'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509507115027952)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki %0 G\00FCn')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509342783027952)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'tr'
,p_message_text=>'Sonraki %0 Saat'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511552408027953)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'tr'
,p_message_text=>'Sonraki %0 Dakika'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510820898027953)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'tr'
,p_message_text=>'Sonraki %0 Ay'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130510957887027953)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'tr'
,p_message_text=>'Sonraki %0 Hafta'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509935571027953)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki %0 Y\0131l')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130509847432027953)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki Y\0131l')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521187895027956)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'tr'
,p_message_text=>unistr('aras\0131nda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520109652027956)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'tr'
,p_message_text=>unistr('e\015Fit de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584951067027975)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 No''lu b\00F6lge \0130nteraktif Grid b\00F6lgesi de\011Fil veya %1 uygulamas\0131nda mevcut de\011Fil.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130520574258027956)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7inde de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521334061027956)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Fu zaman diliminde de\011Fil:')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521593541027956)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('sonrakinde de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529041656027958)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri bulunamad\0131')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565881079027969)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015Flar')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130570946735027971)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'tr'
,p_message_text=>unistr('Say\0131sal')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566176452027969)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'tr'
,p_message_text=>unistr('Kapal\0131')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566246703027970)
,p_name=>'APEX.IG.ON'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131k')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519301084027955)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('1 dakika \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573772341027972)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'tr'
,p_message_text=>unistr('Renk Se\00E7iciyi A\00E7: %0')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562613474027968)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526342230027957)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015Fle\00E7')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562047168027968)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00F6nlendirme')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564491375027969)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'tr'
,p_message_text=>'Pasta grafik'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527648288027958)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492898043027947)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet G\00F6r\00FCn\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573679540027972)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" ile de\011Ferleri ay\0131r')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564569804027969)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'tr'
,p_message_text=>'Polar Grafik'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569820323027971)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'tr'
,p_message_text=>'Orta'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569956062027971)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'tr'
,p_message_text=>unistr('Biti\015F')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569712529027971)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525551278027957)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'tr'
,p_message_text=>'Birincil'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525812945027957)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'tr'
,p_message_text=>unistr('Birincil \00D6nde\011Fer')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542363116027962)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'tr'
,p_message_text=>'Birincil Rapor'
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415970275027924)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'tr'
,p_message_text=>unistr('Eri\015Filebilirlik Etiketlerini Dahil Et')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413365686027923)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'tr'
,p_message_text=>'Yatay'
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413472031027923)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'tr'
,p_message_text=>'Dikey'
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413283069027923)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa y\00F6n\00FC')
,p_is_js_message=>true
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413168636027923)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'tr'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413055595027923)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'tr'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416152777027924)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zel')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412877650027923)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'tr'
,p_message_text=>'Yasal'
,p_is_js_message=>true
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412779440027923)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'tr'
,p_message_text=>'Mektup'
,p_is_js_message=>true
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412911595027923)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'tr'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412642688027923)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'tr'
,p_message_text=>'Sayfa boyutu'
,p_is_js_message=>true
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378218488027913)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'tr'
,p_message_text=>unistr('Zengin Metni Kald\0131r')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564643255027969)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'tr'
,p_message_text=>'Radar Grafik'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564714599027969)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Aral\0131k')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130574997866027972)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'tr'
,p_message_text=>'Yenile'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529875702027959)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r\0131 Yenile')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528632275027958)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131rlar\0131 Yenile')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533832575027960)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli Grid b\00F6lgesi, uygulama %0, sayfa %1 ve b\00F6lge %2 i\00E7inde yok.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494396375027948)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00F6\011Fesini kald\0131r')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524938179027957)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'tr'
,p_message_text=>'Rapor'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584199633027975)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'tr'
,p_message_text=>'Rapor silindi'
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583819373027975)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm kullan\0131c\0131lar i\00E7in alternatif rapor kaydedildi')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583706101027975)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor \00F6nde\011Feri t\00FCm kullan\0131c\0131lar i\00E7in kaydedildi')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584044916027975)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zel rapor kaydedildi')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583917792027975)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm kullan\0131c\0131lar i\00E7in genel rapor kaydedildi')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533933504027960)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 adl\0131 kaydedilmi\015F Etkile\015Fimli Grid mevcut de\011Fil.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519241280027955)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 dakika \00F6ncesinden itibaren elektronik tablo verileri')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519127168027955)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('1 dakika \00F6ncesinden itibaren elektronik tablo verileri')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454675501027936)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimle Grid Rapor mevcut de\011Fil.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577192468027973)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor- D\00FCzenle')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533784475027960)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 No''lu kaydedilmi\015F Etkile\015Fimli Grid mevcut de\011Fil.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130577099507027973)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor- Farkl\0131 Kaydet')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494493508027948)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>unistr('K\0131lavuz Ayarlar\0131')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585014330027975)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 statik No''ya sahip kaydedilmi\015F Etkile\015Fimli Grid mevcut de\011Fil.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580047975027974)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor G\00F6r\00FCn\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493592831027948)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131f\0131rla')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529985836027959)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fi\015Fiklikleri Geri Al')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528723004027958)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131rlar\0131 Geri Al')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525955020027957)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524815278027957)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r / Sayfa')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584688838027975)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Eylemleri')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585854335027976)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sat\0131r\0131 i\00E7in eylemler')
,p_is_js_message=>true
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130493815993027948)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'tr'
,p_message_text=>'Kaydet'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538906028027961)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'tr'
,p_message_text=>'kaydedildi'
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443535695027932)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'tr'
,p_message_text=>'Kaydedilen rapor: %0'
,p_is_js_message=>true
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492054017027947)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Kay\0131tl\0131 Raporlar')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492162206027947)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nde\011Fer')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465621311027939)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 adl\0131 kaydedilmi\015F bir rapor zaten mevcut. Yeni bir ad girin.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492284091027947)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zel')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130492322112027947)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'tr'
,p_message_text=>'Genel'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579799819027974)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'tr'
,p_message_text=>unistr('Farkl\0131 Kaydet')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528084974027958)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor Ayarlar\0131n\0131 Kaydet')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564865851027969)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'tr'
,p_message_text=>unistr('Sa\00E7\0131l\0131m')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491950908027947)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'tr'
,p_message_text=>'Ara'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572059503027971)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('Arama: T\00FCm Metin S\00FCtunlar\0131')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491810097027947)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Ara: %0'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571315885027971)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'tr'
,p_message_text=>'Arama: Tam Metin'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519036960027955)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'tr'
,p_message_text=>'Ara - ''%0'''
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561484102027968)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'tr'
,p_message_text=>unistr('- Se\00E7 -')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501530945027950)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7im')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554695215027966)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DCst b\00F6lgede 1 sat\0131r se\00E7in')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491724858027947)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'tr'
,p_message_text=>unistr('Aranacak s\00FCtunlar\0131 se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584382795027975)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7im Eylemleri')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501705395027950)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'tr'
,p_message_text=>unistr('H\00FCcre Se\00E7imi')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501678568027950)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Se\00E7imi')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572661042027971)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta olarak g\00F6nder')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565281951027969)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Seri'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489470794027946)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544607638027963)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('Toplam De\011Feri G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529525382027958)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Tek Sat\0131r G\00F6r\00FCn\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130527814367027958)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131rala')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565351971027969)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ralama \00D6l\00E7\00FCt\00FC')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584715435027975)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun ba\015F\0131na yaln\0131zca bir s\0131ralama tan\0131mlayabilirsiniz.')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584532178027975)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fi\015Ftir')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566317066027970)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\0131\011F\0131n')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130521838720027956)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'tr'
,p_message_text=>unistr('ile ba\015Flar')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130564986264027969)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'tr'
,p_message_text=>unistr('Stok Grafi\011Fi')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484287836027945)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Geni\015Fliklerini Geni\015Flet')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130528285114027958)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'tr'
,p_message_text=>'Abonelik'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546220482027964)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'tr'
,p_message_text=>'Toplam'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130586032983027976)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli Grid. Rapor: %0, G\00F6r\00FCn\00FCm: %1.')
,p_is_js_message=>true
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130580103404027974)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'tr'
,p_message_text=>'Genel Toplam'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563147795027969)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Hedef'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569500000027970)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'tr'
,p_message_text=>'Metin Rengi'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494500099027948)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7i\015F Yap')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376609279027912)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'tr'
,p_message_text=>'Grid'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544510381027963)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'tr'
,p_message_text=>unistr('Ara\00E7 \0130pucu')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130525044341027957)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCr')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130529424313027958)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'tr'
,p_message_text=>unistr('Donma Stat\00FCs\00FCn\00FC Kald\0131r')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526531867027958)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'tr'
,p_message_text=>'Birim'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130572452683027971)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'tr'
,p_message_text=>unistr('Kaydedilmemi\015F de\011Fi\015Fiklikler var. Devam etmek istiyor musunuz?')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130526432541027958)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer')
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562289398027968)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567198779027970)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir de\011Fer gerekli.')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552383524027965)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer (saat dilimi de\011Fi\015Ftirilemez)')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571091137027971)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'tr'
,p_message_text=>'Metin'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563531079027969)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'tr'
,p_message_text=>'Dikey'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524592393027957)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FCle')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459604679027937)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Elektronik tablo g\00F6r\00FCnt\00FCleme modunda; d\00FCzenlemek i\00E7in bas\0131n')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561557728027968)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FClenen')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130563086582027969)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Hacim'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522428952027956)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'tr'
,p_message_text=>'haftalar'
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561690584027968)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'tr'
,p_message_text=>unistr('Minimum S\00FCtun Geni\015Fli\011Fi (Piksel)')
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513674451027954)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 %1 ile %2 aras\0131nda')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513396038027954)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7erir %1')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513404543027954)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, %1 i\00E7ermiyor')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488859726027946)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \015Fununla ba\015Flamaz: %1')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512176780027953)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 e\015Fittir %1')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512324608027953)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 b\00FCy\00FCkt\00FCr %1')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512414041027953)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 b\00FCy\00FCkt\00FCr veya e\015Fittir %1')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513135059027953)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 i\00E7inde %0')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514354652027954)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('Son %1 g\00FCn i\00E7inde %0')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514101756027954)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'tr'
,p_message_text=>unistr('Son %1 saat i\00E7inde %0')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513981636027954)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'tr'
,p_message_text=>'Son %1 dakikada %0'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514773164027954)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'tr'
,p_message_text=>'Son %1 ayda %0'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514549280027954)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'tr'
,p_message_text=>'Son %1 haftada %0'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514946295027954)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('Son %1 y\0131lda %0')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514223157027954)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Son g\00FCn %0')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514004984027954)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'tr'
,p_message_text=>'Son saatte %0'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513847215027954)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'tr'
,p_message_text=>'Son dakikada %0'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514603848027954)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'tr'
,p_message_text=>'Son bir ayda %0'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514458820027954)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en hafta %0')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130514858515027954)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en y\0131l %0')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516753879027955)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ertesi %1 g\00FCnde %0')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516506527027954)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki %1 saat i\00E7inde %0')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516328656027954)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'tr'
,p_message_text=>'Sonraki %1 dakikada %0'
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517152974027955)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'tr'
,p_message_text=>'Gelecek %1ayda %0'
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516972691027955)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'tr'
,p_message_text=>'Gelecek %1 haftada %0'
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517353956027955)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('Gelecek %1 y\0131lda %0')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516605981027955)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Ertesi g\00FCn %0')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516493829027954)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'tr'
,p_message_text=>'Sonraki saatte %0'
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516222138027954)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'tr'
,p_message_text=>'Sonraki dakikada %0'
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517055816027955)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'tr'
,p_message_text=>'Gelecek ay %0'
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516884919027955)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'tr'
,p_message_text=>'Gelecek hafta %0'
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517246067027955)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Gelecek y\0131l %0')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512882103027953)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 bo\015F de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512753029027953)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 bo\015F')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512589661027953)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 k\00FC\00E7\00FCkt\00FCr %1')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512628153027953)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 k\00FC\00E7\00FCkt\00FCr veya e\015Fittir %1')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512995203027953)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'tr'
,p_message_text=>'%0 benzer %1'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513530995027954)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 d\00FCzenli ifadeyle e\015Fle\015Fir %1')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519454544027955)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 dakika \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513701146027954)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 %1 ile %2 aras\0131nda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512257364027953)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 e\015Fit de\011Fildir %1')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513238547027954)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 i\00E7inde de\011Fil %0')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515532709027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son %1 g\00FCnde de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515384102027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son %1 saatte de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515113141027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son %1 dakikada de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515948906027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son %1 ayda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515725234027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son %1 haftada de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516121421027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son %1 y\0131lda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515441707027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son g\00FCn de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515242270027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son bir saatte de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515010964027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son dakikada de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515843229027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son bir ayda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130515642886027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son bir haftada de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130516021437027954)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son bir y\0131lda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517913940027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sonraki %1 g\00FCnde de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517765487027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sonraki %1 saatte de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517509835027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sonraki %1 dakikada de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518346597027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 gelecek %1 ayda de\011Fil ')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518111147027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 gelecek %1 haftada de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518516268027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 gelecek %1 y\0131lda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517800070027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 ertesi g\00FCn de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517645438027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sonraki saatte de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130517476144027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 bir dakikada de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518266037027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 gelecek ayda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518061445027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 gelecek haftada de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518411437027955)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 gelecek y\0131lda de\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130513006432027953)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'tr'
,p_message_text=>'%0 benzemez %1'
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519931943027956)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \015Fununla ba\015Flar: %1')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562355741027968)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522616065027956)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('y\0131llar')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562441147027968)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130562552095027968)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571535328027971)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'tr'
,p_message_text=>'12 Ocak 2016, Pazartesi'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571654793027971)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'tr'
,p_message_text=>'Ocak'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571710666027971)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'tr'
,p_message_text=>unistr('16 saat \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130571827831027971)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'tr'
,p_message_text=>unistr('16 saat i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389830733027916)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'tr'
,p_message_text=>'Uygula'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381841920027914)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Resminizi \00E7er\00E7evede yeniden konumland\0131rmak i\00E7in s\00FCr\00FCkleyin ve yak\0131nla\015Ft\0131rma kayd\0131r\0131c\0131s\0131n\0131 kullan\0131n.</p>'),
'',
unistr('<p>Resim k\0131rp\0131c\0131da odaklan\0131ld\0131\011F\0131nda \015Fu klavye k\0131sa yollar\0131 kullan\0131labilir:</p>'),
'<ul>',
unistr('    <li>Sol Ok: G\00F6r\00FCnt\00FCy\00FC sola ta\015F\0131*</li>'),
unistr('    <li>Yukar\0131 Ok: G\00F6r\00FCnt\00FCy\00FC yukar\0131 ta\015F\0131*</li>'),
unistr('    <li>Sa\011F Ok: G\00F6r\00FCnt\00FCy\00FC sa\011Fa ta\015F\0131*</li>'),
unistr('    <li>A\015Fa\011F\0131 Ok: G\00F6r\00FCnt\00FCy\00FC a\015Fa\011F\0131 ta\015F\0131*</li>'),
unistr('    <li>I: Yak\0131nla\015Ft\0131r</li>'),
unistr('    <li>O: Uzakla\015Ft\0131r</li>'),
unistr('    <li>L: Sola d\00F6nd\00FCr</li>'),
unistr('    <li>R: Sa\011Fa d\00F6nd\00FCr</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Daha h\0131zl\0131 ta\015F\0131mak i\00E7in Shift tu\015Funa bas\0131n</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382020553027914)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Resim K\0131rpma Yard\0131m\0131')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389989565027916)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131f\0131rla')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382397323027914)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Resmi K\0131rp')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390022436027916)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Yak\0131nla\015Ft\0131rma d\00FCzeyini d\00FCzeltmek i\00E7in kayd\0131r\0131c\0131y\0131 ta\015F\0131y\0131n')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419630928027925)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz dosya tipi. Desteklenen dosya t\00FCr\00FC %0.')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554073979027966)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6z At')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553701169027966)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553857042027966)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosyalar\0131 Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419411991027925)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCr\00FCkle ve B\0131rak')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419823957027925)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosyalar\0131 S\00FCr\00FCkle ve B\0131rak')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421278750027926)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir dosya se\00E7in veya buraya bir dosya b\0131rak\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421370071027926)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya se\00E7in veya buraya b\0131rak\0131n.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421419006027926)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir dosya se\00E7in veya buraya bir dosya b\0131rak\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421587346027926)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya se\00E7in veya buraya b\0131rak\0131n.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419762854027925)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'tr'
,p_message_text=>'%0 dosya'
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419588137027925)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya \00E7ok b\00FCy\00FCk. Maksimum dosya boyutu %0.')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400055165027919)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('Birden fazla dosya y\00FCkleme desteklenmez.')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382962238027914)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kald\0131r')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388409214027916)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>'Adres gerekli.'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387300591027915)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eehir')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387757593027915)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DClke Kodu')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387470720027915)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'tr'
,p_message_text=>unistr('Bina Numaras\0131')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388371557027916)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'tr'
,p_message_text=>'Enlem'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388224467027916)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'tr'
,p_message_text=>'Boylam'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388189398027916)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'tr'
,p_message_text=>unistr('Haritada G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387887465027915)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'tr'
,p_message_text=>'Puan'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387588585027915)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'tr'
,p_message_text=>'Posta Kodu'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387619791027915)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'tr'
,p_message_text=>'Durum'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387213049027915)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'tr'
,p_message_text=>'Sokak'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387172293027915)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Co\011Frafi Kodlama Sonu\00E7lar\0131')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418603339027925)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'tr'
,p_message_text=>unistr('Co\011Frafi Kodlu')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418757599027925)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'tr'
,p_message_text=>unistr('Co\011Frafi Kodlu De\011Fil')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388078823027916)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'tr'
,p_message_text=>'Harita'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130387973888027915)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Adres bulunamad\0131.')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388557399027916)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'tr'
,p_message_text=>'%0 gerekli.'
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130494736797027948)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'tr'
,p_message_text=>'%0 veya %1 gerekli.'
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584285823027975)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7in yard\0131m metnini g\00F6r\00FCnt\00FCleyin.')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390236717027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Resim Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390357173027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'tr'
,p_message_text=>unistr('Resim Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390162352027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ndir')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390428601027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCr\00FCkle ve B\0131rak')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390562879027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'tr'
,p_message_text=>unistr('Resimleri S\00FCr\00FCkle ve B\0131rak')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390689171027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir resim se\00E7in veya buraya b\0131rak\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390755026027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'tr'
,p_message_text=>unistr('Resimleri se\00E7in veya buraya b\0131rak\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390804131027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir resim se\00E7in veya buraya b\0131rak\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130390999873027916)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'tr'
,p_message_text=>unistr('Resimleri se\00E7in veya buraya b\0131rak\0131n.')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475651506027942)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015Faretlendi')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475797207027942)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015Fareti Kald\0131r\0131ld\0131')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503262285027950)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015F salt okunur birle\015Fik giri\015F kutusu')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501003837027950)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015F salt okunur liste kutusu')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500895615027950)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'tr'
,p_message_text=>unistr('Salt okunur birle\015Fik giri\015F kutusu')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130500900678027950)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'tr'
,p_message_text=>'Salt okunur liste kutusu'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416633972027924)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, ge\00E7erli %0 - %1 aral\0131\011F\0131nda de\011Fil.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416723262027924)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, %0 kat\0131 de\011Fil.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504067976027951)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'tr'
,p_message_text=>'Salt okunur anahtar'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444683693027933)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\011Flant\0131 ile salt okunur d\00FCzenleme')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416251818027924)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, %0 ve %1 de\011Ferleri ile e\015Fle\015Fmelidir.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416407744027924)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Hay\0131r')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502777301027950)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Kapal\0131')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502893915027950)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131k')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416396212027924)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'tr'
,p_message_text=>'Evet'
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424203760027926)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'tr'
,p_message_text=>unistr('Dil se\00E7ici')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130360692920027907)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'tr'
,p_message_text=>unistr('Giri\015F Ekle')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537465528027961)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'tr'
,p_message_text=>'Ekle'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537589007027961)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kald\0131r')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130360782238027907)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7ilen giri\015Fler')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541237544027962)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'tr'
,p_message_text=>unistr('Geli\015Fmi\015F')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541516199027962)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ptal')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541352757027962)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'tr'
,p_message_text=>'Ortak'
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541636451027962)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Canl\0131 \015Eablon Se\00E7enekleri')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542293778027962)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eablon Se\00E7enekleri kullan\0131lamaz \00E7\00FCnk\00FC bu bile\015Fen sayfada g\00F6r\00FCnt\00FClenmez.')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541193693027962)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eablon Se\00E7enekleri bulunamad\0131.')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541413834027962)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'tr'
,p_message_text=>'Kaydet'
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395214851027918)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7emberi Temizle')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397666148027918)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zel Stiller, ge\00E7erli JSON de\011Fil.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395542126027918)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'tr'
,p_message_text=>unistr('Uzakl\0131k Arac\0131')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395393147027918)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Daire \00C7iz')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375108217027912)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli Konum')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381556561027914)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7 konumu koordinatlar\0131 ge\00E7ersiz.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370506137027910)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130lk konum bir geometrik nokta olmal\0131d\0131r.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379164656027913)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'tr'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374308403027911)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'tr'
,p_message_text=>'Katman'
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544740307027963)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'tr'
,p_message_text=>'Katman: %0'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393544155027917)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'tr'
,p_message_text=>unistr('E\015Fle')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363278258027908)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'tr'
,p_message_text=>'Mesajlar'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379388737027913)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'tr'
,p_message_text=>'mil'
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543799292027963)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Veriler, izin verilen maksimum de\011Feri a\015Fan %0''dan fazla sat\0131r i\00E7eriyor.')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373641772027911)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Ko\015Fullar</a> &nbsp;&nbsp; Verileri e\015Fle &copy; 2021 HERE')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370250261027910)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('SDO_GEOMETRY veri tipi, bu veritaban\0131nda kullan\0131lamaz.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373710015027911)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap katk\0131da bulunanlar </a>')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398381956027919)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap katk\0131da bulunanlar </a')
||'>'
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374585092027912)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'tr'
,p_message_text=>'Noktalar'
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544820588027963)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'tr'
,p_message_text=>'%0 Puan'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395486850027918)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'tr'
,p_message_text=>unistr('Dikd\00F6rtgen Yak\0131nla\015Ft\0131rma')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395168236027918)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kald\0131r')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374969519027912)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'tr'
,p_message_text=>unistr('Kuzey Yukar\0131da Olacak \015Eekilde Ayarla')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489749417027946)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'tr'
,p_message_text=>unistr('2B moda ge\00E7')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489836500027947)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'tr'
,p_message_text=>unistr('3B moda ge\00E7')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395005584027918)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('Telif Hakk\0131 Bildirimine Ge\00E7i\015F Yap')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395633963027918)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'tr'
,p_message_text=>unistr('Toplam Uzakl\0131k')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374656959027912)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'tr'
,p_message_text=>unistr('Yak\0131nla\015Ft\0131r')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374859658027912)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'tr'
,p_message_text=>unistr('Uzakla\015Ft\0131r')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539399116027961)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'tr'
,p_message_text=>unistr('Kal\0131n')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540255274027962)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'tr'
,p_message_text=>'Resim'
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539872379027962)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r \0130\00E7i Kod')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552540982027965)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'tr'
,p_message_text=>'Resim Ekle'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552619404027965)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\011Flant\0131 Ekle')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539423292027961)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130talik')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553260793027966)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\011Flant\0131')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540107183027962)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'tr'
,p_message_text=>'Liste'
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540078585027962)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenlenmi\015F Liste')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539591479027962)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nizleme')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539687163027962)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nizleme Yap\0131lacak \00D6\011Fe Yok')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539784085027962)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DCzeri \00C7izili')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539961443027962)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenlenmemi\015F Liste')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518867694027955)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'tr'
,p_message_text=>unistr('ge\00E7erli')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130575033390027972)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'tr'
,p_message_text=>'Daha Fazla...'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518707004027955)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCkleniyor')
,p_is_js_message=>true
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432975221027929)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FC\011Fmeyi B\00F6l')
,p_is_js_message=>true
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432854695027929)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'tr'
,p_message_text=>unistr('Men\00FCy\00FC B\00F6l')
,p_is_js_message=>true
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549813240027965)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('Bildirim Mesaj\0131')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373996197027911)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 bulunamad\0131')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523814866027957)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, %0 de\011Ferine e\015Fit veya daha k\00FC\00E7\00FCk bir say\0131 olmal\0131d\0131r.')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523954817027957)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL# ge\00E7erli bir say\0131 olmal\0131d\0131r.')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524032630027957)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, say\0131 format\0131 %0 ile e\015Flemiyor (\00D6rnek: %1).')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523746380027957)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL#, de\011Ferine e\015Fit veya bundan daha b\00FCy\00FCk bir say\0131 olmal\0131d\0131r%0.')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523685066027957)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL# %0 ile %1 aras\0131nda bir say\0131 olmal\0131d\0131r.')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130518965077027955)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'tr'
,p_message_text=>unistr('yeni pencerede a\00E7\0131l\0131r')
,p_version_scn=>2693686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468732775027940)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu sayfa zaten g\00F6nderilmi\015F ve tekrar g\00F6nderilemez.')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450123711027934)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama "%0" Sayfa "%1" bulunamad\0131.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485697627027945)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('#LABEL# bir de\011Fere sahip olmal\0131d\0131r.')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376392313027912)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'tr'
,p_message_text=>unistr('Parolay\0131 Gizle')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376210169027912)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'tr'
,p_message_text=>unistr('Parolay\0131 G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423826560027926)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'tr'
,p_message_text=>'Ara'
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537893888027961)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'tr'
,p_message_text=>'Kapat'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537747995027961)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'tr'
,p_message_text=>'Bul%0'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538090626027961)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537939091027961)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414604785027924)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'tr'
,p_message_text=>'En az %0 karakterlik bir arama terimi girin.'
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490946908027947)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Ferler A\00E7\0131lan Listesi: %0')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414701485027924)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'tr'
,p_message_text=>'Arama terimi girin.'
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361780516027908)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Ferler listesi')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414556481027924)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonu\00E7 bulunamad\0131.')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414484207027924)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00F6\011Fesini kald\0131r')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511674547027953)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'tr'
,p_message_text=>'Arama Terimi'
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537600896027961)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'tr'
,p_message_text=>'Ara'
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363874415027908)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>'%0 gerekli.'
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376167354027912)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor yazd\0131rma s\0131ras\0131nda hata olu\015Ftu.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386933366027915)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'tr'
,p_message_text=>unistr('Konfig\00FCre edilen yazd\0131rma sunucusu kullan\0131l\0131rken dok\00FCman yazd\0131r\0131lam\0131yor.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409649887027922)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 \00E7a\011Fr\0131l\0131rken %0 parametresinin de\011Ferlendirilmesi s\0131ras\0131nda hata olu\015Ftu. Detaylar i\00E7in hata g\00FCnl\00FC\011F\00FCne bak\0131n.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548378433027964)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015Fleniyor')
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407444898027921)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408588804027922)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu web sitesi uygulama fonksiyonelli\011Fine sahiptir. En iyi deneyim i\00E7in cihaz\0131n\0131za y\00FCkleyin.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409817333027922)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411484628027923)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu uygulamay\0131 y\00FCkle')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396267619027918)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Cihaz\0131n\0131z veya taray\0131c\0131n\0131z \015Fu anda A\015Famal\0131 Web Uygulamalar\0131n\0131n y\00FCklenmesini desteklemiyor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391338476027916)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'tr'
,p_message_text=>unistr('1. <strong>Payla\015F</strong> simgesine dokunun.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391413760027917)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'tr'
,p_message_text=>unistr('2. A\015Fa\011F\0131 kayd\0131r\0131n ve <strong>Ana Ekrana Ekle</strong> ba\011Flant\0131s\0131na dokunun')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407809733027921)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'tr'
,p_message_text=>unistr('3. Teyit etmek i\00E7in <strong style="color:#007AE1;">Ekle</strong> ba\011Flant\0131s\0131na dokunun')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406945955027921)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'tr'
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
unistr('    <h1>Ba\011Flanam\0131yor</h1>'),
unistr('    <p>A\011F sorunu var gibi g\00F6r\00FCn\00FCyor. Ba\011Flant\0131n\0131z\0131 kontrol edin ve tekrar deneyin.</p>'),
'    <button type="button">Retry</button>',
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406851708027921)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\011Flanam\0131yor')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453405982027935)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu cihaz anl\0131k bildirimleri etkinle\015Ftiremedi.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458969378027937)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\00E7in H\0131zl\0131 Se\00E7imler')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458874330027937)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'tr'
,p_message_text=>unistr('H\0131zl\0131 Se\00E7im Ba\011Flant\0131s\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130432646020027929)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rsel olarak sakl\0131 radyo d\00FC\011Fmesi')
,p_is_js_message=>true
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376709303027912)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Tek Sat\0131r G\00F6r\00FCn\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559477573027968)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'tr'
,p_message_text=>'Ekle'
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504710894027951)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm G\00FCn S\00FCren')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582350255027974)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'tr'
,p_message_text=>unistr('Davet G\00F6nder')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582137821027974)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7enekler')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506534120027952)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm g\00FCn i\00E7in g\00FCnl\00FCk g\00F6r\00FCn\00FCm')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506377216027951)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'tr'
,p_message_text=>unistr('Zaman olan veriler i\00E7in g\00FCnl\00FCk g\00F6r\00FCn\00FCm')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550543372027965)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCn')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545527527027963)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131klama')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429032198027928)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'tr'
,p_message_text=>'CSV'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428857100027928)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'tr'
,p_message_text=>'iCal'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428781844027928)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'tr'
,p_message_text=>'PDF'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428970228027928)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'tr'
,p_message_text=>'XML'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428476378027928)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Biti\015F Tarihi')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428644571027928)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkinlik Ad\0131')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582282001027974)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'tr'
,p_message_text=>'Davet'
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550607967027965)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'tr'
,p_message_text=>'Liste'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550387683027965)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'tr'
,p_message_text=>'Ay'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552969416027966)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130566945305027970)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'tr'
,p_message_text=>'Etkinlik Yok'
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582541195027974)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'tr'
,p_message_text=>unistr('Mevcut bir Etkinli\011Fi d\00FCzenleyin.')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582430943027974)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'tr'
,p_message_text=>unistr('E-Posta yoluyla Davet G\00F6nderme.')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553070279027966)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560733765027968)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'tr'
,p_message_text=>unistr('E-Posta G\00F6nder')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560540100027968)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'tr'
,p_message_text=>unistr('E-Posta G\00F6nder')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583183978027975)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm alanlar gereklidir.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583088371027975)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Davet G\00F6nder')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582048798027974)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'tr'
,p_message_text=>'Konu'
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560688336027968)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'tr'
,p_message_text=>'Kime'
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428554488027928)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7 Tarihi')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558724269027967)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00FCzerinde olu\015Ftur')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506162748027951)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'tr'
,p_message_text=>'Zaman'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553146418027966)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Bug\00FCn')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551181080027965)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550476148027965)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'tr'
,p_message_text=>'Hafta'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506424570027951)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm g\00FCn i\00E7in haftal\0131k g\00F6r\00FCn\00FCm')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506278891027951)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'tr'
,p_message_text=>unistr('Zaman olan veriler i\00E7in haftal\0131k g\00F6r\00FCn\00FCm')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551007671027965)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\0131l')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550706379027965)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunlar...')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550862149027965)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'tr'
,p_message_text=>unistr('Daha fazlas\0131n\0131 y\00FCkle...')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480236277027944)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421788698027926)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'tr'
,p_message_text=>unistr('Daha fazlas\0131n\0131 y\00FCkle...')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424034590027926)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'tr'
,p_message_text=>'Ara...'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550914339027965)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'tr'
,p_message_text=>unistr('Daha fazlas\0131n\0131 y\00FCkle...')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552881602027966)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge No %0 bulunamad\0131.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423934360027926)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri Bulunamad\0131')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451404647027935)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge sayfa numaralama s\0131f\0131rlanam\0131yor.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415148643027924)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge sayfa numaralama ayarlan\0131rken hata olu\015Ftu.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544909166027963)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunlar...')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399442524027919)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Yava\015F y\00FCkleme tek (k\0131smi) b\00F6lme olan %0 i\00E7indeki dilimler ile uyumsuz. Bu b\00F6lge i\00E7in yava\015F y\00FCklemeyi devre d\0131\015F\0131 b\0131rakmal\0131 veya dilim bile\015Fenlerini farkl\0131 bir b\00F6lgeye ta\015F\0131mal\0131s\0131n\0131z.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394736124027918)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Grup \015Eablonu, %0 i\00E7in \015Eablon Bile\015Feninde eksik.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389771286027916)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, tek bir (k\0131smi) b\00F6lge ve birden fazla sat\0131r d\00F6nd\00FCrd\00FC.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552779395027965)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge Tipi %0 desteklenmiyor.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415028265027924)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('"#COMPONENT_NAME#" b\00F6lgesi i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485789732027945)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('#COLUMN_HEADER# bir de\011Fere sahip olmal\0131d\0131r.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367339279027909)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor Yerle\015Fimi belirlemelisiniz.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581631040027974)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, zengin metin d\00FCzenleyicisi')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487881046027946)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'tr'
,p_message_text=>unistr('Zengin Metin HTML i\015Faretleme dili \00F6\011Fenin maksimum uzunlu\011Funu a\015F\0131yor (fiili %0, izin verilen %1 karakter)')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397223439027918)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'tr'
,p_message_text=>unistr(' Salt Okunur Zengin Metin D\00FCzenleyicisi')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397108396027918)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'tr'
,p_message_text=>unistr('Zengin Metin D\00FCzenleyicisi')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396999808027918)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'tr'
,p_message_text=>'Hizalama'
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397066390027918)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'tr'
,p_message_text=>'Ekstralar'
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396771969027918)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'tr'
,p_message_text=>unistr('Yaz\0131 Tipi')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396683599027918)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'tr'
,p_message_text=>unistr('Bi\00E7imlendirme')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396879129027918)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'tr'
,p_message_text=>'Listeler'
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549929020027965)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'tr'
,p_message_text=>'Sil'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542456136027962)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'tr'
,p_message_text=>'Tekrarlanan'
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540717492027962)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FClenen S\00FCtunlar')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540678503027962)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015F De\011Ferleri Hari\00E7 Tut')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130550063397027965)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'tr'
,p_message_text=>'Ekle'
,p_is_js_message=>true
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504365009027951)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'tr'
,p_message_text=>unistr('A\015Fa\011F\0131 Ta\015F\0131')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504437995027951)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'tr'
,p_message_text=>unistr('Yukar\0131 Ta\015F\0131')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540482800027962)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541027050027962)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Di\011Fer S\00FCtunlar')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540519429027962)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540827694027962)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r %0')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540922386027962)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r %0 / %1')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542573953027962)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'tr'
,p_message_text=>'Yenile'
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542672516027962)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fi\015Fiklikleri Geri Al')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130540372398027962)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'tr'
,p_message_text=>'Ayarlar'
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499509407027949)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6rne\011Fin, %0')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503858561027951)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6rnek: %0')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416504168027924)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('1 sonu\00E7')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413699562027923)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sonu\00E7')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465412652027939)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfaland\0131rma')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465590440027939)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonu\00E7lar, %0 - %1')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361270386027908)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Tekrar Giri\015F Yap')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361158319027908)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'tr'
,p_message_text=>'Oturumunuz sona erdi'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361361951027908)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'tr'
,p_message_text=>'Uzat'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130360931414027908)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'tr'
,p_message_text=>'Oturumunuz %0 saatinde sona erecek. Uzatmak ister misiniz?'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361042525027908)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturumunuz %0 saatinde sona erecek ve uzat\0131lamaz. Herhangi bir veriyi kaybetmemek i\00E7in l\00FCtfen \015Fimdi herhangi bir \00E7al\0131\015Fmay\0131 kaydedin')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560387284027968)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Veritaban\0131 oturumu temizleme kodu i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450088677027934)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Veritaban\0131 oturumu kurulum kodu i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420416080027925)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'tr'
,p_message_text=>'Oturumunuz sona erdi.'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559509294027968)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen yeni bir oturum elde etmek i\00E7in bu ileti\015Fim kutusunu kapat\0131n ve taray\0131c\0131n\0131z\0131n yeniden y\00FCkleme d\00FC\011Fmesine bas\0131n.')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578493235027973)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('Yeni bir oturum olu\015Fturmak i\00E7in tekrar <a href="%0">Oturum A\00E7\0131n</a>.')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462728681027938)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum Ge\00E7erli De\011Fil')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505805378027951)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" kullan\0131c\0131s\0131 i\00E7in Ger\00E7ek Uygulama G\00FCvenli\011Fi oturumunda etkinle\015Ftirilebilen Dinamik Rol yok.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447938932027934)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-99900 Benzersiz oturum No olu\015Fturulamad\0131: %0')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377076096027912)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Fe %0 i\00E7in oturum durumu karakter b\00FCy\00FCk nesne (CLOB) veri tipi izin verilmez.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396420989027918)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum durumu veri tipi CLOB \00F6\011Felerinin ikame edilmesi desteklenmiyor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465240691027939)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum durumunu koruma ihlali: Bunun nedeni, %0 korumal\0131 sayfa \00F6\011Fesinin manuel olarak de\011Fi\015Ftirilmesi olabilir. Bu hataya neyin yol a\00E7t\0131\011F\0131ndan emin de\011Filseniz yard\0131m i\00E7in l\00FCtfen uygulama y\00F6neticisi ile ileti\015Fime ge\00E7in.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130586445582027976)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa koruma ihlali. Bu, hen\00FCz y\00FCklenmesi tamamlanmayan bir sayfan\0131n g\00F6nderilmesinden veya korumal\0131 sayfa \00F6\011Felerinin manuel olarak de\011Fi\015Ftirilmelerinden kaynaklan\0131yor olabilir. Daha fazla yard\0131m i\00E7in l\00FCtfen uygulama y\00F6neticiniz ile ileti\015Fime ge\00E7in.')
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585597333027975)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \015Fu ge\00E7ersiz karakterlerden birini i\00E7eriyor: &<>"/;,*|=% veya --')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585638016027975)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \015Fu ge\00E7ersiz karakterlerden birini i\00E7eriyor: &<>"/;,*|=% veya -- veya yeni sat\0131r.')
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585317353027975)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00F6zel karakterler i\00E7eriyor. Sadece a-Z, 0-9 karakterlerine ve bo\015Fluklara izin verilir.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585492173027975)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 ge\00E7ersiz karakterler olan <, > veya " i\00E7eriyor.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422894768027926)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir veya daha fazla istek, \00F6nbellek temizleme veya ba\011F\0131ms\0131z de\011Fi\015Fken de\011Feri parametre olarak iletildi\011Finde sa\011Flama toplam\0131 gerektiren bir sayfa i\00E7in i\015Fleme g\00F6stermek \00FCzere sa\011Flama toplam\0131 sa\011Flanmad\0131.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460126685027937)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum durumunu koruma ihlali: Bunun nedeni, sa\011Flama toplam\0131 i\00E7eren bir URL''nin manuel olarak de\011Fi\015Ftirilmesi veya yanl\0131\015F veya eksik sa\011Flama toplam\0131 olan bir ba\011Flant\0131n\0131n kullan\0131lmas\0131 olabilir. Bu hataya neyin yol a\00E7t\0131\011F\0131ndan emin de\011Filseniz yard\0131m i\00E7in')
||unistr(' l\00FCtfen uygulama y\00F6neticisi ile ileti\015Fime ge\00E7in.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541780492027962)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCksek Kontrast Modunu Kapal\0131 Olarak Ayarla')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541807924027962)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCksek Kontrast Modunu A\00E7\0131k Olarak Ayarla')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406236078027921)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 uygulama ayar\0131na ba\015Fka bir uygulamadan abone olundu\011Fu i\00E7in g\00FCncellenemiyor.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456553082027936)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'tr'
,p_message_text=>'Alt'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456701254027936)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'tr'
,p_message_text=>unistr('A\015Fa\011F\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456838776027936)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ta\015F\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456977013027936)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Ta\015F\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457007562027936)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kald\0131r')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457133478027937)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Kald\0131r')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457282852027937)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131f\0131rla')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456460909027936)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DCst')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456641920027936)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'tr'
,p_message_text=>unistr('Yukar\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568207401027970)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'tr'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568901959027970)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('%0g i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568198490027970)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'tr'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569057399027970)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 saat i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567946103027970)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'tr'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569183483027970)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('%0d i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568568326027970)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'tr'
,p_message_text=>'%0ay'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568752176027970)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('%0ay i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568046171027970)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'tr'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568857405027970)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('%0s i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568381172027970)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'tr'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130569262776027970)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('%0h i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568491920027970)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'tr'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130568622854027970)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 y\0131l i\00E7inde')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369532946027910)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'tr'
,p_message_text=>unistr('[\00C7izgi]')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370115787027910)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'tr'
,p_message_text=>unistr('[Birden \00C7ok Sat\0131r]')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369872246027910)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'tr'
,p_message_text=>unistr('[Birden \00C7ok Nokta]')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370353722027910)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'tr'
,p_message_text=>unistr('[Birden \00C7ok \00C7okgen]')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370427875027910)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'tr'
,p_message_text=>'[Geometri Nesnesi]'
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369470079027910)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'tr'
,p_message_text=>'[Nokta (%0,%1)]'
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369786420027910)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'tr'
,p_message_text=>unistr('[\00C7okgen]')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368966006027910)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'tr'
,p_message_text=>unistr('Daralt\0131lan b\00F6lge: %0')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484076892027945)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'tr'
,p_message_text=>'Daralt'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367981882027910)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('Yatay olarak y\00F6nlendirilen b\00F6lme \00E7ubu\011Fu sola veya sa\011Fa ta\015F\0131namaz')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368143232027910)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'tr'
,p_message_text=>unistr('Maksimum %0 piksel boyutuna ula\015F\0131ld\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369153032027910)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'tr'
,p_message_text=>unistr('Minimum %0 piksel boyutuna ula\015F\0131ld\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369007149027910)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge daralt\0131ld\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368875649027910)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge geri y\00FCklendi')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368535231027910)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 piksel olarak yeniden boyutland\0131r\0131ld\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368759742027910)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'tr'
,p_message_text=>unistr('Geri y\00FCklenen b\00F6lge: %0')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483961907027945)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('Geri Y\00FCkle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130368027922027910)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'tr'
,p_message_text=>unistr('Dikey olarak y\00F6nlendirilen b\00F6lme \00E7ubu\011Fu yukar\0131 veya a\015Fa\011F\0131 ta\015F\0131namaz')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533498749027960)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'tr'
,p_message_text=>unistr('Puanlamay\0131 Temizle')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523373105027957)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, ge\00E7erli 1 - %1 puanlama aral\0131\011F\0131nda de\011Fil')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523446971027957)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 say\0131sal de\011Fil')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519505422027955)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Far\0131 Mesaj\0131')
,p_is_js_message=>true
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581320350027974)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581292765027974)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491476507027947)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu g\00F6rev an\0131 ile ili\015Fkili kay\0131tlar\0131n sistemi bulunmad\0131')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499765017027949)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 g\00F6rev eyleminin y\00FCr\00FCt\00FClmesi ba\015Far\0131s\0131z oldu - g\00F6rev hatal\0131 duruma ayarland\0131, l\00FCtfen g\00F6rev eylem kodunu kontrol edin')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379993609027913)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131klama Ekle: Yetkili de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379206231027913)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev zaten atanm\0131\015F')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372630716027911)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'tr'
,p_message_text=>'Atanan: %0'
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378912416027913)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revi \0130ptal Et: Yetkili de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394545733027917)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu g\00F6revin ger\00E7ek sahibi kald\0131r\0131lam\0131yor. L\00FCtfen bu i\015Flemi yeniden denemeden \00F6nce g\00F6revi ba\015Fka bir kat\0131l\0131mc\0131ya atay\0131n.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378533941027913)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revi Talep Et: Yetkili De\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378673028027913)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revi Tamamla: Yetkili de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378787417027913)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev Yetkisini Aktar: Yetkili de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377183035027912)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revin Ger\00E7ekle\015Fme Tarihi ge\00E7mi\015Fte olamaz.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372472907027911)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'tr'
,p_message_text=>'Son Tarih: %0'
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372874433027911)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev Eylemi %1 ba\015Far\0131s\0131z oldu. Hata mesaj\0131 - %0')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372555264027911)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Far\0131s\0131z')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372125911027911)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Far\0131l\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372302471027911)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 eylemi, %0 mesaj\0131yla ba\015Far\0131l\0131 oldu')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375619338027912)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCre Sonundan \00D6nce')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401293677027919)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ptal')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400722640027919)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev iptal edildi')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401313242027920)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('Kat\0131l\0131mc\0131n\0131n g\00F6revi iptal etmesine izin verilmiyor')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400661543027919)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'tr'
,p_message_text=>'Talep'
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401023500027919)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev zaten ba\015Fka bir kullan\0131c\0131 taraf\0131ndan talep ediliyor veya kat\0131l\0131mc\0131 bu g\00F6revi talep etme hakk\0131na sahibi de\011Fil')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400890461027919)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev %0 taraf\0131ndan talep edildi')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501936551027950)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'tr'
,p_message_text=>unistr('Tamamland\0131')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400450275027919)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev, %0 sonucu ile olu\015Fturuldu')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401759419027920)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev atanmam\0131\015F veya kat\0131l\0131mc\0131n\0131n g\00F6revi tamamlamas\0131na izin verilmiyor')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362133407027908)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev, sonu\00E7 olmadan tamamland\0131')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502071078027950)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Olu\015Ftur')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394923553027918)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev, %0 No ile olu\015Fturuldu')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502196100027950)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'tr'
,p_message_text=>'Yetki Aktar'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400580194027919)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev yetkisi, %0 potansiyel sahibine aktar\0131ld\0131')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401119910027919)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('Kat\0131l\0131mc\0131 hak sahibi de\011Fil veya yeni kat\0131l\0131mc\0131 bu g\00F6revin potansiyel bir sahibi de\011Fil')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374274891027911)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erlili\011Fi Sonland\0131r')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375351794027912)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revin s\00FCresi doldu.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502253000027950)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Far\0131s\0131z')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370989020027910)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev atanmam\0131\015F veya kat\0131l\0131mc\0131n\0131n g\00F6rev i\00E7in bilgi istemesine izin verilmiyor')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371155397027911)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev i\00E7in bilgi istenmemi\015F veya kat\0131l\0131mc\0131n\0131n g\00F6rev i\00E7in bilgi g\00F6ndermesine izin verilmiyor.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374780104027912)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 maksimum yenileme say\0131s\0131na ula\015F\0131ld\0131\011F\0131 i\00E7in g\00F6revin ge\00E7erlili\011Fini sonland\0131r\0131n.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402056945027920)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev do\011Fru durumda de\011Fil veya kat\0131l\0131mc\0131 bu g\00F6rev i\00E7in bir i\015Fletme y\00F6neticisi de\011Fil')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402186222027920)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\015Flemi bilinmiyor veya bu g\00F6rev i\00E7in uygulanamaz')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502397892027950)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'tr'
,p_message_text=>unistr('Serbest B\0131rak')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488050199027946)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev serbest b\0131rak\0131ld\0131, art\0131k di\011Ferleri taraf\0131ndan talep edilebilir.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380903694027913)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revin serbest b\0131rak\0131lmas\0131na izin verilmiyor - kullan\0131c\0131 g\00F6revin sahibi de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397999723027918)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'tr'
,p_message_text=>unistr('Sahibi Kald\0131r')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398173510027919)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kat\0131l\0131mc\0131 %0 g\00F6revden kald\0131r\0131ld\0131')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375557468027912)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'tr'
,p_message_text=>'Yenile'
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374476362027912)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev No %0 ile yenilendi, s\00FCre sonu \00F6ncesindeki kalan maksimum yenileme say\0131s\0131: %1.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375459879027912)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev No %0, g\00F6rev No %1 ile yenilendi')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371485853027911)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'tr'
,p_message_text=>unistr('Bilgi \0130ste')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371391038027911)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Daha fazla bilgi i\00E7in %0 istendi: %1')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369256794027910)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flat\0131c\0131 Ayarlama %0 Olarak Tamamlanabilir')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371539960027911)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'tr'
,p_message_text=>unistr('Bilgi G\00F6nder')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371200702027911)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130stenen bilgiler g\00F6nderildi: %0: %1')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502490667027950)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131klamay\0131 G\00FCncelle')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398931675027919)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131klama ekle: %0')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401863240027920)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev durumu a\00E7\0131klamalara izin vermiyor')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409127037027922)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev son tarihini %0 olarak ayarla')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367276971027909)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCncelleme Son Tarihi')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502509266027950)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'tr'
,p_message_text=>unistr('Sahibini G\00FCncelle')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400220933027919)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev kat\0131l\0131mc\0131lar\0131na %0 potansiyel sahibini ekle')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399387553027919)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'tr'
,p_message_text=>unistr('Parametreleri G\00FCncelle')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130502632526027950)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nceli\011Fi G\00FCncelle')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400968451027919)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev \00F6nceli\011Fini %0 olarak ayarla')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398219578027919)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('"%1" olan "%0" parametresi "%2" olarak g\00FCncellendi.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381737659027914)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kar\015F\0131l\0131k gelen i\015F ak\0131\015F\0131 an\0131 sonland\0131r\0131ld\0131\011F\0131 i\00E7in g\00F6rev iptal edildi.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378881845027913)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revi \0130let: Yetkili de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372270838027911)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 %1 taraf\0131ndan ba\015Flat\0131ld\0131')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381171187027913)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Beklenmeyen bir dahili hata olu\015Ftu')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379461723027913)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev operasyonu uygulanabilir de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405096337027921)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu potansiyel sahip mevcut de\011Fil.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380755326027913)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'tr'
,p_message_text=>unistr('Onayland\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380846741027913)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'tr'
,p_message_text=>'Reddedildi'
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362268096027908)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revin tamamlanmas\0131 bir sonu\00E7 gerektirir')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130362427853027908)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6revin bir sonucunun olmas\0131na izin verilmiyor')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130398008477027919)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 parametresi g\00FCncellenemiyor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394345935027917)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Kat\0131l\0131mc\0131 zaten bu g\00F6rev an\0131 i\00E7in mevcut.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495858851027948)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'tr'
,p_message_text=>'Acil'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372908914027911)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>'Acil'
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495715405027948)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCksek')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373002779027911)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCksek \00F6ncelik')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495618487027948)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'tr'
,p_message_text=>'Orta'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373107575027911)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Orta d\00FCzeyde \00F6ncelik')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495509403027948)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FC\015F\00FCk')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373262161027911)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FC\015F\00FCk \00F6ncelik')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495495118027948)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'tr'
,p_message_text=>unistr('En D\00FC\015F\00FCk')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373337931027911)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('En d\00FC\015F\00FCk \00F6ncelik')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379061786027913)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev \00D6nceli\011Fini Ayarla: Yetkili de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380252399027913)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'tr'
,p_message_text=>unistr('Atand\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380607423027913)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ptal Edildi')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380382546027913)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'tr'
,p_message_text=>unistr('Tamamland\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380507034027913)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'tr'
,p_message_text=>unistr('Hatal\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130374027345027911)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erlili\011Fi Sona Erdi')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380459159027913)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Far\0131s\0131z')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370755019027910)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'tr'
,p_message_text=>unistr('Bilgi \0130stendi')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130380107963027913)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'tr'
,p_message_text=>unistr('Atanmad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402567568027920)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('%1 uygulamas\0131ndaki %0 G\00F6rev Tan\0131m\0131nda yeni bir G\00F6rev olu\015Fturulamad\0131.'),
'SQLCODE: %2'))
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402476856027920)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev tan\0131m\0131 potansiyel sahip i\00E7ermedi\011Fi i\00E7in %1 uygulamas\0131nda %0 g\00F6rev tan\0131m\0131 i\00E7in bir g\00F6rev olu\015Fturma giri\015Fimi ba\015Far\0131s\0131z oldu - l\00FCtfen g\00F6rev tan\0131m\0131n\0131 d\00FCzenleyin ve potansiyel sahip tipinde en az bir kat\0131l\0131mc\0131 ekleyin')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379723506027913)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev tan\0131m\0131 bulunamad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379639057027913)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev i\00E7in kat\0131l\0131mc\0131 bulunamad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381073577027913)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Belirtilen g\00F6rev no i\00E7in birden fazla g\00F6rev var - l\00FCtfen veritaban\0131 y\00F6neticiniz ile kontrol edin')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379850501027913)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev Bulunamad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130379588975027913)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev parametresi bulunamad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415874796027924)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'tr'
,p_message_text=>'Eylem'
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415781874027924)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'tr'
,p_message_text=>'Onay'
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363172667027908)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%2 \0130zin Kural\0131 Prosed\00FCr\00FC %1 uygulamas\0131ndaki %0 g\00F6rev tan\0131m\0131 i\00E7in y\00FCr\00FCt\00FClemedi.')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363339494027908)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kat\0131l\0131mc\0131 %1 kat\0131l\0131mc\0131 %0 i\00E7in bir ikame olarak eklendi. Nedeni - %2.')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567098431027970)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ara\00E7 \00C7ubu\011Fu')
,p_is_js_message=>true
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420506195027925)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'tr'
,p_message_text=>'Uygulama'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581784388027974)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Gezinmeyi Geni\015Flet/Daralt')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581856474027974)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Yan S\00FCtunu Geni\015Flet/Daralt')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490208570027947)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'tr'
,p_message_text=>'Ana Gezinme'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391051803027916)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" ge\00E7ersiz bir yer tutucu ad\0131.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497928669027949)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('1 g\00FCn')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497797291027949)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'tr'
,p_message_text=>'1 saat'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498010332027949)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 g\00FCn')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497868261027949)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'tr'
,p_message_text=>'%0 saat'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497626494027949)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'tr'
,p_message_text=>'%0 dakika'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498215946027949)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'tr'
,p_message_text=>'%0 hafta'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130498197587027949)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'tr'
,p_message_text=>'1 hafta'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130395905689027918)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00F6\011Fe se\00E7ildi')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396102847027918)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Kalem Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396072791027918)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7: %0')
,p_is_js_message=>true
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584875903027975)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa ba\015F\0131')
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442407725027932)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'tr'
,p_message_text=>'Etkin'
,p_is_js_message=>true
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410949379027922)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130stek i\015Flenirken hata olu\015Ftu.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130396531638027918)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 metin mesaj\0131na ba\015Fka bir uygulamadan abone olundu\011Fu i\00E7in g\00FCncellenemiyor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499655820027949)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer Gerekli')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416097021027924)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Fl\0131k d\00FCzeyi %0, gizli')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544437231027963)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu sayfada kaydedilmemi\015F de\011Fi\015Fiklikler var.')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406061046027921)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'tr'
,p_message_text=>'Gezgin'
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405730911027921)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'tr'
,p_message_text=>unistr('Yak\0131nla\015Ft\0131r')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406706668027921)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Yak\0131nla\015Ft\0131rma d\00FCzeyi {0} y\00FCzdesi')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405889119027921)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'tr'
,p_message_text=>unistr('Uzakla\015Ft\0131r')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405963010027921)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('Yak\0131nla\015Ft\0131rma S\0131f\0131rlama')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381417590027914)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F ak\0131\015F\0131 diyagram\0131 \015Fu anda eri\015Filebilir de\011Fil.')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381391694027914)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 Diyagram\0131')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383254210027914)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 An\0131 %0 \015Fu anda %1 durumunda. Bu nedenle i\015Fleme izin verilmiyor.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385819376027915)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131ndaki %2 Etkinli\011Finin %1 an\0131 tamamland\0131')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385613924027915)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131nda %2 Etkinli\011Finin %1 yeni an\0131 olu\015Fturuldu')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377472018027912)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu i\015F ak\0131\015F\0131 etkinli\011Fi an\0131 ile ili\015Fkili ek veri sat\0131r\0131 bulunamad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385798887027915)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131ndaki %2 Etkinli\011Finin %1 hata veren an\0131 yeniden denendi')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367790201027910)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131ndaki etkinlik an\0131 %1 sonland\0131r\0131ld\0131')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401559950027920)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131ndaki etkinlik an\0131 %1 zaman a\015F\0131m\0131na u\011Frad\0131 ve sonland\0131r\0131ld\0131.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385928644027915)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131ndaki %2 Etkinli\011Finin %1 an\0131 Bekliyor durumunda')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367539445027909)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 An\0131 %0 de\011Fi\015Ftirildi ve %1 etkinli\011Finde s\00FCrd\00FCr\00FCld\00FC')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384976995027915)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131ndaki %2 Etkinli\011Finin %1 Bekleyen An\0131 ba\015Far\0131yla tamamland\0131')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384735571027915)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0 zaten Etkinlik tamamlanmadan \00F6nce Hata Verdi durumunda oldu\011Fundan bekleyen etkinlik %1 Hata Verdi')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384811563027915)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0 zaten Etkinlik tamamlanmadan \00F6nce Sonland\0131r\0131ld\0131 durumunda oldu\011Fundan Bekleyen Etkinlik %1 Sonland\0131r\0131ld\0131')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367891277027910)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131ndaki %1 etkinlik an\0131n\0131n sonland\0131r\0131lmas\0131 istisna nedeniyle ba\015Far\0131s\0131z oldu - %2')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383491636027914)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 \015Fu anda \00F6nceki bir i\015Flemi tamamlamakla me\015Fgul. L\00FCtfen daha sonra deneyin.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399569495027919)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'tr'
,p_message_text=>'Tamamlanan: %0'
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382515810027914)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0 \015Fu anda Bekliyor durumda olmayan %1 Etkinli\011Finde oldu\011Fundan devam edemiyor')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394465509027917)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, bu \0130\015F Ak\0131\015F\0131 Etkinli\011Fi taraf\0131ndan y\00FCr\00FCt\00FClen i\015Flem i\00E7in ge\00E7erli bir i\015F ak\0131\015F\0131 korelasyon ba\011Flam\0131 de\011Fil. Korelasyon ba\011Flam\0131, APEX_APPL_WORKFLOW i\00E7eren ve bunu \0130\015F Ak\0131\015F\0131 An\0131 No ve Etkinlik An\0131 No izleyen virg\00FCl ile ayr\0131lm\0131\015F metin olmal\0131d\0131r.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385161580027915)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %1, S\00FCr\00FCm %2 i\00E7in yeni %0 An\0131 olu\015Fturuldu')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377271544027912)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu i\015F ak\0131\015F\0131 an\0131 ile ili\015Fkili ek veri sat\0131r\0131 bulunamad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399739605027919)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'tr'
,p_message_text=>'Son Tarih: %0'
,p_version_scn=>2693667
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385058495027915)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0, %1 durumu ile sonland\0131')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382220556027914)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131n\0131n De\011Fi\015Ftirme Etkinli\011Finde kar\015F\0131la\015Ft\0131r\0131lan ko\015Fullara ili\015Fkin veri tipi %1, ko\015Ful i\015Fleci ile uyumlu de\011Fil')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130372059418027911)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 %1 taraf\0131ndan ba\015Flat\0131ld\0131')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394822094027918)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %1, S\00FCr\00FCm %2 i\00E7in yeni %0 An\0131 olu\015Fturuldu - %3 i\015F ak\0131\015F\0131 an\0131n\0131n %4 etkinlik an\0131ndan \00E7a\011Fr\0131ld\0131')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130367658031027910)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 statik No''lu etkinlik %0 \0130\015F Ak\0131\015F\0131nda bir etkinlik de\011Fil. Kar\015F\0131l\0131k gelen \0130\015F Ak\0131\015F\0131 S\00FCr\00FCm\00FCn\00FCn statik No''lar\0131n\0131 kontrol edin.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130392948384027917)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, bu i\015F ak\0131\015F\0131 i\00E7in zorunlu bir parametredir ve NULL olmamal\0131d\0131r.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385515877027915)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 An\0131 %0 s\00FCrd\00FCr\00FCld\00FC')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385466072027915)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 An\0131 %0 yeniden denendi')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399818015027919)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'tr'
,p_message_text=>'%0 yeniden dene'
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399994537027919)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'tr'
,p_message_text=>'%0 yeniden deneme'
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399624770027919)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flat\0131ld\0131: %0')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393898851027917)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'tr'
,p_message_text=>'Etkin'
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394039316027917)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'tr'
,p_message_text=>unistr('Tamamland\0131')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394119278027917)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'tr'
,p_message_text=>'Hata Verdi'
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130394204092027917)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'tr'
,p_message_text=>unistr('Ask\0131ya Al\0131nd\0131')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393927017027917)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonland\0131r\0131ld\0131')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409275019027922)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'tr'
,p_message_text=>'Bekliyor'
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385217057027915)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 An\0131 %0 ask\0131ya al\0131nd\0131')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391110200027916)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131 An\0131na ili\015Fkin s\0131radaki etkinlik belirlenemiyor. \0130\015F ak\0131\015F\0131n\0131 yeniden denemeden \00F6nce ge\00E7erli de\011Fi\015Ftirme etkinli\011Fi i\00E7in tan\0131mlanm\0131\015F ko\015Fullar\0131 do\011Frulay\0131n ve d\00FCzeltin.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130385325817027915)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 An\0131 %0 sonland\0131r\0131ld\0131')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384402446027914)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'tr'
,p_message_text=>unistr('Sadece %0 \0130\015F Ak\0131\015F\0131n\0131n \0130\015F Y\00F6neticisi \0130\015F Ak\0131\015F\0131n\0131 s\00FCrd\00FCrebilir')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384519521027914)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0 sadece bir \0130\015F Y\00F6neticisi ve/veya Sahip taraf\0131ndan yeniden denenebilir.')
,p_version_scn=>2693665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384053718027914)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0 sadece i\015F ak\0131\015F\0131n\0131n bir \0130\015F Y\00F6neticisi taraf\0131ndan ask\0131ya al\0131nabilir.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130384318899027914)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sadece %0 \0130\015F Ak\0131\015F\0131 An\0131n\0131n Sahipleri ve \0130\015F Y\00F6neticileri i\015F ak\0131\015F\0131n\0131 sonland\0131rabilir')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382761995027914)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131n\0131n de\011Fi\015Fkenleri sadece i\015F ak\0131\015F\0131 i\00E7in tan\0131mlanm\0131\015F bir \0130\015F Y\00F6neticisi taraf\0131ndan g\00FCncellenebilir')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397325282027918)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\015F ak\0131\015F\0131 an\0131, de\011Fi\015Fkenleri g\00FCncellenmeden \00F6nce Hatal\0131 veya Ask\0131ya Al\0131nd\0131 durumda olmal\0131d\0131r.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388800515027916)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131 De\011Fi\015Fkeninin De\011Feri, %1 olarak g\00FCncellendi')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399064719027919)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0 Etkin s\00FCr\00FCme sahip de\011Fil')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399122348027919)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0 Geli\015Ftirilen s\00FCr\00FCme sahip de\011Fil')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130399219469027919)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 %0 Etkin veya Geli\015Ftirilen s\00FCr\00FCme sahip de\011Fil')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382136658027914)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130\015F Ak\0131\015F\0131 An\0131na ili\015Fkin Etkinlik An\0131 %1 bulunamad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381986259027914)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 An\0131 %0 bulunamad\0131')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417027740027924)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7al\0131\015Fma kitab\0131, etkin \00E7al\0131\015Fma sayfas\0131 i\00E7ermiyor.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416926843027924)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7al\0131\015Fma kitab\0131 ba\015Flat\0131lmad\0131.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130416840028027924)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('XLSX dosyas\0131 olu\015Fturulurken dahili hata olu\015Ftu.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419345476027925)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'tr'
,p_message_text=>'Sayfa'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429945143027928)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7al\0131\015Fma sayfas\0131 ad\0131 "%0" zaten al\0131nm\0131\015F. Farkl\0131 bir ad deneyin.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558509417027967)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'tr'
,p_message_text=>'Eylemler'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473543517027942)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'tr'
,p_message_text=>unistr('Eylemler Men\00FCs\00FC')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469233823027940)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>'Fonksiyon Ekle'
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469162066027940)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtuna G\00F6re Grup Ekle')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506763630027952)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet S\00FCtunu Ekle')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506869530027952)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r S\00FCtunu Ekle')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441244159027932)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Birle\015Ftir')
,p_is_js_message=>true
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479714273027943)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'tr'
,p_message_text=>'Toplama'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460645429027938)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'tr'
,p_message_text=>'Ortalama'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464903296027939)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Say\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460770239027938)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'tr'
,p_message_text=>'Maksimum'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460975595027938)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'tr'
,p_message_text=>'Orta'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460887605027938)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'tr'
,p_message_text=>'Minimum'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460586698027938)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'tr'
,p_message_text=>'Toplam %0'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461636280027938)
,p_name=>'APEXIR_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FC')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440511295027931)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm S\00FCtunlar')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420617735027925)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm Sat\0131rlar')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555529384027966)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'tr'
,p_message_text=>'Alternatif'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557126219027967)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'tr'
,p_message_text=>unistr('Alternatif \00D6nde\011Fer: %0')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454740055027936)
,p_name=>'APEXIR_AND'
,p_message_language=>'tr'
,p_message_text=>'ve'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489575753027946)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'tr'
,p_message_text=>unistr('Kaydedilen rapor i\00E7e aktar\0131lam\0131yor. \0130\00E7erik bozuk.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489645598027946)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'tr'
,p_message_text=>unistr('Kaydedilen rapor i\00E7e aktar\0131lam\0131yor. \0130\00E7erik bo\015F.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442733918027932)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'tr'
,p_message_text=>'Uygula'
,p_is_js_message=>true
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436323109027930)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'tr'
,p_message_text=>'Artan'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457864016027937)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7 tarihi %0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557786007027967)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'tr'
,p_message_text=>'Ortalama %0'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549398039027964)
,p_name=>'APEXIR_BAR'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7ubuk')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442081131027932)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'tr'
,p_message_text=>unistr('aras\0131nda')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435142831027930)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'tr'
,p_message_text=>'Arka Plan Rengi'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437077396027930)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'tr'
,p_message_text=>'mavi'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471175861027941)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'tr'
,p_message_text=>'Alt'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401901434027920)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 arama \00E7ubu\011Funun yan\0131ndaki d\00FC\011Fmeler')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437692709027930)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ptal')
,p_is_js_message=>true
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443939924027932)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'tr'
,p_message_text=>'Kategori'
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435080933027930)
,p_name=>'APEXIR_CELL'
,p_message_language=>'tr'
,p_message_text=>unistr('H\00FCcre')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461534894027938)
,p_name=>'APEXIR_CHART'
,p_message_language=>'tr'
,p_message_text=>'Grafik'
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472090403027941)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flat\0131l\0131yor...')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511780526027953)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>'Grafik etiketi belirtilmelidir.'
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524165269027957)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sorgunuz grafik ba\015F\0131na maksimum %0 veri noktas\0131n\0131 a\015F\0131yor. L\00FCtfen temel sorgunuzdaki kay\0131tlar\0131n say\0131s\0131n\0131 azaltmak i\00E7in bir filtre uygulay\0131n.')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523004913027956)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Bir Grafik sorgusu i\00E7in maksimum sat\0131r say\0131s\0131, g\00F6r\00FCnt\00FClenen sat\0131r say\0131s\0131n\0131 de\011Fil, temel sorgudaki sat\0131r say\0131s\0131n\0131 s\0131n\0131rlar.  '),
unistr('Temel sorgunuz maksimum %0 sat\0131r say\0131s\0131n\0131 a\015F\0131yor. L\00FCtfen temel sorgunuzdaki kay\0131t say\0131s\0131n\0131 azaltmak i\00E7in bir filtre uygulay\0131n.')))
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440678433027931)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafik T\00FCr\00FC')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404503918027920)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 grafik g\00F6r\00FCn\00FCm\00FC')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519753746027955)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC \0130\015Faretle')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458284659027937)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor format\0131 se\00E7in')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466020496027939)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'tr'
,p_message_text=>'temizle'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437599826027930)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477313193027943)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunlar')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444525159027933)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunun Di\011Fer Adlar\0131')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552144324027965)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'tr'
,p_message_text=>'Filtrele...'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412395461027923)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Ba\015Fl\0131\011F\0131')
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426410396027927)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Eylemleri')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426793517027927)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" s\00FCtunu i\00E7in eylemler')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468126678027940)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Ba\015Fl\0131\011F\0131 Men\00FCs\00FC')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471879956027941)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Bilgileri')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554406694027966)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Etiketi')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469598325027940)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun %0')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452496426027935)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7erir')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453738899027936)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7ermez')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436062942027930)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7inde')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453997411027936)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Fu zaman diliminde de\011Fil:')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463053688027938)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('sonrakinde de\011Fil')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453850345027936)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Fu zaman diliminde:')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462941463027938)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'tr'
,p_message_text=>'sonrakinde'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435963999027930)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('bo\015F de\011Fil')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435802202027930)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('bo\015F')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435611401027930)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'tr'
,p_message_text=>'benzer'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436188242027930)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'tr'
,p_message_text=>unistr('i\00E7inde de\011Fil')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435780653027930)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'tr'
,p_message_text=>'benzemez'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452774107027935)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'tr'
,p_message_text=>unistr('d\00FCzenli ifadeyi e\015Fle\015Ftirir')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458101159027937)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'tr'
,p_message_text=>'Hesaplama'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522744730027956)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('Hesaplama \0130fadesi')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477621514027943)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun di\011Fer adlar\0131n\0131 kullanarak bir hesaplama olu\015Fturun.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477738456027943)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'tr'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477803384027943)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'tr'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477914004027943)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'tr'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418816608027925)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'tr'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462393221027938)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'tr'
,p_message_text=>'Hesapla'
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470165471027941)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'tr'
,p_message_text=>'Kontrol Kesmesi'
,p_is_js_message=>true
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473158076027941)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'tr'
,p_message_text=>'Kontrol Kesmeleri'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559738564027968)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('Kesme S\00FCtunlar\0131n\0131 Kontrol Et')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415567487027924)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'tr'
,p_message_text=>unistr('Farkl\0131 Olanlar\0131 Say')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558260734027967)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'tr'
,p_message_text=>unistr('Farkl\0131 Olanlar\0131 Say')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558117019027967)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'tr'
,p_message_text=>unistr('Say\0131 %0')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531131722027959)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCnl\00FCk')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130584400341027975)
,p_name=>'APEXIR_DATA'
,p_message_language=>'tr'
,p_message_text=>'Veri'
,p_is_js_message=>true
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471910519027941)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 dakika \00F6ncesinden itibaren verileri raporla.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404959063027921)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 veri g\00F6r\00FCn\00FCm\00FC')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441341935027932)
,p_name=>'APEXIR_DATE'
,p_message_language=>'tr'
,p_message_text=>'Tarih'
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475846135027942)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nde\011Fer')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555363466027966)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor T\00FCr\00FC \00D6nde\011Feri')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437747905027931)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'tr'
,p_message_text=>'Sil'
,p_is_js_message=>true
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441610122027932)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu rapor ayarlar\0131n\0131 silmek istiyor musunuz?')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542197012027962)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor \00D6nde\011Ferini Sil')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469868214027940)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'tr'
,p_message_text=>'Raporu Sil'
,p_is_js_message=>true
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436457948027930)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'tr'
,p_message_text=>'Azalan'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444035809027932)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131klama')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468005565027940)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Tek Sat\0131r G\00F6r\00FCn\00FCm\00FC')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476363571027942)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00F6n%0')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477205015027943)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'tr'
,p_message_text=>unistr('Devre d\0131\015F\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437235329027930)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FClenen')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440451058027931)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FClenen S\00FCtunlar')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476274378027942)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Raporda G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471043252027941)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'tr'
,p_message_text=>unistr('A\015Fa\011F\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462446282027938)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ndir')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476165247027942)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FCleme')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545488742027963)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'tr'
,p_message_text=>unistr('Ayn\0131 ko\015Fula sahip vurgulama zaten mevcut.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559998484027968)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Tekrarlanan \00F6zet s\00FCtun. \00D6zet s\00FCtun listesi benzersiz olmal\0131d\0131r.')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560176096027968)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenle')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472118859027941)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafik Ayarlar\0131n\0131 D\00FCzenle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478762394027943)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafik D\00FCzenle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442677992027932)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'tr'
,p_message_text=>unistr('Kontrol Kesmesini D\00FCzenle')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479175000027943)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'tr'
,p_message_text=>unistr('Filtre D\00FCzenle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445667525027933)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'tr'
,p_message_text=>unistr('Flashback D\00FCzenle')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536985879027961)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Grup D\00FCzenleme \00D6l\00E7\00FCt\00FC')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479008606027943)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('Vurgulamay\0131 D\00FCzenle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507016114027952)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zeti D\00FCzenle')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466437109027939)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Raporu D\00FCzenle')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555687335027966)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'tr'
,p_message_text=>'E-Posta'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427893240027928)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'tr'
,p_message_text=>'E-Posta Adresi'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555987442027966)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'tr'
,p_message_text=>'Gizli bilgi'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556106212027966)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'tr'
,p_message_text=>'Ana Metin'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555847246027966)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'tr'
,p_message_text=>'Cc'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556676435027967)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131kl\0131k')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433018123027929)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta bu uygulama i\00E7in konfig\00FCre edilmemi\015F. L\00FCtfen y\00F6neticinize ba\015Fvurun.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530469704027959)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>'E-Posta Adresi belirtilmelidir.'
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556251686027967)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'tr'
,p_message_text=>unistr('Eke bak\0131n')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556077513027966)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'tr'
,p_message_text=>'Konu'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531457933027959)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>'E-Posta Konusu belirtilmelidir.'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555767220027966)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'tr'
,p_message_text=>'Kime'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434812571027930)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'tr'
,p_message_text=>'Etkin'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478950504027943)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkinle\015Ftir/Devre D\0131\015F\0131 B\0131rak')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478491918027943)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'tr'
,p_message_text=>'Hata! %0'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478002301027943)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6rnekler')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478848812027943)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6rnekler:')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440323818027931)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015F De\011Ferleri Hari\00E7 Tut')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479455406027943)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'tr'
,p_message_text=>unistr('Geni\015Flet/Daralt')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477093180027943)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130fade')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461933876027938)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'tr'
,p_message_text=>'Filtrele'
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473029395027941)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'tr'
,p_message_text=>'Filtreler'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483739761027945)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130fadeyi Filtrele')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581976114027974)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'tr'
,p_message_text=>unistr('Filtre ifadesi \00E7ok uzun.')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426655584027927)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Filtre \00F6nerileri')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483653984027945)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Filtre T\00FCr\00FC')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479665194027943)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'tr'
,p_message_text=>unistr('Aranacak s\00FCtunlar\0131 se\00E7')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462268678027938)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'tr'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476823968027943)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir flashback sorgusu, verileri \00F6nceki bir zaman noktas\0131nda var oldu\011Fu gibi g\00F6r\00FCnt\00FClemenizi sa\011Flar.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530801299027959)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Flashback S\00FCresi')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532268650027959)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'tr'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458043928027937)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'tr'
,p_message_text=>'Format Maskesi %0'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469768700027940)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>'Fonksiyon'
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477566732027943)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'tr'
,p_message_text=>'Fonksiyonlar %0'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555203345027966)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'tr'
,p_message_text=>unistr('Fonksiyonlar / \0130\015Fle\00E7ler')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469431807027940)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'tr'
,p_message_text=>'Fonksiyon %0'
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461735640027938)
,p_name=>'APEXIR_GO'
,p_message_language=>'tr'
,p_message_text=>'Git'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435328180027930)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'tr'
,p_message_text=>unistr('ye\015Fil')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480326792027944)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunlara G\00F6re Grupla')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480460172027944)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Fonksiyonlara G\00F6re Grupla')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415607671027924)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Gruplama \00D6l\00E7\00FCt\00FC')
,p_is_js_message=>true
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556344432027967)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtuna G\00F6re Grupla: %0')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511825517027953)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtuna g\00F6re grup belirtilmelidir.')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522911412027956)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir Gruplama \00D6l\00E7\00FCt\00FC Sorgusu i\00E7in maksimum sat\0131r say\0131s\0131, g\00F6r\00FCnt\00FClenen sat\0131r say\0131s\0131n\0131 de\011Fil, temel sorgudaki sat\0131r say\0131s\0131n\0131 s\0131n\0131rlar. Temel sorgunuz maksimum %0 sat\0131r say\0131s\0131n\0131 a\015F\0131yor. L\00FCtfen temel sorgunuzdaki kay\0131t say\0131s\0131n\0131 azaltmak i\00E7in bir filtre uy')
||unistr('gulay\0131n.')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503152892027950)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ralamaya G\00F6re Grupland\0131r')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559895143027968)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ralama D\00FCzenine G\00F6re Grupla')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404733094027921)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 gruplama \00F6l\00E7\00FCt\00FC g\00F6r\00FCn\00FCm\00FC')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440702241027931)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Yatay S\00FCtun')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474783574027942)
,p_name=>'APEXIR_HELP'
,p_message_language=>'tr'
,p_message_text=>unistr('Yard\0131m')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466592928027939)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Etkile\015Fimli raporlar, son kullan\0131c\0131lar\0131n raporlar\0131 \00F6zelle\015Ftirebilmesini sa\011Flar. Kullan\0131c\0131lar s\00FCtun se\00E7erek, filtre uygulayarak, vurgulama ve s\0131ralama yaparak rapor verilerinin yerle\015Fimini de\011Fi\015Ftirebilir. Kullan\0131c\0131lar kesintiler, birle\015Ftirmeler, grafi')
||unistr('kler, grupland\0131rmalar da tan\0131mlayabilir ve kendi hesaplamalar\0131n\0131 ekleyebilir. Kullan\0131c\0131lar ayr\0131ca abonelik ba\015Flatabilir, b\00F6ylece rapor HTML formatta, belirlenen aral\0131kta kendilerine e - postayla g\00F6nderilir. Kullan\0131c\0131lar, genel veya \00F6zel g\00F6r\00FCnt\00FCleme i')
||unistr('\00E7in bir raporun birden fazla varyasyonunu olu\015Fturabilir ve adland\0131r\0131lm\0131\015F raporlar olarak kaydedebilir. '),
'<p/>',
unistr('A\015Fa\011F\0131daki b\00F6l\00FCmler,de etkile\015Fimli bir raporu \00F6zelle\015Ftirmenin yollar\0131 \00F6zetlenmektedir. Daha fazla bilgi edinmek i\00E7in, <i>Oracle Application Express (APEX) Son Kullan\0131c\0131 K\0131lavuzu</i>''nda "Etkile\015Fimli Raporlar\0131n Kullan\0131m\0131" b\00F6l\00FCm\00FCne bak\0131n .')))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473616058027942)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'tr'
,p_message_text=>unistr('Eylemler men\00FCs\00FC, Arama \00E7ubu\011Fundaki Git d\00FC\011Fmesinin sa\011F taraf\0131nda g\00F6r\00FCn\00FCr. Etkile\015Fimli bir raporu \00F6zelle\015Ftirmek i\00E7in bu men\00FCy\00FC kullan\0131n.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467340218027940)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Toplamlar, bir s\00FCtuna kar\015F\0131 yap\0131lan matematiksel hesaplamalard\0131r. Toplamlar her kontrol kesmesinden sonra g\00F6r\00FCnt\00FClenir ve raporun sonunda tan\0131ml\0131 olduklar\0131 s\00FCtunun i\00E7inde yer al\0131r. Se\00E7enekler \015Funlar\0131 i\00E7erir:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Toplam</strong> d\00FCzenlemek \00FCzere \00F6nceden tan\0131mlanm\0131\015F'),
unistr('bir toplam se\00E7menizi sa\011Flar.</li>'),
unistr('<li><strong>Fonksiyon</strong>ger\00E7ekle\015Ftirilecek fonksiyondur (\00F6rne\011Fin, SUM, MIN).</li>'),
unistr('<li><strong>S\00FCtun</strong> matematiksel fonksiyonu uygulamak \00FCzere s\00FCtun se\00E7mek i\00E7in kullan\0131l\0131r. Sadece say\0131sal'),
unistr('s\00FCtunlar g\00F6r\00FCnt\00FClenir.</li>'),
'</ul>'))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467411635027940)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kaydedilen her rapor i\00E7in bir grafik tan\0131mlayabilirsiniz. Tan\0131mland\0131ktan sonra, Arama \00E7ubu\011Fundaki g\00F6r\00FCn\00FCm simgelerini kullanarak grafik ve rapor g\00F6r\00FCn\00FCmleri aras\0131nda ge\00E7i\015F yapabilirsiniz.'),
unistr('Se\00E7enekler \015Funlar\0131 i\00E7erir:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>Grafik Tipi</strong> dahil edilecek grafik tipini tan\0131mlar.'),
unistr('Yatay \00E7ubuk, dikey \00E7ubuk, pasta grafik veya sat\0131r aras\0131ndan se\00E7im yap\0131n.</li>'),
unistr('<li><strong>Etiket</strong> etiket olarak kullan\0131lacak s\00FCtunu se\00E7menizi sa\011Flar.</li>'),
unistr('<li><strong>Etiket Ekseni Ba\015Fl\0131\011F\0131</strong> Etiket i\00E7in se\00E7ilen s\00FCtunla ili\015Fkili eksende g\00F6r\00FCnt\00FClenen'),
unistr('ba\015Fl\0131kt\0131r. Bu, pasta grafikde kullan\0131lamaz.</li>'),
unistr('<li><strong>De\011Fer</strong> de\011Fer olarak kullan\0131lacak s\00FCtunu se\00E7menizi sa\011Flar. Fonksiyonunuz'),
unistr('bir SAYI ise, De\011Fer se\00E7ilmesine gerek yoktur.</li>'),
unistr('<li><strong>De\011Fer Ekseni Ba\015Fl\0131\011F\0131</strong> De\011Fer i\00E7in se\00E7ilen s\00FCtunla ili\015Fkili eksende g\00F6r\00FCnt\00FClenenler'),
unistr('ba\015Fl\0131kt\0131r. Bu, pasta grafik i\00E7in kullan\0131lamaz.</li>'),
unistr('<li><strong>Fonksiyon</strong> De\011Fer i\00E7in se\00E7ilen s\00FCtunda ger\00E7ekle\015Ftirilecek iste\011Fe ba\011Fl\0131 bir fonksiyondur.</li>'),
unistr('<li><strong>S\0131rala</strong> sonu\00E7 k\00FCmenizi s\0131ralaman\0131za olanak sa\011Flar.</li></ul>')))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466720853027939)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Herhangi bir s\00FCtun ba\015Fl\0131\011F\0131na t\0131kland\0131\011F\0131nda s\00FCtun ba\015Fl\0131\011F\0131 men\00FCs\00FC g\00F6r\00FCn\00FCr.Se\00E7enekler \015Funlar\0131 i\00E7erir:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Artan D\00FCzende S\0131rala</strong> simgesi raporu artan s\0131rayla s\00FCtuna g\00F6re s\0131ralar.</li>'),
unistr('<li><strong>Azalan D\00FCzende S\0131rala</strong> simgesi raporu azalan s\0131rada s\00FCtuna g\00F6re s\0131ralar.</li>'),
unistr('<li><strong>S\00FCtunu Gizle</strong> simgesi s\00FCtunu gizler.  T\00FCm s\00FCtunlar gizlenemez. Bir s\00FCtun gizlenemiyorsa, S\00FCtunu Gizle simgesi mevcut olmayacakt\0131r.</li>'),
unistr('<li><strong>Kesme S\00FCtunu</strong> s\00FCtun \00FCzerinde bir kesme grubu olu\015Fturur. Bu, s\00FCtunu ana kay\0131t olarak rapordan \00E7\0131kar\0131r.</li>'),
unistr('<li><strong>S\00FCtun Bilgisi</strong> varsa s\00FCtunla ilgili yard\0131m metnini g\00F6r\00FCnt\00FCler.</li>'),
unistr('<li><strong>Metin Alan\0131</strong> b\00FCy\00FCk/k\00FC\00E7\00FCk harf duyars\0131z arama kriterlerini girmek i\00E7in kullan\0131l\0131r'),
unistr('(joker karakterlere gerek yoktur). Bir de\011Fer girilmesi'),
unistr('men\00FCn\00FCn alt\0131ndaki de\011Fer listesini azalt\0131r. Daha sonra alt k\0131s\0131mdan'),
unistr('bir de\011Fer se\00E7ebilirsiniz ve se\00E7ilen de\011Fer ''='''),
unistr('kullan\0131larak bir filtre olarak olu\015Fturulur(\00F6rne\011Fin, <code>s\00FCtun= ''ABC''</code>). Alternatif olarak, El Feneri simgesine t\0131klayabilir ve ''LIKE'' de\011Fi\015Ftiricisi ile filtre olarak olu\015Fturulacak bir de\011Fer girebilirsiniz.'),
unistr(' (\00D6rne\011Fin, <code>s\00FCtun LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>Benzersiz De\011Ferler Listesi</strong> filtre kriterlerinizi kar\015F\0131layan ilk 500'),
unistr('benzersiz de\011Feri i\00E7erir. S\00FCtun bir tarih ise, bunun yerine'),
unistr('tarih aral\0131klar\0131n\0131n bir listesi g\00F6r\00FCnt\00FClenir. Bir de\011Fer se\00E7erseniz, ''=''  kullan\0131larak bir filtre olu\015Fturulur (\00F6rne\011Fin, <code>s\00FCtun= ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467268627027940)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Raporunuza hesaplanm\0131\015F s\00FCtunlar eklemenizi sa\011Flar. Bunlar matematiksel hesaplamalar (\00F6rne\011Fin, <code>NBR_HOURS/24</code>) veya mevcut s\00FCtunlara uygulanan standart Oracle'),
unistr('fonksiyonlar\0131 olabilir. Baz\0131lar\0131 \00F6rnek olarak g\00F6r\00FCnt\00FClenirken, di\011Ferleri de (\00F6r. <code>TO_DATE)</code> kullan\0131labilir). Se\00E7enekler \015Funlar\0131 i\00E7erir:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Hesaplama</strong> d\00FCzenlemek i\00E7in \00F6nceden tan\0131mlanm\0131\015F bir hesaplama se\00E7menizi sa\011Flar.</li>'),
unistr('<li><strong>S\00FCtun Ba\015Fl\0131\011F\0131</strong> yeni s\00FCtunun s\00FCtun ba\015Fl\0131\011F\0131d\0131r.</li>'),
unistr('<li><strong>Format Maskesi</strong>s\00FCtun kar\015F\0131s\0131nda uygulanacak bir Oracle formatl\0131 maskedir (\00F6rne\011Fin,S9999).</li>'),
unistr('<li><strong>Hesaplama</strong> ger\00E7ekle\015Ftirilecek hesaplamad\0131r. Hesaplama i\00E7inde, g\00F6r\00FCnt\00FClenen di\011Fer adlar kullan\0131larak s\00FCtunlara referansta bulunulur.</li>'),
'</ul>',
unistr('<p>Hesaplaman\0131n alt\0131nda, sorgunuzdaki s\00FCtunlar'),
unistr('ili\015Fkili di\011Fer adlar\0131yla birlikte g\00F6r\00FCnt\00FClenir. S\00FCtun ad\0131na veya di\011Fer ada t\0131kland\0131\011F\0131nda'),
unistr('bunlar Hesaplamaya dahil edilir. S\00FCtunlar\0131n yan\0131nda bir tu\015F tak\0131m\0131 bulunur. Bu tu\015F tak\0131m\0131, '),
unistr('yayg\0131n olarak kullan\0131lan tu\015Flara k\0131sayol i\015Flevi g\00F6r\00FCr. En sa\011Fda Fonksiyonlar bulunur.</p>'),
unistr('<p>A\015Fa\011F\0131daki \00F6rnek hesaplama, toplam telafinin nas\0131l g\00F6r\00FCnt\00FClenece\011Fini g\00F6stermektedir:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(burada A KURULU\015ETUR, B MAA\015E ve C ise KOM\0130SYONDUR)'),
''))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473787817027942)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir veya birden fazla s\00FCtunda bir kesme grubu olu\015Fturmak \00FCzere kullan\0131l\0131r. Bu, s\00FCtunlar\0131 etkile\015Fimli rapordan \00E7\0131kar\0131r ve ana kay\0131t olarak g\00F6r\00FCnt\00FCler.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467915000027940)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir seferde tek bir sat\0131r\0131n ayr\0131nt\0131lar\0131n\0131 g\00F6r\00FCnt\00FClemek i\00E7in, g\00F6r\00FCnt\00FClemek istedi\011Finiz sat\0131rdaki tek sat\0131r g\00F6r\00FCn\00FCm simgesine t\0131klay\0131n. Varsa, tek sat\0131r g\00F6r\00FCn\00FCm\00FC her zaman ilk s\00FCtun olacakt\0131r. Etkile\015Fimli raporun \00F6zelle\015Ftirilmesine ba\011Fl\0131 olarak, tek sa')
||unistr('t\0131rl\0131 g\00F6r\00FCn\00FCm standart g\00F6r\00FCn\00FCm veya g\00FCncellemeye izin verebilecek \00F6zel bir sayfa olabilir.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467832119027940)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli sonu\00E7 k\00FCmesinin indirilmesini sa\011Flar. \0130ndirme formatlar\0131 \015Funlar\0131 i\00E7erir: PDF, Excel, HTML ve CSV. \0130ndirme se\00E7ene\011Fi se\00E7ili formata ba\011Fl\0131 olarak de\011Fi\015Fir. T\00FCm formatlar ayr\0131ca E-Posta olarak da g\00F6nderilebilir.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466956457027940)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Sorguya <code>WHERE</code> yant\00FCmcesini ekleyerek veya de\011Fi\015Ftirerek rapora odaklan\0131r. Bir s\00FCtunda veya sat\0131ra g\00F6re filtreleyebilirsiniz.  '),
unistr('<p>S\00FCtuna g\00F6re filtre uygularsan\0131z, bir s\00FCtun se\00E7in (g\00F6r\00FCnt\00FClenen s\00FCtun'),
unistr('olmas\0131 gerekmez), standart bir Oracle i\015Fleci se\00E7in (=, !=, i\00E7inde de\011Fil, aras\0131nda), kar\015F\0131la\015Ft\0131rmak i\00E7in bir ifade girin. \0130fadeler b\00FCy\00FCk k\00FC\00E7\00FCk harf duyarl\0131d\0131r. Joker karakter olarak % kullan\0131n (\00F6rne\011Fin, <code>STATE_NAME'),
'%A gibi)</code>.</p>',
unistr('<p>Sat\0131ra g\00F6re filtre uygularsan\0131z, karma\015F\0131k <code>WHERE</code> yant\00FCmcelerini s\00FCtun di\011Fer adlar\0131n\0131 ve herhangi bir Oracle fonksiyon veya i\015Flecini kullanarak olu\015Fturabilirsiniz (\00F6rne\011Fin, <code>G = ''VA'' veya G = ''CT''</code>, burada'),
unistr('<code>G</code>, <code>CUSTOMER_STATE</code> i\00E7in di\011Fer add\0131r).</p>'),
''))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467528595027940)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Flashback sorgusu, verileri \00F6nceki bir zaman noktas\0131nda oldu\011Fu gibi g\00F6r\00FCnt\00FClemenizi'),
unistr('sa\011Flar. Flashback yapabilece\011Finiz s\00FCre miktar\0131 \00F6nde\011Feri  3 saattir (veya 180 '),
unistr('dakika) ancak ger\00E7ek miktar her veritaban\0131 i\00E7in farkl\0131 olacakt\0131r.')))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532186799027959)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Format, raporun g\00F6r\00FCn\00FCm\00FCn\00FC \00F6zelle\015Ftirmenizi sa\011Flar..'),
unistr('Bi\00E7im \015Fu alt men\00FCy\00FC i\00E7erir:</p>'),
unistr('<ul><li>S\0131rala</li>'),
'<li>Kontrol Kesmesi</li>',
'<li>Vurgula</li>',
'<li>Hesapla</li>',
'<li>Topla</li>',
'<li>Grafik</li>',
unistr('<li>Grup \00D6l\00E7\00FCt\00FC</li>'),
unistr('<li>\00D6zet</li>'),
'</ul>',
''))
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530390255027959)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kaydedilen rapor ba\015F\0131na bir Grup \00D6l\00E7\00FCt\00FC g\00F6r\00FCn\00FCm\00FC'),
unistr('tan\0131mlayabilirsiniz. Tan\0131mland\0131ktan sonra, grup aras\0131nda ge\00E7i\015F yapabilir ve'),
unistr('Arama \00E7ubu\011Fundaki g\00F6r\00FCn\00FCm simgelerini kullanarak g\00F6r\00FCn\00FCmleri bildirebilirsiniz. Grup \00D6l\00E7\00FCt\00FC g\00F6r\00FCn\00FCm\00FC olu\015Fturmak i\00E7in,'),
unistr('\015Funlar\0131 se\00E7ebilirsiniz:'),
'<p></p><ul>',
unistr('<li>gruplanacak s\00FCtunlar</li>'),
unistr('<li>ger\00E7ekle\015Ftirilecek fonksiyonla birlikte toplanacak s\00FCtunlar (ortalama, toplam, say\0131, vb.)</li>'),
'</ul>'))
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467102217027940)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Filtre tan\0131mlaman\0131z\0131 sa\011Flar. Filtre kriterlerini kar\015F\0131layan sat\0131rlar, filtreyle ili\015Fkili \00F6zellikler kullan\0131larak vurgulanm\0131\015F olarak g\00F6r\00FCnt\00FClenir. Se\00E7enekler \015Funlar\0131 i\00E7erir:</p>'),
'<ul>',
unistr('<li><strong>Ad</strong> sadece g\00F6r\00FCn\00FCm i\00E7in kullan\0131l\0131r.</li>'),
unistr('<li><strong>S\0131ra</strong>kurallar\0131n de\011Ferlendirildi\011Fi s\0131ray\0131 tan\0131mlar.</li>'),
unistr('<li><strong>Etkin</strong>bir kural\0131n etkin veya devre d\0131\015F\0131 olup olmad\0131\011F\0131n\0131 tan\0131mlar.</li>'),
unistr('<li><strong>Vurgulama T\00FCr\00FC</strong> sat\0131r\0131n m\0131 yoksa h\00FCcrenin mi vurgulanmas\0131 gerekti\011Fini belirler. H\00FCcre se\00E7ilirse, Vurgu Ko\015Fulunda'),
unistr('belirtilen s\00FCtun vurgulan\0131r.</li>'),
unistr('<li><strong>Arka Plan Rengi</strong> vurgulanan alan\0131n arka plan\0131na ili\015Fkin yeni renktir.</li>'),
unistr('<li><strong>Metin Rengi</strong> vurgulanan alandaki metine ili\015Fkin yeni renktir.</li>'),
unistr('<li><strong>Vurgulama Ko\015Fulu</strong> filtrenizin ko\015Fulunu tan\0131mlar.</li>'),
'</ul>',
''))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130360575231027907)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kaydedilen rapor ba\015F\0131na bir \00D6zet g\00F6r\00FCn\00FCm\00FC tan\0131mlayabilirsiniz. Tan\0131mland\0131ktan sonra, Arama \00E7ubu\011Fundaki g\00F6r\00FCn\00FCm simgelerini kullanarak \00F6zet ve rapor g\00F6r\00FCn\00FCmleri aras\0131nda ge\00E7i\015F yapabilirsiniz. Bir \00D6zet g\00F6r\00FCn\00FCm\00FC olu\015Fturmak i\00E7in \015Funlar\0131 se\00E7ersiniz '),
'<p></p>',
'<ul>',
unistr('<li>\00F6zetlenecek s\00FCtunlar</li>'),
unistr('<li>sat\0131r olarak g\00F6sterilecek s\00FCtunlar</li>'),
unistr('<li>ger\00E7ekle\015Ftirilecek fonksiyonla birlikte toplanacak s\00FCtunlar (ortalama, toplam, say\0131, vb.)</li>'),
'</ul>'))
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478231872027943)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Etkile\015Fimli bir raporu \00F6zelle\015Ftirirseniz, rapor ayarlar\0131'),
unistr('Arama \00E7ubu\011Funun alt\0131nda ve raporun \00FCst\00FCnde g\00F6r\00FCnt\00FClenir. Bu alan soldaki simge kullan\0131larak daralt\0131labilir ve geni\015Fletilebilir.'),
'<p>',
unistr('Her rapor ayar\0131 i\00E7in:'),
'</p><ul>',
unistr('<li>Ada t\0131klayarak bir ayar\0131 d\00FCzenleyebilirsiniz.</li>'),
unistr('<li>Etkinle\015Ftir/Devre D\0131\015F\0131 B\0131rak onay kutusunun i\015Faretini kald\0131rarak veya i\015Faretleyerek bir ayar\0131 devre d\0131\015F\0131 b\0131rakabilirsiniz/etkinle\015Ftirebilirsiniz. Bir ayar\0131 ge\00E7ici olarak kapat\0131p a\00E7mak i\00E7in bu kontrol\00FC kullan\0131n.</li>'),
unistr('<li>Kald\0131r simgesine t\0131klayarak bir ayar\0131 kald\0131rabilirsiniz.</li>'),
'</ul>',
unistr('<p>Bir grafik, gruplama \00F6l\00E7\00FCt\00FC veya \00F6zet olu\015Fturduysan\0131z, sa\011Fda g\00F6sterilen'),
unistr('Rapor G\00F6r\00FCn\00FCm\00FC, Grafik G\00F6r\00FCn\00FCm\00FC, Gruplama \00D6l\00E7\00FCt\00FC G\00F6r\00FCn\00FCm\00FC ve \00D6zet G\00F6r\00FCn\00FCm\00FC'),
unistr('ba\011Flant\0131lar\0131n\0131 kullanarak bunlar ve temel rapor aras\0131nda ge\00E7i\015F yapabilirsiniz. Grafik, gruplama \00F6l\00E7\00FCt\00FC veya \00F6zet g\00F6r\00FCn\00FCm\00FCndeyseniz,'),
unistr('ayarlar\0131 d\00FCzenlemek i\00E7in D\00FCzenle ba\011Flant\0131s\0131n\0131 da kullanabilirsiniz.</p>'),
''))
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467749414027940)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('Yapt\0131\011F\0131n\0131z t\00FCm \00F6zelle\015Ftirmeleri kald\0131rarak raporu ayar \00F6nde\011Ferine geri s\0131f\0131rlar.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532466462027959)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa ba\015F\0131na g\00F6r\00FCnt\00FClenecek kay\0131tlar\0131n say\0131s\0131n\0131 ayarlar.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467608199027940)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\00D6zelle\015Ftirilmi\015F raporu ileride kullanmak \00FCzere kaydeder. Bir ad ve iste\011Fe ba\011Fl\0131 a\00E7\0131klama sa\011Flar ve raporu herkese a\00E7\0131k hale getirebilirsiniz (yani, birincil rapor \00F6nde\011Ferine eri\015Febilen t\00FCm kullan\0131c\0131lar). D\00F6rt t\00FCr etkile\015Fimli rapor kaydedebilirsini')
||'z:</p>',
'<ul>',
unistr('<li><strong>Birincil \00D6nde\011Fer</strong> (Sadece Geli\015Ftirici). Birincil \00D6nde\011Fer, ba\015Flang\0131\00E7ta g\00F6r\00FCnt\00FClenen rapordur. Birincil \00D6nde\011Fer raporlar\0131 yeniden adland\0131r\0131lamaz veya silinemez.</li>'),
unistr('<li><strong>Alternatif Rapor</strong> (Sadece Geli\015Ftirici). Geli\015Ftiricilerin birden fazla rapor d\00FCzeni olu\015Fturmas\0131n\0131 sa\011Flar. Sadece geli\015Ftiriciler bir Alternatif Raporu kaydedebilir, yeniden adland\0131rabilir veya silebilir.</li>'),
unistr('<li><strong>Genel Rapor</strong> (Son kullan\0131c\0131). Olu\015Fturan son kullan\0131c\0131 taraf\0131ndan kaydedilebilir, yeniden adland\0131r\0131labilir veya silinebilir. Di\011Fer kullan\0131c\0131lar d\00FCzeni ba\015Fka bir rapor olarak g\00F6r\00FCnt\00FCleyebilir ve kaydedebilir.</li>'),
unistr('<li><strong>\00D6zel Rapor</strong> (Son kullan\0131c\0131). Yaln\0131zca raporu olu\015Fturan son kullan\0131c\0131 raporu g\00F6r\00FCnt\00FCleyebilir, kaydedebilir, yeniden adland\0131rabilir veya silebilir.</li>'),
'</ul>',
unistr('<p>\00D6zelle\015Ftirilmi\015F raporlar\0131 kaydederseniz, Sat\0131r se\00E7icinin solundaki Arama \00E7ubu\011Funda bir Rapor se\00E7ici g\00F6r\00FCnt\00FClenir (bu \00F6zellik etkinle\015Ftirilmi\015Fse).</p>'),
''))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466673813027939)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Her rapor sayfas\0131n\0131n \00FCst k\0131sm\0131nda bir arama b\00F6lgesi bulunur. Bu b\00F6lge (veya Arama \00E7ubu\011Fu) a\015Fa\011F\0131daki \00F6zellikleri sa\011Flar:')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533019013027960)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'tr'
,p_message_text=>unistr('<li><strong>Eylemler Men\00FCs\00FC</strong> bir raporu \00F6zelle\015Ftirmenize olanak sa\011Flar. A\015Fa\011F\0131daki b\00F6l\00FCmlere bak\0131n.</li>')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532548490027959)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'tr'
,p_message_text=>unistr('<li><strong>S\00FCtunlar\0131 se\00E7 simgesi</strong>, hangi s\00FCtunu arayaca\011F\0131n\0131z\0131 (veya t\00FCm\00FCn\00FC) belirlemenizi sa\011Flar.</li>')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532886177027959)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'tr'
,p_message_text=>unistr('<li><strong>Raporlar</strong> alternatif \00F6nde\011Feri ve kaydedilmi\015F \00F6zel veya genel raporu g\00F6r\00FCnt\00FCler.</li>')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532776802027959)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('<li><strong>Sat\0131rlar</strong> sayfa ba\015F\0131na g\00F6r\00FCnt\00FClenecek kay\0131tlar\0131n say\0131s\0131n\0131 ayarlar.</li>')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532664658027959)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Metin alan\0131</strong>, b\00FCy\00FCk/k\00FC\00E7\00FCk harf duyars\0131z arama kriterlerini girmenizi sa\011Flar (joker karakterler dolayl\0131d\0131r).</li>'),
unistr('<li><strong>Git d\00FC\011Fmesi</strong> aramay\0131 y\00FCr\00FCt\00FCr. Enter tu\015Funa bas\0131ld\0131\011F\0131nda, imle\00E7 arama metni alan\0131nda oldu\011Funda arama da ger\00E7ekle\015Ftirilir.</li>')))
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532981962027960)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('<li><strong>G\00F6r\00FCn\00FCm Simgeleri</strong> tan\0131mlanm\0131\015Fsa, simge, rapor, detay, grafik, grup \00F6l\00E7\00FCt\00FC ve rapor \00F6zet g\00F6r\00FCn\00FCmleri aras\0131nda ge\00E7i\015F yapar.</li>')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466877722027939)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FClenen s\00FCtunlar\0131 de\011Fi\015Ftirmek i\00E7in kullan\0131l\0131r. Sa\011F ekrandaki s\00FCtunlar. Soldaki s\00FCtunlar gizlidir. En sa\011Fdaki oklar\0131 kullanarak g\00F6r\00FCnt\00FClenen s\00FCtunlar\0131 yeniden s\0131ralayabilirsiniz. Hesaplanan s\00FCtunlara <strong>**</strong> \00F6n eki yerle\015Ftirilir.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130467004996027940)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\00FCtunlar\0131 s\0131ralamak i\00E7in de\011Fi\015Ftirmek ve artan veya eksilen'),
unistr(' s\0131rayla s\0131ralan\0131p s\0131ralanmayaca\011F\0131n\0131 belirlemek i\00E7in kullan\0131l\0131r. Ayr\0131ca'),
unistr('<code>NULLs</code> kodunun nas\0131l kullan\0131laca\011F\0131n\0131 da belirtebilirsiniz. Ayar \00F6nde\011Feri <code>NULLs</code> kodlar\0131n\0131 her zaman en son veya her zaman ilk olarak g\00F6r\00FCnt\00FCler. Elde edilen s\0131ralama, rapordaki s\00FCtun'),
unistr('ba\015Fl\0131klar\0131n\0131n sa\011F\0131nda g\00F6r\00FCnt\00FClenir.</p>')))
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530111816027959)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir abonelik ekledi\011Finizde, bir e-posta adresi (veya virg\00FClle ayr\0131lm\0131\015F birden fazla e-posta adresi), e-posta konusu, s\0131kl\0131k ve ba\015Flang\0131\00E7 ve biti\015F tarihleri sa\011Flars\0131n\0131z. Ortaya \00E7\0131kan e-postalar, abonelik eklendi\011Finde mevcut olan rapor ayar\0131n\0131 kullanar')
||unistr('ak mevcut verileri i\00E7eren etkile\015Fimli raporun d\0131\015Fa aktar\0131lm\0131\015F bir s\00FCr\00FCm\00FCn\00FC (PDF, Excel, HTML veya CSV) i\00E7erir.')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471792127027941)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunu Gizle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462167242027938)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'tr'
,p_message_text=>'Vurgula'
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473291809027941)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'tr'
,p_message_text=>'Vurgulamalar'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443441008027932)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'tr'
,p_message_text=>unistr('H\00FCcreyi %0 %1 \00FCzerinde vurgula')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478313675027943)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'tr'
,p_message_text=>unistr('Vurgulama Ko\015Fulu')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443361509027932)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r\0131 %0 %1 \00FCzerinde vurgula')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530732236027959)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'tr'
,p_message_text=>'Vurgulama Stili'
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434997034027930)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Vurgulama T\00FCr\00FC')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549547214027965)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'tr'
,p_message_text=>'Yatay'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578508072027973)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'tr'
,p_message_text=>'1 etkin olmayan ayar'
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578605330027973)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>'%0 etkin olmayan ayar'
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468348613027940)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli Rapor Yard\0131m\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479376958027943)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472790252027941)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz hesaplama ifadesi .%0')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428307094027928)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Biti\015F tarihi ba\015Flang\0131\00E7 tarihinden b\00FCy\00FCk olmal\0131d\0131r.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487531656027946)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz filtre ifadesi. %0')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557392834027967)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz filtre sorgusu')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578776527027973)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'tr'
,p_message_text=>unistr('1 ge\00E7ersiz ayar')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578814001027973)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 ge\00E7ersiz ayar')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530951120027959)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'tr'
,p_message_text=>'(dakika olarak)'
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547930667027964)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son %1 i\00E7inde')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548192559027964)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sonraki %1 i\00E7inde')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548035758027964)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 son %1 i\00E7inde de\011Fil')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548284886027964)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 sonraki %1 i\00E7inde de\011Fil')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477451100027943)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'tr'
,p_message_text=>unistr('Tu\015F Tak\0131m\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441194756027932)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'tr'
,p_message_text=>'Etiket %0'
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471394989027941)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Etiket i\00E7in Eksen Ba\015Fl\0131\011F\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463605181027939)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Son G\00FCn')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463890773027939)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'tr'
,p_message_text=>'Son Saat'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463393344027938)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en Ay')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463417530027938)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en Hafta')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463513955027938)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('Son %0 G\00FCn')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463790167027939)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'tr'
,p_message_text=>'Son %0 Saat'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463190380027938)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en %0 Y\0131l')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463213127027938)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7en Y\0131l')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441020434027932)
,p_name=>'APEXIR_LINE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437899316027931)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'tr'
,p_message_text=>unistr('Alan\0131 Olan \00C7izgi')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557294744027967)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'tr'
,p_message_text=>unistr('E\015Fle')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472201868027941)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'tr'
,p_message_text=>unistr('Sorgunun izin verilen maksimum kaynaklar\0131 a\015Ft\0131\011F\0131 tahmin ediliyor.  L\00FCtfen rapor ayarlar\0131n\0131z\0131 de\011Fi\015Ftirin ve tekrar deneyin.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453678950027935)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu rapor i\00E7in maksimum sat\0131r say\0131s\0131 %0 sat\0131rd\0131r. L\00FCtfen sorgunuzdaki kay\0131tlar\0131n say\0131s\0131n\0131 azaltmak i\00E7in bir filtre uygulay\0131n.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557874784027967)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'tr'
,p_message_text=>'Maksimum %0'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558033170027967)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'tr'
,p_message_text=>'Orta %0'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400336591027919)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>'Mesaj'
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457966300027937)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 dakika \00F6nce')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557952240027967)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'tr'
,p_message_text=>'Minimum %0'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556916629027967)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'tr'
,p_message_text=>'Ay'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531339459027959)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'tr'
,p_message_text=>unistr('Ayl\0131k')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470583783027941)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ta\015F\0131')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470489648027941)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Ta\015F\0131')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583653181027975)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge Statik No, sayfa birden fazla etkile\015Fimli rapor i\00E7erdi\011Finden belirtilmelidir.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436591873027930)
,p_name=>'APEXIR_NAME'
,p_message_language=>'tr'
,p_message_text=>'Ad'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466273740027939)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Yeni Birle\015Ftirme')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579437128027973)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'tr'
,p_message_text=>'Yeni Kategori'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466396349027939)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'tr'
,p_message_text=>'Yeni Hesaplama'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461097561027938)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464166466027939)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki G\00FCn')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130463988213027939)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'tr'
,p_message_text=>'Sonraki Saat'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464479199027939)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'tr'
,p_message_text=>'Sonraki Ay'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464357999027939)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'tr'
,p_message_text=>'Sonraki Hafta'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464273304027939)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki %0 G\00FCn')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464095160027939)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'tr'
,p_message_text=>'Sonraki %0 Saat'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464647704027939)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki %0 Y\0131l')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464552608027939)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki Y\0131l')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436839590027930)
,p_name=>'APEXIR_NO'
,p_message_language=>'tr'
,p_message_text=>unistr('Hay\0131r')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479514712027943)
,p_name=>'APEXIR_NONE'
,p_message_language=>'tr'
,p_message_text=>unistr('- Hi\00E7biri -')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530571955027959)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli bir e-posta adresi de\011Fil.')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402617540027920)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FCleme i\00E7in s\00FCtun se\00E7ilmedi. S\00FCtunlar\0131 g\00F6r\00FCn\00FCr hale getirmek i\00E7in Eylemler Men\00FCs\00FCndeki <strong>S\00FCtunlar</strong> ba\011Flant\0131s\0131n\0131 kullan\0131n.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476061039027942)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015Flar Her Zaman \00D6nce')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475975397027942)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015Flar Her zaman En Son')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476447116027942)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015F S\0131ralama %0')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472821438027941)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'tr'
,p_message_text=>unistr('Flashback s\00FCresi say\0131sal olmal\0131d\0131r.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472439596027941)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ra say\0131sal olmal\0131.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476961575027943)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015Fle\00E7')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435433190027930)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'tr'
,p_message_text=>'turuncu'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549448695027964)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00F6nlendirme')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437391381027930)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'tr'
,p_message_text=>unistr('Di\011Fer')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403543267027920)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'tr'
,p_message_text=>'%0 sayfa numaralama'
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417539793027924)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa y\00F6n\00FC')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418206745027925)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'tr'
,p_message_text=>'Yatay'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418365552027925)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'tr'
,p_message_text=>'Dikey'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417449559027924)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'tr'
,p_message_text=>'Sayfa boyutu'
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418048743027925)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'tr'
,p_message_text=>'A3'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417922343027925)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'tr'
,p_message_text=>'A4'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418130357027925)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zel')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417700077027925)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'tr'
,p_message_text=>'Yasal'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417682032027924)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'tr'
,p_message_text=>'Mektup'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417871469027925)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'tr'
,p_message_text=>'Tabloid'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558335524027967)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'tr'
,p_message_text=>unistr('Toplam Say\0131 Y\00FCzdesi %0 (%)')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557574604027967)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'tr'
,p_message_text=>unistr('Toplam Y\00FCzdesi %0 (%)')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556525542027967)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Toplam Say\0131 Y\00FCzdesi')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556479664027967)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'tr'
,p_message_text=>unistr('Toplam Y\00FCzdesi')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440924443027932)
,p_name=>'APEXIR_PIE'
,p_message_language=>'tr'
,p_message_text=>'Pasta grafik'
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506607833027952)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508171200027952)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>'Toplam belirtilmelidir.'
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508333142027952)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r s\00FCtunu olarak se\00E7ilen bir s\00FCtunda birle\015Ftiremezsiniz.')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507508887027952)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet S\00FCtunlar')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507365258027952)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet S\00FCtunu %0')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507901345027952)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet s\00FCtunu belirtilmelidir.')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130360470420027907)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Bir \00D6zet sorgusu i\00E7in maksimum sat\0131r say\0131s\0131, g\00F6r\00FCnt\00FClenen sat\0131r say\0131s\0131n\0131 de\011Fil, temel sorgudaki sat\0131r say\0131s\0131n\0131 s\0131n\0131rlar. Temel sorgunuz maksimum %0 sat\0131r say\0131s\0131n\0131 a\015F\0131yor. L\00FCtfen temel sorgunuzdaki kay\0131t say\0131s\0131n\0131 azaltmak i\00E7in bir filtre uygulay\0131n.')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507840932027952)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet S\0131ralamas\0131')
,p_is_js_message=>true
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473864693027942)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zet s\00FCtun \00E7ok fazla farkl\0131 de\011Fer i\00E7eriyor - \00F6zet SQL olu\015Fturulam\0131yor.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404864000027921)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00F6zetleme g\00F6r\00FCn\00FCm\00FC')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530618446027959)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nizleme')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461138785027938)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130555477986027966)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'tr'
,p_message_text=>'Birincil'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531698637027959)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'tr'
,p_message_text=>'Birincil Rapor'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417354337027924)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Eri\015Filebilirlik Etiketlerini Dahil Et')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378168760027913)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('Zengin Metni Kald\0131r')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486506516027945)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zel')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441596450027932)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'tr'
,p_message_text=>'Genel'
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437156433027930)
,p_name=>'APEXIR_RED'
,p_message_language=>'tr'
,p_message_text=>unistr('k\0131rm\0131z\0131')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583555847027975)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge Statik No %0 mevcut de\011Fil.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470627501027941)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kald\0131r')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470767392027941)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Kald\0131r')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578990270027973)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafi\011Fi Kald\0131r')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470218070027941)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'tr'
,p_message_text=>unistr('Kontrol Kesmesini Kald\0131r')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469969152027940)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'tr'
,p_message_text=>unistr('Filtreyi Kald\0131r')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470009674027941)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'tr'
,p_message_text=>unistr('Flashback''i Kald\0131r')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579031313027973)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Grup \00D6l\00E7\00FCt\00FCn\00FC Kald\0131r')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470327936027941)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('Vurgulamay\0131 Kald\0131r')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579181884027973)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zeti Kald\0131r')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560289501027968)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Raporu Kald\0131r')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130542061690027962)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor \00D6nde\011Ferini Yeniden Adland\0131r')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479866990027944)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Raporu Yeniden Adland\0131r')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461424840027938)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'tr'
,p_message_text=>'Rapor'
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558415154027967)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'tr'
,p_message_text=>'Raporlar'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433693635027929)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 di\011Fer ad\0131yla kaydedilmi\015F Etkile\015Fimli rapor mevcut de\011Fil.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486891388027946)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor mevcut de\011Fil.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433709904027929)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('Kaydedilmi\015F Etkile\015Fimli Rapor Kimli\011Fi %0 mevcut de\011Fil.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478189561027943)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor Ayarlar\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402354571027920)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 rapor ayarlar\0131')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458426904027937)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor G\00F6r\00FCn\00FCm\00FC')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462657304027938)
,p_name=>'APEXIR_RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131f\0131rla')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441735550027932)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'tr'
,p_message_text=>unistr('Raporu ayar \00F6nde\011Ferine geri y\00FCkleyin.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436999551027930)
,p_name=>'APEXIR_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554520597027966)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'tr'
,p_message_text=>unistr('REST Veri Kayna\011F\0131 i\00E7in birincil anahtar s\00FCtun olarak ROWID kullanamazs\0131n\0131z.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469332298027940)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131rlar')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532303326027959)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r / Sayfa')
,p_is_js_message=>true
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507662922027952)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r S\00FCtunlar\0131')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507456036027952)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r S\00FCtunu %0')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508001080027952)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r s\00FCtunu belirtilmelidir.')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508279047027952)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r s\00FCtunu \00F6zet s\00FCtunundan farkl\0131 olmal\0131d\0131r.')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483864452027945)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Filtresi')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458545877027937)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r %0 / %1')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462881603027938)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r metni i\00E7erir')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436239835027930)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'tr'
,p_message_text=>'Kaydet'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473491549027942)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'tr'
,p_message_text=>'Kaydedilen Rapor'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473338897027942)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'tr'
,p_message_text=>'Kaydedilen Rapor= "%0"'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475538569027942)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli rapor ayarlar\0131, t\00FCm kullan\0131c\0131lar i\00E7in \00F6nde\011Fer olarak kullan\0131lacakt\0131r.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130541959182027962)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Varsay\0131lan Raporu Kaydet')
,p_is_js_message=>true
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462530334027938)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'tr'
,p_message_text=>'Raporu Kaydet'
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579376976027973)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'tr'
,p_message_text=>'Raporu Kaydet*'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533309995027960)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'tr'
,p_message_text=>'Ara'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468260066027940)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Arama \00C7ubu\011Fu')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130401672108027920)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 arama \00E7ubu\011Fu')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130579299846027973)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'tr'
,p_message_text=>'Ara: %0'
,p_is_js_message=>true
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538812415027961)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'tr'
,p_message_text=>'Arama Raporu'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130522846414027956)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('Se\00E7ilen S\00FCtunlar')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437995012027931)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('- S\00FCtun Se\00E7in -')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461864904027938)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtunlar\0131 Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441401399027932)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('- Fonksiyon Se\00E7in -')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469061303027940)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('- S\00FCtuna G\00F6re Grup Se\00E7 -')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507112937027952)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('- \00D6zet S\00FCtunu Se\00E7 -')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557447323027967)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Se\00E7')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507295510027952)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('- Sat\0131r S\00FCtunu Se\00E7 -')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130388731324027916)
,p_name=>'APEXIR_SEND'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6nder')
,p_is_js_message=>true
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411241161027923)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta olarak g\00F6nder')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436671850027930)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ra')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130462057623027938)
,p_name=>'APEXIR_SORT'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131rala')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471580322027941)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'tr'
,p_message_text=>unistr('Artan D\00FCzende S\0131rala')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471663763027941)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'tr'
,p_message_text=>unistr('Azalan D\00FCzende S\0131rala')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559665254027968)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ralama D\00FCzeni')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465974761027939)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'tr'
,p_message_text=>unistr('ara \00E7ubu\011Fu')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130477157108027943)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'tr'
,p_message_text=>unistr('Stat\00FC %0')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531030294027959)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'tr'
,p_message_text=>'Abonelik'
,p_is_js_message=>true
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556823323027967)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'tr'
,p_message_text=>unistr('Biti\015F')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130375888819027912)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'tr'
,p_message_text=>'Veri Bulunmazsa Atla'
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130556702312027967)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557651722027967)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'tr'
,p_message_text=>'Toplam %0'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548579010027964)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, Rapor %1, = G\00F6r\00FCn\00FCm= %2')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435507534027930)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'tr'
,p_message_text=>'Metin Rengi'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454224380027936)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('g\00FCnler')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454129258027936)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'tr'
,p_message_text=>'saatler'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454018592027936)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'tr'
,p_message_text=>'dakikalar'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454464177027936)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'tr'
,p_message_text=>'aylar'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454333593027936)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'tr'
,p_message_text=>'haftalar'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130454561470027936)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('y\0131llar')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560009799027968)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7i\015F Yap')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470818141027941)
,p_name=>'APEXIR_TOP'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DCst')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553583386027966)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Gruplanmam\0131\015F S\00FCtun')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472357484027941)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'tr'
,p_message_text=>unistr('Vurgulama Ad\0131 benzersiz olmal\0131d\0131r.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440244304027931)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('desteklenmeyen veri t\00FCr\00FC')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130470991342027941)
,p_name=>'APEXIR_UP'
,p_message_language=>'tr'
,p_message_text=>unistr('Yukar\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472571893027941)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen ge\00E7erli bir renk girin.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472658324027941)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen ge\00E7erli bir format maskesi girin.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130437469678027930)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471432464027941)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer i\00E7in Eksen Ba\015Fl\0131\011F\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479253920027943)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer Gerekli')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440877005027931)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Dikey S\00FCtun')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130549606245027965)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'tr'
,p_message_text=>'Dikey'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478598375027943)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafi\011Fi G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537123184027961)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'tr'
,p_message_text=>unistr('Detay\0131 G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581441555027974)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('Raporda tan\0131mlanm\0131\015F %0 g\00F6r\00FCn\00FCm yok.')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537244538027961)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Gruplama \00D6l\00E7\00FCt\00FCn\00FC G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537083604027961)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Simgeleri G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506900079027952)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zeti G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130478659680027943)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Raporu G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531218742027959)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'tr'
,p_message_text=>unistr('Haftal\0131k')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461361405027938)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7al\0131\015Fma Raporu')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559080425027967)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 g\00FCn')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558919969027967)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'tr'
,p_message_text=>'%0 saat'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130558831148027967)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'tr'
,p_message_text=>'%0 dakika'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559279215027967)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'tr'
,p_message_text=>'%0 ay'
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559149243027967)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'tr'
,p_message_text=>'%0 hafta'
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130559318193027967)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 y\0131l')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130557074810027967)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\0131l')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130435287538027930)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'tr'
,p_message_text=>unistr('sar\0131')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130436723619027930)
,p_name=>'APEXIR_YES'
,p_message_language=>'tr'
,p_message_text=>'Evet'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130471251045027941)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 ge\00E7ersiz karakterler olan < veya > i\00E7eriyor.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130495127274027948)
,p_name=>'APEX_REGION'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386203323027915)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('ZIP dosyas\0131 a\00E7\0131lamad\0131.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386104738027915)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Merkezi dizin sonu i\015Fareti bulunamad\0131. Bu dosya, bir ZIP dosyas\0131 de\011Fil.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130417225537027924)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'tr'
,p_message_text=>unistr('API \00F6n ko\015Fulu ihlal edildi')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439359210027931)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130li\015Fkili olu\015Fturma se\00E7ene\011Fi devre d\0131\015F\0131 b\0131rak\0131ld\0131\011F\0131 i\00E7in %0 Uygulama Ayar\0131 de\011Feri al\0131nam\0131yor.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439270339027931)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130li\015Fkili olu\015Fturma se\00E7ene\011Fi devre d\0131\015F\0131 b\0131rak\0131ld\0131\011F\0131 i\00E7in %0 Uygulama Ayar\0131 de\011Feri ayarlanam\0131yor.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551830551027965)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama Ayar\0131 %0 de\011Feri ge\00E7ersiz')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551787993027965)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130stenen Uygulama Ayar\0131 %0 tan\0131mlanmam\0131\015F')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130551905278027965)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama Ayar\0131 %0 bo\015F bir de\011Fere ayarlanamaz')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425842400027927)
,p_name=>'BACK'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408233306027922)
,p_name=>'BUILDER'
,p_message_language=>'tr'
,p_message_text=>unistr('Olu\015Fturucu')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481821430027944)
,p_name=>'BUTTON LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FC\011Fme Etiketi')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405111894027921)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FC\011Fme Basamakl\0131 Stil Sayfalar\0131 S\0131n\0131flar\0131')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443670042027932)
,p_name=>'BUTTON_ID'
,p_message_language=>'tr'
,p_message_text=>unistr('Olu\015Fturulan d\00FC\011Fme no, tan\0131ml\0131ysa d\00FC\011Fmenin Statik No''su olur. Tan\0131ml\0131 de\011Filse, ''B'' format\0131nda dahili olarak olu\015Fturulmu\015F bir no olur|| [Dahili D\00FC\011Fme No]')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377604093027912)
,p_name=>'CANDLESTICK'
,p_message_language=>'tr'
,p_message_text=>'Mum'
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491664377027947)
,p_name=>'CENTER'
,p_message_language=>'tr'
,p_message_text=>'Orta'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438204772027931)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \0130stek')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428260560027928)
,p_name=>'CHECK$'
,p_message_language=>'tr'
,p_message_text=>unistr('sat\0131r se\00E7ici')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130553604395027966)
,p_name=>'CHECKED'
,p_message_language=>'tr'
,p_message_text=>unistr('i\015Faretli')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530015686027959)
,p_name=>'COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487665904027946)
,p_name=>'COMMENTS'
,p_message_language=>'tr'
,p_message_text=>'Yorumlar'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468658259027940)
,p_name=>'CONTINUE'
,p_message_language=>'tr'
,p_message_text=>'Devam et'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426135534027927)
,p_name=>'COPYRIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('Telif hakk\0131 \00A9 1999, %0, Oracle ve/veya Oracle''a ba\011Fl\0131 kurulu\015Flar.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474319198027942)
,p_name=>'COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Say\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481312042027944)
,p_name=>'CREATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Olu\015Ftur')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536749559027961)
,p_name=>'CREATED'
,p_message_language=>'tr'
,p_message_text=>unistr('Olu\015Fturuldu')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536862278027961)
,p_name=>'CREATED_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Olu\015Fturan')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457794478027937)
,p_name=>'CREATED_ON'
,p_message_language=>'tr'
,p_message_text=>unistr('Olu\015Fturma Tarihi')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468805968027940)
,p_name=>'CUSTOM'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zel')
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480078835027944)
,p_name=>'CUSTOMIZE'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6zelle\015Ftir')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482030590027944)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 kullan\0131c\0131s\0131 i\00E7in sayfa tercihleri s\0131f\0131rland\0131.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482192411027944)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 kullan\0131c\0131s\0131 i\00E7in tercihler de\011Fi\015Ftirildi.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481949585027944)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 kullan\0131c\0131s\0131 i\00E7in sayfa tercihleri s\0131f\0131rland\0131.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443090985027932)
,p_name=>'DAILY'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCnl\00FCk')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406419300027921)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kar\015F\0131ya y\00FCklenen dosya ge\00E7ersiz veya yanl\0131\015F dosya uzant\0131s\0131na sahip.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438472140027931)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz XML veya JSON se\00E7ici kullan\0131ld\0131.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383530788027914)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri profili ve y\00FCklenen dosya herhangi bir hedef tablo s\00FCtunu i\00E7ermez.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497470010027949)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCklenen dosyada herhangi bir veri bulunamad\0131.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497574316027949)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0"\00E7al\0131\015Fma sayfas\0131nda herhangi bir veri bulunamad\0131.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403355695027920)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Belirtilen dosya XLSX dosyas\0131 de\011Fil.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130369333836027910)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri y\00FCkleme tamamland\0131: %0 sat\0131r i\015Flendi.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371666357027911)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri y\00FCkleme tamamland\0131: %0 sat\0131r 1 hatayla i\015Flendi.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371953450027911)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri y\00FCkleme tamamland\0131: %0 sat\0131r %1 hatas\0131yla i\015Flendi.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371791317027911)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri y\00FCkleme tamamland\0131: 1 sat\0131r i\015Flendi.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386034592027915)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri y\00FCkleme tamamland\0131: 1 sat\0131r hata ile i\015Flendi.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130371882100027911)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri y\00FCkleme tamamland\0131: 1 sat\0131r hatas\0131z i\015Flendi.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504544810027951)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'tr'
,p_message_text=>unistr('Hedef S\00FCtun')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411783909027923)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCkleme Yapma')
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411888871027923)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6n i\015Fleme hatas\0131')
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504628785027951)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'tr'
,p_message_text=>unistr('Kaynak S\00FCtun')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505421169027951)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'tr'
,p_message_text=>unistr('Tarih / Say\0131 Format\0131')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411589189027923)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r ekle')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567688598027970)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('Arama de\011Feri geri al\0131namad\0131.')
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130537398259027961)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya / Tablo E\015Fleme')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505564807027951)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411972069027923)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'tr'
,p_message_text=>unistr('S\0131ra Eylemi')
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499272785027949)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00F6n\00FC\015F\00FCm kural\0131 ba\015Far\0131s\0131z oldu')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411619267027923)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r\0131 g\00FCncelle')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130473933619027942)
,p_name=>'DATE'
,p_message_language=>'tr'
,p_message_text=>'Tarih'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446812002027933)
,p_name=>'DAY'
,p_message_language=>'tr'
,p_message_text=>unistr('g\00FCn')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446946213027933)
,p_name=>'DAYS'
,p_message_language=>'tr'
,p_message_text=>unistr('g\00FCnler')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487386427027946)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu uygulama i\00E7in hata ay\0131klama etkin de\011Fil.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130539037790027961)
,p_name=>'DEFAULT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nde\011Fer')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447662997027934)
,p_name=>'DELETE'
,p_message_language=>'tr'
,p_message_text=>'sil'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423251701027926)
,p_name=>'DELETE_MSG'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu silme eylemini ger\00E7ekle\015Ftirmek istiyor musunuz?')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130402872404027920)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum Ge\00E7ersiz K\0131lmalar')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403776273027920)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum Ge\00E7ersiz K\0131lmalar\0131 Etkinle\015Ftir')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404657546027921)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum ge\00E7ersiz k\0131lmalar y\00FCklenirken bir hata olu\015Ftu.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404482141027920)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum ge\00E7ersiz k\0131lmalar kaydedilirken bir hata olu\015Ftu.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130404378039027920)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum ge\00E7ersiz k\0131lmalar kaydedildi. De\011Fi\015Fiklikleri g\00F6rmek i\00E7in bu ileti\015Fim kutusunu kapat\0131n.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130377501646027912)
,p_name=>'DIAL_PCT'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6sterge Grafi\011Fi (Y\00FCzde)')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130418523518027925)
,p_name=>'DOWNLOAD'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130ndir')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538196240027961)
,p_name=>'DUP_USER'
,p_message_language=>'tr'
,p_message_text=>unistr('Listede Tekrarlanan Kullan\0131c\0131 Ad\0131.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426942247027927)
,p_name=>'EDIT'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenle')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438116323027931)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" e-posta adresi bulunamad\0131.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420803419027925)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu e-posta %0 taraf\0131ndan g\00F6nderildi.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538339937027961)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta adresi \00E7ok uzun. S\0131n\0131r 240 karakterdir.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468564852027940)
,p_name=>'ERROR'
,p_message_language=>'tr'
,p_message_text=>'Hata'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499361818027949)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'tr'
,p_message_text=>unistr('K\0131smi sayfa yenileme b\00F6lgesi i\00E7in sayfa \00F6\011Fesi kaynak de\011Feri ayarlanamad\0131')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459841545027937)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('Olu\015Fturan')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421129919027926)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('Parolan\0131n S\00FCresi Doldu')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413513200027923)
,p_name=>'FILE_EMPTY'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya bo\015F.')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503370039027951)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCklenen dosyan\0131n boyutu %0 MB''\0131n \00FCzerindeydi. L\00FCtfen daha k\00FC\00E7\00FCk bir dosya y\00FCkleyin.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423487331027926)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 kimlik do\011Frulamas\0131 ba\015Far\0131s\0131z oldu ve bir veya daha fazla dosya y\00FCklenemedi.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423567816027926)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu an, kimli\011Fi do\011Frulanmam\0131\015F kullan\0131c\0131lar\0131n dosya y\00FCklemesine izin vermez.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503483987027951)
,p_name=>'FILTERS'
,p_message_language=>'tr'
,p_message_text=>'Filtreler'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481464411027944)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('1 hata olu\015Ftu')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480651758027944)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 hata olu\015Ftu')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426088473027927)
,p_name=>'FORM_OF'
,p_message_language=>'tr'
,p_message_text=>'%0 / %1'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465008720027939)
,p_name=>'GO'
,p_message_language=>'tr'
,p_message_text=>'Git'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567292283027970)
,p_name=>'HELP'
,p_message_language=>'tr'
,p_message_text=>unistr('Yard\0131m')
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408353211027922)
,p_name=>'HOME'
,p_message_language=>'tr'
,p_message_text=>unistr('Giri\015F')
,p_is_js_message=>true
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446603054027933)
,p_name=>'HOUR'
,p_message_language=>'tr'
,p_message_text=>'saat'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446766709027933)
,p_name=>'HOURS'
,p_message_language=>'tr'
,p_message_text=>'saatler'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130428102396027928)
,p_name=>'ICON'
,p_message_language=>'tr'
,p_message_text=>'Simge%0'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405475110027921)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'tr'
,p_message_text=>unistr('Simge K\0131rpma Yard\0131m\0131')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406644884027921)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Simgenizi \00E7er\00E7evede yeniden konumland\0131rmak i\00E7in s\00FCr\00FCkleyin ve yak\0131nla\015Ft\0131rma kayd\0131r\0131c\0131s\0131n\0131 kullan\0131n.</p>'),
'',
unistr('<p>Yeni bir simge y\00FCklenirken, \00FC\00E7 formata uygun olacak \015Fekilde yeniden boyutland\0131r\0131l\0131r: s\0131k kullan\0131lan, k\00FC\00E7\00FCk ve b\00FCy\00FCk simge.</p>'),
'',
unistr('<p>Simge k\0131rp\0131c\0131da odaklan\0131ld\0131\011F\0131nda \015Fu klavye k\0131sa yollar\0131 kullan\0131labilir:</p>'),
'<ul>',
unistr('    <li>Sol Ok: G\00F6r\00FCnt\00FCy\00FC sola ta\015F\0131*</li>'),
unistr('    <li>Yukar\0131 Ok: G\00F6r\00FCnt\00FCy\00FC yukar\0131 ta\015F\0131*</li>'),
unistr('    <li>Sa\011F Ok: G\00F6r\00FCnt\00FCy\00FC sa\011Fa ta\015F\0131*</li>'),
unistr('    <li>A\015Fa\011F\0131 Ok: G\00F6r\00FCnt\00FCy\00FC a\015Fa\011F\0131 ta\015F\0131*</li>'),
unistr('    <li>I: Yak\0131nla\015Ft\0131r</li>'),
unistr('    <li>O: Uzakla\015Ft\0131r</li>'),
unistr('    <li>L: Sola d\00F6nd\00FCr</li>'),
unistr('    <li>R: Sa\011Fa d\00F6nd\00FCr</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Daha h\0131zl\0131 ta\015F\0131mak i\00E7in Shift tu\015Funa bas\0131n</em></p>')))
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412112950027923)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Simgeyi yeniden konumland\0131rmak i\00E7in s\00FCr\00FCkleyin')
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412235086027923)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Yak\0131nla\015Ft\0131rma d\00FCzeyini d\00FCzeltmek i\00E7in kayd\0131r\0131c\0131y\0131 ta\015F\0131y\0131n')
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405243756027921)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama Simgesini D\00FCzenle')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405543962027921)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'tr'
,p_message_text=>unistr('Simge kaydedilirken hata olu\015Ftu')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487949795027946)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'tr'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> Bu uygulama eski simgeleri kullan\0131yor. Yeni bir simgenin y\00FCklenmesi t\00FCm eski simgeleri de de\011Fi\015Ftirir.</p>')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130406147644027921)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'tr'
,p_message_text=>unistr('Yeni bir simge y\00FCkleyin')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482369910027944)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz Oturum A\00E7ma Kimlik Bilgileri')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583474514027975)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'tr'
,p_message_text=>unistr('Parametre i\00E7in ge\00E7ersiz de\011Fer: %0')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476693706027943)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor Ayar\0131 \00D6nde\011Ferleri Olarak')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476744562027943)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Adland\0131r\0131lm\0131\015F Rapor Olarak')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458636826027937)
,p_name=>'IR_ERROR'
,p_message_language=>'tr'
,p_message_text=>'%0 hata. %1'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458324257027937)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Form gezinmesi hesaplanam\0131yor .%0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433911692027929)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli rapor bulunamad\0131.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433378312027929)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('Etkile\015Fimli rapor b\00F6lgesi %0, sayfa %1 ve b\00F6lge %2 uygulamas\0131nda yok.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130476586253027943)
,p_name=>'IR_STAR'
,p_message_language=>'tr'
,p_message_text=>unistr('Yaln\0131zca geli\015Ftiriciler i\00E7in g\00F6r\00FCnt\00FClenir')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464752263027939)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor sorgusunun her sat\0131r\0131 tan\0131mlamak i\00E7in benzersiz bir anahtara ihtiyac\0131 vard\0131r. Verilen anahtar bu sorguda kullan\0131lamaz. L\00FCtfen benzersiz bir anahtar s\00FCtun tan\0131mlay\0131n .%0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130464841292027939)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor sorgusunun her sat\0131r\0131 tan\0131mlamak i\00E7in benzersiz bir anahtara ihtiyac\0131 vard\0131r. Verilen anahtar bu sorguda kullan\0131lamaz. L\00FCtfen benzersiz bir anahtar s\00FCtun tan\0131mlamak i\00E7in rapor \00F6zniteliklerini d\00FCzenleyin. %0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505754403027951)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosya Se\00E7')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505613687027951)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'tr'
,p_message_text=>unistr('Dosyay\0131 buraya s\00FCr\00FCkleyip b\0131rak\0131n veya')
,p_is_js_message=>true
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426336660027927)
,p_name=>'ITEMS'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Feler')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460025135027937)
,p_name=>'ITEM_VALUE'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Fe De\011Feri')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474627609027942)
,p_name=>'LABEL'
,p_message_language=>'tr'
,p_message_text=>'Etiket'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487279175027946)
,p_name=>'LANGUAGE'
,p_message_language=>'tr'
,p_message_text=>'Dil'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447394311027934)
,p_name=>'LAST'
,p_message_language=>'tr'
,p_message_text=>'son'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423373569027926)
,p_name=>'LENGTH'
,p_message_language=>'tr'
,p_message_text=>'Uzunluk'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481655417027944)
,p_name=>'LOGIN'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum A\00E7')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523280816027957)
,p_name=>'MANAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00F6net')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130586335023027976)
,p_name=>'MAXIMIZE'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00FCy\00FCt')
,p_is_js_message=>true
,p_version_scn=>2693699
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446415702027933)
,p_name=>'MINUTE'
,p_message_language=>'tr'
,p_message_text=>'dakika'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446544586027933)
,p_name=>'MINUTES'
,p_message_language=>'tr'
,p_message_text=>'dakikalar'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538580161027961)
,p_name=>'MISSING_AT'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta Adresi etki alan\0131nda "@" eksik.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538753833027961)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'tr'
,p_message_text=>unistr('Uyar\0131 :%1 uygulamas\0131nda %0 ileti\015Fim sayfas\0131 i\00E7in hi\00E7bir \0130leti\015Fim Sayfas\0131 \015Fablonu tan\0131mlanmad\0131.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538410326027961)
,p_name=>'MISSING_DOT'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta Adresi etki alan\0131nda "." eksik.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484782290027945)
,p_name=>'MODULE'
,p_message_language=>'tr'
,p_message_text=>unistr('Mod\00FCl')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438911657027931)
,p_name=>'MONTH'
,p_message_language=>'tr'
,p_message_text=>'Ay'
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442866227027932)
,p_name=>'MONTHLY'
,p_message_language=>'tr'
,p_message_text=>unistr('Ayl\0131k')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439019328027931)
,p_name=>'MONTHS'
,p_message_language=>'tr'
,p_message_text=>'aylar'
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474271685027942)
,p_name=>'MOVE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ta\015F\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545073002027963)
,p_name=>'MOVE_FROM'
,p_message_language=>'tr'
,p_message_text=>unistr('Buradan ta\015F\0131')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545114037027963)
,p_name=>'MOVE_TO'
,p_message_language=>'tr'
,p_message_text=>unistr('Buraya ta\015F\0131')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130461243506027938)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7oklu sat\0131r silme i\015Fleminde hata: sat\0131r=%0 ,%1 ,%2')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460226542027937)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'tr'
,p_message_text=>unistr('Genel Kullan\0131c\0131 Olmamal\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408876496027922)
,p_name=>'NAME'
,p_message_language=>'tr'
,p_message_text=>'Ad'
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474425375027942)
,p_name=>'NEW'
,p_message_language=>'tr'
,p_message_text=>'Yeni'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438770331027931)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Euraya giderek %0 adresinde oturum a\00E7abilirsiniz:')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438839642027931)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'tr'
,p_message_text=>'Yeni %0 Hesap Bildirimi'
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567458668027970)
,p_name=>'NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484639427027945)
,p_name=>'NO'
,p_message_language=>'tr'
,p_message_text=>unistr('Hay\0131r')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130581588164027974)
,p_name=>'NOBODY'
,p_message_language=>'tr'
,p_message_text=>unistr('hi\00E7 kimse')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447751350027934)
,p_name=>'NOT'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fil')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490658941027947)
,p_name=>'NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('Bo\015F De\011Fildir')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460394797027937)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 De\011Fil')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480189840027944)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('veri bulunamad\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490104850027947)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCncellenebilir rapor bulunamad\0131. \00C7oklu sat\0131r g\00FCncelleme ve silme i\015Flemleri yaln\0131zca ''G\00FCncellenebilir Rapor'' t\00FCr\00FCndeki tablo bi\00E7imlerinde ger\00E7ekle\015Ftirilebilir.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491054942027947)
,p_name=>'OK'
,p_message_language=>'tr'
,p_message_text=>'Tamam'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486374774027945)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'tr'
,p_message_text=>'Oracle Application Express (APEX)'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130585284147027975)
,p_name=>'ORA_06550'
,p_message_language=>'tr'
,p_message_text=>unistr('ORA-06550: sat\0131r %0, s\00FCtun %1')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536137577027960)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'tr'
,p_message_text=>unistr('Eski bir web taray\0131c\0131s\0131 kullan\0131yorsunuz. Desteklenen taray\0131c\0131lar\0131n listesi i\00E7in l\00FCtfen Oracle Application Express (APEX) Y\00FCkleme K\0131lavuzu''na ba\015Fvurun.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431154604027929)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz sat\0131r k\00FCmesi istendi, raporun kaynak verileri de\011Fi\015Ftirildi.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453156812027935)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli bir sayfa numaras\0131 belirtilmelidir, \00F6rne\011Fin p?n=1234.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457330800027937)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130leri')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457482197027937)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonraki K\00FCme')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457510373027937)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130457656846027937)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nceki K\00FCme')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567317711027970)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa Numaralamay\0131 Se\00E7')
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497322806027949)
,p_name=>'PASSWORD'
,p_message_language=>'tr'
,p_message_text=>'Parola'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438068588027931)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7in parolan\0131z de\011Fi\015Ftirildi.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425754327027927)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola, bu sitenin parola zorluk d\00FCzeyi kurallar\0131na uymuyor.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424882519027927)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Yeni parolan\0131n eski parolaya g\00F6re en az %0 karakteri farkl\0131 olmal\0131d\0131r.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425474448027927)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola kullan\0131c\0131 ad\0131 i\00E7ermemelidir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425679629027927)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola yasaklanm\0131\015F basit bir s\00F6zc\00FCk i\00E7eriyor.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425527505027927)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola, \00E7al\0131\015Fma alan\0131 ad\0131 i\00E7ermemelidir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424715261027927)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola en az %0 karakter uzunlu\011Funda olmal\0131d\0131r.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424976913027927)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola en az bir alfabetik karakter (%0) i\00E7ermelidir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425387732027927)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola en az bir k\00FC\00E7\00FCk harf i\00E7ermelidir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425086687027927)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola en az bir say\0131sal karakter (0123456789) i\00E7ermelidir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425112643027927)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola en az bir noktalama karakteri (%0) i\00E7ermelidir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425252701027927)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola en az bir b\00FCy\00FCk harf i\00E7ermelidir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438598031027931)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola S\0131f\0131rlama Bildirimi')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423632608027926)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Parola son %0 g\00FCn i\00E7inde kullan\0131ld\0131\011F\0131 i\00E7in kullan\0131lamaz.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420385371027925)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCzde Grafik')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130511965841027953)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Feler')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130512069848027953)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Fe')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486166600027945)
,p_name=>'PERCENT'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCzde')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455419779027936)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'tr'
,p_message_text=>unistr('L\00FCtfen y\00F6netici ile ileti\015Fime ge\00E7in.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567565814027970)
,p_name=>'PREVIOUS'
,p_message_language=>'tr'
,p_message_text=>'Geri'
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504158861027951)
,p_name=>'PRINT'
,p_message_language=>'tr'
,p_message_text=>unistr('Yazd\0131r')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484926733027945)
,p_name=>'PRIVILEGES'
,p_message_language=>'tr'
,p_message_text=>'Yetkiler'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453582774027935)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge Ba\015Fvurular\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474505883027942)
,p_name=>'REPORT'
,p_message_language=>'tr'
,p_message_text=>'Rapor'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484804357027945)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'tr'
,p_message_text=>unistr('Raporlama D\00F6nemi')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567740844027970)
,p_name=>'REPORT_LABEL'
,p_message_language=>'tr'
,p_message_text=>'Rapor: %0'
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485525978027945)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor Toplam\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130431269722027929)
,p_name=>'RESET'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa Numaralamay\0131 S\0131f\0131rla')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459917231027937)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa Numaralamay\0131 S\0131f\0131rla')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490002053027947)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'tr'
,p_message_text=>unistr('Parolay\0131 S\0131f\0131rla')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465857892027939)
,p_name=>'RESTORE'
,p_message_language=>'tr'
,p_message_text=>unistr('Geri Y\00FCkle')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130499425946027949)
,p_name=>'RESULTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Sonu\00E7lar')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491159709027947)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulamaya geri d\00F6n.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130491561024027947)
,p_name=>'RIGHT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sa\011F')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523570408027957)
,p_name=>'ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r %0')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474114258027942)
,p_name=>'ROW_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Say\0131s\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363962056027908)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'tr'
,p_message_text=>'Oracle''a Sor'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364201196027908)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Oracle''a Sor Arac\0131n\0131 Kapat')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364582215027909)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'tr'
,p_message_text=>'Bildirim Listesi'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364155153027908)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Oracle''a Sor Arac\0131n\0131 A\00E7')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364425186027909)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DCr\00FCn Haritas\0131')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364349013027909)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6neri Listesi')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365266718027909)
,p_name=>'RW_CLEAR'
,p_message_language=>'tr'
,p_message_text=>'Temizle'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365140123027909)
,p_name=>'RW_CLOSE'
,p_message_language=>'tr'
,p_message_text=>'Kapat'
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364929053027909)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'tr'
,p_message_text=>unistr('Daha Fazla G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365366137027909)
,p_name=>'RW_GO_TO'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Euraya gidin:')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364720299027909)
,p_name=>'RW_GP_STEP'
,p_message_language=>'tr'
,p_message_text=>unistr('Ad\0131m')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364814448027909)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'tr'
,p_message_text=>'/'
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130364605878027909)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'tr'
,p_message_text=>unistr('Ad\0131mlar\0131n g\00F6r\00FCnt\00FClenmesini a\00E7/kapat')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363701673027908)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'tr'
,p_message_text=>unistr('Parolay\0131 Gizle')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365054497027909)
,p_name=>'RW_OPEN'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363537719027908)
,p_name=>'RW_ORACLE'
,p_message_language=>'tr'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130363636724027908)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'tr'
,p_message_text=>unistr('Parolay\0131 G\00F6ster')
,p_is_js_message=>true
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130365486028027909)
,p_name=>'RW_START'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7')
,p_is_js_message=>true
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130490501138027947)
,p_name=>'SAVE'
,p_message_language=>'tr'
,p_message_text=>'Kaydet'
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486754061027946)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'tr'
,p_message_text=>unistr('Alternatif \00D6nde\011Fer')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487193454027946)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'tr'
,p_message_text=>unistr('A\00E7\0131klama')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486647197027946)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'tr'
,p_message_text=>unistr('Birincil \00D6nde\011Fer')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487432723027946)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'tr'
,p_message_text=>unistr('%0''dan fazla sat\0131r kullan\0131labilir. Daha fazla sat\0131r g\00F6r\00FCnt\00FClemek i\00E7in sat\0131r se\00E7iciyi art\0131r\0131n.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554868438027966)
,p_name=>'SEARCH'
,p_message_language=>'tr'
,p_message_text=>'Ara'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446365552027933)
,p_name=>'SECONDS'
,p_message_language=>'tr'
,p_message_text=>'saniye'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486212687027945)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'tr'
,p_message_text=>unistr('Eke bak\0131n')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130546862430027964)
,p_name=>'SELECT_ROW'
,p_message_language=>'tr'
,p_message_text=>unistr('Sat\0131r Se\00E7')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485950389027945)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'tr'
,p_message_text=>unistr('Ekran Okuyucu Modunu Kapal\0131 Olarak Ayarla')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486043226027945)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'tr'
,p_message_text=>unistr('Ekran Okuyucu Modunu A\00E7\0131k Olarak Ayarla')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482255898027944)
,p_name=>'SHOW'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6ster')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548613098027964)
,p_name=>'SHOW_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC G\00F6ster')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130573409642027972)
,p_name=>'SIGN_IN'
,p_message_language=>'tr'
,p_message_text=>unistr('Oturum A\00E7')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130524393776027957)
,p_name=>'SIGN_OUT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7\0131k\0131\015F')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475169716027942)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 g\00FCn \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482716826027944)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eu andan itibaren %0 g\00FCn')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475094141027942)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 saat \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482661557027944)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eu andan itibaren %0 saat')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474931660027942)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 dakika \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482536401027944)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eu andan itibaren %0 dakika')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475366630027942)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 ay \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482910106027944)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eu andan itibaren %0 ay')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483103137027944)
,p_name=>'SINCE_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eimdi')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474800052027942)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 saniye \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482448340027944)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eu andan itibaren %0 saniye')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475239161027942)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 hafta \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130482801337027944)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eu andan itibaren %0 hafta')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130475413024027942)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 y\0131l \00F6nce')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483003863027944)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\015Eu andan itibaren %0 y\0131l')
,p_is_js_message=>true
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468979604027940)
,p_name=>'STANDARD'
,p_message_language=>'tr'
,p_message_text=>'Standart'
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485812089027945)
,p_name=>'START_DATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Flang\0131\00E7 Tarihi')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421071655027925)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 taraf\0131ndan olu\015Fturulan Etkile\015Fimli rapor aboneli\011Finden bu e-postay\0131 al\0131yorsunuz.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582658117027974)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'tr'
,p_message_text=>'Abonelikler'
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130532028123027959)
,p_name=>'TAB'
,p_message_language=>'tr'
,p_message_text=>'Sekme'
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446295266027933)
,p_name=>'TITLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Fl\0131k')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130425909179027927)
,p_name=>'TODAY'
,p_message_language=>'tr'
,p_message_text=>unistr('Bug\00FCn')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485433651027945)
,p_name=>'TOTAL'
,p_message_language=>'tr'
,p_message_text=>'Toplam'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427280702027927)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'tr'
,p_message_text=>unistr('Maksimum %0 s\00FCtun se\00E7ilebilir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383006284027914)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Daralt')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383609233027914)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'tr'
,p_message_text=>unistr('Alttakilerin T\00FCm\00FCn\00FC Daralt')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382663566027914)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC Geni\015Flet')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383318695027914)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'tr'
,p_message_text=>unistr('Alttakilerin T\00FCm\00FCn\00FC Geni\015Flet')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383865794027914)
,p_name=>'TREE.REPARENT'
,p_message_language=>'tr'
,p_message_text=>unistr('Yeniden \00DCst \00D6\011Fe Ata')
,p_is_js_message=>true
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505931772027951)
,p_name=>'TREES'
,p_message_language=>'tr'
,p_message_text=>unistr('A\011Fa\00E7lar')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130548711782027964)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'tr'
,p_message_text=>'Gerekli'
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130469684368027940)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>'Yetkisiz'
,p_version_scn=>2693681
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130519853171027956)
,p_name=>'UNAVAILABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131lamaz')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483597282027945)
,p_name=>'UNKNOWN'
,p_message_language=>'tr'
,p_message_text=>'Bilinmeyen'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130421912805027926)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Tan\0131nmayan bir kimlik do\011Frulama hatas\0131 olu\015Ftu.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424112413027926)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'tr'
,p_message_text=>unistr('Art\0131k e-posta almak istemiyorsan\0131z, l\00FCtfen aboneli\011Finizi y\00F6netmek i\00E7in <a href="%0">abonelikten \00E7\0131k</a> \00F6\011Fesine t\0131klay\0131n.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130420990263027925)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'tr'
,p_message_text=>unistr('Art\0131k e-posta almak istemiyorsan\0131z aboneli\011Finizi y\00F6netmek i\00E7in l\00FCtfen a\015Fa\011F\0131daki URL''ye gidin:')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130460412158027938)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('desteklenmeyen veri t\00FCr\00FC')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447552132027934)
,p_name=>'UPDATE'
,p_message_language=>'tr'
,p_message_text=>unistr('g\00FCncelle')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130446116390027933)
,p_name=>'UPDATED'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCncellendi')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389337990027916)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCkseltme Devam Ediyor')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130389667143027916)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'tr'
,p_message_text=>unistr('Oracle APEX yeni s\00FCr\00FCme y\00FCkseltiliyor. Bu i\015Flem genellikle 3 dakikaya kadar s\00FCrebilir.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452905993027935)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130stenen URL yasakland\0131. Y\00F6neticinizle ileti\015Fime ge\00E7in.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130474043085027942)
,p_name=>'USER'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130497216845027949)
,p_name=>'USERNAME'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 Ad\0131')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538630305027961)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 ad\0131 \00E7ok uzun. Limit %0 karakterdir.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481123320027944)
,p_name=>'USERS'
,p_message_language=>'tr'
,p_message_text=>unistr('kullan\0131c\0131lar')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130538282536027961)
,p_name=>'USER_EXISTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 ad\0131 zaten mevcut.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130552006937027965)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 kullan\0131c\0131s\0131 i\00E7in profil resmi')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130413995460027923)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'tr'
,p_message_text=>'Otomasyon - %0'
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412494041027923)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'tr'
,p_message_text=>'Sayfa %0 - %1 '
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415330826027924)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'tr'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130415415779027924)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'tr'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414328250027923)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'tr'
,p_message_text=>unistr('Arama Konfig\00FCrasyonu - %0')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414207275027923)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'tr'
,p_message_text=>unistr('Payla\015F\0131lan Dinamik De\011Ferler Listesi - %0')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130414001099027923)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rev Tan\0131m\0131 - %0')
,p_version_scn=>2693672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412570582027923)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130\015F Ak\0131\015F\0131 - %0 ')
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434600439027930)
,p_name=>'VALID'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426266626027927)
,p_name=>'VALIDATIONS'
,p_message_language=>'tr'
,p_message_text=>unistr('Do\011Frulamalar')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486984783027946)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer belirtilmelidir')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533249394027960)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer %0 i\00E7in belirtilmelidir')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455808852027936)
,p_name=>'VERTICAL'
,p_message_language=>'tr'
,p_message_text=>'dikey'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447407309027934)
,p_name=>'VIEW'
,p_message_language=>'tr'
,p_message_text=>unistr('g\00F6r\00FCnt\00FCle')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130481237547027944)
,p_name=>'VIEWS'
,p_message_language=>'tr'
,p_message_text=>unistr('g\00F6r\00FCn\00FCmler')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487778765027946)
,p_name=>'VIEW_ALL'
,p_message_language=>'tr'
,p_message_text=>unistr('T\00FCm\00FCn\00FC G\00F6r\00FCnt\00FCle')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427697231027927)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6rsel olarak sakl\0131 ba\011Flant\0131')
,p_is_js_message=>true
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130468421992027940)
,p_name=>'WARNING'
,p_message_language=>'tr'
,p_message_text=>unistr('Uyar\0131')
,p_is_js_message=>true
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447017253027933)
,p_name=>'WEEK'
,p_message_language=>'tr'
,p_message_text=>'hafta'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442907104027932)
,p_name=>'WEEKLY'
,p_message_language=>'tr'
,p_message_text=>unistr('Haftal\0131k')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447159569027933)
,p_name=>'WEEKS'
,p_message_language=>'tr'
,p_message_text=>'haftalar'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130487011980027946)
,p_name=>'WELCOME_USER'
,p_message_language=>'tr'
,p_message_text=>unistr('Ho\015F Geldiniz: %0')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485273568027945)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz de\011Fer bulundu, l\00FCtfen girilen verileri do\011Frulay\0131n.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485384332027945)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz de\011Fer bulundu, l\00FCtfen girilen verileri do\011Frulay\0131n.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423103530027926)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz tarih de\011Feri bulundu, l\00FCtfen tarih format\0131n\0131 do\011Frulay\0131n.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130485159405027945)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz say\0131 de\011Feri bulundu, l\00FCtfen say\0131 format\0131n\0131 do\011Frulay\0131n.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434263560027929)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz zaman damgas\0131 de\011Feri bulundu, l\00FCtfen zaman damgas\0131 format\0131n\0131 do\011Frulay\0131n.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130458736431027937)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" ba\011Flanam\0131yor. \00C7oklu bayt \00F6\011Feleri i\00E7in \00E7ift t\0131rnak i\015Fareti kullan\0131n veya \00F6\011Fenin uzunlu\011Funun 30 bayt veya daha az oldu\011Funu do\011Frulay\0131n. 30 bayttan uzun \00F6\011Felere ba\015Fvurmak i\00E7in v() s\00F6zdizimini kullan\0131n.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448598025027934)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'tr'
,p_message_text=>unistr('Eri\015Fim %0 g\00FCvenlik kontrol\00FC taraf\0131ndan reddedildi')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451030330027935)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama Kullan\0131lam\0131yor')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449443509027934)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama bulunamad\0131.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449593605027934)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('uygulama=%0 \00E7al\0131\015Fma alan\0131=%1')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449963368027934)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu uygulamaya eri\015Fim s\0131n\0131rl\0131d\0131r, l\00FCtfen daha sonra tekrar deneyin.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449887318027934)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu uygulamaya eri\015Fim uygulama geli\015Ftiricileri ile s\0131n\0131rl\0131d\0131r, l\00FCtfen daha sonra tekrar deneyin.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449050858027934)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-7744 Fonksiyona dalland\0131rma d\00F6n\00FC\015F URL''si i\015Flenemiyor.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448966813027934)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-7744 Fonksiyona dalland\0131rma d\00F6n\00FC\015F sayfas\0131 i\015Flenemiyor.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449294147027934)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1430 Sayfadan g\00F6sterme \00E7a\011Fr\0131s\0131 i\015Flemi desteklenmiyor: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450384551027934)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1018 Ad\0131m \00F6nbelle\011Fi temizlenirken hata olu\015Ftu.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448724760027934)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1005 Bilinmeyen hesaplama t\00FCr\00FC.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449697584027934)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1201 oturum no''su \00F6zel kimlik do\011Frulamada ayarlanmad\0131.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449783972027934)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'tr'
,p_message_text=>'sayfa=%0'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130449381272027934)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-7620 Uygulama i\00E7in \00E7al\0131\015Fma alan\0131 belirlenemedi (%0).')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130429862676027928)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'tr'
,p_message_text=>unistr('D\00FCzenle')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448462400027934)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1802 "%0"\00F6\011Fe no bulunamad\0131')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448154763027934)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1002 "%1"uygulamas\0131nda "%0" \00F6gesi i\00E7in \00F6\011Fe no bulunamad\0131.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448236052027934)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'tr'
,p_message_text=>unistr('Beklenmeyen hata, uygulama veya sayfa d\00FCzeyinde \00F6\011Fe ad\0131 bulunamad\0131.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448641515027934)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Zaten ilk veri sayfas\0131ndas\0131n\0131z.')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465147023027939)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Fe No (%0), ge\00E7erli sayfada tan\0131mlanm\0131\015F bir \00F6\011Fe de\011Fil.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422789438027926)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Fe, ba\011F\0131ms\0131z de\011Fi\015Fkenlerin uygulamaya aktar\0131lmas\0131yla ayarlanamayabilir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423012686027926)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'tr'
,p_message_text=>unistr('(Sa\011Flama toplam\0131 sa\011Flanmad\0131)')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422548969027926)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Feye, "kullan\0131c\0131 d\00FCzeyinde yer imi" sa\011Flama toplam\0131 e\015Flik etti\011Finde ayarlanabilir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422413424027926)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Fe, bir "uygulama d\00FCzeyi yer imi" sa\011Flama toplam\0131 ile birlikte ayarlanabilir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422637580027926)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Feye bir "oturum" sa\011Flama toplam\0131 e\015Flik etti\011Finde ayarlanabilir.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422323719027926)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6\011Fenin korumas\0131 yok.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450445908027935)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa yard\0131m\0131 kullan\0131lam\0131yor.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130438384541027931)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 \00E7al\0131\015Fma alan\0131n\0131n %1 \015Femas\0131 olarak ayr\0131\015Ft\0131rma yetkisi yok.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448870725027934)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1010 Sayfaya dalland\0131rma kabul i\015Flemi yineleme limiti a\015F\0131ld\0131. %0')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130405367383027921)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa kullan\0131lam\0131yor, bir sayfa deseni \00E7al\0131\015Ft\0131ramazs\0131n\0131z.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422910012027926)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu sayfa bir URL kullan\0131larak veya g\00F6sterim prosed\00FCr\00FCne bir GET veya POST kullan\0131larak \00E7a\011Fr\0131lamaz, bir "Sayfaya Dalland\0131rma" dalland\0131rma t\00FCr\00FC kullan\0131larak \00E7a\011Fr\0131lmal\0131d\0131r.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130507734538027952)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Say\0131sal olmayan de\011Fer %0 \00F6\011Fesine kaydedilmeye \00E7al\0131\015F\0131l\0131rken hata olu\015Ftu. ')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440088623027931)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulaman\0131n ayr\0131\015Ft\0131rma \015Femas\0131 "%0" veritaban\0131nda mevcut de\011Fil.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130440107329027931)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'tr'
,p_message_text=>unistr('DAH\0130L\0130 \00E7al\0131\015Fma alan\0131ndaki hesaplar sadece &PRODUCT_NAME. \00FCr\00FCn\00FCne eri\015Fmek i\00E7in kullan\0131labilir. <a href="%0">Y\00F6netim Hizmetleri</a>.')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448007576027934)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-1029 Oturum bilgileri kaydedilemedi. oturum=%0 \00F6\011Fe=%1')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451103574027935)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130z durdurulam\0131yor :%0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130448399915027934)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'tr'
,p_message_text=>'Beklenmeyen hata'
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459184927027937)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('update_substitution_cache i\00E7inde hata olu\015Ftu: %0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451253262027935)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Yard\0131m\0131 g\00F6r\00FCnt\00FClemek i\00E7in uygulama ve sayfa sa\011Flanmal\0131d\0131r.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130472915892027941)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Otomasyon bulunamad\0131.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408402708027922)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Otomasyon Sorgu Hatas\0131: %0')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452317405027935)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'tr'
,p_message_text=>'%0 oturum temizlendi.'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393687285027917)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 kodu \00E7al\0131\015Ft\0131r\0131lam\0131yor! Veritaban\0131 taraf\0131ndan desteklenmiyor veya MLE_LANGUAGES an parametresi taraf\0131ndan etkinle\015Ftirilmiyor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130391221161027916)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7ok Dilli Motor bu veritaban\0131 s\00FCr\00FCm\00FCnde mevcut de\011Fil!')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430417556027928)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama koleksiyonu dizisi bo\015F olmamal\0131d\0131r')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430210080027928)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Belirtilen \00FCye \00F6zniteli\011Fi numaras\0131 %0 ge\00E7ersiz. \00D6znitelik numaras\0131 1 ile %1 aras\0131nda olmal\0131d\0131r')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430780832027928)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'tr'
,p_message_text=>'Uygulama koleksiyonu mevcut'
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430554008027928)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('Koleksiyon ad\0131 bo\015F olamaz.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430689907027928)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'tr'
,p_message_text=>unistr('Koleksiyon ad\0131 255 karakterden uzun olamaz')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430087420027928)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama koleksiyonu %0 mevcut de\011Fil')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430809937027928)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130mle\00E7 hen\00FCz a\00E7\0131k de\011Fil')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430122016027928)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('%0 \00FCye s\0131ras\0131 %1 uygulama koleksiyonunda mevcut de\011Fil'),
''))
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430391526027928)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('\00DCye s\0131ras\0131 %0, "%1"uygulama koleksiyonunda mevcut de\011Fil')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130383170858027914)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'tr'
,p_message_text=>unistr('ECDSA i\00E7in %0 algoritmas\0131 desteklenmiyor.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130382869518027914)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 eliptik e\011Frisi desteklenmiyor.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508595211027952)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>'"%0" kriptografik fonksiyonu bu sistemde desteklenmiyor.'
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560802133027968)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Eri\015Filebilirlik Test Edildi')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451843548027935)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'tr'
,p_message_text=>'Kapat'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451962225027935)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa \00D6zelle\015Ftirme Se\00E7enekleri')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452066481027935)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'tr'
,p_message_text=>unistr('\00D6nde\011Fer')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452146661027935)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCnt\00FClenen')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452285160027935)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'tr'
,p_message_text=>'Gizlenen'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451625289027935)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu sayfaya dahil etmek istedi\011Finiz b\00F6lgeleri kontrol edin. Uygun uygulama ba\011Flam\0131nda de\011Filseniz veya uygun yetkileriniz yoksa, i\015Faretli b\00F6lgeler g\00F6r\00FCnt\00FClenmeyebilir.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451797099027935)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu sayfa \00F6zelle\015Ftirilemez.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561127844027968)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'tr'
,p_message_text=>unistr('Tema Stilini de\011Fi\015Ftirerek bu uygulaman\0131n g\00F6r\00FCn\00FCm\00FCn\00FC ki\015Fiselle\015Ftirebilirsiniz. L\00FCtfen a\015Fa\011F\0131daki listeden bir Tema Stili se\00E7in ve De\011Fi\015Fiklikleri Uygula se\00E7ene\011Fine t\0131klay\0131n.')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561919135027968)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'tr'
,p_message_text=>unistr('B\00F6lge G\00F6r\00FCnt\00FCs\00FC')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130561020160027968)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'tr'
,p_message_text=>unistr('Uygulama Stili \00D6nde\011Ferlerini Kullan')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130560926977027968)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00F6r\00FCn\00FC\015F ')
,p_version_scn=>2693694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505128936027951)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 toplam\0131nda referans al\0131nan s\00FCtun dizini mevcut de\011Fil.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397856507027918)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri d\0131\015Fa aktarman\0131n eklenmesi %0 format\0131 i\00E7in desteklenmiyor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130360841875027908)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('CLOB \00E7\0131kt\0131s\0131 %0 format\0131 i\00E7in desteklenmiyor.')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504851911027951)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun sonunun s\00FCtun dizisinin ba\015F\0131nda olmas\0131 gerekir.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130504945738027951)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7inde referans al\0131nan s\00FCtun grubu dizini mevcut de\011Fil.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130412038832027923)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('d\0131\015Fa aktarma dosyas\0131')
,p_version_scn=>2693671
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130419220231027925)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'tr'
,p_message_text=>unistr('D\0131\015Fa aktarma format\0131 XML olmal\0131, Yazd\0131rma Sunucusu olarak Oracle Temsili Durum Transferi kullan\0131lmal\0131d\0131r.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505291431027951)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 vurgulamas\0131nda ba\015Fvurulan s\00FCtun dizini mevcut de\011Fil.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130408683873027922)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz D\0131\015Fa Aktarma Format\0131: %0')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130505086308027951)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7inde referans al\0131nan \00FCst grup dizini mevcut de\011Fil.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130530218242027959)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 tablosunun %1 s\00FCtunu bir "GENERATED ALWAYS" kimlik s\00FCtunudur. L\00FCtfen Konfig\00FCre Et ileti\015Fim kutusundaki %1 s\00FCtununa hi\00E7bir kaynak s\00FCtununun e\015Flenmedi\011Finden emin olun.')
,p_version_scn=>2693689
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441827598027932)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'tr'
,p_message_text=>unistr('Belirtilen kaydetme aral\0131\011F\0131 \00E7ok d\00FC\015F\00FCk.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130441913717027932)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'tr'
,p_message_text=>unistr('Veri y\00FCkleme i\00E7in herhangi bir s\00FCtun sa\011Flanmad\0131.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443299921027932)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" sat\0131r se\00E7icisi i\00E7in s\00FCtun bulunamad\0131. JSON yap\0131s\0131n\0131 otomatik olarak alg\0131lamay\0131 veya incelemeyi deneyin.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452660680027935)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('XLSX dosyas\0131nda \00E7al\0131\015Fma sayfas\0131 bulunamad\0131.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397765588027918)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'tr'
,p_message_text=>unistr('(%0) ke\015Ffetmek i\00E7in talep edilen hiyerar\015Fi d\00FCzeyleri maksimum %1 de\011Ferini a\015F\0131yor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452584842027935)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'tr'
,p_message_text=>unistr('Belirtilen \00E7al\0131\015Fma sayfas\0131 XLSX dosyas\0131nda mevcut de\011Fil.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130430906342027928)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'tr'
,p_message_text=>unistr('Veritaban\0131ndaki verilerin mevcut s\00FCr\00FCm\00FC, kullan\0131c\0131n\0131n g\00FCncelleme i\015Flemini ba\015Flatmas\0131ndan bu yana de\011Fi\015Fti.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433834370027929)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor s\00FCtunlar\0131 g\00FCncellenirken hata olu\015Ftu: %0')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544310202027963)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 SDO_GEOMETRY''e d\00F6n\00FC\015Ft\00FCr\00FClemiyor.')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480894189027944)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 veri t\00FCr\00FCndeki %0 s\00FCtunu VARCHAR2''ye d\00F6n\00FC\015Ft\00FCr\00FClemiyor!')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488299423027946)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('"%1" \00F6zniteli\011Fi i\00E7in belirtilen "%0" s\00FCtunu veri kayna\011F\0131nda bulunamad\0131!')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424308649027926)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 filtre t\00FCr\00FC \00E7ok de\011Ferli s\00FCtunlar i\00E7in desteklenmez.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547884332027964)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz "aras\0131nda" filtresi.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130403489610027920)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun %0, sat\0131r #%1 i\00E7inde %2 de\011Feri bulunamad\0131.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130400175223027919)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun %0 veya sat\0131r #%1 mevcut de\011Fil.')
,p_version_scn=>2693668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386764498027915)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz De\011Ferler Listesi t\00FCr\00FC belirlendi.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386639252027915)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz sorgu t\00FCr\00FC. Sorgu t\00FCr\00FC Tablo, SQL sorgusu veya SQL Sorgusunu d\00F6nd\00FCren PL/SQL Fonksiyonu olmal\0131d\0131r.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480952004027944)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SQL sorgusu ayr\0131\015Ft\0131r\0131lamad\0131!'),
'%0'))
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488356494027946)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('"%1" \00F6zniteli\011Fi i\00E7in belirtilen s\00FCtun konumu %0 SQL ifadesinde bulunamad\0131!')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130378347882027913)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7ok De\011Ferli filtrede \00E7ok fazla \00F6\011Fe kullan\0131l\0131yor.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488184110027946)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" \00F6zniteli\011Fi i\00E7in s\00FCtun belirtilmedi.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386564523027915)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('PL/SQL fonksiyon g\00F6vdesi bir de\011Fer d\00F6nd\00FCrmedi.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503906049027951)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'tr'
,p_message_text=>unistr('REST Veri Kayna\011F\0131, istenen DML eylemini i\015Flemek \00FCzere bir \0130\015Flem i\00E7ermez.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545679171027963)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>unistr('Aral\0131k filtreleri yaln\0131zca NUMBER, DATE veya TIMESTAMP veri tipleri i\00E7in desteklenir.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130366502850027909)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('Talep %0 ile ba\015Far\0131s\0131z oldu')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130370012006027910)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'tr'
,p_message_text=>unistr('GeoJSON - SDO_GEOMETRY d\00F6n\00FC\015F\00FCm\00FC (s\00FCtun %0) bu veritaban\0131nda kullan\0131lamaz.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373451834027911)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'tr'
,p_message_text=>unistr('SDO_GEOMETRY d\00F6n\00FC\015F\00FCm\00FC (%0 s\00FCtunu) XML veri kaynaklar\0131 i\00E7in desteklenmiyor.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130397502765027918)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 karakteri \00E7ok de\011Ferli bir ay\0131r\0131c\0131 olarak desteklenmiyor.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130545735377027963)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu fonksiyon, Sorgu Ba\011Flam\0131nda kullan\0131lamaz.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130373573346027911)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun Veri T\00FCr\00FC uyu\015Fmazl\0131\011F\0131.')
,p_version_scn=>2693662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130407017022027921)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu veri kayna\011F\0131, birden fazla sat\0131r\0131n de\011Fi\015Ftirilmesini desteklemez.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386424949027915)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'tr'
,p_message_text=>unistr('Dahili ORDS OUT Ba\011Flama limitleri a\015F\0131ld\0131. L\00FCtfen DML sat\0131rlar\0131n\0131n miktar\0131n\0131 azalt\0131n.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489172128027946)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Uzak sunucudan gelen JSON cevab\0131 ayr\0131\015Ft\0131r\0131lamad\0131: '),
'%0'))
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130386315974027915)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Bilinmeyen veya yanl\0131\015F ba\011Flam t\00FCr\00FC.')
,p_version_scn=>2693666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130410458038027922)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'tr'
,p_message_text=>unistr('Okunabilir d\0131\015Fa aktarma i\00E7in desteklenmeyen bile\015Fenler: %0')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130508440685027952)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu dosya t\00FCr\00FC ayr\0131\015Ft\0131r\0131c\0131 taraf\0131ndan desteklenmiyor.')
,p_version_scn=>2693684
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459235100027937)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Yetkisiz eri\015Fim (wwv_flow_api.set_credentials ayarlanmad\0131).')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434154933027929)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7al\0131\015Fma alan\0131 zaten var oldu\011Fu i\00E7in olu\015Fturulmad\0131.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130434090469027929)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 grubu zaten var oldu\011Fundan olu\015Fturulmad\0131.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445458524027933)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7in tekrarlanan kullan\0131c\0131 ad\0131 bulundu.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445556374027933)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131lar y\00FCklenirken hata olu\015Ftu. %0 kullan\0131c\0131s\0131 ba\015Far\0131s\0131z oldu.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456357900027936)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 kullan\0131c\0131 y\00FCklenecekti.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456122594027936)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'tr'
,p_message_text=>'Parola'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456273260027936)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'tr'
,p_message_text=>'Yetkiler'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455924216027936)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'tr'
,p_message_text=>unistr('Kullan\0131c\0131 ad\0131')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536343929027961)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('#COMPONENT_NAME# sayfa \00F6\011Fesi olu\015Fturulurken hata olu\015Ftu.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451357417027935)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('HTML formu hen\00FCz a\00E7\0131lmad\0131\011F\0131ndan sayfa \00F6\011Fesi g\00F6r\00FCnt\00FClenemiyor.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130409740492027922)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa \00F6\011Fesi i\00E7in varsay\0131lan de\011Fer hesaplan\0131rken hata olu\015Ftu #COMPONENT_NAME#.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450648416027935)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('#COMPONENT_NAME# sayfa \00F6\011Fesi i\00E7in \00F6\011Fe sonras\0131 hesaplamada hata olu\015Ftu.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450520229027935)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('#COMPONENT_NAME# sayfa \00F6\011Fesi i\00E7in varsay\0131lan de\011Fer hesaplan\0131rken hata olu\015Ftu.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427375843027927)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'tr'
,p_message_text=>unistr('Yetkisiz eri\015Fim.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376886290027912)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 ile ili\015Fkili %0 de\011Feri ge\00E7erli bir JSON dizesi de\011Fildir.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450898143027935)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'tr'
,p_message_text=>'JavaScript desteklenmiyor.'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450908756027935)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'tr'
,p_message_text=>'Liste'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130451534115027935)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'tr'
,p_message_text=>unistr('Sorgu ba\015Flat\0131lam\0131yor.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459587435027937)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 g\00FCncellemesi desteklenmiyor.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130453041613027935)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz \00F6\011Fe no:%0 ')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480758267027944)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu \00F6\011Fe i\00E7in yard\0131m mevcut de\011Fil.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442530959027932)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('Grafik sorgusu olu\015Fturulamad\0131. Kaynak ve S\00FCtun E\015Fleme ayarlar\0131n\0131 kontrol edin.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443829328027932)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'tr'
,p_message_text=>unistr('P_mail_id parametresi i\00E7in ge\00E7ersiz de\011Fer: %0')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130480523687027944)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'tr'
,p_message_text=>unistr('"Kime" veya "Yan\0131tlanacak Ki\015Fi" birden fazla e-posta adresi i\00E7eriyor, bu nedenle "G\00F6nderen" adresi olarak kullan\0131lamaz.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130565453986027969)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7al\0131\015Fma alan\0131 ba\015F\0131na maksimum e-posta iletisi say\0131s\0131n\0131 a\015Ft\0131n\0131z. L\00FCtfen y\00F6neticinize ula\015F\0131n.')
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422014578027926)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu prosed\00FCr bir uygulama oturumu i\00E7inde ba\015Flat\0131lmal\0131d\0131r.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443758416027932)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 parametresi i\00E7in bo\015F de\011Fer girildi.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130501813795027950)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 uygulamas\0131nda "%0" e-posta \015Fablonu bulunamad\0131.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130578373317027973)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('SMTP_HOST_ADDRESS an\0131 parametresi posta g\00F6ndermek i\00E7in ayarlanmal\0131d\0131r.')
,p_version_scn=>2693697
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130443182879027932)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('E-posta g\00F6ndermek i\00E7in bir mesaj al\0131c\0131s\0131 girmelisiniz.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130567851521027970)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'tr'
,p_message_text=>unistr('Konfig\00FCre edilmi\015F e-posta sunucusuyla SMTP ba\011Flant\0131s\0131 kurulam\0131yor.')
,p_version_scn=>2693695
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543163178027963)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7ersiz Ajax \00E7a\011Fr\0131s\0131!')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427094139027927)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 eklentisi i\00E7in Ajax fonksiyonu tan\0131mlanmad\0131')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533665353027960)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 eklentisi i\00E7in y\00FCr\00FCtme fonksiyonu tan\0131mlanmad\0131')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427172252027927)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 eklentisi i\00E7in i\015Fleme fonksiyonu tan\0131mlanmad\0131')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544033750027963)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('REST Veri Kayna\011F\0131 Eklentisi "%0" bir "Yetenekler" fonksiyonu i\00E7ermez.')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130543943888027963)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('REST Veri Kayna\011F\0131 Eklentisi "%0"bir DML fonksiyonu i\00E7ermez.')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544112638027963)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('REST Veri Kayna\011F\0131 Eklentisi "%0" y\00FCr\00FCtme fonksiyonu i\00E7ermez.')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130544256885027963)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'tr'
,p_message_text=>unistr('REST Veri Kayna\011F\0131 Eklentisi "%0" bir alma fonksiyonu i\00E7ermez.')
,p_version_scn=>2693691
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424567766027927)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Eklenti i\015Fleme s\0131ras\0131nda y\00FCkseltilen PLSQL kodunda hata.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433178840027929)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer belirtilmelidir.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130466117660027939)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 veri t\00FCr\00FC VARCHAR2''ye d\00F6n\00FC\015Ft\00FCr\00FClemez!')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554314770027966)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('"%1" \00F6zniteli\011Fi i\00E7in belirtilen "%0" s\00FCtunu SQL ifadesinde bulunamad\0131!')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130381650420027914)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'tr'
,p_message_text=>unistr('%1 ile ili\015Fkili %0 de\011Feri ge\00E7erli bir JSON dizesi de\011Fildir.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531522678027959)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7in bir de\011Fer listesi (LOV) sorgusu veya Adland\0131r\0131lm\0131\015F de\011Fer listesi belirtilmelidir.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130533157516027960)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 i\00E7in De\011Fer Listesi SQL sorgusunda yanl\0131\015F say\0131da s\00FCtun se\00E7ildi. Ge\00E7erli ifadeler i\00E7in \00F6rneklere bak\0131n.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554108259027966)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'tr'
,p_message_text=>unistr('"%0" \00F6zniteli\011Fi i\00E7in s\00FCtun belirtilmedi.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130583329922027975)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('"%1" \00F6zniteli\011Fi i\00E7in girilen %0 de\011Feri say\0131sal de\011Fil.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130536660628027961)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('%0, SQL ifadesinde yanl\0131\015F bir veri t\00FCr\00FCne sahip. #%1 s\00FCtunu %2, ancak %3 bekleniyor.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130554203603027966)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'tr'
,p_message_text=>unistr('"%1" \00F6zniteli\011Fi i\00E7in belirtilen "%0" s\00FCtunu %2 veri t\00FCr\00FCne sahip ancak %3 i\00E7ermelidir.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130423700456027926)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor yerle\015Fimi bulunamad\0131.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130411328584027923)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'tr'
,p_message_text=>unistr('Arka Plan Y\00FCr\00FCtme S\0131n\0131r\0131 %0 i\00E7in a\015F\0131ld\0131.')
,p_version_scn=>2693670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361678813027908)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Fka bir %0 Y\00FCr\00FCtmesi zaten \00E7al\0131\015F\0131yor.')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130361506968027908)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'tr'
,p_message_text=>unistr('Ba\015Fka bir %0 Y\00FCr\00FCtmesi, zaten %1 ba\011Flam\0131 i\00E7in \00E7al\0131\015F\0131yor.')
,p_version_scn=>2693660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130376558722027912)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'tr'
,p_message_text=>unistr('Y\00FCklenen dosyalar, %0 Y\00FCr\00FCtmesinin \00E7al\0131\015Fma oturumunda g\00F6r\00FCn\00FCr de\011Fil.')
,p_version_scn=>2693663
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130489050376027946)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'tr'
,p_message_text=>unistr('REST Veri Kayna\011F\0131na dayal\0131 raporlar i\00E7in Hesaplama Toplam\0131 \00F6zelli\011Fi kullan\0131lamaz.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130450718140027935)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('ERR-2904 K\0131sayol de\011Feri ayarlanam\0131yor.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130455765788027936)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Hata: Bilinmeyen k\0131sayol t\00FCr\00FC.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130393445856027917)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'tr'
,p_message_text=>unistr('Arama sorgusu \00E7ok uzun.')
,p_version_scn=>2693667
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130444851942027933)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 uygulamas\0131nda authentication_scheme al\0131nam\0131yor.')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130452826032027935)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('%0 bile\015Feni getirilemedi.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130523147181027956)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'tr'
,p_message_text=>unistr('Mevcut oturum i\00E7in ge\00E7ici kullan\0131c\0131 no zaten var.')
,p_version_scn=>2693688
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130456011490027936)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'tr'
,p_message_text=>'E-Posta'
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582851636027975)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'tr'
,p_message_text=>unistr('Kimlik do\011Frulama ba\015Far\0131s\0131z oldu.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130483400261027945)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'tr'
,p_message_text=>unistr('Apex_util.g_request_cookies i\00E7inde ayarlanan bir veya daha fazla \00E7erez ge\00E7ersiz bir de\011Fer i\00E7eriyor.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130465333330027939)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'tr'
,p_message_text=>unistr('UDDI kay\0131t defterinden gelen cevap ge\00E7ersiz.')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130424625325027927)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'tr'
,p_message_text=>unistr('Sa\011Flanan URL ge\00E7erli bir WSDL dok\00FCman\0131 d\00F6nd\00FCrmedi.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130427470381027927)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'tr'
,p_message_text=>unistr('WSDL dok\00FCman\0131 birden fazla SOAP ba\011Flay\0131c\0131s\0131 i\00E7erir. &PRODUCT_NAME. sadece bir SOAP ba\011Flay\0131c\0131s\0131na sahip WSDL''leri destekler. Bu servise y\00F6nelik referans olu\015Fturmaya devam etmek \00FCzere Manuel Olarak Web Hizmetleri Referans\0131 Olu\015Ftur''a t\0131klay\0131n.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130503013583027950)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'tr'
,p_message_text=>unistr('Hizmetten gelen cevap XML de\011Fildi.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582764977027974)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'tr'
,p_message_text=>unistr('OAuth eri\015Fim belirteci mevcut de\011Fil veya s\00FCresi dolmu\015F.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130547283639027964)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'tr'
,p_message_text=>unistr('\00C7al\0131\015Fma alan\0131 ba\015F\0131na maksimum web hizmeti talebi say\0131s\0131n\0131 a\015Ft\0131n\0131z. L\00FCtfen y\00F6neticinize ula\015F\0131n.')
,p_version_scn=>2693692
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130582921049027975)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'tr'
,p_message_text=>unistr('Sunucu desteklenmeyen OAuth belirteci t\00FCr\00FC ile yan\0131t verdi.')
,p_version_scn=>2693698
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426884567027927)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'tr'
,p_message_text=>unistr('WSDL dok\00FCman\0131, referans eklemek \00FCzere gerekli olan SOAP i\00E7in bir ba\011Flay\0131c\0131 i\00E7ermiyordu.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130422260046027926)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu WSDL kimlik do\011Frulama bilgileri gerektirir. L\00FCtfen kullan\0131c\0131 ad\0131n\0131 ve parolay\0131 a\015Fa\011F\0131ya girin.')
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130433265467027929)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'tr'
,p_message_text=>unistr('WSDL dok\00FCman\0131 i\015Fleme motoru taraf\0131ndan anla\015F\0131lamad\0131. Bu servise y\00F6nelik referans olu\015Fturmaya devam etmek \00FCzere Manuel Olarak Web Hizmetleri Referans\0131 Olu\015Ftur''a t\0131klay\0131n.')
,p_version_scn=>2693674
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130506060446027951)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'tr'
,p_message_text=>unistr('G\00FCncelleme ger\00E7ekle\015Ftirilemiyor.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531860694027959)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer Listesi d\00F6nd\00FCrme ile ekran s\00FCtunu ayn\0131!')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130531748064027959)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('De\011Fer Listesinin bir d\00F6nd\00FCrme s\00FCtunu yok.')
,p_version_scn=>2693690
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459423444027937)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('S\00FCtun de\011Feri al\0131n\0131rken hata olu\015Ftu :%0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484336704027945)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'tr'
,p_message_text=>unistr('Ge\00E7erli tablo formu verileri \00E7ok eski; kaynak veriler de\011Fi\015Ftirildi.<br/> De\011Fi\015Fiklikleri g\00F6z ard\0131 etmek ve verileri veritaban\0131ndan yeniden y\00FCklemek i\00E7in <strong><a href="%0">buraya</a></strong> t\0131klay\0131n.')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439501381027931)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'tr'
,p_message_text=>unistr('Sayfa numaralama dizesini belirleme hatas\0131')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439494036027931)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('sorgu ba\015Fl\0131klar\0131 al\0131nam\0131yor:'),
'%0'))
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439686295027931)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'tr'
,p_message_text=>unistr('rapor alt bilgisi de\011Fi\015Fikliklerini ger\00E7ekle\015Ftirirken hata olu\015Ftu')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439708630027931)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SQL sorgusu ayr\0131\015Ft\0131r\0131lamad\0131:'),
'%0',
'%1'))
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445819064027933)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'tr'
,p_message_text=>unistr('\0130stenen minimum sat\0131r: %0, sat\0131rlar bulundu ancak g\00F6r\00FCnt\00FClenmedi: %1')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442256530027932)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'tr'
,p_message_text=>unistr('sorgu s\00FCtunu #%0 (%1) ge\00E7ersiz, HTML kullanan s\00FCtunlar\0131n di\011Fer adlara ihtiyac\0131 var')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130459371594027937)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'tr'
,p_message_text=>unistr('Sorgu ba\015Fl\0131klar\0131 al\0131n\0131rken hata olu\015Ftu: %0')
,p_version_scn=>2693680
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439839435027931)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('rapor hatas\0131:'),
'%0'))
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130479984817027944)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu s\00FCtuna g\00F6re s\0131rala')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442384479027932)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'tr'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Sorgu ayr\0131\015Ft\0131r\0131lam\0131yor, l\00FCtfen sorgunuzun s\00F6zdizimini kontrol edin.'),
'(%0)',
'</p>'))
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484428656027945)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'tr'
,p_message_text=>unistr('Bu form kaydedilmemi\015F de\011Fi\015Fiklikler i\00E7eriyor. De\011Fi\015Fikliklerinizi kaydetmeden devam etmek i\00E7in "Tamam" \00F6\011Fesine bas\0131n. ')
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130488969267027946)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'tr'
,p_message_text=>unistr('Rapor sayfa numaraland\0131rma \015Femas\0131 (%0) se\00E7ilen veri kayna\011F\0131yla desteklenmez.')
,p_version_scn=>2693683
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130442178911027932)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'tr'
,p_message_text=>unistr('sorgu s\00FCtunu #%0 (%1) ge\00E7ersiz, s\00FCtun di\011Fer ad\0131n\0131 kullan\0131n')
,p_version_scn=>2693677
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445938180027933)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'tr'
,p_message_text=>unistr('sat\0131r(lar) %0 - %1 / %2''den fazla')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130486432338027945)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'tr'
,p_message_text=>'%0 - %1 / %2''den fazla'
,p_version_scn=>2693682
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130445723403027933)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'tr'
,p_message_text=>unistr('sat\0131r(lar) %0 - %1 / %2')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130426535836027927)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'tr'
,p_message_text=>'%0 - %1 / %2'
,p_version_scn=>2693673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439993624027931)
,p_name=>'Y'
,p_message_language=>'tr'
,p_message_text=>'Y'
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130447215326027934)
,p_name=>'YEAR'
,p_message_language=>'tr'
,p_message_text=>unistr('y\0131l')
,p_version_scn=>2693679
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130439168249027931)
,p_name=>'YEARS'
,p_message_language=>'tr'
,p_message_text=>unistr('y\0131llar')
,p_version_scn=>2693676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130484528132027945)
,p_name=>'YES'
,p_message_language=>'tr'
,p_message_text=>'Evet'
,p_version_scn=>2693682
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
 p_id=>wwv_flow_imp.id(109678305570583962.4488)
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
 p_id=>1.4488
,p_name=>'Mesajlar'
,p_alias=>'MESSAGES'
,p_step_title=>'Mesajlar'
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
