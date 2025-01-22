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
,p_default_application_id=>4486
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4486 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4486
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131600140580036390')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'sl'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4486)
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
 p_id=>wwv_flow_imp.id(4486)
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
 p_id=>wwv_flow_imp.id(728504220438374.4486)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4486)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4486)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4486)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4486)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4486)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4486)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4486)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4486)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4486)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4486)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4486)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4486)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4486)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4486)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4486)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4486)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.sl'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4486)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4486)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4486)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4486)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4486)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4486)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4486)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.sl'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4486)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4486)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4486)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4486)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4486)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4486)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.sl'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4486)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4486)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4486)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.sl'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4486)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4486)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4486)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4486)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4486)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4486)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4486)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4486)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4486)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4486)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4486)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4486)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4486)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4486)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4486)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4486)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4486)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.sl'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4486)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4486)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4486)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4486)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4486)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4486)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4486)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4486)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4486)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4486)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4486)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4486)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4486)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4486)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4486)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4486)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4486)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.sl'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4486)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4486)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4486)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4486)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4486)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4486)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4486)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4486)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4486)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4486)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4486)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4486)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4486)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4486)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4486)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.sl'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4486)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4486)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4486)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4486)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4486)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4486)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4486)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4486)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4486)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4486)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4486)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4486)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4486)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4486)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4486)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4486)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4486)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4486)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4486)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4486)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4486)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4486)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4486)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4486)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4486)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4486)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4486)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4486)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4486)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4486)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4486)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4486)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4486)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4486)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4486)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4486)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4486)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4486)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4486)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4486)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4486)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4486)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4486)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4486)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4486)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4486)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4486)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4486)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4486)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4486)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4486)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4486)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4486)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4486)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4486)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4486)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4486)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4486)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4486)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4486)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4486)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4486)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4486)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4486)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4486)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4486)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4486)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4486)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4486)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4486)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4486)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4486)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4486)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4486)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4486)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4486)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4486)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4486)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4486)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4486)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4486)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4486)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4486)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4486)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4486)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4486)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4486)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4486)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4486)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4486)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4486)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4486)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4486)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4486)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4486)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4486)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4486)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4486)
,p_page_name=>'winlov'
,p_page_title=>'Pogovorno okno za iskanje'
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
,p_find_button_text=>'Iskanje'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Zapri'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>'Naprej &gt;'
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Nazaj'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Vrstice #FIRST_ROW# - #LAST_ROW#</div>'
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
 p_id=>wwv_flow_imp.id(649611609668764506.4486)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4486)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4486)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4486)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4486)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4486)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4486)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4486)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4486)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4486)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4486)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4486)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4486)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4486)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4486)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4486)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4486)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4486)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4486)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4486)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4486)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4486)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4486)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4486)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4486)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4486)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4486)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4486)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4486)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4486)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4486)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4486)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4486)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4486)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4486)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4486)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4486)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4486)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4486)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4486)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4486)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4486)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4486)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4486)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4486)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4486)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4486)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4486)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4486)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4486)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4486)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4486)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4486)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4486)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4486)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4486)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4486)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4486)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4486)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4486)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4486)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4486)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4486)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4486)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4486)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4486)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4486)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4486)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4486)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4486)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4486)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4486)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4486)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4486)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4486)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4486)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4486)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4486)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4486)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4486)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4486)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4486)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4486)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4486)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4486)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4486)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4486)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4486)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4486)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4486)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4486)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4486)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4486)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4486)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4486)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4486)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4486)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4486)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4486)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4486)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4486)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4486)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4486)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4486)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4486)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4486)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4486)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4486)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4486)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4486)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4486)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4486)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4486)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4486)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4486)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4486)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4486)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4486)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4486)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4486)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4486)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4486)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4486)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4486)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4486)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4486)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4486)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4486)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4486)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4486)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4486)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4486)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4486)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4486)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4486)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4486)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4486)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4486)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4486)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4486)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4486)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4486)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4486)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4486)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4486)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4486)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4486)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4486)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4486)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4486)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4486)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4486)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4486)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4486)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4486)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4486)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4486)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4486)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4486)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4486)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4486)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4486)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4486)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4486)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4486)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4486)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4486)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4486)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4486)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4486)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4486)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4486)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4486)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4486)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4486)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4486)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4486)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4486)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4486)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4486)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4486)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4486)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4486)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4486)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4486)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4486)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4486)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4486)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4486)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4486)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4486)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4486)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4486)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4486)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4486)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4486)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4486)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4486)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4486)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4486)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4486)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4486)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4486)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4486)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4486)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4486)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4486)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4486)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4486)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4486)
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
 p_id=>wwv_flow_imp.id(129304091789027568)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'sl'
,p_message_text=>'Stolpec %0'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288633720027563)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'sl'
,p_message_text=>'Skrbnik'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288559629027563)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabni\0161ko ime')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351264757027582)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'sl'
,p_message_text=>'Dostop zavrnjen'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308162878027569)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161 ra\010Dun %0 je bil ustvarjen.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291354138027564)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'sl'
,p_message_text=>unistr('Ra\010Dun je zaklenjen.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275851346027559)
,p_name=>'AM_PM'
,p_message_language=>'sl'
,p_message_text=>'AM / PM'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258666791027554)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'sl'
,p_message_text=>'povezava dejanja'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258563711027554)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'sl'
,p_message_text=>'povezava pogovornega okna'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422993597027603)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'sl'
,p_message_text=>'Preklop %0'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430735047027606)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'sl'
,p_message_text=>'(Aktivno)'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235545867027547)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'sl'
,p_message_text=>unistr('Klepet po\010Di\0161\010Den')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235431963027547)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti klepet')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232014489027546)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'sl'
,p_message_text=>'Sprejmi'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232193397027546)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'sl'
,p_message_text=>'Zavrni'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231803119027546)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'sl'
,p_message_text=>'Zgodovina pogovorov'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235288603027547)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'sl'
,p_message_text=>'Kopirano'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235391219027547)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'sl'
,p_message_text=>unistr('Kopirano v odlo\017Ei\0161\010De')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235077894027547)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'sl'
,p_message_text=>'Kopiraj'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235111735027547)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'sl'
,p_message_text=>unistr('Kopiraj v odlo\017Ei\0161\010De')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232594714027546)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010Dnik')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232931439027546)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Umetna inteligenca je onemogo\010Dena na ravni delovnega prostora ali instance.')
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272231080027558)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'sl'
,p_message_text=>unistr('Storitve Generative AI z danim ID-jem ali stati\010Dnim ID-jem ni bilo mogo\010De najti.')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270921386027557)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri preverjanju pristnosti ali prepovedan dostop (HTTP-%1) za URL %0. Preverite konfiguracijo storitve Generative AI %2.'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250737272027551)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Zahteva HTTP storitvi Generative AI na %0 ni uspela s HTTP-%1: %2'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275165417027559)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka v zahtevi HTTP storitvi Generative AI za vti\010Dnik %0 v na\010Dinu %1. Preverite konfiguracijo storitve Generative AI.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237947897027548)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Primeri'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236303747027547)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010Dnik')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237769492027548)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236238490027547)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'sl'
,p_message_text=>'Vi'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266994845027556)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>unistr('OCI Generative AI trenutno ne podpira izku\0161nje klepeta z ve\010D sporo\010Dili.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246885807027550)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelovanju poziva %0 za aplikacijo %1. Preverite, ali je v tej instanci na voljo graditelj aplikacij.'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251992972027552)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De obdelati odgovora za AI Service %0, odgovor %1')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258156021027554)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161lji sporo\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246478448027550)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka AI Service %0 v ozadju'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232257158027546)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Sporo\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232324292027546)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'sl'
,p_message_text=>unistr('Tukaj vnesite sporo\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235681444027547)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'sl'
,p_message_text=>'Avatar uporabnika'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235723312027547)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'sl'
,p_message_text=>'Uporabi to'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232435054027546)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Imate neposlano sporo\010Dilo. Ste prepri\010Dani?')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401437534027597)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Klic Ajax je vrnil napako stre\017Enika %0 za %1.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328548076027575)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'sl'
,p_message_text=>unistr('Drugega imena aplikacije "%0" ni mogo\010De pretvoriti v enoli\010Den ID aplikacije.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317365319027572)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-1816 Nepri\010Dakovana napaka pri pretvarjanju drugega imena aplikacije p_flow_alias_or_id (%0).')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414735707027601)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Kontrolna vsota aplikacije omogo\010Da enostaven na\010Din dolo\010Danja tega, ali je ista aplikacija postavljena po delovnih prostorih. To kontrolno vsoto lahko primerjate, da dolo\010Dite, ali obstaja ujemanje. ')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301346718027567)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi funkcije preverjanja pristnosti.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283389588027561)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi funkcije preverjanja pristnosti.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455264189027613)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'sl'
,p_message_text=>unistr('Ime najemnika %0, ki ga vrne Oracle Cloud Identity Management, ni odobreno za domeno %1!<br/><a href="&LOGOUT_URL.">Prijavite se znova</a> in dolo\010Dite odobreno ime najemnika ali spremenite svoj URL.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279465625027560)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161 ra\010Dun "%0" nima potrebnih privilegijev za razvoj (DB_DEVELOPER ali DB_ADMINISTRATOR)<br/>za delovni prostor "%1"! <a href="&LOGOUT_URL.">Ponovno se prijavite</a>, ko vam bodo zagotovljeni privilegiji.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276015012027559)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'sl'
,p_message_text=>'Ime najemnika, ki ga vrne Oracle Cloud Identity Management, ni odobreno za trenutni delovni prostor!<br/><a href="&LOGOUT_URL.">Ponovno se prijavite</a> in navedite odobreno ime najemnika.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279581657027560)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'sl'
,p_message_text=>'Iz varnostnih razlogov izvajanje aplikacij tega delovnega prostora prek domene v URL-ju ni dovoljeno.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301064518027567)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Svojega skrbnika baze podatkov prosite, da za\017Eene $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300936503027567)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'sl'
,p_message_text=>'Paket SYS.DBMS_LDAP ne obstaja ali je neveljaven.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300864938027567)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi funkcije urejanja uporabnika LDAP.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301147613027567)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi preverjanja pristnosti LDAP.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301966714027567)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'sl'
,p_message_text=>'Napaka v argumentu p_flow_page do postopka login_page.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301599889027567)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'sl'
,p_message_text=>'Neveljavna seja p_session v wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352888758027582)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161kodovan argument za wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301622200027567)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabni\0161ko ime NULL podano v postopek prijave.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288493506027563)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'sl'
,p_message_text=>unistr('Pred ponovnim vpisom po\010Dakajte toliko sekund: <span id="apex_login_throttle_sec">%0</span>.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289789837027563)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'sl'
,p_message_text=>'Poskus prijave je bil blokiran.'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350524823027582)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>'Preverjanje pristnosti "%0" ni najdeno'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290271211027563)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'sl'
,p_message_text=>'ID varnostne skupine je NULL.'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301433458027567)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri izvajanju procesa naknadnega preverjanja pristnosti.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301290307027567)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri obdelavi procesa vnaprej\0161njega preverjanja pristnosti.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302936099027567)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Naslov URL odprite v istem brskalniku, v katerem ste inicializirali zahtevo za ponastavitev gesla. \010Ce kliknete URL za ponastavitev gesla in ste preusmerjeni na'),
'stran za prijavo, znova inicializirajte Ponastavitev gesla in pustite',
'brskalnik odprt.'))
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452759271027612)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'sl'
,p_message_text=>'URL za ponastavitev gesla'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279757534027560)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'sl'
,p_message_text=>'Skupina porabnikov upravitelja virov %0 ni bila dodeljena %1'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279893076027560)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'sl'
,p_message_text=>unistr('Za podelitev manjkajo\010Dega privilegija uporabite DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314477315027571)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri obdelavi funkcije stra\017Ee v seji.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314590803027571)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi funkcije preverjanja seje.'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314767269027571)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Svojega skrbnika %0 prosite, da konfigurira mehanizem za enotno prijavo v stre\017Enik Oracle Application Server.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325113129027574)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'sl'
,p_message_text=>unistr('Neveljaven %0 v \017Eetonu %1 vrnjen s strani SSO.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301885423027567)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'sl'
,p_message_text=>'Uredite shemo preverjanja pristnosti in dodajte ime aplikacije.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324844760027574)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'sl'
,p_message_text=>'Neveljaven program za klicanje postopka %0:'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325063603027574)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'sl'
,p_message_text=>unistr('Neveljavna seja aplikacije v \017Eetonu urlc: %0')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324684143027574)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka v portal_sso_redirect: manjkajo\010De informacije o registraciji aplikacije: %0')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314681082027571)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'sl'
,p_message_text=>'Paket WWSEC_SSO_ENABLER_PRIVATE ne obstaja ali je neveljaven.'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129301755879027567)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De najti imena aplikacije registriranega partnerja v shemi preverjanja pristnosti.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324781244027574)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'sl'
,p_message_text=>unistr('Registrirajte to aplikacijo, kot je opisano v priro\010Dniku za namestitev.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314824312027571)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi preverjanja pristnosti SSO.'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428174169027605)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'sl'
,p_message_text=>'Neodobreni URL: %0'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314207077027571)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi preverjanja pristnosti.'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279669500027560)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'sl'
,p_message_text=>'Delovni prostor "%0" je neaktiven. Obrnite se na svojega skrbnika.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280372550027560)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'sl'
,p_message_text=>'%0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289405052027563)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'sl'
,p_message_text=>'Dostop je zavrnilo varnostno preverjanje aplikacije'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289535080027563)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'sl'
,p_message_text=>'Dostop je zavrnilo varnostno preverjanje strani'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289683452027563)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi odobritve.'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358771651027584)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'sl'
,p_message_text=>'Izdelano s/z %0 z uporabo %1'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358855285027584)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'sl'
,p_message_text=>'ljubezen'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418605798027602)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>'Opis dogodka'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418405368027602)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'sl'
,p_message_text=>'Datum konca'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418700532027602)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'sl'
,p_message_text=>'ID dogodka'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418308023027602)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'sl'
,p_message_text=>unistr('Datum za\010Detka')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418529049027602)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Naziv dogodka'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261101902027555)
,p_name=>'APEX.CARD'
,p_message_language=>'sl'
,p_message_text=>'Kartica'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261362453027555)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'sl'
,p_message_text=>'Dejanje kartice'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302009325027567)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'sl'
,p_message_text=>'Vizualno skrito potrditveno polje'
,p_is_js_message=>true
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303956697027568)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka vsebine kontrolne vsote'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303814580027568)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka formata kontrolne vsote'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373774581027589)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'sl'
,p_message_text=>unistr('Kopirano v odlo\017Ei\0161\010De.')
,p_is_js_message=>true
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373252808027588)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'sl'
,p_message_text=>'Ta brskalnik ne podpira kopiranja iz gumba ali menija. Poskusite z ukazom Ctrl + C ali Command + C.'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359496801027584)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'sl'
,p_message_text=>'Zapri'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237899286027548)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Vsebina urejevalnika kode presega maksimalno dol\017Eino elementa (dejansko \0161tevilo znakov je %0, dovoljenih je toliko znakov: %1)')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417934379027602)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'sl'
,p_message_text=>'Kontrast'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412487997027600)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'sl'
,p_message_text=>'Trenutno'
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412399412027600)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Detno')
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416565435027601)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# mora biti veljavna barva. Primer: %0'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278974469027560)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'sl'
,p_message_text=>unistr('Ve\010D barv')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279096621027560)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'sl'
,p_message_text=>'Odpri izbirnik barve'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236142613027547)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'sl'
,p_message_text=>unistr('Dvosmerni vodoravni drsnik za alfo. Za krmarjenje uporabite pu\0161\010Di\010Dni tipki.')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235840248027547)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tirismerni drsnik za barvni spekter. Za krmarjenje uporabite pu\0161\010Di\010Dne tipke.')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129235964705027547)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'sl'
,p_message_text=>unistr('Dvosmerni navpi\010Dni drsnik za odtenek. Za krmarjenje uporabite pu\0161\010Di\010Dni tipki.')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412273039027600)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'sl'
,p_message_text=>'Izbira barve'
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412546867027600)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Spreminjanje formata barve'
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450467322027612)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'sl'
,p_message_text=>'Seznam vrednosti'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450596446027612)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'sl'
,p_message_text=>'Odpri seznam za: %0'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430898489027606)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'sl'
,p_message_text=>unistr('(Dokon\010Dano)')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319788933027572)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'sl'
,p_message_text=>'Obrnite se na skrbnika aplikacije.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335216197027577)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Obrnite se na skrbnika aplikacije.',
'Podrobnosti o tem incidentu so na voljo prek ID-ja za iskanje napak "%0".'))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416880996027602)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'sl'
,p_message_text=>'Pred shranjevanjem popravite napake.'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262126122027555)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'sl'
,p_message_text=>'%0. Za brisanje pritisnite tipko Backspace.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360399565027585)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'sl'
,p_message_text=>'Najdenih je toliko zadetkov: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242237595027549)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'sl'
,p_message_text=>'1 najdeno ujemanje'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360240810027585)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'sl'
,p_message_text=>'Ni ustreznih zadetkov'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236695777027547)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'sl'
,p_message_text=>'Drugo'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236547425027547)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'sl'
,p_message_text=>'Izbrane vrednosti: %0'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431369577027606)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'sl'
,p_message_text=>'Trenutni napredek'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417282266027602)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Datoteka, dolo\010Dena v elementu %0, ne obstaja v APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405792555027598)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'sl'
,p_message_text=>'Trenutna verzija podatkov v bazi podatkov se je spremenila, odkar je uporabnik inicializiral postopek posodobitve.'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374826103027589)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'sl'
,p_message_text=>'Ne nalagaj'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421109876027603)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'sl'
,p_message_text=>'Predobdelava napake'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420942221027603)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'sl'
,p_message_text=>'Vstavi vrstico'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434538776027607)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'sl'
,p_message_text=>'Zaporedje: Dejanje'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421035301027603)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'sl'
,p_message_text=>'Posodobi vrstico'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249558927027551)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'sl'
,p_message_text=>'Dejanja'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277199948027559)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'sl'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263288071027555)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'sl'
,p_message_text=>'%0 mora biti izbirnik datuma ali veljaven datum, na primer %1.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372472075027588)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti')
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280665233027560)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'sl'
,p_message_text=>unistr('Kon\010Dano')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291614236027564)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>'%0 ima nepodprte dele v maski formata: %1'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276877397027559)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'sl'
,p_message_text=>'Ura'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360733076027585)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'sl'
,p_message_text=>'Pojavni koledar: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276644797027559)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'sl'
,p_message_text=>'Teden'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276737863027559)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'sl'
,p_message_text=>'Teden'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277081411027559)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'sl'
,p_message_text=>'Minute'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277283067027559)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'sl'
,p_message_text=>'Mesec'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277631639027559)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'sl'
,p_message_text=>'Naslednji mesec'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247221920027550)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'sl'
,p_message_text=>'Pojavno okno za %0'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277542858027559)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'sl'
,p_message_text=>unistr('Prej\0161nji mesec')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370053176027588)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'sl'
,p_message_text=>'Izbirnik datuma samo za branje'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278413064027560)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'sl'
,p_message_text=>'Izberite datum'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247381110027550)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'sl'
,p_message_text=>unistr('Izberite datum in \010Das')
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244589512027550)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'sl'
,p_message_text=>'Izberite dan'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247945200027551)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'sl'
,p_message_text=>'Izberite mesec in leto'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244770161027550)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'sl'
,p_message_text=>unistr('Izberite \010Das')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245246118027550)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'sl'
,p_message_text=>'Danes'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262894789027555)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# mora biti veljaven datum, na primer %0.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262574401027555)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# mora biti med %0 in %1.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262638252027555)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# mora biti na ali po %0.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262751373027555)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# mora biti na ali pred %0.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254144892027552)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'sl'
,p_message_text=>'Vizualno skrito urejanje'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277497951027559)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'sl'
,p_message_text=>'Leto'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364457863027586)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'sl'
,p_message_text=>unistr('#LABEL# zna\0161a ve\010D od navedenega maksimalnega datuma %0.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364817796027586)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# se ne ujema s formatom %0.'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364329339027586)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'sl'
,p_message_text=>unistr('#LABEL# zna\0161a manj od navedenega minimalnega datuma %0.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364588164027586)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# ni v veljavnem razponu med %0 in %1.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364796821027586)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# ni v veljavnem razponu let med %0 in %1.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256511857027553)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Med obdelavo zahteve DBMS_CLOUD je pri\0161lo do notranje napake.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417110995027602)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Prekli\010Di')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443063400027609)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'sl'
,p_message_text=>'Zapri'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304271678027568)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'sl'
,p_message_text=>'Potrditev'
,p_is_js_message=>true
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445042422027610)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416955481027602)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'sl'
,p_message_text=>'V redu'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417078454027602)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'sl'
,p_message_text=>'Shrani'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284734981027562)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'sl'
,p_message_text=>'Naslov pogovornega okna'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324447552027574)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Naslov vizualno skritega pogovornega okna'
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245545493027550)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'sl'
,p_message_text=>'Predvgrajena funkcija generatorja dokumentov Oracle'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256372605027553)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri tiskanju dokumenta.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233538753027546)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'sl'
,p_message_text=>'%s ne podpira %1 kot izhod.'
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245469507027550)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka "%0" pri priklicu predvgrajene funkcije generatorja dokumentov Oracle:'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236929158027547)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Zahtevana je predloga.'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262391510027555)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka med prenosom datoteke.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262257073027555)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Prenosljivih podatkov ni bilo mogo\010De najti.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265822220027556)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'sl'
,p_message_text=>unistr('Ta funkcija ni na voljo v okolju samo v \010Dasu izvajanja.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318634264027572)
,p_name=>'APEX.ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka'
,p_is_js_message=>true
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278519553027560)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'sl'
,p_message_text=>unistr('Med izvajanjem povratnega klica obravnavanja napak je pri\0161lo do naslednje napake: %0')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291166130027564)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Med slikanjem strani z napako je pri\0161lo do napake: %0')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280292210027560)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'sl'
,p_message_text=>'Notranja napaka'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429926889027605)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Obrnite se na skrbnika.',
'Podrobnosti o tem incidentu so na voljo prek ID-ja za iskanje napak "%0".'))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424504226027604)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'sl'
,p_message_text=>'Baza podatkov je odprta za dostop samo za branje.'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454690622027613)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'sl'
,p_message_text=>'ORA-28353: Odpiranje denarnice ni uspelo. Podatki o aplikaciji trenutno niso na voljo.'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424628909027604)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Ta stran \017Eal ni razpolo\017Eljiva')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283277730027561)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'sl'
,p_message_text=>unistr('Tehni\010Dne informacije (na voljo samo razvijalcem)')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389116895027593)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'sl'
,p_message_text=>unistr('Sporo\010Dilo o napaki')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403055584027597)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri\010Dakovani format: %0')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367990906027587)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabnik je \017Ee na seznamu kontrole dostopa')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367811971027587)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'sl'
,p_message_text=>unistr('Potrdite dodajanje naslednjega \0161tevila uporabnikov na seznam kontrole dostopa <strong>%1</strong>: %0.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368347330027587)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'sl'
,p_message_text=>'Obstaja dvojnik uporabnika'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368025955027587)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'sl'
,p_message_text=>unistr('V e-po\0161tnem naslovu manjka znak afne (@)')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368163220027587)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'sl'
,p_message_text=>unistr('V e-po\0161tnem naslovu manjka pika (.)')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368240685027587)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabni\0161ko ime je predolgo')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368593353027587)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'sl'
,p_message_text=>'Do te aplikacije lahko dostopajo samo uporabniki, navedeni na seznamu kontrole dostopa aplikacije'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368614215027587)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'sl'
,p_message_text=>unistr('Nepri\010Dakovana vrednost nastavitve kontrole dostopa: %0')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368425163027587)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'sl'
,p_message_text=>'Do te aplikacije lahko dostopajo vsi uporabniki s preverjeno pristnostjo'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412946530027600)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Onemogo\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412802424027600)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Omogo\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413168283027600)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('%0: Je onemogo\010Deno')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413090308027600)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('%0: Je omogo\010Deno')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261618095027555)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>'Ni podprto'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322810700027573)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'sl'
,p_message_text=>'Izklopljeno'
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322727669027573)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'sl'
,p_message_text=>'Vklopljeno'
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412769155027600)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'sl'
,p_message_text=>'ni identificirano'
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253276314027552)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'sl'
,p_message_text=>'%0 B'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253710655027552)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'sl'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253430131027552)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'sl'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253606650027552)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'sl'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405925034027598)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'sl'
,p_message_text=>'Prenos'
,p_is_js_message=>true
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259013124027554)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enosti')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258716775027554)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258991807027554)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'sl'
,p_message_text=>'Skrij faseto'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283610668027561)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Dodajanje filtra'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359947629027585)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'sl'
,p_message_text=>'Dodeljen filter %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284384157027562)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'sl'
,p_message_text=>'Dodeli'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403517146027598)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'sl'
,p_message_text=>'Dodeli'
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284454937027562)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Prekli\010Di')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268230403027557)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'sl'
,p_message_text=>unistr('Pali\010Dni grafikon')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416296369027601)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'sl'
,p_message_text=>'Drugo'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268385150027557)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'sl'
,p_message_text=>'Tortni grafikon'
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414825460027601)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Grafikon'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268014936027557)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404040251027598)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti')
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404102788027598)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti vse')
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404226389027598)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti %0')
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420709923027603)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>'Stolpec %1, na katerega se sklicuje faseta %0, ni na voljo ali ni odobren.'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231421906027546)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Izbira filtrov za prikaz'
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357912881027584)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. rezultatov: %0')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358010797027584)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. izbranih: %0')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360887030027585)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'sl'
,p_message_text=>'Trenutni filtri'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236471010027547)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'sl'
,p_message_text=>unistr('Za fasetno iskanje potrebujete vir podatkov na ravni podro\010Dja.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240158674027548)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'sl'
,p_message_text=>'Seznam filtrov'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419276230027602)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Razli\010Dna meja vrednosti (%0) je prese\017Eena za faseto %1.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405552597027598)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Faseta %0 ni podprta za stolpce DATE ali TIMESTAMP.'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403681928027598)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'sl'
,p_message_text=>'Filter %0'
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278231047027560)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'sl'
,p_message_text=>'%0 (Filter dodeljen)'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403769480027598)
,p_name=>'APEX.FS.GO'
,p_message_language=>'sl'
,p_message_text=>'Pojdi'
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273729812027558)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'sl'
,p_message_text=>'vsebuje %0'
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405181225027598)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'sl'
,p_message_text=>'Enako %0'
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273424112027558)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'sl'
,p_message_text=>unistr('ve\010D kot %0')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273585525027558)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'sl'
,p_message_text=>unistr('ve\010Dje kot ali enako %0')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273151418027558)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'sl'
,p_message_text=>'manj kot %0'
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273385718027558)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'sl'
,p_message_text=>unistr('manj\0161e kot ali enako %0')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272641351027558)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'sl'
,p_message_text=>'ne vsebuje %0'
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258402165027554)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'sl'
,p_message_text=>'ni enako %0'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272784046027558)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'sl'
,p_message_text=>unistr('se ne za\010Dne s/z %0')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273682063027558)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'sl'
,p_message_text=>unistr('se za\010Dne s/z %0')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271744279027558)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'sl'
,p_message_text=>'Izbira fasete'
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247548863027551)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'sl'
,p_message_text=>'Predpona filtra "%0" je neveljavna za faseto "%1".'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245903513027550)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'sl'
,p_message_text=>'Predpona filtra manjka za faseto "%0".'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280102283027560)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'sl'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262082448027555)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'sl'
,p_message_text=>'vsebuje'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261095140027554)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'sl'
,p_message_text=>'je enako'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261720529027555)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'sl'
,p_message_text=>unistr('ve\010Dje kot')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261856182027555)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'sl'
,p_message_text=>unistr('ve\010Dje ali enako kot')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261466686027555)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'sl'
,p_message_text=>unistr('manj\0161e kot')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261576106027555)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'sl'
,p_message_text=>unistr('manj\0161e kot ali enako')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272550643027558)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'sl'
,p_message_text=>'ne vsebuje'
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261217360027555)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'sl'
,p_message_text=>'ni enako'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272438933027558)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'sl'
,p_message_text=>unistr('se ne za\010Dne s/z')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129261991792027555)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'sl'
,p_message_text=>unistr('se za\010Dne s/z')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280577426027560)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Podatkovni tip %0 (%1) ni podprt za faseto Vnosno polje.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247464956027550)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Filter "%0" ni podprt za faseto "%1" (podatkovni tip %2).'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280015729027560)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'sl'
,p_message_text=>'Vrednost'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405333243027598)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'sl'
,p_message_text=>'Za faseto %0 niso bili zagotovljeni nobeni stolpci za iskanje'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231527476027546)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'sl'
,p_message_text=>unistr('Ve\010D filtrov')
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358120162027584)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Detek razpona')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404862106027598)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'sl'
,p_message_text=>'%0 do %1'
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404946217027598)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'sl'
,p_message_text=>'Nad %0'
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405072521027598)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'sl'
,p_message_text=>'Pod %0'
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358264711027584)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'sl'
,p_message_text=>'Konec razpona'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422842756027603)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'sl'
,p_message_text=>unistr('Element seznama vrednosti #%2 ("%1") za faseto razpona %0 je neveljaven (manjka lo\010Dilo "|").')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405230494027598)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>unistr('Ro\010Dni vnos za faseto Razpon %0 trenutno ni podprt, ker je stolpec DATE ali TIMESTAMP.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404586101027598)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'sl'
,p_message_text=>'do'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268136944027557)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'sl'
,p_message_text=>'Odstrani grafikon'
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354519633027583)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'sl'
,p_message_text=>'Ponastavi'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403959384027598)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Iskanje'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403850137027598)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'sl'
,p_message_text=>unistr('I\0161\010Di ...')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404721655027598)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'sl'
,p_message_text=>'- Izbira -'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267970857027557)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'sl'
,p_message_text=>'Prikaz grafikona'
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404360363027598)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei manj')
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404453247027598)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei vse')
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129404686243027598)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Toliko zvezdic in ve\010D: %0')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359863442027585)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'sl'
,p_message_text=>'Filtriraj predloge'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405482188027598)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Faseta Besedilno polje %0 je trenutno podprta le za stolpce NUMBER.'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230999687027546)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Skupno \0161tevilo vrstic')
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420862878027603)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Podatkovni tip %0 (%1) ni podprt za fasetno iskanje.'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351078726027582)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'sl'
,p_message_text=>'Vizualno skrit naslov'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413348955027601)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Pojdi na napako'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369355735027587)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'sl'
,p_message_text=>unistr('Zdru\017Eevanje.')
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297264153027565)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'sl'
,p_message_text=>'Prazen naslov'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378632571027590)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'sl'
,p_message_text=>'Strni kontrolni prelom'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369499351027587)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'sl'
,p_message_text=>'Kontrolni prelom.'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378551070027590)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'sl'
,p_message_text=>unistr('Raz\0161iri kontrolni prelom')
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378397736027590)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. izbrisanih vrstic: %0')
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447469832027611)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'sl'
,p_message_text=>'Podvojena identiteta'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240344423027548)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'sl'
,p_message_text=>unistr('Vstopanje v na\010Din urejanja')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366222044027586)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'sl'
,p_message_text=>'Prvi'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239182059027548)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'sl'
,p_message_text=>'Skrij pogovorno okno'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238158671027548)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Plavajo\010Di prese\017Eek vsebine celice')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239436948027548)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei prese\017Eek vsebine')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313695341027570)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'sl'
,p_message_text=>unistr('Noga mre\017Ee')
,p_is_js_message=>true
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369647410027587)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'sl'
,p_message_text=>'Glava skupine'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369533666027587)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'sl'
,p_message_text=>'Glava.'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366387802027586)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'sl'
,p_message_text=>'Zadnji'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240542655027548)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zapu\0161\010Danje na\010Dina urejanja')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265265363027556)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalo\017Ei vse')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388110410027593)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei ve\010D')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366054607027586)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369769699027587)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'sl'
,p_message_text=>'Vrstice strani'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278865618027560)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'sl'
,p_message_text=>'Stran %0'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366415199027586)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'sl'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366536367027587)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'sl'
,p_message_text=>'%0 - %1 od %2'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423436319027604)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'sl'
,p_message_text=>'Izbira strani'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313953507027571)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevil\010Denje strani')
,p_is_js_message=>true
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366123109027586)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264198237027555)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'sl'
,p_message_text=>'Prikaz razpona'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297507965027566)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'sl'
,p_message_text=>'Izbira vrstic'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447295295027611)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'sl'
,p_message_text=>'Dodano'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447396634027611)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'sl'
,p_message_text=>'Spremenjeno'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455673814027613)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'sl'
,p_message_text=>unistr('Zaporedje vrstic mre\017Ee %0, stolpec %1.')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455782086027613)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'sl'
,p_message_text=>unistr('Zaporedje vrstic mre\017Ee %0.')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447179693027611)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'sl'
,p_message_text=>'Izbrisano'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369956040027588)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'sl'
,p_message_text=>'Glava strani'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297429317027566)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'sl'
,p_message_text=>'Izbira vrstice'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265339097027556)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'sl'
,p_message_text=>'Izbrano: %0 %1'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365425390027586)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. izbranih celic: %0')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366682609027587)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. izbranih vrstic: %0')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408717909027599)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'sl'
,p_message_text=>'Izberi vse'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302221376027567)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'sl'
,p_message_text=>'Izberi vse vrstice'
,p_is_js_message=>true
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378449548027590)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'sl'
,p_message_text=>'Stran %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369867088027587)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'sl'
,p_message_text=>'Izbira vrstice'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370150665027588)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvr\0161\010Deno nara\0161\010Dajo\010De %0')
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370290083027588)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvr\0161\010Deno padajo\010De %0')
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365500973027586)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvrsti nara\0161\010Dajo\010De')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365830450027586)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvrsti nara\0161\010Dajo\010De %0')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365672473027586)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvrsti padajo\010De')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365908198027586)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvrsti padajo\010De %0')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365760533027586)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'sl'
,p_message_text=>unistr('Ne razvr\0161\010Daj')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231349958027546)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enosti razvr\0161\010Danja')
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313709005027570)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'sl'
,p_message_text=>'Ikone stanja'
,p_is_js_message=>true
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313843477027571)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'sl'
,p_message_text=>unistr('Status mre\017Ee')
,p_is_js_message=>true
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243606403027549)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'sl'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243332794027549)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'sl'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378284894027590)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'sl'
,p_message_text=>'Skupno %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297020250027565)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'sl'
,p_message_text=>'Zahteva HTTP za "%0" ni uspela.'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298602391027566)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Stolpec %0'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298878906027566)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'sl'
,p_message_text=>'Stolpec %0 in vrstica %1'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299183831027566)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('\017De v prvem stolpcu. Stolpec %0 in vrstica %1')
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299041314027566)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'sl'
,p_message_text=>unistr('\017De v prvi vrsti. Stolpec %0 in vrstica %1')
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444690186027610)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'sl'
,p_message_text=>'Predstavljeno v %0 stolpcih in %1 vrsticah'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299216549027566)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('\017De v zadnjem stolpcu. Stolpec %0 in vrstica %1')
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298936540027566)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'sl'
,p_message_text=>unistr('\017De v zadnji vrstici. Stolpec %0 in vrstica %1')
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378190581027590)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'sl'
,p_message_text=>'Predstavljeno v %0 vrsticah'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298743313027566)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'sl'
,p_message_text=>'Vrstica %0'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455494046027613)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Interaktivna mre\017Ea %0')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362550299027585)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'sl'
,p_message_text=>'Dejanja'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363523019027586)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'sl'
,p_message_text=>'Dodaj'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363484527027586)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'sl'
,p_message_text=>'Dodaj vrstico'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449015810027611)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zdru\017Eevanje')
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434657331027607)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Zdru\017Eevanje')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436389214027607)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'sl'
,p_message_text=>'Vse'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393993100027595)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Vsi besedilni stolpci'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395126139027595)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'sl'
,p_message_text=>'Nadomestno'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396256514027595)
,p_name=>'APEX.IG.AND'
,p_message_language=>'sl'
,p_message_text=>'in'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415606126027601)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'sl'
,p_message_text=>unistr('Pribl. \0161tevilo razli\010Dnih')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450074042027611)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Skupno pribl. \0161tevilo razli\010Dnih')
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433212005027606)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'sl'
,p_message_text=>unistr('Obmo\010Dje')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435138001027607)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Nara\0161\010Dajo\010De')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395281320027595)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'sl'
,p_message_text=>'Odobritev'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449130819027611)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'sl'
,p_message_text=>'Samodejno'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416050598027601)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'sl'
,p_message_text=>unistr('Povpre\010Dje')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449723253027611)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Skupno povpre\010Dje')
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432779584027606)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Naslov osi oznake'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432903901027606)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'sl'
,p_message_text=>'Decimalna mesta'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432883621027606)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Naslov osi vrednosti'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438941161027608)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'sl'
,p_message_text=>'Barva ozadja'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433326982027606)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'sl'
,p_message_text=>'Vrstica'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390564479027594)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'sl'
,p_message_text=>'med'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440114545027608)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'sl'
,p_message_text=>'Oboje'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433437933027606)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Mehur\010Dek')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363746340027586)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Prekli\010Di')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396113672027595)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'sl'
,p_message_text=>unistr('Upo\0161tevaj velike/male \010Drke')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450624475027612)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'sl'
,p_message_text=>unistr('(Upo\0161tevaj velike/male \010Drke)')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421940861027603)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'sl'
,p_message_text=>'Spremembe shranjene'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364199338027586)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'sl'
,p_message_text=>'Sprememba pogleda'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397241757027596)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'sl'
,p_message_text=>'Grafikon'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393775059027595)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161a poizvedba presega maksimalno \0161tevilo podatkovnih to\010Dk %0 na grafikon. Uporabite filter, da zmanj\0161ate \0161tevilo zapisov v osnovni poizvedbi.')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362413891027585)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'sl'
,p_message_text=>'Pogled grafikona'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370839920027588)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti')
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432248495027606)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Zapri'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439116222027608)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'sl'
,p_message_text=>'Barve'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416458438027601)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'sl'
,p_message_text=>'Predogled'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395586893027595)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Stolpec'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362671028027585)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Stolpci'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324554937027574)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'sl'
,p_message_text=>'Dejanja stolpca'
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324330723027574)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'sl'
,p_message_text=>'Dejanja za stolpec "%0"'
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440998625027609)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Namen stolpca'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395692545027595)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'sl'
,p_message_text=>'Zapleteno'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362817039027585)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'sl'
,p_message_text=>unistr('Izra\010Dun')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391115826027594)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'sl'
,p_message_text=>'vsebuje'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397434018027596)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'sl'
,p_message_text=>'Kontrolni prelom'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370606263027588)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'sl'
,p_message_text=>unistr('Kopiraj v odlo\017Ei\0161\010De')
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370742422027588)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'sl'
,p_message_text=>'Kopiranje navzdol'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415412303027601)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415558148027601)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo razli\010Dnih')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449926106027611)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Skupno \0161tevilo razli\010Dnih')
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449827234027611)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Skupno \0161tevilo')
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447569246027611)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'sl'
,p_message_text=>'Ustvari %0'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394137373027595)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'sl'
,p_message_text=>'Podatki'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440796674027609)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Podatkovni tip'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440305128027608)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'sl'
,p_message_text=>'Datum'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421745710027603)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'sl'
,p_message_text=>'Neveljavna vrednost datuma'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391845803027594)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'sl'
,p_message_text=>'dnevi'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394881945027595)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>'Privzete nastavitve'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394657829027595)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Privzeti tip'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363632393027586)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441811795027609)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'sl'
,p_message_text=>unistr('Ali ste prepri\010Dani, da \017Eelite izbrisati to poro\010Dilo?')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399214296027596)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbri\0161i vrstico')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398052076027596)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbri\0161i vrstice')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435234692027607)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Padajo\010De')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396956431027596)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'sl'
,p_message_text=>'Podrobnost'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362194410027585)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'sl'
,p_message_text=>'Podroben pogled'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424239139027604)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'sl'
,p_message_text=>'Smer'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396629509027596)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Onemogo\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391258807027594)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'sl'
,p_message_text=>'ne vsebuje'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391485144027594)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'sl'
,p_message_text=>unistr('se ne za\010Dne s/z')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433578667027606)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'sl'
,p_message_text=>'Kolobar'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397679517027596)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'sl'
,p_message_text=>'Prenos'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287981763027563)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'sl'
,p_message_text=>'Samo podatki'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442810632027609)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'sl'
,p_message_text=>'Izbira formata'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303015924027567)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Format prenosa %0 ni omogo\010Den.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435963467027607)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Podvojeno zdru\017Eevanje')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436096240027607)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'sl'
,p_message_text=>'Podvojen kontrolni prelom'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399104747027596)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'sl'
,p_message_text=>'Podvoji vrstico'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397968302027596)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'sl'
,p_message_text=>'Podvojene vrstice'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363295010027586)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'sl'
,p_message_text=>'Uredi'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435073252027607)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'sl'
,p_message_text=>'Uredi grafikon'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315549548027571)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'sl'
,p_message_text=>'Urejanje %0'
,p_is_js_message=>true
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446452591027610)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'sl'
,p_message_text=>'Uredi grupiranje'
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353643930027583)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 v na\010Dinu urejanja')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329228564027575)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Mre\017Ea v na\010Dinu urejanja, prekli\010Dite pritisk za preklop v na\010Din ogleda')
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442466809027609)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'sl'
,p_message_text=>'Slepa kopija (Skp)'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442691978027609)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'sl'
,p_message_text=>unistr('Sporo\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442302279027609)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'sl'
,p_message_text=>'Kopija (Kp)'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442044697027609)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'sl'
,p_message_text=>unistr('E-po\0161tno sporo\010Dilo je poslano.')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442535040027609)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'sl'
,p_message_text=>'Zadeva'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442247501027609)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'sl'
,p_message_text=>'Prejemnik (Za)'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396308361027595)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Omogo\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389592877027593)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'sl'
,p_message_text=>'je enako'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396477301027595)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'sl'
,p_message_text=>'Izraz'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441490364027609)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Tip'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408600667027599)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'sl'
,p_message_text=>unistr('Datoteka je pripravljena. Za\010Detek prenosa.')
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370964372027588)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'sl'
,p_message_text=>'Zapolnitev'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373116170027588)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Zapolnitev izbire s/z'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373083681027588)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Zapolnitev izbire'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362732559027585)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'sl'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395764609027595)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'sl'
,p_message_text=>'Filtri'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449413690027611)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'sl'
,p_message_text=>'Filtriranje ...'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435437970027607)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'sl'
,p_message_text=>'Prvi'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362991266027585)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'sl'
,p_message_text=>'Pogled nazaj'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394243560027595)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'sl'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440018032027608)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'sl'
,p_message_text=>'Maska formata'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441740342027609)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'sl'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441651861027609)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'sl'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352782475027582)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'sl'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286635308027562)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'sl'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398846258027596)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'sl'
,p_message_text=>'Zamrzni'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396505627027596)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'sl'
,p_message_text=>'Funkcije in operatorji'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433687514027607)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'sl'
,p_message_text=>'Lijak'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415392590027601)
,p_name=>'APEX.IG.GO'
,p_message_language=>'sl'
,p_message_text=>'Pojdi'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390104975027594)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'sl'
,p_message_text=>unistr('ve\010Dje kot')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390256733027594)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'sl'
,p_message_text=>unistr('ve\010Dje kot ali enako')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396889547027596)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'sl'
,p_message_text=>unistr('Mre\017Ea')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361923520027585)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'sl'
,p_message_text=>unistr('Pogled mre\017Ee')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436211208027607)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'sl'
,p_message_text=>'Skupina'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397071505027596)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'sl'
,p_message_text=>'Grupiranje'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362252211027585)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'sl'
,p_message_text=>'Pogled grupiranja'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440679596027609)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Tip pogoja'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439533079027608)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'sl'
,p_message_text=>'Naslov'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439751419027608)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'sl'
,p_message_text=>'Poravnava naslova'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449399528027611)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444858813027610)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Podatke lahko vstavljate, posodabljate in bri\0161ete neposredno v tej interaktivni mre\017Ei.</p>'),
'',
'<p>Novo vrstico vstavite tako, da kliknete gumb Dodaj vrstico.</p>',
'',
unistr('<p>Obstoje\010De podatke uredite tako, da dvokliknete dolo\010Deno celico. Pri obse\017Enej\0161em urejanju kliknite Uredi, da vstopite v na\010Din za urejanje. V na\010Dinu za urejanje lahko dolo\010Dene celice urejate tako, da jih enkrat kliknete ali uporabite tipkovnico.</p>'),
'',
unistr('<p>Z menijem Spremeni podvojite in bri\0161ite vrstice. \010Ce \017Eelite omogo\010Diti meni Spremeni, uporabite potrditvena polja, da izberete eno ali ve\010D vrstic.</p>'),
'',
unistr('<p>Izbrano vrstico podvojite tako, da kliknete meni Spremeni in izberete Podvoji vrstice. Izbrano vrstico izbri\0161ite tako, da kliknete meni Spremeni in izberete Izbri\0161i vrstico.</p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446935952027610)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'sl'
,p_message_text=>unistr('Zmo\017Enosti urejanja')
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447038280027610)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interaktivna mre\017Ea predstavlja nabor podatkov v poro\010Dilu, po katerem je mogo\010De iskati in ga prilagajati. Izvajate lahko \0161tevilne operacije za omejitev vrnjenih zapisov in spremenite na\010Din prikaza podatkov.</p>'),
'',
unistr('<p>S poljem Iskanje filtrirajte vrnjene rezultate. Kliknite Dejanja za dostop do \0161tevilnih mo\017Enosti za spreminjanje postavitve poro\010Dila ali pa uporabite menije Glava stolpca na prikazanih stolpcih.</p>'),
'',
unistr('<p>Uporabite Nastavitve poro\010Dila, da shranite svoje prilagoditve v poro\010Dilo. Podatke iz poro\010Dila lahko tudi prenesete v zunanjo datoteko ali jih po\0161ljete po e-po\0161ti sebi ali drugim.</p>'),
'',
unistr('<p>Za ve\010D informacij si oglejte "Uporaba interaktivnih mre\017E" v <em>priro\010Dniku za kon\010Dnega uporabnika Oracle APEX</em>.')))
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446745612027610)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'sl'
,p_message_text=>'Pregled'
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444771397027610)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interaktivno mre\017Eo lahko prilagodite tako, da prikazuje podatke na razli\010Dne na\010Dine z vgrajenimi zmo\017Enostmi.</p>'),
'',
unistr('<p>Z meniji Glava stolpca ali menijem Dejanja dolo\010Dite, kateri stolpci bodo prikazani , v katerem zaporedju, stolpce pa lahko tudi zamrznete. Dolo\010Dite lahko tudi razli\010Dne filtre podatkov in razvrstite vrnjene podatke.</p>'),
'',
unistr('<p>Z gumbom Pogled (poleg polja Iskanje) dostopajte do drugih pogledov podatkov, ki jih je morda dolo\010Dil razvijalec aplikacije. Lahko tudi ustvarite grafikon ali si ogledate obstoje\010Di grafikon.</p>  '),
'',
unistr('<p><em>Opomba: Kliknite <strong>Pomo\010D</strong> v pogovornih oknih interaktivne mre\017Ee, da pridobite podrobnej\0161e informacije o izbrani funkciji.</em></p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446803611027610)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'sl'
,p_message_text=>unistr('Zmo\017Enosti poro\010Danja')
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397839633027596)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Interaktivna mre\017Ea - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443613559027609)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom zdru\017Eite stolpce. Zdru\017Eene vrednosti se prika\017Eejo na dnu podatkov, \010De pa so dolo\010Deni kontrolni prelomi, se prika\017Eejo na dnu vsakega preloma.</p>'),
'',
unistr('<p><strong>Seznam zdru\017Eevanja</strong><br>'),
unistr('Na seznamu zdru\017Eevanja so prikazana dolo\010Dena zdru\017Eevanja. Obstoje\010De zdru\017Eevanje onemogo\010Dite tako, da prekli\010Dete njegovo izbiro.<br>'),
unistr('Kliknite Dodaj ( &plus; ), da ustvarite novo zdru\017Eevanje, ali Izbri\0161i ( &minus; ), da odstranite obstoje\010De zdru\017Eevanje.</p>'),
'',
unistr('<p><strong>Nastavitve zdru\017Eevanja</strong><br>'),
unistr('Z obrazcem na desni strani dolo\010Dite zdru\017Eevanje.<br>'),
unistr('Izberite ime stolpca in tip zdru\017Eevanja.<br>'),
unistr('Druga mo\017Enost je, da za zdru\017Eevanje vnesete zaslonski namig.<br>'),
unistr('\010Ce ste dolo\010Dili kontrolni prelom, z izbiro mo\017Enosti <strong>Prika\017Ei skupno vrednost</strong> na dnu podatkov prika\017Eete celotno povpre\010Dje, skupno vrednost ali podobno vrednost.</p>'),
'',
unistr('<p><em>Opomba: Do pogovornega okna Zdru\017Eevanje dostopajte v meniju Dejanja ali tako, da kliknete naslov stolpca in vsoto ( &sum; ).</em></p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445874026027610)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zdru\017Eevanje - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444389368027610)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom dolo\010Dite grafikon, ki se prika\017Ee kot lo\010Den prikaz podatkov.<br>'),
'Izberite tip grafikona in atribute grafikona.</p>',
'<p><strong>Atributi grafikona</strong><br>',
unistr('Razpolo\017Eljivi atributi grafikona se razlikujejo glede na tip grafikona.</p>'),
'<p>',
'<ul>',
'  <li>Izberite stolpec, ki vsebuje vrednost za atribut:',
'    <ul>',
unistr('      <li>Oznaka - Besedilo za vsako podatkovno to\010Dko.</li>'),
'      <li>Vrednost - Podatki, ki bodo izrisani.</li>',
unistr('      <li>Serija - Za definiranje dinami\010Dne poizvedbe z ve\010D serijami.</li>'),
unistr('      <li>Odpiranje - Dnevna za\010Detna cena delnic (Samo Delnica).</li>'),
unistr('      <li>Zaklju\010Dek - Dnevna zaklju\010Dna cena delnic (Samo Delnica).</li>'),
'      <li>Visoko - Visoka vrednost (Samo Razpon in Delnica).</li>',
'      <li>Nizko - Nizka vrednost (Samo Razpon in Delnica).</li>',
'      <li>Obseg - Dnevni obseg delnic (Samo Delnica).</li>',
'      <li>Cilj - Ciljna vrednost (Samo Lijak).</li>',
unistr('      <li>X - Vrednost osi x (Samo Mehur\010Dek in Raztreseni).</li>'),
unistr('      <li>Y - Vrednost osi y (Samo Mehur\010Dek in Raztreseni).</li>'),
unistr('      <li>Z - \0160irina stolpca ali polmer mehur\010Dka (Samo Stolp\010Dni, Mehur\010Dek in Razpon).</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Usmerjenost - Navpi\010Dno ali vodoravno.</li>'),
unistr('  <li>Zdru\017Eevanje - Izberite, kako zdru\017Eiti povezane vrednosti grafikona.</li>'),
unistr('  <li>Sklad - Dolo\010Dite, ali so elementi podatkov nalo\017Eeni v sklad.</li>'),
unistr('  <li>Razvrsti po - Razvr\0161\010Danje po oznaki ali vrednostih.'),
'    <ul>',
unistr('      <li>Smer - Razvr\0161\010Danje po nara\0161\010Dajo\010Dih ali padajo\010Dih vrednostih.</li>'),
unistr('      <li>Ni\010Dle - Dolo\010Dite, kako razvrstiti zapise z ni\010Delnimi vrednostmi glede na zapise z neni\010Delnimi vrednostmi.</li>'),
'    </ul>',
'  </li>',
'  <li>Decimalna mesta</li>',
'  <li>Naslov osi oznake</li>',
'  <li>Naslov osi vrednosti</li>',
'</ul>',
'</p>'))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446274525027610)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Grafikon - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443398964027609)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>To pogovorno okno uporabite za izbiranje tega, kateri stolpci se prika\017Eejo in v katerem vrstnem redu.</p>'),
'',
unistr('<p>Stolpec skrijete tako, da prekli\010Dete njegovo izbiro.<br>'),
'Stolpce prerazporedite tako, da kliknete Premakni navzgor ( &uarr; ) ali Premakni navzdol ( &darr; ).<br>',
unistr('S spustnim izbirnikom na seznamu navedite mo\017Enosti Vsi stolpci, Prikazani stolpci ali Neprikazani stolpci.</p>'),
'',
unistr('<p>Obrazec lahko uporabite za dolo\010Danje minimalne \0161irine stolpca v pikslih.</p>'),
'',
unistr('<p><em>Opomba: Prikazane stolpce lahko prerazporedite tudi tako, da kliknete oprimek za vle\010Denje (na za\010Detku glave stolpca) in povle\010Dete stolpec v levo ali desno. \0160irino prikazanih stolpcev lahko spremenite tudi tako, da izberete lo\010Devalnik stolpca, ')
||'med glavami, in ga premaknete v levo ali desno.</em></p>'))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446194531027610)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Stolpci - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443778667027609)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom dolo\010Dite dodatne stolpce na podlagi matemati\010Dnih in funkcijskih izra\010Dunov, izvedenih na podlagi obstoje\010Dih stolpcev.</p>'),
'',
unistr('<p><strong>Seznam izra\010Dunov</strong><br>'),
unistr('Na seznamu izra\010Dunov so prikazani dolo\010Deni izra\010Duni. Obstoje\010Di izra\010Dun onemogo\010Dite tako, da prekli\010Dete njegovo izbiro.<br>'),
unistr('Kliknite Dodaj ( &plus; ), da dodate nov izra\010Dun, ali Izbri\0161i ( &minus; ), da odstranite obstoje\010Di izra\010Dun.</p>'),
'',
unistr('<p><strong>Nastavitve izra\010Dunov</strong><br>'),
unistr('Z obrazcem dolo\010Dite izra\010Dun.<br>'),
'Vnesite podrobnosti stolpca, kot sta naslov in oznaka, ter izberite nastavitve poravnave.<br> ',
unistr('Z besedilnim obmo\010Djem Izraz vnesite stolpce in povezane funkcije za izra\010Dun.<br>'),
unistr('Izberite ustrezen podatkovni tip in po \017Eelji masko formata za nov stolpec.</p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445774004027610)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Izra\010Dun - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444025072027610)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom dolo\010Dite kontrolni prelom na enem ali ve\010D stolpcih.</p>'),
'',
'<p><strong>Seznam kontrolnih prelomov</strong><br>',
unistr('Na seznamu kontrolnih prelomov so prikazani dolo\010Deni kontrolni prelomi. Onemogo\010Dite obstoje\010Di kontrolni prelom tako, da prekli\010Dete njegovo izbiro.<br>'),
unistr('Kliknite Dodaj ( &plus; ), da vklju\010Dite nov stolpec v kontrolni prelom, ali Izbri\0161i ( &minus; ), da odstranite obstoje\010Di stolpec iz kontrolnega preloma.<br>'),
'Stolpce prerazporedite tako, da kliknite Premakni navzgor ( &uarr; ) ali Premakni navzdol ( &darr; ), da premaknete izbrani stolpec navzgor in navzdol glede na druge stolpce.</p>',
'',
'<p><strong>Nastavitve kontrolnega preloma</strong><br>',
unistr('Z obrazcem dolo\010Dite stolpec s kontrolnim prelomom.<br>'),
unistr('Izberite stolpec s kontrolnim prelomom, smer razvr\0161\010Danja in na\010Din razporeditve ni\010Delnih stolpcev (stolpci brez vrednosti).</p>'),
'',
unistr('<p><em>Opomba: Kadar si ogledujete interaktivno mre\017Eo, lahko kontrolni prelom dolo\010Dite tako, da kliknete glavo stolpca in izberete ikono kontrolnega preloma.</em></p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445495582027610)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Kontrolni prelom - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444204952027610)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom prenesite vse trenutne vrstice v zunanjo datoteko. Datoteka bo vsebovala le trenutno prikazane stolpce, pri \010Demer bodo uporabljeni katerikoli filtri in razvr\0161\010Danja, uporabljeni pri podatkih.</p>'),
'',
'<p>Izberite format datoteke in kliknite Prenesi.<br>',
'Opomba: Datoteka CSV ne bo vsebovala formatiranja besedila, na primer skupnih vrednosti in kontrolnih prelomov.</p>',
'',
unistr('<p>\010Ce \017Eelite datoteko poslati po elektronski po\0161ti, izberite Po\0161lji kot e-po\0161to in vnesite podrobnosti e-po\0161te (prejemnik, zadeva in sporo\010Dilo).</p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445207354027610)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Prenos - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443408305027609)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom konfigurirajte podatkovne filtre, ki omejujejo \0161tevilo vrnjenih vrstic.</p>'),
'',
'<p><strong>Seznam filtrov</strong><br>',
unistr('Na seznamu filtrov so prikazani dolo\010Deni filtri. Obstoje\010Di filter onemogo\010Dite tako, da prekli\010Dete njegovo izbiro.<br>'),
unistr('Kliknite Dodaj ( &plus; ), da ustvarite nov filter, ali Izbri\0161i ( &minus; ), da odstranite obstoje\010Di filter.</p>'),
'',
'<p><strong>Nastavitve filtra</strong><br>',
unistr('Uporabite obrazec, da dolo\010Dite lastnosti filtra.<br>'),
'Izberite ustrezen tip filtra:<br>',
unistr('&nbsp;&nbsp;&nbsp;Vrstica - filter za izraz v kateremkoli stolpcu, ki ga je mogo\010De filtrirati.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Stolpec - filtriranje dolo\010Denega stolpca z dolo\010Denim operatorjem in vrednostjo.</p>'),
'',
unistr('<p><em>Opomba: Med ogledom interaktivne mre\017Ee lahko dolo\010Dite filtre vrstic tako, da tipkate neposredno v polje Iskanje. Kliknite Izbira stolpcev za iskanje, da omejite iskanje na dolo\010Deni stolpec. Druga mo\017Enost je, da odprete meni naslova stolpca in ')
||'izberete vrednost za ustvarjanje filtra stolpca.</em></p>'))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446039758027610)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Filtriranje - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443859225027610)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom si oglejte podatke, kot so obstajali na neki pretekli to\010Dki v \010Dasu.</p>'),
unistr('<p>Vnesite \0161tevilo minut v preteklosti, da izvedete poizvedbo pogleda nazaj.</p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445683625027610)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Pogled nazaj - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446326754027610)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Grupiranje - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443999277027610)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom ozna\010Dite vrstice ali stolpce podatkov na podlagi vnesenih pogojev.</p>'),
'',
unistr('<p><strong>Seznam ozna\010Db</strong><br>'),
unistr('Na seznamu ozna\010Db so prikazane dolo\010Dene ozna\010Dbe. Obstoje\010Do ozna\010Dbo onemogo\010Dite tako, da prekli\010Dete njeno izbiro.<br>'),
unistr('Kliknite Dodaj ( &plus; ), da ustvarite novo ozna\010Dbo, ali Izbri\0161i ( &minus; ), da odstranite obstoje\010Do ozna\010Dbo.</p>'),
'',
unistr('<p><strong>Nastavitve ozna\010Db</strong><br>'),
unistr('Z obrazcem dolo\010Dite lastnosti ozna\010Dbe.<br>'),
'Vnesite ime, izberite vrstico ali stolpec in izberite barvne kode HTML za ozadje in besedilo.<br>',
unistr('Izberite ustrezno mo\017Enost <strong>Tip pogoja</strong>, da ozna\010Dite posebne podatke:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Vrstica - ozna\010Dite izraz v kateremkoli stolpcu.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Stolpec - ozna\010Dite znotraj posebnega stolpca na podlagi navedenega operatorja in vrednosti.</p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445555753027610)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Dba - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444141798027610)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S tem pogovornim oknom shranite spremembe, ki ste jih opravili pri trenutni postavitvi mre\017Ee in konfiguraciji.<br>'),
unistr('Razvijalci aplikacij lahko dolo\010Dijo ve\010D razli\010Dnih postavitev poro\010Dila. \010Ce je dovoljeno, lahko vi in drugi kon\010Dni uporabniki shranijo poro\010Dilo kot Javno, kar omogo\010Da, da je poro\010Dilo razpolo\017Eljivo vsem drugim uporabnikom mre\017Ee. Poro\010Dilo lahko shranite ')
||'tudi kot Zasebno, ki si ga lahko ogledate le vi.</p>',
unistr('<p>Izberite med razpolo\017Eljivimi tipi in vnesite ime za shranjeno poro\010Dilo.</p>')))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445302725027610)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Poro\010Dilo - Pomo\010D'),
''))
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443514147027609)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>S tem pogovornim oknom nastavite vrstni red prikaza.</p>',
'',
unistr('<p><strong>Seznam razvr\0161\010Danja</strong><br>'),
unistr('V pogovornem oknu Razvr\0161\010Danje je prikazan seznam konfiguriranih pravil razvr\0161\010Danja.<br>'),
unistr('Kliknite Dodaj ( &plus; ), da ustvarite stolpec za razvr\0161\010Danje, ali Izbri\0161i ( &minus; ), da odstranite stolpec za razvr\0161\010Danje.<br>'),
unistr('Kliknite Premakni navzgor ( &uarr; ) in Premakni navzdol ( &darr; ), da premaknete izbrani stolpec za razvr\0161\010Danje navzgor in navzdol relativno glede na ostale stolpce za razvr\0161\010Danje.</p>'),
'',
unistr('<p><strong>Nastavitve razvr\0161\010Danja</strong><br>'),
unistr('Izberite stolpec za razvr\0161\010Danje, smer razvr\0161\010Danja in na\010Din razvrstitve ni\010Delnih stolpcev (stolpci brez vrednosti).</p>'),
'',
unistr('<p><em>Opomba: Podatke lahko razvrstite glede na stolpce, ki niso prikazani; vendar pa se lahko zgodi, da ne bo mogo\010De razvrstiti vseh stolpcev.</em><br>'),
unistr('<em>Prikazane stolpce lahko razvrstite tako, da pritisnete pu\0161\010Dico navzgor (nara\0161\010Dajo\010De) ali navzdol (padajo\010De) na koncu glav stolpca. \010Ce \017Eelite obstoje\010Demu razvr\0161\010Danju dodati naslednji stolpec, pridr\017Eite tipko Shift in kliknite pu\0161\010Dico navzgor ali n')
||'avzdol.</em></p>'))
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445959949027610)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvr\0161\010Danje - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129445125232027610)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Naro\010Dnina - Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398722244027596)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'sl'
,p_message_text=>'Skrij'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363127257027586)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Dba')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432382920027606)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Visoko'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433108808027606)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'sl'
,p_message_text=>'Vodoravno'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391756915027594)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'sl'
,p_message_text=>'ure'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396712069027596)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'sl'
,p_message_text=>'Ikona'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362028311027585)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'sl'
,p_message_text=>'Pogled ikon'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389990332027594)
,p_name=>'APEX.IG.IN'
,p_message_language=>'sl'
,p_message_text=>'v'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398399750027596)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'sl'
,p_message_text=>'Neaktivna nastavitev'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398447606027596)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>'Neaktivne nastavitve'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406080995027598)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Med obdelavo zahteve Interaktivna mre\017Ea je pri\0161lo do notranje napake.')
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293924213027564)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Tip filtra stolpca "%0" ni podprt za stolpec "%1".'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444947046027610)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'sl'
,p_message_text=>'Neveljavna oblika datuma'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419716535027602)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('Interaktivna mre\017Ea ne podpira dolo\010Danja filtra na stolpcu %0.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419619673027602)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 ni veljaven tip filtra za dolo\010Danje filtra Interaktivna mre\017Ea.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300522734027566)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'sl'
,p_message_text=>unistr('Neveljaven format \0161tevilke')
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447641590027611)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'sl'
,p_message_text=>'Neveljavna nastavitev'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447720233027611)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>'Neveljavne nastavitve'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438873673027608)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enost Razvrsti po je bila nastavljena na %0, vendar za %0 ni bil izbran noben stolpec.')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436197370027607)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'sl'
,p_message_text=>'Neveljavna vrednost'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431272263027606)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'sl'
,p_message_text=>'Ni prikazano'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390780791027594)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'sl'
,p_message_text=>'v zadnjih'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390908498027594)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'sl'
,p_message_text=>'v naslednjih'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389823931027594)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>'ni prazno'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389736631027593)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'sl'
,p_message_text=>'je prazno'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439609230027608)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'sl'
,p_message_text=>'Oznaka'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431628263027606)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Oznaka'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435526530027607)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'sl'
,p_message_text=>'Zadnji'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380056191027591)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'sl'
,p_message_text=>'Zadnji dan'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380299183027591)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'sl'
,p_message_text=>'Zadnja ura'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380790469027591)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'sl'
,p_message_text=>'Zadnja minuta'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379767171027590)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'sl'
,p_message_text=>'Zadnji mesec'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379891960027591)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'sl'
,p_message_text=>'Zadnji teden'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379984434027591)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko dni: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380189710027591)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko ur: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380871197027591)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko minut: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380652075027591)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko mesecev: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380576999027591)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko tednov: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379552811027590)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko let: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379649991027590)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'sl'
,p_message_text=>'Zadnje leto'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439827089027608)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'sl'
,p_message_text=>'Poravnava celic'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439921341027608)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'sl'
,p_message_text=>'Uporabi skupino za'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390337469027594)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'sl'
,p_message_text=>unistr('manj\0161e kot')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390407797027594)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'sl'
,p_message_text=>unistr('manj\0161e kot ali enako')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433709564027607)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'sl'
,p_message_text=>'Vrstica'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433897087027607)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrstica z obmo\010Djem')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440214777027608)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'sl'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432487519027606)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Nizko'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442797896027609)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'sl'
,p_message_text=>unistr('Ve\010D naslovov lo\010Dite z vejicami')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391511680027594)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'sl'
,p_message_text=>'se ujema z regularnim izrazom'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415966210027601)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'sl'
,p_message_text=>'Maksimum'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450227339027611)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'sl'
,p_message_text=>'Skupno maksimalno'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416172875027601)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'sl'
,p_message_text=>'Mediana'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450342550027612)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'sl'
,p_message_text=>'Skupna mediana'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415859103027601)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'sl'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391621463027594)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'sl'
,p_message_text=>'minute'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416626546027601)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'sl'
,p_message_text=>'min. v preteklosti'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450118133027611)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'sl'
,p_message_text=>'Skupno minimalno'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392093028027594)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'sl'
,p_message_text=>'meseci'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398648108027596)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatki vsebujejo ve\010D kot toliko vrstic: %0, kar presega maksimalno dovoljeno \0161tevilo. Za ogled rezultatov dodelite dodatne filtre.')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424459171027604)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Naveden mora biti stati\010Dni ID podro\010Dja, saj stran vsebuje ve\010D interaktivnih mre\017E.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394763800027595)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'sl'
,p_message_text=>'Ime'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394907635027595)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Imenovano poro\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378962885027590)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'sl'
,p_message_text=>'Naslednji dan'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378722696027590)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'sl'
,p_message_text=>'Naslednja ura'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380903204027591)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'sl'
,p_message_text=>'Naslednja minuta'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379214615027590)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'sl'
,p_message_text=>'Naslednji mesec'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379145632027590)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'sl'
,p_message_text=>'Naslednji teden'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379092660027590)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko dni: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378868043027590)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko ur: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381056826027591)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko minut: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380359932027591)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko mesecev: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129380406616027591)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko tednov: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379427216027590)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko let: %0'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129379330139027590)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'sl'
,p_message_text=>'Naslednje leto'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390681374027594)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'sl'
,p_message_text=>'ni med'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389607868027593)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'sl'
,p_message_text=>'ni enako'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454489210027613)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Podro\010Dje z ID-jem %0 ni podro\010Dje interaktivne mre\017Ee ali pa ne obstaja v aplikaciji %1.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390088817027594)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'sl'
,p_message_text=>'ni v'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129390859449027594)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'sl'
,p_message_text=>'ni v zadnjih'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391014535027594)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'sl'
,p_message_text=>'ni v naslednjih'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398594416027596)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatkov ni bilo mogo\010De najti')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435307979027607)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'sl'
,p_message_text=>'Vrednosti NULL'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440443857027609)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilska vrednost')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435686661027607)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'sl'
,p_message_text=>'Izklopljeno'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435730438027607)
,p_name=>'APEX.IG.ON'
,p_message_language=>'sl'
,p_message_text=>'Vklopljeno'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388852937027593)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred 1 minuto'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443255438027609)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'sl'
,p_message_text=>'Odpri izbirnik barve: %0'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432107400027606)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Odpri'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395880450027595)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'sl'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431571758027606)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'sl'
,p_message_text=>'Usmerjenost'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433913817027607)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'sl'
,p_message_text=>'Tortni'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397117607027596)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'sl'
,p_message_text=>'Vrtenje'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129362318512027585)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'sl'
,p_message_text=>'Vrtilni pogled'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129443134184027609)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrednosti lo\010Dite s/z "%0"')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434082824027607)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'sl'
,p_message_text=>'Polarni'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439352119027608)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'sl'
,p_message_text=>'Sredina'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439480027027608)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'sl'
,p_message_text=>'Konec'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439272309027608)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Detek')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395019741027595)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'sl'
,p_message_text=>'Primarno'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395315693027595)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'sl'
,p_message_text=>'Primarno privzeto'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411872667027600)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Primarno poro\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285467117027562)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'sl'
,p_message_text=>unistr('Vklju\010Ditev oznak za dostopnost')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282886284027561)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'sl'
,p_message_text=>unistr('Le\017Ee\010De')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282972810027561)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'sl'
,p_message_text=>unistr('Pokon\010Dno')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282772259027561)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'sl'
,p_message_text=>'Usmerjenost strani'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282620722027561)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'sl'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282539887027561)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'sl'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285695575027562)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'sl'
,p_message_text=>'Prilagojeno'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282376775027561)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'sl'
,p_message_text=>'Pravno'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282203072027561)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Crka')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282415271027561)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'sl'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282136820027561)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'sl'
,p_message_text=>'Velikost strani'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247763916027551)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Ci\0161\010Denje obogatenega besedila')
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434191088027607)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'sl'
,p_message_text=>'Radarski'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434248135027607)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'sl'
,p_message_text=>'Razpon'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444462481027610)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'sl'
,p_message_text=>unistr('Osve\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399365560027596)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'sl'
,p_message_text=>unistr('Osve\017Ei vrstico')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398161315027596)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'sl'
,p_message_text=>unistr('Osve\017Ei vrstice')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403363131027598)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Podro\010Dje interaktivne mre\017Ee ne obstaja v aplikaciji %0 na strani %1 in na podro\010Dju %2.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363814696027586)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'sl'
,p_message_text=>'Odstrani %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394414937027595)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453642742027613)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo je bilo izbrisano')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453353887027612)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nadomestno poro\010Dilo je bilo shranjeno za vse uporabnike')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453282281027612)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'sl'
,p_message_text=>unistr('Privzeto poro\010Dilo je bilo shranjeno za vse uporabnike')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453521528027613)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zasebno poro\010Dilo je bilo shranjeno')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453487652027612)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'sl'
,p_message_text=>unistr('Javno poro\010Dilo je bilo shranjeno za vse uporabnike')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403453885027598)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjena interaktivna mre\017Ea z imenom %0 ne obstaja.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388769209027593)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatki mre\017Ee pred toliko minutami: %0')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388623242027593)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatki mre\017Ee pred toliko minutami: 1')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324106230027574)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo o interaktivni mre\017Ei ne obstaja.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446621984027610)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo - Urejanje')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403272300027597)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjena interaktivna mre\017Ea z ID-jem %0 ne obstaja.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129446528881027610)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo - Shrani kot')
,p_is_js_message=>true
,p_version_scn=>2693472
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363908572027586)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>unistr('Nastavitve mre\017Ee')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454529500027613)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjena interaktivna mre\017Ea s stati\010Dnim ID-jem %0 ne obstaja.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449542728027611)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'sl'
,p_message_text=>unistr('Pogled poro\010Dila')
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363053466027585)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'sl'
,p_message_text=>'Ponastavi'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399431650027596)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'sl'
,p_message_text=>'Povrni spremembe'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398206306027596)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'sl'
,p_message_text=>'Povrni vrstice'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395416992027595)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'sl'
,p_message_text=>'Vrstica'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394380329027595)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo vrstic na stran')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454105471027613)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'sl'
,p_message_text=>'Dejanja za vrstice'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455345373027613)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'sl'
,p_message_text=>'Dejanja za vrstico %0'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129363319923027586)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'sl'
,p_message_text=>'Shrani'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408433856027599)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'sl'
,p_message_text=>'shranjeno'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313052510027570)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjeno poro\010Dilo: %0')
,p_is_js_message=>true
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361525419027585)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjena poro\010Dila')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361653153027585)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'sl'
,p_message_text=>'Privzeto'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335130022027577)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjeno poro\010Dilo z imenom %0 \017Ee obstaja. Vnesite novo ime.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361741852027585)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'sl'
,p_message_text=>'Zasebno'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361848701027585)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'sl'
,p_message_text=>'Javno'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449232373027611)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'sl'
,p_message_text=>'Shrani kot'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397512311027596)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>unistr('Shrani nastavitve poro\010Dila')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434328071027607)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'sl'
,p_message_text=>'Raztreseni'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361452718027585)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'sl'
,p_message_text=>'Iskanje'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441582846027609)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Iskanje: Vsi besedilni stolpci'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361381257027585)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Iskanje: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440842304027609)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'sl'
,p_message_text=>'Iskanje: Polno besedilo'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388529402027593)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'sl'
,p_message_text=>'Iskanje "%0"'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430968179027606)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'sl'
,p_message_text=>'- Izbira -'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371052196027588)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'sl'
,p_message_text=>'Izbira'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424108370027604)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'sl'
,p_message_text=>unistr('Izberite 1 vrstico znotraj nadrejenega podro\010Dja')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361247553027585)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'sl'
,p_message_text=>'Izbira stolpcev za iskanje'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453884250027613)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'sl'
,p_message_text=>'Dejanja izbire'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371226396027588)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'sl'
,p_message_text=>'Izbira celice'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371199932027588)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'sl'
,p_message_text=>'Izbira vrstice'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442101331027609)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161lji kot e-po\0161to')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434772565027607)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Serija'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358996809027584)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'sl'
,p_message_text=>'Prikaz'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414168535027601)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei skupno vrednost')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399009786027596)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'sl'
,p_message_text=>'Pogled ene vrstice'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397312758027596)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'sl'
,p_message_text=>'Razvrsti'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434808706027607)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'sl'
,p_message_text=>'Razvrsti po'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454236783027613)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('Dolo\010Dite lahko samo eno razvrstitev na stolpec.')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454092537027613)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'sl'
,p_message_text=>'Sprememba'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129435829586027607)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'sl'
,p_message_text=>'Sklad'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391312050027594)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'sl'
,p_message_text=>unistr('se za\010Dne s/z')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434466838027607)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'sl'
,p_message_text=>'Zaloga'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353724751027583)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>unistr('Raztegni \0161irino stolpcev')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129397771832027596)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Naro\010Dnina')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415708177027601)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'sl'
,p_message_text=>'Vsota'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455526766027613)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'sl'
,p_message_text=>unistr('Interaktivna mre\017Ea. Poro\010Dilo: %0, Pogled: %1.')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129449634189027611)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'sl'
,p_message_text=>'Skupna vsota'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432667753027606)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Cilj'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129439087273027608)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'sl'
,p_message_text=>'Barva besedila'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364096140027586)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'sl'
,p_message_text=>'Preklop'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246170517027550)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'sl'
,p_message_text=>unistr('Mre\017Ea')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414009911027601)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'sl'
,p_message_text=>'Zaslonski namig'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394536403027595)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'sl'
,p_message_text=>'Tip'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129398911090027596)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'sl'
,p_message_text=>'Odmrzni'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129396005552027595)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'sl'
,p_message_text=>'Enota'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441923769027609)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'sl'
,p_message_text=>unistr('Obstajajo neshranjene spremembe. Ali \017Eelite nadaljevati?')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129395965744027595)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'sl'
,p_message_text=>'Vrednost'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431749503027606)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Vrednost'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436662584027607)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Zahtevana je vrednost.'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421868043027603)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrednost (\010Dasovnega pasu ni mogo\010De spremeniti)')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129440512522027609)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'sl'
,p_message_text=>'Besedilo'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129433053798027606)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'sl'
,p_message_text=>unistr('Navpi\010Dno')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129394078251027595)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'sl'
,p_message_text=>'Pogled'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329138678027575)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Mre\017Ea v na\010Dinu ogleda, pritisnite za urejanje')
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431068764027606)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'sl'
,p_message_text=>'Prikazano'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432563063027606)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('Podro\010Dje')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129391989973027594)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'sl'
,p_message_text=>'tedni'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431188077027606)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'sl'
,p_message_text=>unistr('Minimalna \0161irina stolpca (slikovne pike)')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383155391027592)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'sl'
,p_message_text=>'%0 med %1 in %2'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382879753027591)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 vsebuje %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382907473027591)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 ne vsebuje %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358397757027584)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 se ne za\010Dne s/z %1')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381627800027591)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 je enako %1'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381814598027591)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 ve\010Dje kot %1')
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381978430027591)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 ve\010Dje kot ali enako %1')
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382656332027591)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 v %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383815556027592)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjih %1 dneh'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383699740027592)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjih %1 urah'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383442615027592)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjih %1 minutah'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384216147027592)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjih %1 mesecih'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384084858027592)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjih %1 tednih'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384497406027592)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjih toliko letih: %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383706329027592)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjem dnevu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383522095027592)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnji uri'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383373946027592)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnji minuti'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384166949027592)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjem mesecu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383932348027592)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjem tednu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384396372027592)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'sl'
,p_message_text=>'%0 v zadnjem letu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386250542027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjih %1 dneh'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386055099027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjih %1 urah'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385898429027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjih %1 minutah'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386649721027593)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjih %1 mesecih'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386424401027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjih %1 tednih'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386860464027593)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjih %1 letih'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386176405027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjem dnevu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385935303027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednji uri'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385745802027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednji minuti'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386565207027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjem mesecu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386311589027592)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjem tednu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386746159027593)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'sl'
,p_message_text=>'%0 v naslednjem letu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382333314027591)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>'%0 ni prazno'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382212484027591)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'sl'
,p_message_text=>'%0 je prazno'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382087438027591)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 manj\0161e kot %1')
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382175874027591)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 manj\0161e kot ali enako %1')
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382416335027591)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 kot %1'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383093546027591)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 se ujema z regularnim izrazom %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388994619027593)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko minutami: %0'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129383235470027592)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'sl'
,p_message_text=>'%0 ni med %1 in %2'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381718087027591)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 ni enako %1'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382720616027591)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385086218027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjih toliko dneh: %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384852566027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjih toliko urah: %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384673028027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjih toliko minutah: %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385453403027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjih toliko mesecih: %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385223443027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjih toliko tednih: %1'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385629206027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjih %1 letih'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384930855027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjem dnevu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384779276027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnji uri'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129384572484027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnji minuti'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385344203027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjem mesecu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385192834027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjem tednu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129385530438027592)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjem letu'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387498006027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjih %1 dneh'
,p_is_js_message=>true
,p_version_scn=>2693462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387230694027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjih %1 urah'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387089972027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjih %1 minutah'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387871856027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjih %1 mesecih'
,p_is_js_message=>true
,p_version_scn=>2693462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387636986027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjih %1 tednih'
,p_is_js_message=>true
,p_version_scn=>2693462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388002518027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjih %1 letih'
,p_is_js_message=>true
,p_version_scn=>2693462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387308729027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjem dnevu'
,p_is_js_message=>true
,p_version_scn=>2693462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387103353027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednji uri'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129386968829027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednji minuti'
,p_is_js_message=>true
,p_version_scn=>2693461
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387751299027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjem mesecu'
,p_is_js_message=>true
,p_version_scn=>2693462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387565460027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjem tednu'
,p_is_js_message=>true
,p_version_scn=>2693462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129387901109027593)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjem letu'
,p_is_js_message=>true
,p_version_scn=>2693462
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129382536256027591)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'sl'
,p_message_text=>'%0 ni kot %1'
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389471554027593)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 se za\010Dne s/z %1')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431830767027606)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392138751027594)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'sl'
,p_message_text=>'leta'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431959064027606)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129432003499027606)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441094281027609)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'sl'
,p_message_text=>'Ponedeljek, 12. januar 2016'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441194529027609)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'sl'
,p_message_text=>'Januar'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441221363027609)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'sl'
,p_message_text=>'Pred 16 urami'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129441327944027609)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'sl'
,p_message_text=>'v roku 16 h'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259302462027554)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'sl'
,p_message_text=>'Dodeli'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251382553027552)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Povlecite sliko in jo z drsnikom za pove\010Davo prestavite znotraj okvirja.</p>'),
'',
unistr('<p>Kadar je fokus na obrezovalniku slik, so na voljo naslednje bli\017Enjice na tipkovnici:</p>'),
'<ul>',
unistr('    <li>Pu\0161\010Dica levo: Premik slike levo*</li>'),
unistr('    <li>Pu\0161\010Dica navzgor: Premik slike navzgor*</li>'),
unistr('    <li>Pu\0161\010Dica desno: Premik slike desno*</li>'),
unistr('    <li>Pu\0161\010Dica navzdol: Premik slike navzdol*</li>'),
unistr('    <li>I: Pove\010Dava</li>'),
unistr('    <li>O: Pomanj\0161ava</li>'),
'    <li>L: Rotacija levo</li>',
'    <li>R: Rotacija desno</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Za hitrej\0161e premikanje dr\017Eite tipko Shift</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251581978027552)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010D za obrezovanje slike')
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259419708027554)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'sl'
,p_message_text=>'Ponastavi'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251867570027552)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'sl'
,p_message_text=>'Obrezovanje slike'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259566531027554)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Premaknite drsnik za prilagajanje ravni pove\010Dave')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289182263027563)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'sl'
,p_message_text=>'Neveljaven tip datoteke. Podprti tipi datotek %0.'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423565290027604)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'sl'
,p_message_text=>'Prebrskaj'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423200558027603)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'sl'
,p_message_text=>'Izbira datoteke'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423320269027603)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'sl'
,p_message_text=>'Izbira datotek'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288947630027563)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'sl'
,p_message_text=>'Povlecite in spustite'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289388270027563)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'sl'
,p_message_text=>'Povlecite in spustite datoteke'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290713520027563)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'sl'
,p_message_text=>'Izberite datoteko ali jo spustite sem.'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290895064027564)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'sl'
,p_message_text=>'Izberite ali spustite datoteke sem.'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290916058027564)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'sl'
,p_message_text=>'Izberite datoteko ali jo spustite sem.'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291084778027564)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'sl'
,p_message_text=>'Izberite ali spustite datoteke sem.'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289209918027563)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'sl'
,p_message_text=>'Datoteke: %0'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289089726027563)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'sl'
,p_message_text=>'Datoteka je prevelika. Maksimalna velikost datoteke je %0.'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269579965027557)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>unistr('Ve\010D nalaganj datotek ni podprtih.')
,p_is_js_message=>true
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252438708027552)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'sl'
,p_message_text=>'Odstrani'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257906190027554)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Naslov je zahtevan.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256874118027553)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'sl'
,p_message_text=>'Kraj'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257212681027553)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'sl'
,p_message_text=>unistr('Koda dr\017Eave')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256962663027553)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'sl'
,p_message_text=>unistr('Hi\0161na \0161tevilka')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257852110027554)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160irina')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257778073027554)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'sl'
,p_message_text=>unistr('Dol\017Eina')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257686369027553)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'sl'
,p_message_text=>unistr('Poka\017Ei na zemljevidu')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257307536027553)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'sl'
,p_message_text=>'Rezultat'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257083614027553)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161tna \0161tevilka')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257114390027553)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'sl'
,p_message_text=>'Stanje'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256735579027553)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'sl'
,p_message_text=>'Ulica'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256665893027553)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Rezultati geokodiranja'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288175548027563)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'sl'
,p_message_text=>'Geokodirano'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288243555027563)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'sl'
,p_message_text=>'Ni geokodirano'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257551968027553)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Zemljevid'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129257463734027553)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Nobenega naslova ni bilo mogo\010De najti.')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258043633027554)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'%0 je zahtevano.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364235565027586)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'sl'
,p_message_text=>'Zahteva se %0 ali %1.'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453751126027613)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'sl'
,p_message_text=>unistr('Oglejte si besedilo pomo\010Di za %0.')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259763809027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'sl'
,p_message_text=>'Izberite sliko'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259825185027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'sl'
,p_message_text=>'Izberite slike'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259680561027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'sl'
,p_message_text=>'Prenos'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259950603027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'sl'
,p_message_text=>'Povlecite in spustite'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260092308027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'sl'
,p_message_text=>'Povlecite in spustite slike'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260193064027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'sl'
,p_message_text=>'Izberite sliko ali jo spustite sem.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260261963027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'sl'
,p_message_text=>'Izberite ali spustite slike sem.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260374203027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'sl'
,p_message_text=>'Izberite sliko ali jo spustite sem.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260443423027554)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'sl'
,p_message_text=>'Izberite ali spustite slike sem.'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345105082027580)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'sl'
,p_message_text=>'Potrjeno'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345273777027580)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'sl'
,p_message_text=>'Nepotrjeno'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372723590027588)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'sl'
,p_message_text=>'Prazno kombinirano polje samo za branje'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370591266027588)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'sl'
,p_message_text=>'Prazno polje s seznamom samo za branje'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370346223027588)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'sl'
,p_message_text=>'Kombinirano polje samo za branje'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129370455558027588)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'sl'
,p_message_text=>'Polje s seznamom samo za branje'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286107108027562)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# ni v veljavnem razponu med %0 in %1.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286250955027562)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'sl'
,p_message_text=>unistr('#LABEL# ni ve\010Dkratnik %0.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373501074027589)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'sl'
,p_message_text=>'Stikalo samo za branje'
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314161799027571)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'sl'
,p_message_text=>'Urejanje samo za branje s povezavo'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285712631027562)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# se mora ujemati z vrednostma %0 in %1.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285987082027562)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Ne'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372248283027588)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Izklopljeno'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372328622027588)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Vklopljeno'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285875173027562)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Da'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293792981027564)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'sl'
,p_message_text=>'Izbirnik jezikov'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230105626027545)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'sl'
,p_message_text=>'Dodaj vnos'
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406909076027599)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'sl'
,p_message_text=>'Dodaj'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407096849027599)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'sl'
,p_message_text=>'Odstrani'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230291935027545)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'sl'
,p_message_text=>'Izbrani vnosi'
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410759947027600)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'sl'
,p_message_text=>'Napredno'
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411046976027600)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Prekli\010Di')
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410873739027600)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'sl'
,p_message_text=>unistr('Splo\0161no')
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411115093027600)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enosti predloge v \017Eivo')
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411703822027600)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enosti predloge niso na voljo, ker ta komponenta ni upodobljena na strani.')
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410654004027600)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enosti predloge ni bilo mogo\010De najti.')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410966245027600)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'sl'
,p_message_text=>'Shrani'
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264725810027556)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti krog')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267182447027556)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enost Prilagojeni slogi ni veljaven JSON.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265064845027556)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'sl'
,p_message_text=>'Orodje razdalje'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264891666027556)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nari\0161i krog')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244687325027550)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'sl'
,p_message_text=>'Trenutna lokacija'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251047749027552)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'sl'
,p_message_text=>unistr('Koordinate za\010Detnega polo\017Eaja so neveljavne.')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240004259027548)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Detni polo\017Eaj mora biti to\010Dkovna geometrija.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248667208027551)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'sl'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243854762027549)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'sl'
,p_message_text=>'Plast'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414280967027601)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'sl'
,p_message_text=>'Nivo: %0'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263063905027555)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'sl'
,p_message_text=>'Zemljevid'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232737150027546)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'sl'
,p_message_text=>unistr('Sporo\010Dila')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248882845027551)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'sl'
,p_message_text=>'milje'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413299530027601)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatki vsebujejo ve\010D kot %0 vrstic, kar presega maksimalno dovoljeno \0161tevilo.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243115896027549)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'sl'
,p_message_text=>'&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Pogoji</a> &nbsp;&nbsp; Podatki zemljevida &copy; 2021 HERE'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239786447027548)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatkovni tip SDO_GEOMETRY ni razpolo\017Eljiv v tej bazi podatkov.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243269263027549)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'sl'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Sodelavci pri OpenStreetMap </a>'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267864988027557)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'sl'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Sodelavci pri OpenStreetMap </a>'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244026489027549)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'sl'
,p_message_text=>unistr('To\010Dke')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414304924027601)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 To\010Dke')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264995794027556)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'sl'
,p_message_text=>unistr('Pove\010Dava pravokotnika')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264614379027556)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Odstrani'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244491372027550)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'sl'
,p_message_text=>'Ponastavitev usmerjenosti na sever'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359299396027584)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'sl'
,p_message_text=>unistr('Preklopi na 2D-na\010Din')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359338587027584)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'sl'
,p_message_text=>unistr('Preklopi na 3D-na\010Din')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264526217027556)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'sl'
,p_message_text=>'Preklop obvestila o avtorskih pravicah'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265129230027556)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'sl'
,p_message_text=>'Skupna razdalja'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244118085027549)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'sl'
,p_message_text=>unistr('Pove\010Dava')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244307686027550)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomanj\0161ava')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408885229027599)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'sl'
,p_message_text=>'Krepko'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409715695027599)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'sl'
,p_message_text=>'Slika'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409358924027599)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'sl'
,p_message_text=>'Koda v vrstici'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422094322027603)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'sl'
,p_message_text=>'Vstavi sliko'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422129465027603)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'sl'
,p_message_text=>'Vstavi povezavo'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408940723027599)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'sl'
,p_message_text=>unistr('Le\017Ee\010De')
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422757146027603)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'sl'
,p_message_text=>'Povezava'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409699204027599)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'sl'
,p_message_text=>'Seznam'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409505737027599)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvr\0161\010Den seznam')
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409020496027599)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'sl'
,p_message_text=>'Predogled'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409191000027599)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni ni\010Desar za predogled')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409230080027599)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'sl'
,p_message_text=>unistr('Pre\010Drtano')
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409489027027599)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Nerazvr\0161\010Den seznam')
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388368793027593)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'sl'
,p_message_text=>'trenutno'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129444538517027610)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Ve\010D ...')
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388286355027593)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'sl'
,p_message_text=>'Nalaganje'
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302475138027567)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'sl'
,p_message_text=>'Razdelitev gumba'
,p_is_js_message=>true
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302374897027567)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'sl'
,p_message_text=>'Razdelitev menija'
,p_is_js_message=>true
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419385098027602)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'sl'
,p_message_text=>unistr('Obvestilno sporo\010Dilo')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243419421027549)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 ni mogo\010De najti')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393365804027595)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'sl'
,p_message_text=>unistr('#LABEL# mora biti \0161tevilo, manj\0161e kot ali enako %0.')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393471429027595)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'sl'
,p_message_text=>unistr('#LABEL# mora biti veljavno \0161tevilo.')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393507881027595)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'sl'
,p_message_text=>unistr('#LABEL# se ne ujema s formatom \0161tevilke %0 (Primer: %1).')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393223155027595)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'sl'
,p_message_text=>unistr('#LABEL# mora biti \0161tevilo, ve\010Dje kot ali enako %0.')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393125858027595)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'sl'
,p_message_text=>unistr('#LABEL# mora biti \0161tevilo med %0 in %1.')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129388426683027593)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'sl'
,p_message_text=>'odpre se v novem oknu'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338287478027578)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'sl'
,p_message_text=>unistr('Ta stran je \017Ee bila predlo\017Eena in je ni mogo\010De ponovno predlo\017Eiti.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319696675027572)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>'Aplikacija "%0", stran "%1" ni bila najdena.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355196728027583)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'#LABEL# mora imeti neko vrednost.'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245808196027550)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'sl'
,p_message_text=>'Skrij geslo'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245751979027550)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei geslo')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293335991027564)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'sl'
,p_message_text=>'Iskanje'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407365556027599)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'sl'
,p_message_text=>'Zapri'
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407216340027599)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'sl'
,p_message_text=>unistr('Poi\0161\010Di%0')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407507646027599)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407400225027599)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284187418027561)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'sl'
,p_message_text=>'Vnesite iskani izraz, ki vsebuje vsaj toliko znakov: %0.'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360461530027585)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'sl'
,p_message_text=>'Pojavni seznam vrednosti: %0'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284229292027561)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'sl'
,p_message_text=>'Vnesite iskani izraz.'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231289058027546)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'sl'
,p_message_text=>'Seznam vrednosti'
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284094178027561)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'sl'
,p_message_text=>'Ni najdenih rezultatov.'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283982305027561)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'sl'
,p_message_text=>'Odstrani %0'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381137078027591)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'sl'
,p_message_text=>'Iskani izraz'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407168484027599)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'sl'
,p_message_text=>'Iskanje'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233322411027546)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Zahteva %0.'
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245602603027550)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka med tiskanjem poro\010Dila.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256486676027553)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokumenta ni mogo\010De natisniti z uporabo konfiguriranega tiskalni\0161kega stre\017Enika.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279112981027560)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka med ocenjevanjem parametra %0 pri klicanju %1. Za podrobnosti si oglejte dnevnik napak.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417816745027602)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'sl'
,p_message_text=>'Obdelava'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276993478027559)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278090518027560)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'sl'
,p_message_text=>unistr('To spletno mesto ime funkcionalnost aplikacije. Za najbolj\0161o izku\0161njo jo namestite v svojo napravo.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279343570027560)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280989806027560)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'sl'
,p_message_text=>'Namesti to aplikacijo'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265788003027556)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni videti, da bi va\0161a naprava ali brskalnik trenutno podpiral namestitev progresivnih spletnih aplikacij.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260812250027554)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'sl'
,p_message_text=>'1. Tapnite ikono <strong>Share</strong>'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260978770027554)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'sl'
,p_message_text=>'2. Pomaknite se navzdol in tapnite <strong>Add to Home Screen</strong>'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277314994027559)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'sl'
,p_message_text=>'3. Tapnite <strong style="color:#007AE1;">Add</strong> za potrditev'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276444739027559)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'sl'
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
unistr('    <h1>Ni mogo\010De povezati</h1>'),
unistr('    <p>Ka\017Ee, da obstaja te\017Eava z omre\017Ejem. Preverite povezavo in poskusite znova.</p>'),
'    <button type="button">Poskusi znova</button>',
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276359500027559)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De povezati')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322968215027573)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'sl'
,p_message_text=>unistr('Ta naprava ni uspela omogo\010Diti potisnih obvestil.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328473351027575)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Hitra izbiranja za %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328388345027575)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'sl'
,p_message_text=>'Povezava za hitro izbiranje'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302106549027567)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'sl'
,p_message_text=>'Vizualno skrit izbirni gumb'
,p_is_js_message=>true
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246252479027550)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'sl'
,p_message_text=>'Pogled ene vrstice'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428957898027605)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'sl'
,p_message_text=>'Dodaj'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374216069027589)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'sl'
,p_message_text=>'Ves dan'
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451827183027612)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161lji vabilo')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451604211027612)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enosti')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376059578027589)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'sl'
,p_message_text=>'Dnevni pogled za ves dan '
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375880924027589)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'sl'
,p_message_text=>unistr('Dnevni pogled za podatke s \010Dasom ')
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420060706027603)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'sl'
,p_message_text=>'Dan'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415058758027601)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>'Opis'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298503826027566)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'sl'
,p_message_text=>'CSV'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298308493027566)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'sl'
,p_message_text=>'iCal'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298269858027566)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'sl'
,p_message_text=>'PDF'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298497142027566)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'sl'
,p_message_text=>'XML'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297942450027566)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'sl'
,p_message_text=>'Datum konca'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298149229027566)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'sl'
,p_message_text=>'Ime dogodka'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451736599027612)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'sl'
,p_message_text=>'Vabilo'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420130351027603)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'sl'
,p_message_text=>'Seznam'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419878775027602)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'sl'
,p_message_text=>'Mesec'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422407267027603)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436495159027607)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'sl'
,p_message_text=>'Ni dogodkov'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452031426027612)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'sl'
,p_message_text=>unistr('Uredite obstoje\010Di dogodek.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451985740027612)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161ljite vabilo prek e-po\0161te.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422570180027603)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430247625027606)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161lji e-po\0161to')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430069625027605)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161lji e-po\0161to')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452685294027612)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Zahtevana so vsa polja.'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452550273027612)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161lji vabilo')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451566620027612)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'sl'
,p_message_text=>'Zadeva'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430123954027605)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'sl'
,p_message_text=>'Za'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129298085696027566)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'sl'
,p_message_text=>unistr('Datum za\010Detka')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428294470027605)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'sl'
,p_message_text=>'Obrazec na %0'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375612475027589)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Cas')
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422697713027603)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'sl'
,p_message_text=>'Danes'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420659117027603)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'sl'
,p_message_text=>'Pogled'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419997398027602)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'sl'
,p_message_text=>'Teden'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375960354027589)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'sl'
,p_message_text=>'Tedenski pogled za ves dan'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375768190027589)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'sl'
,p_message_text=>unistr('Tedenski pogled za podatke s \010Dasom')
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420505316027603)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'sl'
,p_message_text=>'Leto'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420265985027603)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Stolpci ...'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420395343027603)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalo\017Ei ve\010D ...')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349753251027582)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291295793027564)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalo\017Ei ve\010D ...')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293522537027564)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'sl'
,p_message_text=>unistr('I\0161\010Di ...')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129420438406027603)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalo\017Ei ve\010D ...')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422354281027603)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('ID podro\010Dja %0 ni najden.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293422233027564)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Najdeni niso bili nobeni podatki'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320918339027573)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De ponastaviti \0161tevil\010Denja strani podro\010Dja.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284602722027562)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri nastavljanju \0161tevil\010Denja strani podro\010Dja.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414403661027601)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Stolpci ...'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268960431027557)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Leno nalaganje ni zdru\017Eljivo z re\017Eami na podro\010Dju %0, ki je enojno (delno) podro\010Dje. Onemogo\010Dite leno nalaganje za to podro\010Dje ali premaknite komponente re\017E na drugo podro\010Dje.')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264216952027555)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'sl'
,p_message_text=>'V komponenti predloge za %0 manjka predloga skupine.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259230310027554)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 je enojno (delno) podro\010Dje in je vrnilo ve\010D vrstic.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129422250001027603)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>unistr('Tip podro\010Dja %0 ni podprt.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284513883027562)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka med upodabljanjem podro\010Dja "#COMPONENT_NAME#".')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355287200027583)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'#COLUMN_HEADER# mora imeti neko vrednost.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236862326027547)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Navesti morate postavitev poro\010Dila.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451130933027612)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'sl'
,p_message_text=>'%0, urejevalnik obogatenega besedila'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357394103027584)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Devanje HTML obogatenega besedila presega maksimalno dol\017Eino elementa (dejansko \0161tevilo znakov je %0, dovoljenih je toliko znakov: %1)')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266718245027556)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'sl'
,p_message_text=>'Urejevalnik obogatenega besedila samo za branje'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266669498027556)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'sl'
,p_message_text=>'Urejevalnik obogatenega besedila'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266416631027556)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'sl'
,p_message_text=>'Poravnava'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266591373027556)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'sl'
,p_message_text=>'Dodatki'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266236436027556)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'sl'
,p_message_text=>'Pisava'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266157864027556)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'sl'
,p_message_text=>'Formatiranje'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266340548027556)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'sl'
,p_message_text=>'Seznami'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419456892027602)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411906368027600)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'sl'
,p_message_text=>'Podvoji'
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410257872027600)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'sl'
,p_message_text=>'Prikazani stolpci'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410156619027600)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Izklju\010Di vrednosti NULL')
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419535769027602)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'sl'
,p_message_text=>'Dodaj'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373817814027589)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'sl'
,p_message_text=>'Premik navzdol'
,p_is_js_message=>true
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373908750027589)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'sl'
,p_message_text=>'Premik navzgor'
,p_is_js_message=>true
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409977472027599)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410593300027600)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Drugi stolpci'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410022757027600)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410370404027600)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'sl'
,p_message_text=>'Vrstica %0'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129410494838027600)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'sl'
,p_message_text=>'Vrstica %0 od %1'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412019931027600)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'sl'
,p_message_text=>unistr('Osve\017Ei')
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412147575027600)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'sl'
,p_message_text=>'Povrni spremembe'
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129409809733027599)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'sl'
,p_message_text=>'Nastavitve'
,p_is_js_message=>true
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369031370027587)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'sl'
,p_message_text=>'Na primer %0'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373342268027589)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'sl'
,p_message_text=>'Primer: %0'
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286043945027562)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'sl'
,p_message_text=>'1 rezultat'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283193083027561)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. rezultatov: %0')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334939521027577)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevil\010Denje strani')
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335003357027577)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'sl'
,p_message_text=>'Rezultati, %0 do %1'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230714466027546)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'sl'
,p_message_text=>'Ponovni vpis'
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230683001027545)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161a seja se je kon\010Dala')
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230800718027546)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'sl'
,p_message_text=>unistr('Raz\0161iritev')
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230428268027545)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161a seja bo kon\010Dana ob %0. Ali jo \017Eelite podalj\0161ati?')
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230526866027545)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161a seja se bo kon\010Dala ob %0 in je ni mogo\010De podalj\0161ati. Shranite vse delo zdaj, da ne izgubite podatkov')
,p_is_js_message=>true
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429823438027605)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri obdelavi kode za \010Di\0161\010Denje seje baze podatkov.')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319578311027572)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi kode za nastavitev seje baze podatkov.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289940079027563)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161a seja se je kon\010Dala.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429012394027605)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'sl'
,p_message_text=>'Zaprite to pogovorno okno in pritisnite gumb za ponovno nalaganje v brskalniku, da pridobite novo sejo.'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447912245027611)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'sl'
,p_message_text=>unistr('Za ustvarjanje nove seje se znova <a href="%0">vpi\0161ite</a>.')
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332273927027576)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'sl'
,p_message_text=>'Seja ni veljavna'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375322454027589)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'sl'
,p_message_text=>unistr('V seji Real Application Security ni bilo mogo\010De omogo\010Diti nobene dinami\010Dne vloge za uporabnika "%0".')
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317445980027572)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-99900 Ni bilo mogo\010De ustvariti enoli\010Dnega ID-ja seje: %0')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246517819027550)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>'CLOB podatkovnega tipa stanja seje ni dovoljen za element %0.'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265998618027556)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>'Zamenjava elementov za CLOB podatkovnega tipa stanja seje ni podprta.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334724700027577)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Kr\0161itev za\0161\010Dite stanja seje: Vzrok za to je lahko ro\010Dno spreminjanje za\0161\010Ditenega elementa strani %0. \010Ce niste prepri\010Dani, kaj je povzro\010Dilo to napako, se za pomo\010D obrnite na skrbnika aplikacije.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455996149027613)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Kr\0161itev za\0161\010Dite strani: Vzrok za to je lahko po\0161iljanje strani, ki se \0161e ni nalo\017Eila do konca, ali ro\010Dno spreminjanje za\0161\010Ditenih elementov strani. Za nadaljnjo pomo\010D se obrnite na skrbnika aplikacije.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455066509027613)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'sl'
,p_message_text=>'%0 vsebuje enega izmed naslednjih neveljavnih znakov &<>"/;,*|=% ali --'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455154423027613)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'sl'
,p_message_text=>'%0 vsebuje enega izmed naslednjih neveljavnih znakov &<>"/;,*|=% ali -- ali novo vrstico.'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454813935027613)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'sl'
,p_message_text=>'%0 vsebuje posebne znake. Dovoljeni so le znaki a-Z, 0-9 in presledki.'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454961672027613)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'sl'
,p_message_text=>'%0 vsebuje <, > ali ", kar so neveljavni znaki.'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292392178027564)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'sl'
,p_message_text=>unistr('Nobena kontrolna vsota ni bila navedena za prikaz obdelave za stran, ki zahteva kontrolno vsoto, kadar so kot parametri podani ena ali ve\010D zahtev, \010Di\0161\010Denje predpomnilnika ali vrednosti argumentov.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329677781027575)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Kr\0161itev za\0161\010Dite stanja seje: Vzrok za to je lahko ro\010Dno spreminjanje URL-ja, ki vsebuje kontrolno vsoto, ali uporaba povezave z nepravilno ali manjkajo\010Do kontrolno vsoto. \010Ce niste prepri\010Dani, kaj je povzro\010Dilo to napako, se za pomo\010D obrnite na skrbni')
||'ka aplikacije.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411256514027600)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'sl'
,p_message_text=>unistr('Izklop na\010Dina visokega kontrasta')
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411335282027600)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'sl'
,p_message_text=>unistr('Vklop na\010Dina visokega kontrasta')
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275790560027559)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Nastavitve aplikacije %0 ni mogo\010De posodobiti, ker je naro\010Dena iz druge aplikacije.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326006729027574)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'sl'
,p_message_text=>'Spodaj'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326270874027574)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'sl'
,p_message_text=>'Dol'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326375212027574)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'sl'
,p_message_text=>'Premik'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326473490027574)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'sl'
,p_message_text=>'Premakni vse'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326594130027574)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'sl'
,p_message_text=>'Odstrani'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326610770027574)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'sl'
,p_message_text=>'Odstrani vse'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326780787027574)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'sl'
,p_message_text=>'Ponastavi'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325993550027574)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'sl'
,p_message_text=>'Zgoraj'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326148762027574)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'sl'
,p_message_text=>'Gor'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437702718027608)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'sl'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438428708027608)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'v toliko dneh: %0'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437651789027608)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'sl'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438505194027608)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'v toliko urah: %0'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437455653027608)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'sl'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438666645027608)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'v toliko minutah: %0'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438049568027608)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'sl'
,p_message_text=>'%0mo'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438261210027608)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'v toliko mesecih: %0'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437521449027608)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'sl'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438318907027608)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'v toliko sekundah: %0'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437875264027608)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'sl'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438793124027608)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'v toliko tednih: %0'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437923284027608)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'sl'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129438148262027608)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'v toliko letih: %0'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239020888027548)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'sl'
,p_message_text=>unistr('[\010Crta]')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239665019027548)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'sl'
,p_message_text=>unistr('[Ve\010D \010Drt]')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239334309027548)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'sl'
,p_message_text=>unistr('[Ve\010D to\010Dk]')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239829557027548)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'sl'
,p_message_text=>unistr('[Ve\010D poligonov]')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239918095027548)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'sl'
,p_message_text=>'[Geometrijski objekt]'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238966088027548)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'sl'
,p_message_text=>unistr('[To\010Dka (%0,%1)]')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239234289027548)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'sl'
,p_message_text=>'[Poligon]'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238463200027548)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'sl'
,p_message_text=>unistr('Strnjeno podro\010Dje: %0')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353594604027583)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'sl'
,p_message_text=>'Strni'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237452700027548)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'sl'
,p_message_text=>unistr('Vodoravno usmerjenega razdelilnika ni mogo\010De premakniti levo ali desno')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237605763027548)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'sl'
,p_message_text=>unistr('Dose\017Eena je maksimalna velikost toliko pikslov: %0')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238629440027548)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'sl'
,p_message_text=>unistr('Dose\017Eena je minimalna velikost toliko pikslov: %0')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238551815027548)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'sl'
,p_message_text=>unistr('Podro\010Dje je strnjeno')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238315478027548)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'sl'
,p_message_text=>unistr('Podro\010Dje je obnovljeno')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238026538027548)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'sl'
,p_message_text=>'Velikost spremenjena na toliko pikslov: %0'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238224637027548)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'sl'
,p_message_text=>unistr('Obnovljeno podro\010Dje: %0')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353490484027583)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'sl'
,p_message_text=>'Obnovi'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237596138027548)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'sl'
,p_message_text=>unistr('Navpi\010Dno usmerjenega razdelilnika ni mogo\010De premakniti navzgor ali navzdol')
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402953652027597)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti oceno')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392865922027594)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v veljavnem razponu ocenjevanja 1 - %1'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392902807027594)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 ni \0161tevilska vrednost')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389009259027593)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'sl'
,p_message_text=>unistr('Sporo\010Dilo o uspehu')
,p_is_js_message=>true
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450806732027612)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450795338027612)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360954374027585)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Sistema zapisov, povezanega s to instanco naloge, ni mogo\010De najti')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369262465027587)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'sl'
,p_message_text=>'Izvedba dejanja naloge %0 ni uspela - naloga ima nastavljeno stanje z napako, preverite kodo dejanja naloge'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249408838027551)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>'Dodajanje komentarja: Ni pooblastila'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248776293027551)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga je \017Ee dodeljena')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242190497027549)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'sl'
,p_message_text=>'Dodeljeno %0'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248416071027551)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>'Preklic naloge: Ni pooblastila'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264022411027555)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'sl'
,p_message_text=>unistr('Dejanskega lastnika te naloge ni mogo\010De odstraniti. Pred ponovnim poskusom te operacije dodelite nalogo drugemu udele\017Eencu.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248094991027551)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>'Zahtevanje naloge: Ni pooblastila'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248182433027551)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokon\010Danje naloge: Ni pooblastila')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248202244027551)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>'Dodelitev naloge: Ni pooblastila'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246663284027550)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'sl'
,p_message_text=>'Datum zapadlosti naloge ne more biti v preteklosti.'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241975366027549)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'sl'
,p_message_text=>'Zapade %0'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242364390027549)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Dejanje naloge %1 ni uspelo. Sporo\010Dilo o napaki - %0')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242056265027549)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'sl'
,p_message_text=>'Ni uspelo'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241612283027549)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'sl'
,p_message_text=>'Uspeh'
,p_is_js_message=>true
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241888628027549)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Dejanje %1 je uspelo s sporo\010Dilom %0')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245137709027550)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'sl'
,p_message_text=>'Pred potekom'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270753839027557)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Prekli\010Di')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270257993027557)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Naloga je preklicana'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270851815027557)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>unistr('Udele\017Eencu ni dovoljeno preklicati naloge')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270134812027557)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'sl'
,p_message_text=>'Zahtevek'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270521038027557)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalogo je \017Ee zahteval drug uporabnik ali pa udele\017Eenec ni upravi\010Den do zahtevanja te naloge')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270351208027557)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Nalogo zahteval %0'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371464213027588)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokon\010Danje')
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269902208027557)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga je dokon\010Dana z rezultatom %0')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271257864027558)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga bodisi ni dodeljena bodisi udele\017Eencu ni dovoljeno dokon\010Danje naloge')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231638436027546)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga je dokon\010Dana brez rezultata')
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371587993027588)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'sl'
,p_message_text=>'Ustvarjanje'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264469630027556)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Naloga je ustvarjena z ID-jem %0'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371695407027588)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'sl'
,p_message_text=>'Dodelitev'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270046441027557)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Naloga je dodeljena potencialnemu lastniku %0'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270640687027557)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>unistr('Udele\017Eenec ni upravi\010Den ali pa novi udele\017Eenec ni potencialni lastnik te naloge')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243776948027549)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'sl'
,p_message_text=>'Potek'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244874437027550)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Naloga je potekla.'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371789506027588)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'sl'
,p_message_text=>'Ni uspelo'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240446652027548)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga bodisi ni dodeljena bodisi udele\017Eencu ni dovoljeno zahtevanje informacij za nalogo')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240615854027548)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>unistr('Bodisi nobene informacije za nalogo niso bile zahtevane bodisi udele\017Eencu ni dovoljeno predlo\017Eiti informacij za nalogo.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244225889027550)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga naj pote\010De, ko je dose\017Eeno maksimalno \0161tevilo obnovitev %0.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271576211027558)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga ni v pravilnem stanju ali pa udele\017Eenec ni poslovni skrbnik za to nalogo')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271656385027558)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'sl'
,p_message_text=>'Operacija %0 je neznana ali ni uporabna za to nalogo'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371848783027588)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'sl'
,p_message_text=>'Sprostitev'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357563926027584)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga je spro\0161\010Dena, zdaj jo lahko zahtevajo drugi')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250456029027551)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>'Sprostitev naloge ni dovoljena - uporabnik ni lastnik naloge'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267424133027556)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'sl'
,p_message_text=>'Odstrani lastnika'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267644898027556)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Udele\017Eenec %0 odstranjen iz naloge')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245015563027550)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'sl'
,p_message_text=>'Obnovitev'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243935781027549)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloga je bila obnovljena z ID-jem %0, maksimalno \0161tevilo preostalih obnovitev pred potekom je %1.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129244957755027550)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'ID naloge %0 obnovljen z ID-jem naloge %1'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240954542027549)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'sl'
,p_message_text=>'Zahtevanje informacij'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240878108027549)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zahtevano %0 za ve\010D informacij: %1')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238708902027548)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nastavite "Pobudnik lahko dokon\010Da" na %0')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241077356027549)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'sl'
,p_message_text=>unistr('Predlo\017Eitev informacij')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240745233027548)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zahtevane informacije so bile predlo\017Eene osebi %0: %1')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371931224027588)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'sl'
,p_message_text=>'Posodobitev komentarja'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268493288027557)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Dodajanje komentarja: %0'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271387866027558)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>'Stanje naloge ne dovoljuje nobenih komentarjev'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278638936027560)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Nastavite datum zapadlosti naloge na %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236779368027547)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'sl'
,p_message_text=>'Posodobitev zapade'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372074746027588)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'sl'
,p_message_text=>'Posodobitev lastnika'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269788863027557)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Dodajanje potencialnega lastnika %0 udele\017Eencem naloge')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268890790027557)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'sl'
,p_message_text=>'Posodobi parametre'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372102812027588)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'sl'
,p_message_text=>'Posodobitev prioritete'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129270497228027557)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Nastavitev prioritete naloge na %0'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267703599027556)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Parameter "%0" je bil posodobljen iz "%1" v "%2".'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251274185027552)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>'Naloga je bila preklicana, ker je bila ustrezna instanca delovnega toka prekinjena.'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248332165027551)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>'Posredovanje naloge: Ni pooblastila'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241769082027549)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'sl'
,p_message_text=>'Inicializiral %0 %1'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250632864027551)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri\0161lo je do nepri\010Dakovane notranje napake')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248937475027551)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'sl'
,p_message_text=>'Operacija naloge se ne uporablja'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274510155027559)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'sl'
,p_message_text=>'Ta morebitni lastnik ne obstaja.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250282577027551)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'sl'
,p_message_text=>'Odobreno'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250345903027551)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'sl'
,p_message_text=>'Zavrnjeno'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231709670027546)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokon\010Danje naloge zahteva rezultat')
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231948513027546)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>'Nalogi ni dovoljeno imeti rezultata'
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267599802027556)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De posodobiti parametra %0.')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263825065027555)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'sl'
,p_message_text=>unistr('Udele\017Eenec \017Ee obstaja za to instanco naloge.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365338907027586)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'sl'
,p_message_text=>'Nujno'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242496461027549)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>'Nujno'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365282244027586)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'sl'
,p_message_text=>'Visoko'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242566951027549)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>'Visoka prioriteta'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365127980027586)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'sl'
,p_message_text=>'Srednje'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242631920027549)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>'Srednja prioriteta'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129365057031027586)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'sl'
,p_message_text=>'Nizko'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242769210027549)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>'Nizka prioriteta'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364951054027586)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'sl'
,p_message_text=>unistr('Najni\017Eje')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242812470027549)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Najni\017Eja prioriteta')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129248550316027551)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>'Nastavitev prioritete naloge: Ni pooblastila'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249705480027551)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'sl'
,p_message_text=>'Dodeljeno'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250118577027551)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'sl'
,p_message_text=>'Preklicano'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249868398027551)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokon\010Dano')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250034524027551)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'sl'
,p_message_text=>'Z napako'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243517614027549)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'sl'
,p_message_text=>'Poteklo'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249925130027551)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'sl'
,p_message_text=>'Ni uspelo'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129240230642027548)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'sl'
,p_message_text=>'Informacije so bile zahtevane'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249653750027551)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'sl'
,p_message_text=>'Oddeljeno'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272052283027558)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ustvarjanje nove naloge za definicijo naloge %0 v aplikaciji %1 ni uspelo.',
'SQLCODE: %2'))
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271992560027558)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'sl'
,p_message_text=>unistr('Poskus ustvarjanja naloge za definicijo naloge %0 v aplikaciji %1 ni uspel, ker definicija naloge ne vsebuje nobenih potencialnih lastnikov - uredite definicijo naloge in dodajte vsaj enega udele\017Eenca tipa "potencialni lastnik"')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249203169027551)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Definicije naloge ni mogo\010De najti')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249126953027551)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Udele\017Eencev za nalogo ni mogo\010De najti')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250597614027551)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Ve\010D kot ena naloga za dani ID naloge - preverite pri svojem skrbniku baze podatkov')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249334493027551)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Naloge ni mogo\010De najti')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129249092187027551)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Parametra naloge ni mogo\010De najti')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285308432027562)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'sl'
,p_message_text=>'Dejanje'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285253661027562)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'sl'
,p_message_text=>'Odobritev'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232697667027546)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Postopek pravila za dopuste %2 se ni uspe\0161no izvedel za definicijo naloge %0 v aplikaciji %1.')
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129232877856027546)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Udele\017Eenec %1 je bil dodan kot zamenjava za udele\017Eenca %0. Vzrok - %2.')
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436592501027607)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'sl'
,p_message_text=>'Orodna vrstica'
,p_is_js_message=>true
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290035385027563)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'sl'
,p_message_text=>'Aplikacija'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451234385027612)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Raz\0161iri/strni krmarjenje')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451396338027612)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Raz\0161iri/strni stranski stolpec')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359741977027585)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Glavno krmarjenje'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260547927027554)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'sl'
,p_message_text=>'"%0" je neveljavno ime ograde.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367487540027587)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'sl'
,p_message_text=>'1 dan'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367277358027587)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'sl'
,p_message_text=>'1 ura'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367574919027587)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'sl'
,p_message_text=>'%0 (dnevi)'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367372370027587)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'sl'
,p_message_text=>'%0 (ure)'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367148764027587)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'sl'
,p_message_text=>'%0 (minute)'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367796932027587)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'sl'
,p_message_text=>'%0 (tedni)'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367605238027587)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'sl'
,p_message_text=>'1 teden'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265478814027556)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'sl'
,p_message_text=>'Izbrani elementi: %0'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265625391027556)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Izberi element'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129265519474027556)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'sl'
,p_message_text=>'Izberi %0'
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454373451027613)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Detek strani')
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311965164027570)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Omogo\010Deno')
,p_is_js_message=>true
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280433101027560)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri obdelavi zahteve.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266052427027556)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Besedilnega sporo\010Dila %0 ni mogo\010De posodobiti, ker je naro\010Deno iz druge aplikacije.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129369150820027587)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Zahtevana je vrednost'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285563338027562)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'sl'
,p_message_text=>'Raven naslova %0, skrito'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413950467027601)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'sl'
,p_message_text=>'Ta stran ima neshranjene spremembe.'
,p_is_js_message=>true
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275596588027559)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'sl'
,p_message_text=>'Krmar'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275263807027559)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'sl'
,p_message_text=>unistr('Pove\010Dava')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276267207027559)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Raven pove\010Dave {0} %')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275348965027559)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomanj\0161ava')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275403750027559)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'sl'
,p_message_text=>unistr('Ponastavitev pove\010Dave')
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250932546027552)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'sl'
,p_message_text=>'Diagram delovnega toka trenutno ni dostopen.'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129250897159027551)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Diagram delovnega toka'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252709577027552)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>'Instanca delovnega toka %0 je trenutno v stanju %1. Zato operacija ni dovoljena'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255392721027553)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'sl'
,p_message_text=>unistr('Instanca %1 aktivnosti %2 v delovnem toku %0 je bila zaklju\010Dena')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255150268027553)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'sl'
,p_message_text=>'Ustvarjena nova instanca %1 aktivnosti %2 v delovnem toku %0'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246964585027550)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Dodatne vrstice podatkov, povezane s to instanco aktivnosti delovnega toka, ni bilo mogo\010De najti')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255297441027553)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'sl'
,p_message_text=>unistr('Okvarjena instanca %1 aktivnosti %2 v delovnem toku %0 je bila ponovno posku\0161ena')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237211119027547)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'sl'
,p_message_text=>'Instanca aktivnosti %1 v delovnem toku %0 je bila prekinjena'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271085150027557)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'sl'
,p_message_text=>unistr('Instanci aktivnosti %1 v delovnem toku %0 je potekla \010Dasovna omejitev in je bila prekinjena.')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255485517027553)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'sl'
,p_message_text=>unistr('Instanca %1 aktivnosti %2 v delovnem toku %0 je v stanju \010Dakanja')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237099551027547)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'sl'
,p_message_text=>'Instanca delovnega toka %0 je bila spremenjena in nadaljevana pri aktivnosti %1'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254437600027553)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Cakajo\010Da instanca %1 aktivnosti %2 v delovnem toku %0 se je uspe\0161no zaklju\010Dila')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254273625027552)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Cakajo\010Da aktivnost %1 je bila Okvarjeno, ker je bil delovni tok %0 \017Ee v stanju Okvarjeno, preden se je aktivnost zaklju\010Dila')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254360054027553)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Cakajo\010Da aktivnost %1 je bila prekinjena, ker je bil delovni tok %0 \017Ee v stanju Prekinjeno, preden se je aktivnost zaklju\010Dila')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237370930027547)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'sl'
,p_message_text=>'Prekinitev aktivnosti %1 v delovnem toku %0 ni uspela zaradi izjeme - %2'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252932062027552)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'sl'
,p_message_text=>unistr('Delovni tok je trenutno zaposlen z zaklju\010Devanjem prej\0161nje operacije. Poskusite pozneje')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269009345027557)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokon\010Dano %0')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252092618027552)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>unistr('Delovnega toka %0 ni mogo\010De nadaljevati, ker je trenutno v aktivnosti %1, ki ni v stanju \010Dakanja')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263927290027555)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 ni veljaven kontekst korelacije delovnega toka za proces, ki se izvaja s to aktivnostjo delovnega toka. Kontekst korelacije mora biti besedilo, lo\010Deno z dvopi\010Dji, ki vsebuje APEX_APPL_WORKFLOW, ki mu sledita ID instance delovnega toka in ID instan')
||'ce aktivnosti.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254654900027553)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'sl'
,p_message_text=>'Ustvarjena nova instanca %0 delovnega toka %1, verzija %2'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246757994027550)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Dodatne vrstice podatkov, povezane s to instanco delovnega toka, ni bilo mogo\010De najti')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269205584027557)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'sl'
,p_message_text=>'Zapade %0'
,p_version_scn=>2693441
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254597761027553)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'sl'
,p_message_text=>unistr('Delovni tok %0 se je kon\010Dal s stanjem %1')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251791799027552)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatkovni tip %1 za pogoje, ki se primerjajo v aktivnosti stikala delovnega toka %0, ni zdru\017Eljiv z operatorjem pogoja')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241559050027549)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'sl'
,p_message_text=>'Inicializiral %0 %1'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129264319340027555)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'sl'
,p_message_text=>'Ustvarjena nova instanca %0 delovnega toka %1, verzija %2 - priklicano iz instance aktivnosti %4 instance delovnega toka %3'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129237148720027547)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Aktivnost s stati\010Dnim ID-jem %1 ni aktivnost v delovnem toku %0. Preverite stati\010Dne ID-je aktivnosti ustrezne verzije delovnega toka.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262454187027555)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'sl'
,p_message_text=>'%0 je zahtevan parameter za ta delovni tok in ne sme biti NULL.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255062405027553)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'sl'
,p_message_text=>'Instanca delovnega toka %0 je bila nadaljevana'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254924371027553)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'sl'
,p_message_text=>unistr('Instanca delovnega toka %0 je bila ponovno posku\0161ena')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269330725027557)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. ponovnih poskusov: %0')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269407358027557)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. ponovnih poskusov: %0')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269123820027557)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Deto %0')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263389203027555)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'sl'
,p_message_text=>'Aktivno'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263507093027555)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokon\010Dano')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263622820027555)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'sl'
,p_message_text=>'Okvarjeno'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263713178027555)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Dasno prekinjeno')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263443505027555)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'sl'
,p_message_text=>'Prekinjeno'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278748893027560)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Cakanje')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254730624027553)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Instanca delovnega toka %0 je bila za\010Dasno prekinjena')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260604494027554)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Naslednje aktivnosti za instanco delovnega toka %0 ni mogo\010De dolo\010Diti. Pred ponovnim poskusom delovnega toka preverite in popravite pogoje, dolo\010Dene za trenutno aktivnost stikala.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254888247027553)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'sl'
,p_message_text=>'Instanca delovnega toka %0 je bila prekinjena'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253990932027552)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'sl'
,p_message_text=>'Samo poslovni skrbnik delovnega toka %0 lahko nadaljuje delovni tok'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129254043011027552)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'sl'
,p_message_text=>'Delovni tok %0 lahko ponovno poskusi le poslovni skrbnik in/ali lastnik'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253518476027552)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'sl'
,p_message_text=>unistr('Instanco delovnega toka %0 lahko za\010Dasno prekine le poslovni skrbnik delovnega toka')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253883608027552)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'sl'
,p_message_text=>'Delovni tok lahko prekinejo samo lastniki in poslovni skrbniki instance delovnega toka %0'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252299108027552)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'sl'
,p_message_text=>unistr('Spremenljivke delovnega toka %0 lahko posodablja samo poslovni skrbnik, ki je dolo\010Den za delovni tok')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129266838533027556)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>unistr('Instanca delovnega toka %0 mora biti v stanju Okvarjeno ali Za\010Dasno prekinjeno, preden je mogo\010De posodobiti njene spremenljivke.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258318256027554)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'sl'
,p_message_text=>'Vrednost spremenljivke delovnega toka %0 je posodobljena na %1'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268540476027557)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'sl'
,p_message_text=>'Delovni tok %0 nima aktivne verzije'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268603809027557)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'sl'
,p_message_text=>'Delovni tok %0 nima verzije v razvoju'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129268750305027557)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>'Delovni tok %0 nima aktivne verzije ali verzije v razvoju'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251664990027552)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Instance aktivnosti %1 za instanco delovnega %0 ni bilo mogo\010De najti')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251488538027552)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Instance delovnega toka %0 ni bilo mogo\010De najti')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286526989027562)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'sl'
,p_message_text=>'Delovni zvezek nima nobenega aktivnega delovnega lista.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286484508027562)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'sl'
,p_message_text=>'Delovni zvezek ni inicializiran.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286393409027562)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri ustvarjanju datoteke XLSX je pri\0161lo do notranje napake.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288812868027563)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'sl'
,p_message_text=>'List'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299439491027566)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'sl'
,p_message_text=>unistr('Ime delovnega lista "%0" je \017Ee zasedeno. Poskusite z drugim.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428091478027605)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'sl'
,p_message_text=>'Dejanja'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343072754027579)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'sl'
,p_message_text=>'Meni Dejanja'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338769603027578)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>'Doda funkcijo'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338686510027578)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Dodaj stolpec Grupiranje'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376295841027589)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Dodaj vrtilni stolpec'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376315003027589)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Dodaj stolpec vrstice'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310785825027570)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zdru\017Eevanje')
,p_is_js_message=>true
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349225432027581)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Zdru\017Eevanje')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330181128027575)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'sl'
,p_message_text=>unistr('Povpre\010Dje')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334409061027577)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330250536027576)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'sl'
,p_message_text=>'Maksimum'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330445368027576)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'sl'
,p_message_text=>'Mediana'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330313509027576)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'sl'
,p_message_text=>'Minimum'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330044984027575)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'sl'
,p_message_text=>'Vsota %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331176235027576)
,p_name=>'APEXIR_ALL'
,p_message_language=>'sl'
,p_message_text=>'Vse'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310086366027569)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Vsi stolpci'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290176657027563)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'sl'
,p_message_text=>'Vse vrstice'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425090330027604)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'sl'
,p_message_text=>'Nadomestno'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426612438027604)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'sl'
,p_message_text=>'Nadomestno privzeto: %0'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324216341027574)
,p_name=>'APEXIR_AND'
,p_message_language=>'sl'
,p_message_text=>'in'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359020275027584)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjenega poro\010Dila ni mogo\010De uvoziti. Vsebina je po\0161kodovana.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359193927027584)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjenega poro\010Dila ni mogo\010De uvoziti. Vsebina je prazna.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312260319027570)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'sl'
,p_message_text=>'Dodeli'
,p_is_js_message=>true
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305865721027568)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Nara\0161\010Dajo\010De')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327305978027575)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'sl'
,p_message_text=>'Z dne %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427262163027605)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'sl'
,p_message_text=>unistr('Povpre\010Dje %0')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418887181027602)
,p_name=>'APEXIR_BAR'
,p_message_language=>'sl'
,p_message_text=>'Vrstica'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311580063027570)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'sl'
,p_message_text=>'med'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304682409027568)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'sl'
,p_message_text=>'Barva ozadja'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306578989027568)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'sl'
,p_message_text=>'modra'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340696712027579)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'sl'
,p_message_text=>'Spodaj'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271472323027558)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'sl'
,p_message_text=>'Gumbi zraven vrstice za iskanje za %0'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307129171027568)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Prekli\010Di')
,p_is_js_message=>true
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313441918027570)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'sl'
,p_message_text=>'Kategorija'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304565788027568)
,p_name=>'APEXIR_CELL'
,p_message_language=>'sl'
,p_message_text=>'Celica'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331000627027576)
,p_name=>'APEXIR_CHART'
,p_message_language=>'sl'
,p_message_text=>'Grafikon'
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341521082027579)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'sl'
,p_message_text=>'Inicializiranje ...'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381283515027591)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Dolo\010Diti je treba oznako grafikona.')
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393690140027595)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161a poizvedba presega maksimalno \0161tevilo podatkovnih to\010Dk %0 na grafikon. Uporabite filter, da zmanj\0161ate \0161tevilo zapisov v osnovni poizvedbi.')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392589010027594)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Maksimalno \0161tevilo vrstic za poizvedbo grafikonov omeji \0161tevilo vrstic v osnovni poizvedbi in ne \0161tevila prikazanih vrstic. '),
unistr('Va\0161a osnovna poizvedba presega maksimalno \0161tevilo vrstic, ki je %0. Uporabite filter, da zmanj\0161ate \0161tevilo zapisov v osnovni poizvedbi.')))
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310176633027569)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Tip grafikona'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274044044027558)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'sl'
,p_message_text=>'Pogled grafikona za %0'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389234097027593)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Di vse')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327793293027575)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbira formata poro\010Dila')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335525450027577)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'sl'
,p_message_text=>unistr('po\010Disti')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307075349027568)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Stolpec'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346800695027581)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Stolpci'
,p_is_js_message=>true
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314079792027571)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'sl'
,p_message_text=>'Druga imena stolpca'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421605552027603)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Filtriranje ...'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281853422027561)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'sl'
,p_message_text=>'Glava stolpca'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295997975027565)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'sl'
,p_message_text=>'Dejanja stolpca'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296202298027565)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'sl'
,p_message_text=>'Dejanja za stolpec "%0"'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337632562027578)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'sl'
,p_message_text=>'Meni naslova stolpca'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341324757027579)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'sl'
,p_message_text=>'Informacije o stolpcu'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423977656027604)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Oznaka stolpca'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339047781027578)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'sl'
,p_message_text=>'Stolpec %0'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321966922027573)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'sl'
,p_message_text=>'vsebuje'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323239186027573)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'sl'
,p_message_text=>'ne vsebuje'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305578661027568)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'sl'
,p_message_text=>'v'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323496982027573)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'sl'
,p_message_text=>'ni v zadnjih'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332548994027576)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'sl'
,p_message_text=>'ni v naslednjem'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323322543027573)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'sl'
,p_message_text=>'je v zadnjih'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332464603027576)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'sl'
,p_message_text=>'je v naslednjem'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305490773027568)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>'ni NULL'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305340075027568)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'sl'
,p_message_text=>'je NULL'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305127675027568)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'sl'
,p_message_text=>'kot'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305622137027568)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'sl'
,p_message_text=>'ni v'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305222641027568)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'sl'
,p_message_text=>'ni kot'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322296493027573)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'sl'
,p_message_text=>'se ujema z regularnim izrazom'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327667190027575)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Izra\010Dun')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392241526027594)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'sl'
,p_message_text=>unistr('Izraz izra\010Duna')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347137214027581)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'sl'
,p_message_text=>unistr('Ustvarjanje izra\010Duna z drugimi imeni stolpcev.')
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347209593027581)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'sl'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347313323027581)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'sl'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347486836027581)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'sl'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288351074027563)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'sl'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331832651027576)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'sl'
,p_message_text=>unistr('Izra\010Dun')
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339622352027578)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'sl'
,p_message_text=>'Kontrolni prelom'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342615485027579)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'sl'
,p_message_text=>'Kontrolni prelomi'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429295532027605)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Kontrolni prelomni stolpci'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285045692027562)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo razli\010Dnih')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427785290027605)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo razli\010Dnih')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427698991027605)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo %0')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400687716027597)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'sl'
,p_message_text=>'Dnevno'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453941311027613)
,p_name=>'APEXIR_DATA'
,p_message_language=>'sl'
,p_message_text=>'Podatki'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341427740027579)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatki poro\010Dila pred toliko minutami: %0.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274489129027558)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'sl'
,p_message_text=>'Pogled podatkov za %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310830900027570)
,p_name=>'APEXIR_DATE'
,p_message_language=>'sl'
,p_message_text=>'Datum'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345397828027580)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'sl'
,p_message_text=>'Privzeto'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424842851027604)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'sl'
,p_message_text=>unistr('Privzeti tip poro\010Dila')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307278047027569)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbri\0161i')
,p_is_js_message=>true
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311158142027570)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'sl'
,p_message_text=>unistr('\017Delite izbrisati te nastavitve poro\010Dila?')
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411638233027600)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbri\0161i privzeto poro\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339396429027578)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Brisanje poro\010Dila')
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305991992027568)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Padajo\010De')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313549542027570)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>'Opis'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337598480027578)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'sl'
,p_message_text=>'Pogled ene vrstice'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345865770027580)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'sl'
,p_message_text=>'Smer %0'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346768741027581)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Onemogo\010Deno')
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306735163027568)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'sl'
,p_message_text=>'Prikazano'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309921169027569)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Prikazani stolpci'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345708825027580)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei v poro\010Dilu')
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340599242027579)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'sl'
,p_message_text=>'Dol'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331926770027576)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'sl'
,p_message_text=>'Prenos'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345690880027580)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'sl'
,p_message_text=>unistr('Ne prika\017Ei')
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414938550027601)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Dba z istim pogojem \017Ee obstaja.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429400706027605)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('Podvojen vrtilni stolpec. Seznam vrtilnih stolpcev mora biti enoli\010Den.')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429653958027605)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'sl'
,p_message_text=>'Uredi'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341635779027579)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'sl'
,p_message_text=>'Uredi nastavitve grafikona'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348206671027581)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'sl'
,p_message_text=>'Uredi grafikon'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312109278027570)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'sl'
,p_message_text=>'Urejanje kontrolnega preloma'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348674018027581)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Uredi filter'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315103647027571)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'sl'
,p_message_text=>'Urejanje pogleda nazaj'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406492041027598)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'sl'
,p_message_text=>'Uredi grupiranje'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348536085027581)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'sl'
,p_message_text=>unistr('Uredi ozna\010Dbo')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376575053027590)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'sl'
,p_message_text=>'Uredi vrtenje'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335939706027577)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Urejanje poro\010Dila')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425133102027604)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'sl'
,p_message_text=>unistr('E-po\0161ta')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297396111027566)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'sl'
,p_message_text=>unistr('E-po\0161tni naslov')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425494423027604)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'sl'
,p_message_text=>'Skp'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425690996027604)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'sl'
,p_message_text=>'Telo'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425325194027604)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'sl'
,p_message_text=>'Kp'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426148297027604)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'sl'
,p_message_text=>'Pogostost'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302553033027567)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'sl'
,p_message_text=>unistr('E-po\0161ta ni bila konfigurirana za to aplikacijo. Obrnite se na svojega skrbnika.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399934998027597)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('E-po\0161tni naslov mora biti naveden.')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425735330027604)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'sl'
,p_message_text=>'Glejte prilogo'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425593909027604)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'sl'
,p_message_text=>'Zadeva'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400949287027597)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Zadeva e-po\0161tnega sporo\010Dila mora biti navedena.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425223723027604)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'sl'
,p_message_text=>'Za'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304362921027568)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Omogo\010Deno')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348433878027581)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'sl'
,p_message_text=>unistr('Omogo\010Di/onemogo\010Di')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347929937027581)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'sl'
,p_message_text=>'Napaka! %0'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347552900027581)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'sl'
,p_message_text=>'Primeri'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348395080027581)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'sl'
,p_message_text=>'Primeri:'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309807586027569)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Izklju\010Di vrednosti NULL')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348985340027581)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'sl'
,p_message_text=>unistr('Raz\0161iri/strni')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346530525027581)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'sl'
,p_message_text=>'Izraz'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331469940027576)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342562899027579)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'sl'
,p_message_text=>'Filtri'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353273360027583)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'sl'
,p_message_text=>'Izraz filtra'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451405809027612)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'sl'
,p_message_text=>'Izraz filtra je predolg.'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296152593027565)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'sl'
,p_message_text=>'Filtriraj predloge'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353112430027583)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Tip filtra'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349174895027581)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'sl'
,p_message_text=>'Izbira stolpcev za iskanje'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331791142027576)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'sl'
,p_message_text=>'Pogled nazaj'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346393853027580)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Poizvedba pogleda nazaj vam omogo\010Da ogled podatkov, kot so obstajali na predhodni to\010Dki v \010Dasu.')
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400389936027597)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Trajanje pogleda nazaj'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401701262027597)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'sl'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327571337027575)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'sl'
,p_message_text=>'Maska formata %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339288269027578)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>'Funkcija'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347021486027581)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'sl'
,p_message_text=>'Funkcije %0'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424739179027604)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'sl'
,p_message_text=>'Funkcije/operatorji'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338914733027578)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'sl'
,p_message_text=>'Funkcija %0'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331207214027576)
,p_name=>'APEXIR_GO'
,p_message_language=>'sl'
,p_message_text=>'Pojdi'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304823338027568)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'sl'
,p_message_text=>'zelena'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349889980027582)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>unistr('Zdru\017Eevanje po stolpcih')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349959968027582)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'sl'
,p_message_text=>unistr('Zdru\017Eevanje po funkcijah')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129285142639027562)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'sl'
,p_message_text=>'Grupiranje'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425868031027604)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Stolpec Grupiranje %0'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381306778027591)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Dolo\010Diti je treba stolpec Grupiranje.')
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392469797027594)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'sl'
,p_message_text=>unistr('Maksimalno \0161tevilo vrstic za poizvedbo Grupiranje omeji \0161tevilo vrstic v osnovni poizvedbi in ne \0161tevila prikazanih vrstic. Va\0161a osnovna poizvedba presega maksimalno \0161tevilo vrstic %0. Uporabite filter, da zmanj\0161ate \0161tevilo zapisov v osnovni poizvedb')
||'i.'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372697082027588)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvr\0161\010Danje grupiranja')
,p_is_js_message=>true
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429355750027605)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrstni red razvr\0161\010Danja grupiranja')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274277454027558)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'sl'
,p_message_text=>'Pogled grupiranja za %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310255646027569)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'sl'
,p_message_text=>'Vodoravni stolpec'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344229126027580)
,p_name=>'APEXIR_HELP'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010D')
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336030205027577)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Interaktivna poro\010Dila kon\010Dnim uporabnikom omogo\010Dajo prilagajanje poro\010Dil. Uporabniki lahko spremenijo postavitev podatkov poro\010Dila z izbiranjem stolpcev, uporabo filtrov, ozna\010Devanjem in razvr\0161\010Danjem. Uporabniki lahko tudi dolo\010Dijo prelome, zdru\017Eevan')
||unistr('ja, grafikone, grupiranja in dodajajo lastne izra\010Dune. Uporabniki lahko tudi nastavijo naro\010Dnino tako, da jim bo verzija HTML poro\010Dila poslana po e-po\0161ti v skladu z dolo\010Denim intervalom. Uporabniki lahko ustvarijo ve\010D variacij poro\010Dila in jih shranij')
||unistr('o kot imenovana poro\010Dila, bodisi za javni bodisi zasebni ogled. '),
'<p/>',
unistr('Naslednji razdelki povzemajo na\010Dine, kako lahko prilagodite interaktivno poro\010Dilo. Za ve\010D informacij si oglejte "Uporaba interaktivnih poro\010Dil" v <i>Uporabni\0161kem priro\010Dniku za kon\010Dnega uporabnika Oracle APEX</i>.')))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343177593027580)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'sl'
,p_message_text=>unistr('Meni Dejanja se prika\017Ee na desni strani gumba Pojdi v vrstici za iskanje. V tem meniju lahko prilagodite interaktivno poro\010Dilo.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336812660027578)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Zdru\017Eevanja so matemati\010Dni izra\010Duni, ki se izvedejo za stolpec. Zdru\017Eevanja so prikazana po vsakem kontrolnem prelomu in ob koncu poro\010Dila v stolpcu, v katerem so dolo\010Dena. Mo\017Enosti vklju\010Dujejo:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Zdru\017Eevanje</strong> vam omogo\010Da, da izberete predhodno'),
unistr('dolo\010Deno zdru\017Eevanje za urejanje.</li>'),
'<li><strong>Funkcija</strong> je funkcija, ki se izvede (na primer SUM, MIN).</li>',
unistr('<li><strong>Stolpec</strong> se uporablja za izbiro stolpca, za katerega se uporabi matemati\010Dna funkcija. Prikazani so'),
unistr('samo \0161tevilski stolpci.</li>'),
'</ul>'))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336933346027578)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Dolo\010Dite lahko en grafikon na shranjeno poro\010Dilo. Ko'),
unistr('je dolo\010Den, lahko preklapljate med pogledom grafikona in poro\010Dila z uporabo ikon v vrstici za iskanje.'),
unistr('Mo\017Enosti vklju\010Dujejo:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>Tip grafikona</strong> identificira tip grafikona, ki bo vklju\010Den.'),
unistr('Izberite horizontalni pali\010Dni, vertikalni pali\010Dni, tortni ali \010Drtni.</li>'),
unistr('<li><strong>Oznaka</strong> vam omogo\010Da, da izberete stolpec, ki bo uporabljen kot oznaka.</li>'),
'<li><strong>Naslov osi za oznako</strong> je naslov, ki je prikazan na osi, povezani s stolpcem, izbranim za',
'oznako. To ni na voljo za tortni grafikon.</li>',
unistr('<li><strong>Vrednost</strong> vam omogo\010Da, da izberete stolpec, ki bo uporabljen kot vrednost.  \010Ce je va\0161a funkcija'),
'COUNT, vrednosti ni treba izbrati.</li>',
'<li><strong>Naslov osi za vrednost</strong> je naslov, ki je prikazan na osi, povezani s stolpcem, izbranim za',
'vrednost. To ni na voljo za tortni grafikon.</li>',
'<li><strong>Funkcija</strong> je izbirna funkcija, ki jo je treba izvesti za stolpec, izbran za vrednost.</li>',
unistr('<li><strong>Razvr\0161\010Danje</strong> vam omogo\010Da, da razvrstite svoj nabor rezultatov.</li></ul>')))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336232461027577)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\010Ce kliknete katerikoli naslov stolpca, se prika\017Ee meni naslova stolpca. Mo\017Enosti vklju\010Dujejo:'),
'<p></p>',
'<ul>',
unistr('<li>Ikona <strong>Razvrsti nara\0161\010Dajo\010De</strong> razvrsti poro\010Dilo po stolpcu v nara\0161\010Dajo\010Dem vrstnem redu.</li>'),
unistr('<li>Ikona <strong>Razvrsti padajo\010De</strong> razvrsti poro\010Dilo po stolpcu v padajo\010Dem vrstnem redu.</li>'),
unistr('<li><strong>Skrij stolpec</strong> skrije stolpec. Vseh stolpcev ni mogo\010De skriti. \010Ce stolpca ni mogo\010De skriti, ikona Skrij stolpec ne bo prikazana.</li>'),
unistr('<li><strong>Prelomi stolpec</strong> ustvari skupino za prelom v stolpcu. To stolpec povle\010De iz poro\010Dila kot glavni zapis.</li>'),
unistr('<li><strong>Informacije o stolpcu</strong> prikazuje besedilo pomo\010Di o stolpcu, \010De je na voljo.</li>'),
unistr('<li><strong>Obmo\010Dje besedila</strong> se uporablja za vnos iskalnih kriterijev brez razlikovanja velikih in malih \010Drk'),
unistr('(brez potrebe po nadomestnih znakih). Z vnosom vrednosti se zmanj\0161a seznam'),
'vrednosti na dnu menija. Nato lahko izberete vrednost z',
'dna in izbrana vrednost bo ustvarjena kot filter, ki uporablja "="',
'(na primer <code>column = ''ABC''</code>). Lahko pa tudi kliknete ikono svetilke in vnesete vrednost, ki bo ustvarjena kot filter z modifikatorjem "LIKE"',
'(na primer <code>column LIKE ''%ABC%''</code>).</li>',
unistr('<li><strong>Seznam enoli\010Dnih vrednosti</strong> vsebuje prvih 500 enoli\010Dnih'),
unistr('vrednosti, ki izpolnjujejo va\0161e kriterije filtriranja. \010Ce je stolpec datum, je namesto tega prikazan'),
unistr('seznam datumskih razponov. \010Ce izberete vrednost, bo filter ustvarjen'),
'z "=" (na primer <code>column = ''ABC''</code>).</li>',
'</ul>'))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336775363027578)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Omogo\010Da vam dodajanje izra\010Dunanih stolpcev v poro\010Dilo. Lahko so matemati\010Dni izra\010Duni (na primer <code>NBR_HOURS/24</code>) ali standardne Oraclove'),
unistr('funkcije, uporabljene na obstoje\010Dih stolpcih. Nekateri so prikazani kot primeri, mogo\010De pa je uporabiti tudi druge (kot je <code>TO_DATE)</code>). Mo\017Enosti vklju\010Dujejo:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Izra\010Dun</strong> vam omogo\010Da izbiro predhodno dolo\010Denega izra\010Duna za urejanje.</li>'),
'<li><strong>Naslov stolpca</strong> je naslov stolpca za novi stolpec.</li>',
'<li><strong>Maska formata</strong> je Oraclova maska formata, ki se uporabi za stolpec (na primer S9999).</li>',
unistr('<li><strong>Izra\010Dun</strong> je izra\010Dun, ki se izvede. V izra\010Dune se vklju\010Dijo sklici na stolpce s prikazanimi drugimi imeni.</li>'),
'</ul>',
unistr('<p>Pod izra\010Dunom se stolpci v va\0161i poizvedbi prika\017Eejo s'),
unistr('svojimi povezanimi drugimi imeni. \010Ce kliknete ime ali drugo ime stolpca, bo ta vklju\010Den'),
unistr('v izra\010Dun. Ob stolpcu je \0161tevilska tipkovnica. Ta tipkovnica deluje kot'),
unistr('bli\017Enjica do pogosto uporabljanih klju\010Dev. Na skrajni desni so funkcije.</p>'),
unistr('<p>Naslednji primer izra\010Duna prikazuje, kako prikazati skupno nadomestilo:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
'(A je ORGANIZATION, B je SALARY in C je COMMISSION)',
''))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343211540027580)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporablja se za ustvarjanje prelomne skupine v enem ali ve\010D stolpcih. Na ta na\010Din se stolpci izvle\010Dejo iz interaktivnega poro\010Dila in prika\017Eejo kot glavni zapis.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337488056027578)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'sl'
,p_message_text=>unistr('Za ogled podrobnosti ene vrstice naenkrat kliknite ikono za ogled ene vrstice za vrstico, ki si jo \017Eelite ogledati. \010Ce je na voljo, bo pogled ene vrstice vedno prvi stolpec. Odvisno od prilagoditve interaktivnega poro\010Dila je lahko pogled ene vrstice ')
||unistr('standardni pogled ali prilagojena stran, ki lahko omogo\010Da posodobitev.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337327649027578)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'sl'
,p_message_text=>unistr('Omogo\010Da prenos trenutnega nabora rezultatov. Formati za prenos vklju\010Dujejo PDF, Excel, HTML in CSV. Mo\017Enosti prenosa se razlikujejo glede na izbrani format. Vse formate je mogo\010De poslati tudi kot e-po\0161to.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336411866027577)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Osredoto\010Di poro\010Dilo tako, da doda ali spremeni stavek <code>WHERE</code> v poizvedbi. Filtrirate lahko v stolpcu ali po vrstici.  '),
unistr('<p>\010Ce filtrirate po stolpcu, izberite stolpec (ni treba, da je eden od prikazanih), izberite standardni Oraclov operator (=, !=, not in, between) in vnesite izraz za primerjavo. Izrazi razlikujejo med velikimi in malimi \010Drkami. Uporabite % kot nadome')
||'stni znak (na primer <code>STATE_NAME',
'like A%)</code>.</p>',
unistr('<p>\010Ce filtrirate po vrsticah, lahko ustvarite zapletene stavke <code>WHERE</code> z'),
unistr('drugimi imeni stolpcev in vsemi Oraclovimi funkcijami ali operatorji (na primer <code>G = ''VA'' or G = ''CT''</code>, pri \010Demer'),
'je <code>G</code> drugo ime za <code>CUSTOMER_STATE</code>).</p>',
''))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337060517027578)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Poizvedba pogleda nazaj vam omogo\010Da, da si ogledate podatke, kot so obstajali na predhodni to\010Dki'),
unistr('v \010Dasu. Privzeta koli\010Dina \010Dasa za pogled nazaj je 3 ure (ali 180'),
unistr('minut), vendar dejanska koli\010Dina se razlikuje za vsako bazo podatkov.')))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401621743027597)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Format vam omogo\010Da prilagoditev prikaza poro\010Dila.'),
'Format vsebuje naslednji podmeni:</p>',
unistr('<ul><li>Razvr\0161\010Danje</li>'),
'<li>Kontrolni prelom</li>',
unistr('<li>Ozna\010Dba</li>'),
unistr('<li>Izra\010Dun</li>'),
unistr('<li>Zdru\017Eevanje</li>'),
'<li>Grafikon</li>',
'<li>Grupiranje</li>',
'<li>Vrtenje</li>',
'</ul>',
''))
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399874705027596)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Dolo\010Dite lahko en pogled grupiranja na shranjeno poro\010Dilo. Ko je dolo\010Den, lahko preklapljate med pogledom grupiranja in pogledom poro\010Dila z ikonami pogleda v vrstici za iskanje. \010Ce \017Eelite ustvariti pogled grupiranja, izberite: '),
'<p></p><ul>',
'<li>stolpce za grupiranje</li>',
unistr('<li>stolpce za zdru\017Eevanje s funkcijo, ki bo izvedena (povpre\010Dje, vsota, \0161tevilo, itd.)</li>'),
'</ul>'))
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336630010027578)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Omogo\010Da vam dolo\010Ditev filtra. Vrstice, ki se ujemajo s kriteriji filtriranja, se prika\017Eejo kot ozna\010Dene z zna\010Dilnostmi, povezanimi s filtrom. Mo\017Enosti vklju\010Dujejo:</p>'),
'<ul>',
'<li><strong>Ime</strong> se uporablja samo za prikaz.</li>',
'<li><strong>Zaporedje</strong> identificira zaporedje, po katerem se ocenjujejo pravila.</li>',
unistr('<li><strong>Omogo\010Deno</strong> identificira, ali je pravilo omogo\010Deno ali onemogo\010Deno.</li>'),
unistr('<li><strong>Tip ozna\010Dbe</strong> identificira, ali je treba vrstico ali celico'),
unistr('ozna\010Diti. \010Ce izberete celico, se ozna\010Di stolpec, naveden'),
unistr('v pogoju ozna\010Dbe.</li>'),
unistr('<li><strong>Barva ozadja</strong> je nova barva za ozadje ozna\010Denega obmo\010Dja.</li>'),
unistr('<li><strong>Barva besedila</strong> je nova barva za besedilo v ozna\010Denem obmo\010Dju.</li>'),
unistr('<li><strong>Pogoj ozna\010Dbe</strong> dolo\010Da va\0161 pogoj filtriranja.</li>'),
'</ul>',
''))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230072546027545)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Dolo\010Dite lahko en vrtilni pogled na shranjeno poro\010Dilo. Ko je dolo\010Den, lahko preklapljate med vrtilnim pogledom in pogledom poro\010Dila z ikonami pogleda v vrstici za iskanje. \010Ce \017Eelite ustvariti vrtilni pogled, izberite: '),
'<p></p>',
'<ul>',
'<li>stolpce za vrtenje</li>',
'<li>stolpce za prikaz v obliki vrstic</li>',
unistr('<li>stolpce za zdru\017Eevanje in funkcijo, ki bo izvedena (povpre\010Dje, vsota, \0161tevilo, itd.)</li>'),
'</ul>'))
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347756099027581)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pri prilagajanju interaktivnega poro\010Dila so nastavitve poro\010Dila prikazane'),
unistr('pod vrstico za iskanje in nad poro\010Dilom. To obmo\010Dje lahko strnete in raz\0161irite z ikono na levi.'),
'<p>',
unistr('Za vsako nastavitev poro\010Dila lahko uporabite naslednje mo\017Enosti:'),
'</p><ul>',
'<li>Uredite nastavitev tako, da kliknete ime.</li>',
unistr('<li>Onemogo\010Dite/omogo\010Dite nastavitev tako, da ozna\010Dite/po\010Distite potrditveno polje Omogo\010Di/Onemogo\010Di. S tem kontrolnim elementom lahko za\010Dasno izklopite in vklopite nastavitev.</li>'),
'<li>Odstranite nastavitev tako, da kliknete ikono Odstrani.</li>',
'</ul>',
unistr('<p>\010Ce ste ustvarili grafikon, grupiranje ali vrtenje, lahko preklapljate med njimi '),
unistr('in osnovnim poro\010Dilom z uporabo povezav Pogled poro\010Dila, Pogled grafikona, Pogled grupiranja in Vrtilni pogled,'),
'prikazanimi na desni. Pri ogledu grafikona, grupiranja ali vrtenja lahko',
'uporabite tudi povezavo Uredi in uredite nastavitve.</p>',
''))
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337238230027578)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'sl'
,p_message_text=>unistr('Ponastavi poro\010Dilo nazaj na privzete nastavitve, pri \010Demer se odstranijo vse izvedene prilagoditve.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401999392027597)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nastavi \0161tevilo zapisov za prikaz na stran.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337116134027578)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Shrani prilagojeno poro\010Dilo za prihodnjo uporabo. Navedete ime in izbirni opis ter zagotovite, da je poro\010Dilo dostopno javnosti (tj. vsem uporabnikom, ki lahko dostopajo do primarnega privzetega poro\010Dila). Shranite lahko \0161tiri tipe interaktivnih p')
||unistr('oro\010Dil:</p>'),
'<ul>',
unistr('<li><strong>Primarno privzeto</strong> (samo za razvijalce). Primarno privzeto je poro\010Dilo, ki se prika\017Ee na za\010Detku. Primarnih privzetih poro\010Dil ni mogo\010De preimenovati ali izbrisati.</li>'),
unistr('<li><strong>Nadomestno poro\010Dilo</strong> (samo za razvijalce). Razvijalcem omogo\010Da ustvarjanje ve\010D postavitev poro\010Dil. Samo razvijalci lahko shranijo, preimenujejo ali izbri\0161ejo nadomestno poro\010Dilo.</li>'),
unistr('<li><strong>Javno poro\010Dilo</strong> (kon\010Dni uporabnik). Shrani, preimenuje ali izbri\0161e ga lahko kon\010Dni uporabnik, ki ga je ustvaril. Drugi uporabniki si lahko ogledajo in shranijo postavitev kot drugo poro\010Dilo.</li>'),
unistr('<li><strong>Zasebno poro\010Dilo</strong> (kon\010Dni uporabnik). Samo kon\010Dni uporabnik, ki je ustvaril poro\010Dilo, si lahko ogleda, shrani, preimenuje ali izbri\0161e poro\010Dilo.</li>'),
'</ul>',
unistr('<p>\010Ce shranite prilagojena poro\010Dila, se prika\017Ee izbirnik poro\010Dil v vrstici za iskanje na levi strani izbirnika vrstic (\010De je ta funkcija omogo\010Dena).</p>'),
''))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336117948027577)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'sl'
,p_message_text=>unistr('Na vrhu vsake strani poro\010Dila je podro\010Dje za iskanje. To podro\010Dje (ali vrstica za iskanje) zagotavlja naslednje funkcije:')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402576412027597)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'sl'
,p_message_text=>unistr('<li><strong>Meni Dejanja</strong> omogo\010Da prilagoditev poro\010Dila. Oglejte si odseke, ki sledijo.</li>')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402040839027597)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'sl'
,p_message_text=>unistr('<li><strong>Ikona za izbiro stolpcev</strong> vam omogo\010Da identifikacijo stolpca za iskanje (ali vseh).</li>')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402347947027597)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'sl'
,p_message_text=>unistr('<li><strong>Poro\010Dila</strong> prika\017Ee nadomestna privzeta in shranjena zasebna ali javna poro\010Dila.</li>')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402239861027597)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'sl'
,p_message_text=>unistr('<li><strong>Vrstice</strong> nastavi \0161tevilo zapisov za prikaz na stran.</li>')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402159732027597)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Besedilno obmo\010Dje</strong> vam omogo\010Da vnos kriterijev iskanja brez razlikovanja med velikimi in malimi \010Drkami (nadomestni znaki so nakazani).</li>'),
unistr('<li><strong>Gumb Pojdi</strong> izvede iskanje. Ko je kazalec v besedilnem obmo\010Dju za iskanje, lahko iskanje izvedete tudi s pritiskom tipke Enter.</li>')))
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402481435027597)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'sl'
,p_message_text=>unistr('<li><strong>Ogled ikon</strong> omogo\010Da preklop med pogledi ikon, poro\010Dil, podrobnosti, grafikonov, grupiranj in vrtenji poro\010Dila, \010De so dolo\010Deni.</li>')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336363842027577)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporablja se za spreminjanje prikazanih stolpcev. Stolpci na desni so prikazani. Stolpci na levi so skriti. Prikazane stolpce lahko ponovno razvrstite s pu\0161\010Dicami na skrajni desni. Izra\010Dunani stolpci imajo predpono <strong>**</strong>.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129336543787027577)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Uporablja se za spreminjanje stolpcev, v katerih poteka razvr\0161\010Danje, in dolo\010Da, ali'),
unistr('razvr\0161\010Dati v nara\0161\010Dajo\010Dem ali padajo\010Dem vrstnem redu. Lahko tudi dolo\010Dite, kako ravnati z vrednostmi'),
unistr('<code>NULL</code>. Privzeta nastavitev vedno prika\017Ee vrednosti <code>NULL</code> nazadnje ali pa jih vedno prika\017Ee najprej. Tako nastala razporeditev se prika\017Ee desno od'),
unistr('naslovov stolpcev v poro\010Dilu.</p>')))
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399626814027596)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri dodajanju naro\010Dnine navedete e-po\0161tni naslov (ali ve\010D e-po\0161tnih naslovov, lo\010Denih z vejicami), zadevo e-po\0161tnega sporo\010Dila, pogostost ter datuma za\010Detka in konca. E-po\0161tna sporo\010Dila posledi\010Dno vklju\010Dujejo izvo\017Eeno verzijo (PDF, Excel, HTML ali CS')
||unistr('V) interaktivnega poro\010Dila s trenutnimi podatki z uporabo nastavitev poro\010Dila, ki so se uporabljale v \010Dasu dodajanja naro\010Dnine.')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341241815027579)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Skrij stolpec'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331614308027576)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Dba')
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342795226027579)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Dbe')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312972591027570)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Denje celice, %0 na %1')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347861667027581)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'sl'
,p_message_text=>unistr('Pogoj ozna\010Dbe')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312811420027570)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'sl'
,p_message_text=>unistr('Ozna\010Denje vrstice, %0 na %1')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400238362027597)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Slog ozna\010Dbe')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304485083027568)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'sl'
,p_message_text=>unistr('Tip ozna\010Dbe')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419087099027602)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'sl'
,p_message_text=>'Vodoravno'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448062404027611)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'sl'
,p_message_text=>'1 neaktivna nastavitev'
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448189192027611)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>'Neaktivne nastavitve: %0'
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337889596027578)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'sl'
,p_message_text=>unistr('Interaktivno poro\010Dilo - Pomo\010D')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348805589027581)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'sl'
,p_message_text=>'Neveljavno'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342230098027579)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Neveljaven izraz izra\010Duna. %0')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297813443027566)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'sl'
,p_message_text=>unistr('Datum konca mora biti poznej\0161i od datuma za\010Detka.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357059219027584)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Neveljaven izraz filtra. %0'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426810139027605)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'sl'
,p_message_text=>'Neveljavna poizvedba filtra'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448206808027611)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'sl'
,p_message_text=>'1 neveljavna nastavitev'
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448321478027611)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>'Neveljavne nastavitve: %0'
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400461406027597)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'sl'
,p_message_text=>'(v minutah)'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417447620027602)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'sl'
,p_message_text=>'%0 je v zadnjih %1'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417668378027602)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'sl'
,p_message_text=>'%0 je v naslednjih %1'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417589222027602)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v zadnjih %1'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417742251027602)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'sl'
,p_message_text=>'%0 ni v naslednjih %1'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346951364027581)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilska tipkovnica')
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310689529027570)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Oznaka %0'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340805269027579)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Naslov osi za oznako'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333142607027576)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'sl'
,p_message_text=>'Zadnji dan'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333306843027577)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'sl'
,p_message_text=>'Zadnja ura'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332806913027576)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'sl'
,p_message_text=>'Zadnji mesec'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332921484027576)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'sl'
,p_message_text=>'Zadnji teden'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333044189027576)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko dni: %0'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333200846027576)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko ur: %0'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332667003027576)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'sl'
,p_message_text=>'Zadnjih toliko let: %0'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332738870027576)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'sl'
,p_message_text=>'Zadnje leto'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310529650027570)
,p_name=>'APEXIR_LINE'
,p_message_language=>'sl'
,p_message_text=>'Vrstica'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307338587027569)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrstica z obmo\010Djem')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426700796027605)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'sl'
,p_message_text=>unistr('Pove\017Ei')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341755530027579)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'sl'
,p_message_text=>unistr('Poizvedba predvidoma presega maksimalno \0161tevilo dovoljenih virov. Spremenite svoje nastavitve poro\010Dila in poskusite znova.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323199272027573)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'sl'
,p_message_text=>unistr('Maksimalno \0161tevilo vrstic za to poro\010Dilo je %0. Uporabite filter za zmanj\0161anje \0161tevila zapisov v svoji poizvedbi.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427347756027605)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'sl'
,p_message_text=>'Maksimalno %0'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427534000027605)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'sl'
,p_message_text=>'Mediana %0'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269855903027557)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Sporo\010Dilo')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327431074027575)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko minutami: %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427441787027605)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'sl'
,p_message_text=>'Minimalno %0'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426451176027604)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'sl'
,p_message_text=>'Mesec'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400889647027597)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'sl'
,p_message_text=>unistr('Mese\010Dno')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340014526027579)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'sl'
,p_message_text=>'Premik'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339956465027579)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'sl'
,p_message_text=>'Premakni vse'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453184311027612)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Naveden mora biti stati\010Dni ID podro\010Dja, saj stran vsebuje ve\010D interaktivnih poro\010Dil.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306090935027568)
,p_name=>'APEXIR_NAME'
,p_message_language=>'sl'
,p_message_text=>'Ime'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335786366027577)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Novo zdru\017Eevanje')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448972804027611)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Nova kategorija'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335821122027577)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Nov izra\010Dun')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330537880027576)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333618096027577)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'sl'
,p_message_text=>'Naslednji dan'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333456784027577)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'sl'
,p_message_text=>'Naslednja ura'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333928266027577)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'sl'
,p_message_text=>'Naslednji mesec'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333816333027577)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'sl'
,p_message_text=>'Naslednji teden'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333778531027577)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko dni: %0'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129333502634027577)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko ur: %0'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334110930027577)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'sl'
,p_message_text=>'Naslednjih toliko let: %0'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334083882027577)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'sl'
,p_message_text=>'Naslednje leto'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306352976027568)
,p_name=>'APEXIR_NO'
,p_message_language=>'sl'
,p_message_text=>'Ne'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349058279027581)
,p_name=>'APEXIR_NONE'
,p_message_language=>'sl'
,p_message_text=>'- Brez -'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400080605027597)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni veljaven e-po\0161tni naslov.')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272199699027558)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'sl'
,p_message_text=>'Ni izbranih stolpcev za prikaz. Uporabite <strong>Stolpci</strong> v meniju dejanj, da stolpec naredite viden.'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345561143027580)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'sl'
,p_message_text=>'Vrednosti NULL vedno prve'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345408695027580)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'sl'
,p_message_text=>'Vrednosti NULL vedno zadnje'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345907333027580)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'sl'
,p_message_text=>'Razvrsti NULL %0'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342396812027579)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Cas pogleda nazaj mora biti \0161tevilski.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341972142027579)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zaporedje mora biti \0161tevilsko.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346473317027581)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'sl'
,p_message_text=>'Operator'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304992453027568)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'sl'
,p_message_text=>unistr('oran\017Ena')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418916785027602)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'sl'
,p_message_text=>'Usmerjenost'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306877891027568)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'sl'
,p_message_text=>'Drugo'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273036588027558)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevil\010Denje strani za %0')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287023309027562)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'sl'
,p_message_text=>'Usmerjenost strani'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287764503027563)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'sl'
,p_message_text=>unistr('Le\017Ee\010De')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287883569027563)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'sl'
,p_message_text=>unistr('Pokon\010Dno')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286966139027562)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'sl'
,p_message_text=>'Velikost strani'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287526997027563)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'sl'
,p_message_text=>'A3'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287409578027562)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'sl'
,p_message_text=>'A4'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287695142027563)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'sl'
,p_message_text=>'Prilagojeno'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287201904027562)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'sl'
,p_message_text=>'Pravno'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287151366027562)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Crka')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129287345637027562)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'sl'
,p_message_text=>'Tabloid'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427808339027605)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'sl'
,p_message_text=>unistr('Odstotek skupnega \0161tevila %0 (%)')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427097641027605)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'sl'
,p_message_text=>'Odstotek skupne vsote %0 (%)'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426077627027604)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('Odstotek skupnega \0161tevila')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129425905635027604)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'sl'
,p_message_text=>'Odstotek skupne vsote'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310459562027569)
,p_name=>'APEXIR_PIE'
,p_message_language=>'sl'
,p_message_text=>'Tortni grafikon'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376199062027589)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'sl'
,p_message_text=>'Vrtenje'
,p_is_js_message=>true
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377651987027590)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Dolo\010Diti je treba zdru\017Eevanje.')
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377844117027590)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'sl'
,p_message_text=>unistr('V stolpcu, ki je izbran kot stolpec vrstice, ne morete zdru\017Eevati.')
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377031892027590)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Vrtilni stolpci'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376835549027590)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'sl'
,p_message_text=>'Vrtilni stolpec %0'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377437018027590)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Dolo\010Diti je treba vrtilni stolpec.')
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129229964185027545)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'sl'
,p_message_text=>unistr('Maksimalno \0161tevilo vrstic za poizvedbo PIVOT omeji \0161tevilo vrstic v osnovni poizvedbi in ne \0161tevila prikazanih vrstic. Va\0161a osnovna poizvedba presega maksimalno \0161tevilo vrstic, ki je %0. Uporabite filter, da zmanj\0161ate \0161tevilo zapisov v osnovni poizve')
||'dbi.'
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377373593027590)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrtilno razvr\0161\010Danje')
,p_is_js_message=>true
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343343582027580)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrtilni stolpec vsebuje preve\010D razli\010Dnih vrednosti - poizvedbe SQL PIVOT ni mogo\010De ustvariti.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274329842027558)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'sl'
,p_message_text=>'Vrtilni pogled za %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400155227027597)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'sl'
,p_message_text=>'Predogled'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330622149027576)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424943948027604)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'sl'
,p_message_text=>'Primarno'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401150421027597)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Primarno poro\010Dilo')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286859574027562)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Vklju\010Ditev oznak za dostopnost')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247687545027551)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Ci\0161\010Denje obogatenega besedila')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356072993027583)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'sl'
,p_message_text=>'Zasebno'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311073358027570)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'sl'
,p_message_text=>'Javno'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306684378027568)
,p_name=>'APEXIR_RED'
,p_message_language=>'sl'
,p_message_text=>unistr('rde\010Da')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129453061097027612)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Stati\010Dni ID podro\010Dja %0 ne obstaja.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340135847027579)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'sl'
,p_message_text=>'Odstrani'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340251426027579)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'sl'
,p_message_text=>'Odstrani vse'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448446145027611)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'sl'
,p_message_text=>'Odstrani grafikon'
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339714870027578)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'sl'
,p_message_text=>'Odstrani kontrolni prelom'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339472172027578)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Odstrani filter'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339568564027578)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'sl'
,p_message_text=>'Odstrani pogled nazaj'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448531417027611)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'sl'
,p_message_text=>'Odstrani grupiranje'
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339812283027579)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'sl'
,p_message_text=>unistr('Odstrani ozna\010Dbo')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448649784027611)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'sl'
,p_message_text=>'Odstrani vrtenje'
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429723256027605)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Odstrani poro\010Dilo')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411558615027600)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Preimenuj privzeto poro\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349359017027581)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Preimenovanje poro\010Dila')
,p_is_js_message=>true
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330996228027576)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427916143027605)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dila')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303198878027567)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjeno interaktivno poro\010Dilo z drugim imenom %0 ne obstaja.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356341867027583)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo ne obstaja.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303232322027567)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('ID shranjenega interaktivnega poro\010Dila %0 ne obstaja.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129347631640027581)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'sl'
,p_message_text=>unistr('Nastavitve poro\010Dila')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271858596027558)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'sl'
,p_message_text=>unistr('Nastavitve poro\010Dila za %0')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327930988027575)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'sl'
,p_message_text=>unistr('Pogled poro\010Dila')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332151693027576)
,p_name=>'APEXIR_RESET'
,p_message_language=>'sl'
,p_message_text=>'Ponastavi'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311229408027570)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'sl'
,p_message_text=>unistr('Obnovite poro\010Dilo na privzete nastavitve.')
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306429973027568)
,p_name=>'APEXIR_ROW'
,p_message_language=>'sl'
,p_message_text=>'Vrstica'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424009442027604)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'sl'
,p_message_text=>unistr('ROWID ni mogo\010De uporabiti kot stolpec primarnega klju\010Da za vir podatkov REST.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338820693027578)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'sl'
,p_message_text=>'Vrstice'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401849031027597)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo vrstic na stran')
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377139551027590)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Stolpci vrstice'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376977054027590)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'sl'
,p_message_text=>'Stolpec vrstice %0'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377597722027590)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Dolo\010Diti je treba stolpec vrstice.')
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377745937027590)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'sl'
,p_message_text=>'Stolpec vrstice se mora razlikovati od vrtilnega stolpca.'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353322002027583)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Filter vrstic'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328090702027575)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'sl'
,p_message_text=>'Vrstica %0 od %1'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332342601027576)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'sl'
,p_message_text=>'Besedilo vrstice vsebuje'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305758107027568)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'sl'
,p_message_text=>'Shrani'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342983987027579)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjeno poro\010Dilo')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342811528027579)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'sl'
,p_message_text=>unistr('Shranjeno poro\010Dilo = "%0"')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129345023149027580)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'sl'
,p_message_text=>unistr('Trenutne nastavitve poro\010Dila bodo uporabljene kot privzete za vse uporabnike.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129411464399027600)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Shrani privzeto poro\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129332065861027576)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Shrani poro\010Dilo')
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448803559027611)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'sl'
,p_message_text=>unistr('Shrani poro\010Dilo *')
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402822392027597)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'sl'
,p_message_text=>'Iskanje'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337707681027578)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'sl'
,p_message_text=>'Vrstica za iskanje'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129271159391027557)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'sl'
,p_message_text=>'Vrstica za iskanje za %0'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129448714907027611)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Iskanje: %0'
,p_is_js_message=>true
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408334461027599)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo o iskanju')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392387387027594)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Izbrani stolpci'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307429405027569)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'- Izbira stolpca -'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331346904027576)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>'Izbira stolpcev'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310983215027570)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>'- Izbira funkcije -'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338575804027578)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'- Izbira stolpca Grupiranje -'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376639624027590)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'- Izbira vrtilnega stolpca -'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426966234027605)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'sl'
,p_message_text=>'Izbira vrstice'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376766770027590)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'- Izbira stolpca vrstice -'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258246058027554)
,p_name=>'APEXIR_SEND'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161lji')
,p_is_js_message=>true
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280749242027560)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\0161lji kot e-po\0161to')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306181633027568)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'sl'
,p_message_text=>'Zaporedje'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129331534035027576)
,p_name=>'APEXIR_SORT'
,p_message_language=>'sl'
,p_message_text=>'Razvrsti'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341056726027579)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvrsti nara\0161\010Dajo\010De')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341184265027579)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'sl'
,p_message_text=>unistr('Razvrsti padajo\010De')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429194899027605)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrstni red razvr\0161\010Danja')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335418902027577)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'sl'
,p_message_text=>'presledek'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346609355027581)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'sl'
,p_message_text=>'Status %0'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400559462027597)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Naro\010Dnina')
,p_is_js_message=>true
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426399483027604)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'sl'
,p_message_text=>'Konec'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129245340661027550)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'sl'
,p_message_text=>unistr('Presko\010Di, \010De ni najdenih podatkov')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426291694027604)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Detek')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129427184814027605)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'sl'
,p_message_text=>'Vsota %0'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418010999027602)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'sl'
,p_message_text=>unistr('%0, poro\010Dilo = %1, pogled = %2')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129305081711027568)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'sl'
,p_message_text=>'Barva besedila'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323791709027574)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'sl'
,p_message_text=>'dnevi'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323668414027574)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'sl'
,p_message_text=>'ure'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323552874027573)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'sl'
,p_message_text=>'minute'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323968770027574)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'sl'
,p_message_text=>'meseci'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323873818027574)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'sl'
,p_message_text=>'tedni'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324068369027574)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'sl'
,p_message_text=>'leta'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129429560054027605)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'sl'
,p_message_text=>'Preklop'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340386621027579)
,p_name=>'APEXIR_TOP'
,p_message_language=>'sl'
,p_message_text=>'Zgoraj'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423038954027603)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('Razdru\017Een stolpec')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129341849850027579)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'sl'
,p_message_text=>unistr('Ime ozna\010Dbe mora biti enoli\010Dno.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309772893027569)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>'nepodprt podatkovni tip'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340492417027579)
,p_name=>'APEXIR_UP'
,p_message_language=>'sl'
,p_message_text=>'Gor'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342069051027579)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'sl'
,p_message_text=>'Vnesite veljavno barvo.'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342129012027579)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'sl'
,p_message_text=>'Vnesite veljavno masko formata.'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306915299027568)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'sl'
,p_message_text=>'Vrednost'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340944934027579)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'sl'
,p_message_text=>'Naslov osi za vrednost'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348768013027581)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Zahtevana je vrednost'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129310391844027569)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('Navpi\010Dni stolpec')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129419135486027602)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'sl'
,p_message_text=>unistr('Navpi\010Dno')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348046100027581)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'sl'
,p_message_text=>'Ogled grafikona'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406624290027599)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'sl'
,p_message_text=>'Ogled podrobnosti'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129450903264027612)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo nima dolo\010Denega pogleda %0.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406763538027599)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'sl'
,p_message_text=>'Ogled grupiranja'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406568345027598)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'sl'
,p_message_text=>'Ogled ikon'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129376459313027590)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'sl'
,p_message_text=>'Pogled vrtenja'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129348198116027581)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Ogled poro\010Dila')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129400788549027597)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'sl'
,p_message_text=>'Tedensko'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330845448027576)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Delovno poro\010Dilo')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428569232027605)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'sl'
,p_message_text=>'%0 (dnevi)'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428494281027605)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'sl'
,p_message_text=>'%0 (ure)'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428338404027605)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'sl'
,p_message_text=>'%0 (minute)'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428740288027605)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'sl'
,p_message_text=>'%0 (meseci)'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428678629027605)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'sl'
,p_message_text=>'%0 (tedni)'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129428820846027605)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'sl'
,p_message_text=>'%0 (leta)'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129426584230027604)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'sl'
,p_message_text=>'Leto'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304783098027568)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'sl'
,p_message_text=>'rumena'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129306249002027568)
,p_name=>'APEXIR_YES'
,p_message_language=>'sl'
,p_message_text=>'Da'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129340727641027579)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'sl'
,p_message_text=>'%0 vsebuje < ali >, ki sta neveljavna znaka.'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129364608055027586)
,p_name=>'APEX_REGION'
,p_message_language=>'sl'
,p_message_text=>unistr('Podro\010Dje')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255737178027553)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'sl'
,p_message_text=>unistr('Datoteke ZIP ni mogo\010De ekstrahirati.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255636941027553)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'sl'
,p_message_text=>unistr('Podpisa konca osrednjega imenika ni mogo\010De najti. Ta datoteka ni datoteka ZIP.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129286707581027562)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'sl'
,p_message_text=>unistr('Prekr\0161en predpogoj API-ja')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308809075027569)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrednosti za nastavitev aplikacije %0 ni mogo\010De pridobiti, ker je povezana mo\017Enost gradnje onemogo\010Dena.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308765719027569)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrednosti za nastavitev aplikacije %0 ni mogo\010De nastaviti, ker je povezana mo\017Enost gradnje onemogo\010Dena.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421324015027603)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'sl'
,p_message_text=>'Vrednost nastavitve aplikacije %0 je neveljavna'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421261817027603)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'sl'
,p_message_text=>unistr('Zahtevana nastavitev aplikacije %0 ni dolo\010Dena')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421424077027603)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'sl'
,p_message_text=>unistr('Nastavitve aplikacije %0 ni mogo\010De nastaviti na vrednost NULL')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295386754027565)
,p_name=>'BACK'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277734277027559)
,p_name=>'BUILDER'
,p_message_language=>'sl'
,p_message_text=>'Graditelj'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351363772027582)
,p_name=>'BUTTON LABEL'
,p_message_language=>'sl'
,p_message_text=>'Oznaka gumba'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274685716027559)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'sl'
,p_message_text=>'Razredi CSS gumba'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313178266027570)
,p_name=>'BUTTON_ID'
,p_message_language=>'sl'
,p_message_text=>unistr('Ustvarjeni ID gumba bo stati\010Dni ID gumba, \010De je dolo\010Den. \010Ce ni dolo\010Den, bo notranje ustvarjeni ID v formatu "B" || [Notranji ID gumba]')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247123472027550)
,p_name=>'CANDLESTICK'
,p_message_language=>'sl'
,p_message_text=>unistr('Sve\010Dnik')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361192121027585)
,p_name=>'CENTER'
,p_message_language=>'sl'
,p_message_text=>'Sredina'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307702476027569)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'sl'
,p_message_text=>'Zahteva %0'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297720009027566)
,p_name=>'CHECK$'
,p_message_language=>'sl'
,p_message_text=>'izbirnik vrstic'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423154615027603)
,p_name=>'CHECKED'
,p_message_language=>'sl'
,p_message_text=>'potrjeno'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399583006027596)
,p_name=>'COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Stolpec'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357157079027584)
,p_name=>'COMMENTS'
,p_message_language=>'sl'
,p_message_text=>'Komentarji'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338140881027578)
,p_name=>'CONTINUE'
,p_message_language=>'sl'
,p_message_text=>'Nadaljuj'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295670151027565)
,p_name=>'COPYRIGHT'
,p_message_language=>'sl'
,p_message_text=>unistr('Copyright &copy; 1999, %0, Oracle in/ali povezane dru\017Ebe.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343813109027580)
,p_name=>'COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350819730027582)
,p_name=>'CREATE'
,p_message_language=>'sl'
,p_message_text=>'Ustvarjanje'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406242394027598)
,p_name=>'CREATED'
,p_message_language=>'sl'
,p_message_text=>'Ustvarjeno'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406348901027598)
,p_name=>'CREATED_BY'
,p_message_language=>'sl'
,p_message_text=>'Ustvaril(-a)'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327208677027575)
,p_name=>'CREATED_ON'
,p_message_language=>'sl'
,p_message_text=>'Ustvarjeno dne'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338326090027578)
,p_name=>'CUSTOM'
,p_message_language=>'sl'
,p_message_text=>'Prilagojeno'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349561521027581)
,p_name=>'CUSTOMIZE'
,p_message_language=>'sl'
,p_message_text=>'Prilagajanje'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351583872027582)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'sl'
,p_message_text=>'Preference strani so bile ponastavljene za uporabnika %0.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351680454027582)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'sl'
,p_message_text=>'Preference spremenjene za uporabnika %0.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351488683027582)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'sl'
,p_message_text=>'Preference strani so bile ponastavljene za uporabnika %0.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312500628027570)
,p_name=>'DAILY'
,p_message_language=>'sl'
,p_message_text=>'Dnevno'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275991955027559)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalo\017Eena datoteka je neveljavna ali ima napa\010Dno pripono.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307963271027569)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'sl'
,p_message_text=>'Uporabljen je bil neveljaven izbirnik XML ali JSON.'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253095903027552)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatkovni profil in nalo\017Eena datoteka ne vsebujeta nobenega ciljnega stolpca tabele.')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366987701027587)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'sl'
,p_message_text=>unistr('V nalo\017Eeni datoteki ni bilo mogo\010De najti podatkov.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129367023740027587)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'sl'
,p_message_text=>unistr('V delovnem listu "%0" ni bilo mogo\010De najti podatkov.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272897861027558)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'sl'
,p_message_text=>'Navedena datoteka ni datoteka XLSX.'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129238886566027548)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalaganje podatkov je kon\010Dano. Obdelanih je bilo toliko vrstic: %0.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241153145027549)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalaganje podatkov je kon\010Dano. Obdelanih je bilo toliko vrstic: %0 z 1 napako.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241491138027549)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalaganje podatkov je kon\010Dano. Obdelanih je bilo toliko vrstic: %0 s toliko napakami: %1.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241206790027549)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalaganje podatkov je kon\010Dano. Obdelana je bila 1 vrstica.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255517505027553)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalaganje podatkov je kon\010Dano. Obdelana je bila 1 vrstica z napako.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129241374609027549)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalaganje podatkov je kon\010Dano. Obdelana je bila 1 vrstica brez napake.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374093884027589)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'sl'
,p_message_text=>'Ciljni stolpec'
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281203852027561)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'sl'
,p_message_text=>'Ne nalagaj'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281391758027561)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'sl'
,p_message_text=>'Predobdelava napake'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374108376027589)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'sl'
,p_message_text=>'Izvorni stolpec'
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374925388027589)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'sl'
,p_message_text=>unistr('Format datuma/\0161tevilke')
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281032554027561)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'sl'
,p_message_text=>'Vstavi vrstico'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437198247027608)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrednosti \0161ifranta ni bilo mogo\010De pridobiti.')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406840744027599)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'sl'
,p_message_text=>'Preslikava podatkov/tabele'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375030021027589)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'sl'
,p_message_text=>'Vrstica'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281434959027561)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'sl'
,p_message_text=>'Zaporedje: Dejanje'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368735783027587)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'sl'
,p_message_text=>'Pravilo transformacije ni uspelo'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281106371027561)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'sl'
,p_message_text=>'Posodobi vrstico'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343416269027580)
,p_name=>'DATE'
,p_message_language=>'sl'
,p_message_text=>'Datum'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316385032027571)
,p_name=>'DAY'
,p_message_language=>'sl'
,p_message_text=>'dan'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316498458027571)
,p_name=>'DAYS'
,p_message_language=>'sl'
,p_message_text=>'dnevi'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356864654027584)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'sl'
,p_message_text=>unistr('Iskanje napak ni omogo\010Deno za to aplikacijo.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408561134027599)
,p_name=>'DEFAULT'
,p_message_language=>'sl'
,p_message_text=>'Privzeto'
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317192206027571)
,p_name=>'DELETE'
,p_message_language=>'sl'
,p_message_text=>unistr('izbri\0161i')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292769161027564)
,p_name=>'DELETE_MSG'
,p_message_language=>'sl'
,p_message_text=>unistr('Ali \017Eelite izvesti to dejanje brisanja?')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272397714027558)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'sl'
,p_message_text=>'Preglasitve seje'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273269333027558)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Omogo\010Di preglasitve seje')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274166718027558)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri nalaganju preglasitev seje je pri\0161lo do napake.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273944725027558)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri shranjevanju preglasitev seje je pri\0161lo do napake.')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129273863801027558)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'sl'
,p_message_text=>'Preglasitve seje so shranjene. Za ogled sprememb zaprite to pogovorno okno.'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247083726027550)
,p_name=>'DIAL_PCT'
,p_message_language=>'sl'
,p_message_text=>'Merilnik (odstotek)'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288036383027563)
,p_name=>'DOWNLOAD'
,p_message_language=>'sl'
,p_message_text=>'Prenos'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407696778027599)
,p_name=>'DUP_USER'
,p_message_language=>'sl'
,p_message_text=>unistr('Podvojeno uporabni\0161ko ime na seznamu.')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296469495027565)
,p_name=>'EDIT'
,p_message_language=>'sl'
,p_message_text=>'Uredi'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307692704027569)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('E-po\0161tnega naslova "%0" ni bilo mogo\010De najti.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290304335027563)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'sl'
,p_message_text=>unistr('To e-po\0161to je poslal(-a) %0.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407849450027599)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'sl'
,p_message_text=>'Elektronski naslov je predolg. Omejitev je 240 znakov.'
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338033491027578)
,p_name=>'ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368898764027587)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De nastaviti izvorne vrednosti elementa strani za podro\010Dje delne osve\017Eitve strani')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329323060027575)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'sl'
,p_message_text=>'Ustvaril(-a)'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290669199027563)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'sl'
,p_message_text=>'Geslo je poteklo'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283022415027561)
,p_name=>'FILE_EMPTY'
,p_message_language=>'sl'
,p_message_text=>'Datoteka je prazna.'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372853888027588)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Velikost nalo\017Eene datoteke je bila ve\010D kot %0 MB. Nalo\017Eite manj\0161o datoteko.')
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292936788027564)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Preverjanje pristnosti uporabnika ni uspelo in vsaj ena datoteka ni bila nalo\017Eena.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293022868027564)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ta instanca uporabnikom brez preverjene pristnosti ne omogo\010Da nalaganja datotek.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372966537027588)
,p_name=>'FILTERS'
,p_message_language=>'sl'
,p_message_text=>'Filtri'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350919532027582)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri\0161lo je do 1 napake')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350155314027582)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri\0161lo je do toliko napak: %0')
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295567676027565)
,p_name=>'FORM_OF'
,p_message_language=>'sl'
,p_message_text=>'%0 od %1'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334505468027577)
,p_name=>'GO'
,p_message_language=>'sl'
,p_message_text=>'Pojdi'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436791246027607)
,p_name=>'HELP'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010D')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277867996027560)
,p_name=>'HOME'
,p_message_language=>'sl'
,p_message_text=>'Domov'
,p_is_js_message=>true
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316131597027571)
,p_name=>'HOUR'
,p_message_language=>'sl'
,p_message_text=>'ura'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316278008027571)
,p_name=>'HOURS'
,p_message_language=>'sl'
,p_message_text=>'ure'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297673914027566)
,p_name=>'ICON'
,p_message_language=>'sl'
,p_message_text=>'Ikona %0'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274966640027559)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010D za obrezovanje ikone')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276149354027559)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Povlecite ikono in jo z drsnikom za pove\010Davo prestavite znotraj okvirja.</p>'),
'',
'<p>Velikost nove ikone ob nalaganju bo spremenjena tako, da se bo prilegala trem formatom: ikona priljubljenih, mala ikona in velika ikona.</p>',
'',
unistr('<p>Kadar je fokus na obrezovalniku ikon, so na voljo naslednje bli\017Enjice na tipkovnici:</p>'),
'<ul>',
unistr('    <li>Pu\0161\010Dica levo: Premik slike levo*</li>'),
unistr('    <li>Pu\0161\010Dica navzgor: Premik slike navzgor*</li>'),
unistr('    <li>Pu\0161\010Dica desno: Premik slike desno*</li>'),
unistr('    <li>Pu\0161\010Dica navzdol: Premik slike navzdol*</li>'),
unistr('    <li>I: Pove\010Dava</li>'),
unistr('    <li>O: Pomanj\0161ava</li>'),
'    <li>L: Rotacija levo</li>',
'    <li>R: Rotacija desno</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Za hitrej\0161e premikanje dr\017Eite tipko Shift</em></p>')))
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281657570027561)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'sl'
,p_message_text=>'Povlecite za prestavljanje ikone'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281771187027561)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Premaknite drsnik za prilagajanje ravni pove\010Dave')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274749565027559)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'sl'
,p_message_text=>'Urejanje ikone aplikacije'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275062676027559)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri shranjevanju ikone'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357447279027584)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'sl'
,p_message_text=>'<p><span class="a-Icon icon-tr-warning"></span> Ta aplikacija uporablja podedovane ikone. Nalaganje nove ikone bo zamenjalo vse podedovane ikone.</p>'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129275605401027559)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalo\017Eite novo ikono')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351869328027582)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'sl'
,p_message_text=>'Neveljavne poverilnice za prijavo'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452912307027612)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'sl'
,p_message_text=>'Neveljavna vrednost za parameter: %0'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346173938027580)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'sl'
,p_message_text=>unistr('Kot privzete nastavitve poro\010Dila')
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346212382027580)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Kot imenovano poro\010Dilo')
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328155395027575)
,p_name=>'IR_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka %0. %1'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327841185027575)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De izra\010Dunati krmarjenja obrazca. %0')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303483060027567)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Interaktivno poro\010Dilo ni bilo najdeno.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302830304027567)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Podro\010Dje interaktivnega poro\010Dila ne obstaja v aplikaciji %0, stran %1 in podro\010Dje %2.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129346077697027580)
,p_name=>'IR_STAR'
,p_message_language=>'sl'
,p_message_text=>'Prikazano samo za razvijalce'
,p_version_scn=>2693452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334275799027577)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Poizvedba poro\010Dila zahteva enoli\010Den klju\010D za identifikacijo posamezne vrstice. Posredovanega klju\010Da ni mogo\010De uporabiti za to poizvedbo. Dolo\010Dite stolpec enoli\010Dnega klju\010Da. %0')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334301562027577)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'sl'
,p_message_text=>unistr('Poizvedba poro\010Dila zahteva enoli\010Den klju\010D za identifikacijo posamezne vrstice. Posredovanega klju\010Da ni mogo\010De uporabiti za to poizvedbo. Za dolo\010Danje stolpca enoli\010Dnega klju\010Da uredite atribute poro\010Dila. %0')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375287154027589)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'sl'
,p_message_text=>'Izbira datoteke'
,p_is_js_message=>true
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375152250027589)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'sl'
,p_message_text=>'Povlecite in spustite datoteko sem ali'
,p_is_js_message=>true
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295851984027565)
,p_name=>'ITEMS'
,p_message_language=>'sl'
,p_message_text=>'Elementi'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329512891027575)
,p_name=>'ITEM_VALUE'
,p_message_language=>'sl'
,p_message_text=>'Vrednost elementa'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344142547027580)
,p_name=>'LABEL'
,p_message_language=>'sl'
,p_message_text=>'Oznaka'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356793488027584)
,p_name=>'LANGUAGE'
,p_message_language=>'sl'
,p_message_text=>'Jezik'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316875978027571)
,p_name=>'LAST'
,p_message_language=>'sl'
,p_message_text=>'zadnji'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292898456027564)
,p_name=>'LENGTH'
,p_message_language=>'sl'
,p_message_text=>unistr('Dol\017Eina')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351159789027582)
,p_name=>'LOGIN'
,p_message_language=>'sl'
,p_message_text=>'Prijava'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392746518027594)
,p_name=>'MANAGE'
,p_message_language=>'sl'
,p_message_text=>'Upravljanje'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129455879963027613)
,p_name=>'MAXIMIZE'
,p_message_language=>'sl'
,p_message_text=>'Maksimiraj'
,p_is_js_message=>true
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315941034027571)
,p_name=>'MINUTE'
,p_message_language=>'sl'
,p_message_text=>'minuta'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316037031027571)
,p_name=>'MINUTES'
,p_message_language=>'sl'
,p_message_text=>'minute'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408018919027599)
,p_name=>'MISSING_AT'
,p_message_language=>'sl'
,p_message_text=>unistr('V e-po\0161tnem naslovu manjka "@".')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408240653027599)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'sl'
,p_message_text=>unistr('Opozorilo: Za pogovorno stran %0 v aplikaciji %1 ni bila dolo\010Dena nobena predloga pogovorne strani.')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407911633027599)
,p_name=>'MISSING_DOT'
,p_message_language=>'sl'
,p_message_text=>unistr('V domeni e-po\0161tnega naslova manjka ".".')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354262060027583)
,p_name=>'MODULE'
,p_message_language=>'sl'
,p_message_text=>'Modul'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308460776027569)
,p_name=>'MONTH'
,p_message_language=>'sl'
,p_message_text=>'Mesec'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312325522027570)
,p_name=>'MONTHLY'
,p_message_language=>'sl'
,p_message_text=>unistr('Mese\010Dno')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308590868027569)
,p_name=>'MONTHS'
,p_message_language=>'sl'
,p_message_text=>'meseci'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343727667027580)
,p_name=>'MOVE'
,p_message_language=>'sl'
,p_message_text=>'Premik'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414536763027601)
,p_name=>'MOVE_FROM'
,p_message_language=>'sl'
,p_message_text=>'Premakni iz'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129414636695027601)
,p_name=>'MOVE_TO'
,p_message_language=>'sl'
,p_message_text=>'Premakni v'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129330751227027576)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka v operaciji brisanja ve\010D vrstic: vrstica= %0, %1, %2')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329726978027575)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'sl'
,p_message_text=>'Ne sme biti javni uporabnik'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278371187027560)
,p_name=>'NAME'
,p_message_language=>'sl'
,p_message_text=>'Ime'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343908019027580)
,p_name=>'NEW'
,p_message_language=>'sl'
,p_message_text=>'Novo'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308272373027569)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'sl'
,p_message_text=>unistr('V %0 se lahko prijavite tako, da obi\0161\010Dete:')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308346722027569)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160t. novih obvestil o ra\010Dunu: %0')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436946570027607)
,p_name=>'NEXT'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354184264027583)
,p_name=>'NO'
,p_message_language=>'sl'
,p_message_text=>'Ne'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129451003628027612)
,p_name=>'NOBODY'
,p_message_language=>'sl'
,p_message_text=>unistr('nih\010De')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317283057027572)
,p_name=>'NOT'
,p_message_language=>'sl'
,p_message_text=>'Ne'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360194959027585)
,p_name=>'NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>'Ni NULL'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329858808027575)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'sl'
,p_message_text=>'Ni %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349623754027582)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('podatkov ni bilo mogo\010De najti')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359620751027584)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni bilo mogo\010De najti poro\010Dila, ki bi ga bilo mogo\010De posodobiti. Ve\010D vrstic je bilo posodobljenih in operacije brisanja je mogo\010De izvajati samo na tabelarnih obrazcih tipa "Poro\010Dilo, ki ga je mogo\010De posodobiti".')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360515432027585)
,p_name=>'OK'
,p_message_language=>'sl'
,p_message_text=>'V redu'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355870606027583)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'sl'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129454752692027613)
,p_name=>'ORA_06550'
,p_message_language=>'sl'
,p_message_text=>'ORA-06550: vrstica %0, stolpec %1'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405669812027598)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabljate zastarel spletni brskalnik. Za seznam podprtih brskalnikov glejte priro\010Dnik za namestitev Oracle APEX.')
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300649908027567)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zahtevan je bil neveljaven nabor vrstic, izvorni podatki poro\010Dila so bili spremenjeni.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322655192027573)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Treba je navesti veljavno \0161tevilko strani, na primer p?n=1234.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326859668027574)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'sl'
,p_message_text=>'Naprej'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129326913325027575)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'sl'
,p_message_text=>'Naslednji nabor'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327016497027575)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129327103519027575)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'sl'
,p_message_text=>unistr('Prej\0161nji nabor')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129436872922027607)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbira \0161tevil\010Denja strani')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366876095027587)
,p_name=>'PASSWORD'
,p_message_language=>'sl'
,p_message_text=>'Geslo'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307536321027569)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'sl'
,p_message_text=>unistr('Va\0161e geslo za %0 je bilo spremenjeno.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295209583027565)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Geslo ne ustreza pravilom o zapletenosti gesla za to mesto.'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294399017027565)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'sl'
,p_message_text=>'Novo geslo se mora razlikovati od starega gesla za vsaj toliko znakov: %0.'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294928514027565)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Geslo ne sme vsebovati uporabni\0161kega imena.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295191919027565)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Geslo vsebuje prepovedano vzor\010Dno besedo.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295075479027565)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'sl'
,p_message_text=>'Geslo ne sme vsebovati imena delovnega prostora.'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294292068027565)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'sl'
,p_message_text=>'Geslo mora vsebovati vsaj toliko znakov: %0.'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294470496027565)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'sl'
,p_message_text=>'Geslo mora vsebovati vsaj en abecedni znak (%0).'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294842526027565)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Geslo mora vsebovati vsaj eno malo \010Drko.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294586791027565)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Geslo mora vsebovati vsaj en \0161tevilski znak (0123456789).')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294606768027565)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Geslo mora vsebovati vsaj eno lo\010Dilo (%0).')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294716541027565)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Geslo mora vsebovati vsaj eno veliko \010Drko.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308012995027569)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'sl'
,p_message_text=>'Obvestilo o ponastavitvi gesla'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293113747027564)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Gesla ni dovoljeno uporabiti, ker je \017Ee bilo uporabljeno v zadnjih %0 dneh.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129289893833027563)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'sl'
,p_message_text=>'Graf z odstotki'
,p_is_js_message=>true
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381404739027591)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'sl'
,p_message_text=>'Elementi'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129381500482027591)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'sl'
,p_message_text=>'Element'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355600365027583)
,p_name=>'PERCENT'
,p_message_language=>'sl'
,p_message_text=>'Odstotek'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129324936792027574)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'sl'
,p_message_text=>'Obrnite se na skrbnika.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437098752027608)
,p_name=>'PREVIOUS'
,p_message_language=>'sl'
,p_message_text=>'Nazaj'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373679078027589)
,p_name=>'PRINT'
,p_message_language=>'sl'
,p_message_text=>'Tiskanje'
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354448383027583)
,p_name=>'PRIVILEGES'
,p_message_language=>'sl'
,p_message_text=>'Privilegiji'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129323097879027573)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'sl'
,p_message_text=>unistr('Reference podro\010Dja')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344087508027580)
,p_name=>'REPORT'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354377168027583)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'sl'
,p_message_text=>unistr('Obdobje poro\010Danja')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437221545027608)
,p_name=>'REPORT_LABEL'
,p_message_language=>'sl'
,p_message_text=>unistr('Poro\010Dilo: %0')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355094918027583)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'sl'
,p_message_text=>unistr('Skupna vsota poro\010Dila')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300738166027567)
,p_name=>'RESET'
,p_message_language=>'sl'
,p_message_text=>unistr('Ponastavitev \0161tevil\010Denja strani')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329482991027575)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Ponastavitev \0161tevil\010Denja strani')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129359573747027584)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'sl'
,p_message_text=>'Ponastavitev gesla'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335393155027577)
,p_name=>'RESTORE'
,p_message_language=>'sl'
,p_message_text=>'Obnovi'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129368984527027587)
,p_name=>'RESULTS'
,p_message_language=>'sl'
,p_message_text=>'Rezultati'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360641607027585)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'sl'
,p_message_text=>'Nazaj na aplikacijo.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129361073907027585)
,p_name=>'RIGHT'
,p_message_language=>'sl'
,p_message_text=>'Desno'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393018879027594)
,p_name=>'ROW'
,p_message_language=>'sl'
,p_message_text=>'Vrstica %0'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343628761027580)
,p_name=>'ROW_COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo vrstic')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233463277027546)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Vpra\0161ajte Oracle')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233748289027546)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Zapri Vpra\0161ajte Oracle')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234031750027547)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'sl'
,p_message_text=>'Seznam obvestil'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233695804027546)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Odpri Vpra\0161ajte Oracle')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233995814027546)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'sl'
,p_message_text=>'Preslikava izdelka'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233860050027546)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'sl'
,p_message_text=>'Seznam predlogov'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234758654027547)
,p_name=>'RW_CLEAR'
,p_message_language=>'sl'
,p_message_text=>unistr('Po\010Disti')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234678973027547)
,p_name=>'RW_CLOSE'
,p_message_language=>'sl'
,p_message_text=>'Zapri'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234480177027547)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'sl'
,p_message_text=>unistr('Ogled ve\010D')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234848617027547)
,p_name=>'RW_GO_TO'
,p_message_language=>'sl'
,p_message_text=>'Pojdi na'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234240572027547)
,p_name=>'RW_GP_STEP'
,p_message_language=>'sl'
,p_message_text=>'Korak'
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234331449027547)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'sl'
,p_message_text=>'od'
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234127910027547)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'sl'
,p_message_text=>'Preklop prikaza korakov'
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233226058027546)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'sl'
,p_message_text=>'Skrij geslo'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234547004027547)
,p_name=>'RW_OPEN'
,p_message_language=>'sl'
,p_message_text=>'Odpri'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233078285027546)
,p_name=>'RW_ORACLE'
,p_message_language=>'sl'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129233194327027546)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei geslo')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129234903735027547)
,p_name=>'RW_START'
,p_message_language=>'sl'
,p_message_text=>unistr('Za\010Detek')
,p_is_js_message=>true
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129360075602027585)
,p_name=>'SAVE'
,p_message_language=>'sl'
,p_message_text=>'Shrani'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356211381027583)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'sl'
,p_message_text=>'Nadomestno privzeto'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356675686027584)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'sl'
,p_message_text=>'Opis'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356166266027583)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'sl'
,p_message_text=>'Primarno privzeto'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356965604027584)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'sl'
,p_message_text=>unistr('Na voljo je ve\010D kot toliko vrstic: %0. Pove\010Dajte izbirnik vrstic za ogled ve\010D vrstic.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129424371013027604)
,p_name=>'SEARCH'
,p_message_language=>'sl'
,p_message_text=>'Iskanje'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315847645027571)
,p_name=>'SECONDS'
,p_message_language=>'sl'
,p_message_text=>'sekunde'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355793143027583)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'sl'
,p_message_text=>'Glejte prilogo'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416346944027601)
,p_name=>'SELECT_ROW'
,p_message_language=>'sl'
,p_message_text=>'Izbira vrstice'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355475116027583)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'sl'
,p_message_text=>unistr('Izklop na\010Dina bralnika zaslona')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355554404027583)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'sl'
,p_message_text=>unistr('Vklop na\010Dina bralnika zaslona')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351706167027582)
,p_name=>'SHOW'
,p_message_language=>'sl'
,p_message_text=>'Prikaz'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418108968027602)
,p_name=>'SHOW_ALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Prika\017Ei vse')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129442903340027609)
,p_name=>'SIGN_IN'
,p_message_language=>'sl'
,p_message_text=>'Vpis'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129393888886027595)
,p_name=>'SIGN_OUT'
,p_message_language=>'sl'
,p_message_text=>'Odjava'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344608105027580)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko dnevi: %0'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352221599027582)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'Toliko dni od tega trenutka: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344597470027580)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko urami: %0'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352165819027582)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'Toliko ur od tega trenutka: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344476476027580)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko minutami: %0'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352078164027582)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'Toliko minut od tega trenutka: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344899315027580)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko meseci: %0'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352441868027582)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'Toliko mesecev od tega trenutka: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352697840027582)
,p_name=>'SINCE_NOW'
,p_message_language=>'sl'
,p_message_text=>'Zdaj'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344367012027580)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko sekundami: %0'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129351985936027582)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'Toliko sekund od tega trenutka: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344738892027580)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko tedni: %0'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352320252027582)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'Toliko tednov od tega trenutka: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129344948283027580)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'sl'
,p_message_text=>'Pred toliko leti: %0'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352515474027582)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'sl'
,p_message_text=>'Toliko let od tega trenutka: %0'
,p_is_js_message=>true
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129338479789027578)
,p_name=>'STANDARD'
,p_message_language=>'sl'
,p_message_text=>'Standardno'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355388857027583)
,p_name=>'START_DATE'
,p_message_language=>'sl'
,p_message_text=>unistr('Datum za\010Detka')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290503267027563)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'sl'
,p_message_text=>unistr('To e-po\0161tno sporo\010Dilo ste prejeli iz naro\010Dnine na interaktivno poro\010Dilo, ki jo je ustvaril(-a) %0.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452184937027612)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'sl'
,p_message_text=>unistr('Naro\010Dnine')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401566791027597)
,p_name=>'TAB'
,p_message_language=>'sl'
,p_message_text=>'Zavihek'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315709396027571)
,p_name=>'TITLE'
,p_message_language=>'sl'
,p_message_text=>'Naslov'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295450425027565)
,p_name=>'TODAY'
,p_message_language=>'sl'
,p_message_text=>'Danes'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354916052027583)
,p_name=>'TOTAL'
,p_message_language=>'sl'
,p_message_text=>'Skupaj'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296710254027565)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'sl'
,p_message_text=>unistr('Izbrati je mogo\010De maksimalno toliko stolpcev: %0.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252549737027552)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'sl'
,p_message_text=>'Strni vse'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253187173027552)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'sl'
,p_message_text=>'Strni vse spodnje'
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252172716027552)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'sl'
,p_message_text=>unistr('Raz\0161iri vse')
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252846304027552)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'sl'
,p_message_text=>unistr('Raz\0161iri vse spodnje')
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129253369651027552)
,p_name=>'TREE.REPARENT'
,p_message_language=>'sl'
,p_message_text=>unistr('Ponovna dolo\010Ditev nadrejenega')
,p_is_js_message=>true
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375489761027589)
,p_name=>'TREES'
,p_message_language=>'sl'
,p_message_text=>'Drevesa'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129418288739027602)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Zahtevano'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129339197069027578)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>'Neodobreno'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129389340005027593)
,p_name=>'UNAVAILABLE'
,p_message_language=>'sl'
,p_message_text=>'Ni na voljo'
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353039903027583)
,p_name=>'UNKNOWN'
,p_message_language=>'sl'
,p_message_text=>'Neznano'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291456018027564)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Pri\0161lo je do neprepoznane napake preverjanja pristnosti.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293646724027564)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Ce ne \017Eelite ve\010D prejemati e-po\0161tnih sporo\010Dil, za upravljanje svoje naro\010Dnine kliknite <a href="%0">Odjavi</a>.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129290425132027563)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'sl'
,p_message_text=>unistr('\010Ce ne \017Eelite ve\010D prejemati e-po\0161tnih sporo\010Dil, za upravljanje svoje naro\010Dnine obi\0161\010Dite naslednji URL:')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329921645027575)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>'nepodprt podatkovni tip'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317059588027571)
,p_name=>'UPDATE'
,p_message_language=>'sl'
,p_message_text=>'posodobitev'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315672101027571)
,p_name=>'UPDATED'
,p_message_language=>'sl'
,p_message_text=>'Posodobljeno'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129258871977027554)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'sl'
,p_message_text=>'Nadgradnja v teku'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129259142613027554)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'sl'
,p_message_text=>unistr('Oracle APEX se nadgrajuje na novej\0161o verzijo. Ta proces na splo\0161no traja do 3 minute.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322463251027573)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'sl'
,p_message_text=>'Zahtevani URL je bil prepovedan. Obrnite se na svojega skrbnika.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129343540585027580)
,p_name=>'USER'
,p_message_language=>'sl'
,p_message_text=>'Uporabnik'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129366729376027587)
,p_name=>'USERNAME'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabni\0161ko ime')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129408137264027599)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabni\0161ko ime je predolgo. Omejitev je %0 znakov.')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350627228027582)
,p_name=>'USERS'
,p_message_language=>'sl'
,p_message_text=>'uporabniki'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129407725028027599)
,p_name=>'USER_EXISTS'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabni\0161ko ime \017Ee obstaja.')
,p_version_scn=>2693467
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129421523282027603)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'sl'
,p_message_text=>'Slika profila za uporabnika %0'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283487471027561)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'sl'
,p_message_text=>'Avtomatizacija - %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281932866027561)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'sl'
,p_message_text=>'Stran %0- %1 '
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284899047027562)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'sl'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129284989183027562)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'sl'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283829492027561)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'sl'
,p_message_text=>'Konfiguracija iskanja - %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283768731027561)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'sl'
,p_message_text=>unistr('Deljeni dinami\010Dni seznam vrednosti - %0')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129283508795027561)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'sl'
,p_message_text=>'Definicija naloge - %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129282068942027561)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'sl'
,p_message_text=>'Delovni tok - %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129304187328027568)
,p_name=>'VALID'
,p_message_language=>'sl'
,p_message_text=>'Veljavno'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129295707956027565)
,p_name=>'VALIDATIONS'
,p_message_language=>'sl'
,p_message_text=>'Preverjanja'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356463103027584)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrednost mora biti dolo\010Dena')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402703656027597)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrednost mora biti dolo\010Dena za %0')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325366886027574)
,p_name=>'VERTICAL'
,p_message_language=>'sl'
,p_message_text=>unistr('navpi\010Dno')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316937227027571)
,p_name=>'VIEW'
,p_message_language=>'sl'
,p_message_text=>'ogled'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350771942027582)
,p_name=>'VIEWS'
,p_message_language=>'sl'
,p_message_text=>'pogledi'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357210401027584)
,p_name=>'VIEW_ALL'
,p_message_language=>'sl'
,p_message_text=>'Ogled vsega'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129297117614027565)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'sl'
,p_message_text=>'Vizualno skrita povezava'
,p_is_js_message=>true
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129337929673027578)
,p_name=>'WARNING'
,p_message_language=>'sl'
,p_message_text=>'Opozorilo'
,p_is_js_message=>true
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316595714027571)
,p_name=>'WEEK'
,p_message_language=>'sl'
,p_message_text=>'teden'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312449566027570)
,p_name=>'WEEKLY'
,p_message_language=>'sl'
,p_message_text=>'Tedensko'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316621551027571)
,p_name=>'WEEKS'
,p_message_language=>'sl'
,p_message_text=>'tedni'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129356594574027584)
,p_name=>'WELCOME_USER'
,p_message_language=>'sl'
,p_message_text=>unistr('Dobrodo\0161li: %0')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354773173027583)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'sl'
,p_message_text=>'Najdena je bila neveljavna vrednost, preverite vnesene podatke.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354880087027583)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'sl'
,p_message_text=>'Najdena je bila neveljavna vrednost, preverite vnesene podatke.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292667372027564)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'sl'
,p_message_text=>'Najdena je bila neveljavna vrednost datuma, preverite format datuma.'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354660985027583)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'sl'
,p_message_text=>unistr('Najdena je bila neveljavna vrednost \0161tevilke, preverite format \0161tevilke.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303716673027567)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'sl'
,p_message_text=>unistr('Najdena je bila neveljavna vrednost \010Dasovnega \017Eiga, preverite format \010Dasovnega \017Eiga.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328206688027575)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De vezati "%0". Uporabite dvojne narekovaje za elemente iz ve\010D bajtov ali preverite, ali je dol\017Eina elementa 30 bajtov ali manj. Za sklicevanje na elemente, dalj\0161e od 30 bajtov, uporabite sintakso v().')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318058520027572)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'sl'
,p_message_text=>'Dostop zavrnilo varnostno preverjanje %0'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320540951027573)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'sl'
,p_message_text=>'Aplikacija ni na voljo'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318989790027572)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Aplikacije ni bilo mogo\010De najti.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319030529027572)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'sl'
,p_message_text=>'aplikacija=%0  delovni prostor=%1'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319401770027572)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'sl'
,p_message_text=>'Dostop do te aplikacije je omejen, poskusite znova pozneje.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319323606027572)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'sl'
,p_message_text=>'Dostop do te aplikacije je omejen na razvijalce aplikacij, poskusite znova pozneje.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318595414027572)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-7744 Ni mogo\010De obdelati veje do funkcije, ki vrne URL.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318492782027572)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-7744 Ni mogo\010De obdelati veje do funkcije, ki vrne stran.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318769909027572)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'sl'
,p_message_text=>'ERR-1430 Klic za prikaz iz obdelave strani ni podprt: G_FLOW_STEP_ID (%0).'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319803077027572)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-1018 Napaka pri \010Di\0161\010Denju predpomnilnika.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318262308027572)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-1005 Neznan tip izra\010Duna.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319195931027572)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'sl'
,p_message_text=>'ERR-1201 ID seje ni nastavljen za prilagojeno preverjanje pristnosti.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319225785027572)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'sl'
,p_message_text=>'stran=%0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318844365027572)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-7620 Ni bilo mogo\010De dolo\010Diti delovnega prostora za aplikacijo (%0).')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299338710027566)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'sl'
,p_message_text=>'Uredi'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317964559027572)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-1802 Ni mogo\010De najti ID-ja elementa "%0"')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317676443027572)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-1002 Ni mogo\010De poiskati ID-ja elementa za element "%0" v aplikaciji "%1".')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317795029027572)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'sl'
,p_message_text=>unistr('Nepri\010Dakovana napaka, ni mogo\010De poiskati imena elementa na ravni aplikacije ali strani.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318127310027572)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ste \017Ee na prvi strani podatkov.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334670558027577)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'sl'
,p_message_text=>unistr('ID elementa (%0) ni element, dolo\010Den na trenutni strani.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292292606027564)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'sl'
,p_message_text=>unistr('Elementa ni mogo\010De nastaviti s podajanjem argumentov aplikaciji.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292517855027564)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'sl'
,p_message_text=>'(Navedena ni bila nobena vrednost kontrolne vsote)'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292020565027564)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'sl'
,p_message_text=>unistr('Element je mogo\010De nastaviti, ko ga spremlja vrednost kontrolne vsote "user-level bookmark".')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291919452027564)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'sl'
,p_message_text=>unistr('Element je mogo\010De nastaviti, ko ga spremlja vrednost kontrolne vsote "application-level bookmark".')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292135942027564)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'sl'
,p_message_text=>unistr('Element je mogo\010De nastaviti, ko ga spremlja vrednost kontrolne vsote "session".')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291874158027564)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'sl'
,p_message_text=>unistr('Element nima za\0161\010Dite.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129319929133027572)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'sl'
,p_message_text=>unistr('Pomo\010D za stran ni na voljo.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129307864065027569)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'sl'
,p_message_text=>unistr('Delovni prostor %0 nima pravic za raz\010Dlenjevanje kot shema %1.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129318361911027572)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-1010 Prese\017Eena je bila omejitev rekurzije obdelave veje do sprejetja strani. %0')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129274810443027559)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'sl'
,p_message_text=>unistr('Stran ni na voljo, vzorca strani ni mogo\010De zagnati.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129292438749027564)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'sl'
,p_message_text=>unistr('Te strani ni mogo\010De priklicati z URL-jem ali z uporabo GET ali POST za postopek prikaza, priklicati jo morate s tipom veje "Branch to Page".')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377240724027590)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri poskusu shranjevanja ne\0161tevilske vrednosti v elementu %0. ')
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309569135027569)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'sl'
,p_message_text=>unistr('Shema raz\010Dlenjevanja aplikacije "%0" ne obstaja v bazi podatkov.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309672487027569)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'sl'
,p_message_text=>unistr('Ra\010Dune v delovnem prostoru INTERNAL je mogo\010De uporabiti samo za dostop do elementa &PRODUCT_NAME. <a href="%0">Skrbni\0161ke storitve</a>.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317533298027572)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-1029 Ni mogo\010De shraniti informacij seje.  seja=%0 element=%1')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320655018027573)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Sledenja ni bilo mogo\010De zaustaviti: %0')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129317873388027572)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Nepri\010Dakovana napaka')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328641408027575)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'sl'
,p_message_text=>'Napaka v update_substitution_cache: %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320746872027573)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Za ogled pomo\010Di je treba navesti aplikacijo in stran.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129342493842027579)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Avtomatizacije ni bilo mogo\010De najti.')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129277905008027560)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka poizvedbe za avtomatizacijo: %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321880349027573)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo po\010Di\0161\010Denih sej: %0.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129263123172027555)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De izvr\0161iti kode %0! Baza podatkov je ne podpira ali pa je ne omogo\010Da parameter instance MLE_LANGUAGES.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129260721491027554)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>'Multilingual Engine ni na voljo v tej verziji baze podatkov!'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299958086027566)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>'Polje zbirke aplikacij ne sme biti NULL'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299733671027566)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Navedena \0161tevilka atributa \010Dlana %0 je neveljavna.  \0160tevilka atributa mora biti med 1 in %1')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300264617027566)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'sl'
,p_message_text=>'Zbirka aplikacij obstaja'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300014809027566)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'sl'
,p_message_text=>'Ime zbirke ne sme biti NULL'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300110096027566)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Ime zbirke ne sme biti dalj\0161e od 255 znakov')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299522688027566)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>'Zbirka aplikacij %0 ne obstaja'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300343659027566)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'sl'
,p_message_text=>unistr('Kazalec \0161e ni odprt')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299604572027566)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Zaporedje \010Dlanov %0 ne obstaja v zbirki aplikacij %1'),
''))
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129299815728027566)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'sl'
,p_message_text=>unistr('Zaporedje \010Dlanov %0 ne obstaja v zbirki aplikacij "%1"')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252671431027552)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'sl'
,p_message_text=>'Algoritem %0 ni podprt za ECDSA.'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129252353195027552)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'sl'
,p_message_text=>unistr('Elipti\010Dna krivulja %0 ni podprta.')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129378012702027590)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>'Kriptografska funkcija "%0" ni podprta v tem sistemu.'
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430343202027606)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'sl'
,p_message_text=>'Dostopnost testirana'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321357734027573)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'sl'
,p_message_text=>'Zapri'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321425234027573)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'sl'
,p_message_text=>unistr('Mo\017Enosti prilagajanja strani')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321570091027573)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'sl'
,p_message_text=>'Privzeto'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321694172027573)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'sl'
,p_message_text=>'Prikazano'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321767214027573)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'sl'
,p_message_text=>'Skrito'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321196577027573)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'sl'
,p_message_text=>unistr('Preverite podro\010Dja, ki jih \017Eelite vklju\010Diti na to stran.  Preverjena podro\010Dja se morda ne bodo prikazala, \010De niste v ustreznem kontekstu aplikacije ali nimate ustreznih privilegijev.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321219868027573)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'sl'
,p_message_text=>unistr('Te strani ni mogo\010De prilagoditi.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430657266027606)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'sl'
,p_message_text=>'Videz te aplikacije lahko prilagodite tako, da spremenite slog teme. Izberite slog teme s spodnjega seznama in kliknite Dodeli spremembe.'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129431442923027606)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'sl'
,p_message_text=>unistr('Prikaz podro\010Dja')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430576011027606)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'sl'
,p_message_text=>'Uporabi privzeti slog aplikacije'
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129430492124027606)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'sl'
,p_message_text=>'Videz '
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374614659027589)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Indeks stolpcev s sklicem v zdru\017Eevanju %0 ne obstaja.')
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267344853027556)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>'Dodajanje izvoza podatkov ni podprto za format %0.'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129230385659027545)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>'Izhod CLOB ni podprt za format %0.'
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374314682027589)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'sl'
,p_message_text=>unistr('Prelom stolpca mora biti na za\010Detku polja stolpcev.')
,p_version_scn=>2693457
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374452976027589)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>'Indeks skupine stolpcev s sklicem v %0 ne obstaja.'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129281592162027561)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'sl'
,p_message_text=>'izvoz'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129288774484027563)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'sl'
,p_message_text=>unistr('Format izvoza mora biti XML, ki uporablja ORDS kot tiskalni stre\017Enik.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374714553027589)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>unistr('Indeks stolpcev s sklicem v ozna\010Dbi %0 ne obstaja.')
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129278100642027560)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'sl'
,p_message_text=>'Neveljaven format izvoza: %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129374589728027589)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>'Indeks nadrejene skupine s sklicem v %0 ne obstaja.'
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129399755480027596)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('Stolpec %1 tabele %0 je stolpec identitet "GENERATED ALWAYS". Prepri\010Dajte se, da noben izvorni stolpec ni preslikan v stolpec %1 v pogovornem oknu Konfiguracija.')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311356948027570)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'sl'
,p_message_text=>'Navedeni interval potrditev je prenizek.'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311401134027570)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'sl'
,p_message_text=>'Za nalaganje podatkov ni bilo zagotovljenih nobenih stolpcev.'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312731662027570)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Za izbirnika vrstic "%0" ni bilo mogo\010De najti nobenega stolpca. Poskusite samodejno zaznati ali pregledati strukturo JSON.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322109724027573)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('V datoteki XLSX ni bilo mogo\010De najti delovnih listov.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267232162027556)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'sl'
,p_message_text=>'Zahtevane ravni hierarhije za odkrivanje (%0) presegajo maksimum, ki je %1.'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322012615027573)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'sl'
,p_message_text=>'Navedeni delovni list ne obstaja v datoteki XLSX.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129300410224027566)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'sl'
,p_message_text=>'Trenutna verzija podatkov v bazi podatkov se je spremenila, odkar je uporabnik inicializiral postopek posodobitve.'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303380030027567)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri posodabljanju stolpcev poro\010Dila: %0')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413830857027601)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 ni mogo\010De pretvoriti v SDO_GEOMETRY.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350324502027582)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'sl'
,p_message_text=>unistr('Stolpca %0, ki je podatkovnega tipa %1, ni mogo\010De pretvoriti v VARCHAR2!')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357727209027584)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Stolpca "%0", dolo\010Denega za atribut "%1", ni bilo mogo\010De najti v viru podatkov!')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293800550027564)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'sl'
,p_message_text=>unistr('Tip filtra %0 ni podprt za stolpce z ve\010D vrednostmi.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129417313682027602)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'sl'
,p_message_text=>'Neveljaven filter "med".'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129272966616027558)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'sl'
,p_message_text=>unistr('V vrstici \0161t. %1 v stolpcu %0 ni bila najdena nobena vrednost %2.')
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129269652671027557)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'sl'
,p_message_text=>'Stolpec %0 ali vrstica #%1 ne obstaja.'
,p_version_scn=>2693441
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256237379027553)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'sl'
,p_message_text=>'Naveden neveljaven tip LOV.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256112498027553)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Neveljaven tip poizvedbe. Tip poizvedbe mora biti tabela, poizvedba SQL ali funkcija PL/SQL, ki vrne poizvedbo SQL.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350457090027582)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Raz\010Dlenjevanje poizvedbe SQL ni uspelo!'),
'%0'))
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357878084027584)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Navedenega polo\017Eaja stolpca %0 za atribut "%1" ni bilo mogo\010De najti v izpisku SQL!')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129247825249027551)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'sl'
,p_message_text=>unistr('V filtru z ve\010D vrednostmi je bilo uporabljenih preve\010D elementov.')
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129357654205027584)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'sl'
,p_message_text=>unistr('Za atribut "%0" ni dolo\010Den noben stolpec.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129256092775027553)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>'Telo funkcije PL/SQL ni vrnilo vrednosti.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129373460216027589)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'sl'
,p_message_text=>'Vir podatkov REST ne vsebuje operacije za obravnavo zahtevanega dejanja DML.'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415141487027601)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>'Filtri razpona so podprti za podatkovne tipe NUMBER, DATE in TIMESTAMP.'
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129236027176027547)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Zahteva ni uspela zaradi %0'
,p_version_scn=>2693435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129239572883027548)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'sl'
,p_message_text=>'Pretvorba GeoJSON v SDO_GEOMETRY (stolpec %0) ni na voljo v tej bazi podatkov.'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129242979457027549)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'sl'
,p_message_text=>'Pretvorba SDO_GEOMETRY (stolpec %0) ni podprta za vire podatkov XML.'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129267068590027556)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'sl'
,p_message_text=>unistr('Znak %0 ni podprt kot lo\010Dilo za ve\010D vrednosti.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129415287503027601)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'sl'
,p_message_text=>unistr('Te funkcije ni mogo\010De uporabiti za kontekst poizvedbe.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129243038949027549)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>'Podatkovni tip stolpca se ne ujema.'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129276534146027559)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'sl'
,p_message_text=>unistr('Ta vir podatkov ne podpira spreminjanja ve\010D vrstic.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255914081027553)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Prekora\010Dene notranje omejitve vezave ORDS OUT. Zmanj\0161ajte \0161tevilo vrstic DML.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358693959027584)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Odgovora JSON oddaljenega stre\017Enika ni bilo mogo\010De raz\010Dleniti: '),
'%0'))
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129255816843027553)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Neznan ali napa\010Den tip konteksta.')
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279985785027560)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'sl'
,p_message_text=>'Nepodprte komponente za berljivi izvoz: %0'
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129377966407027590)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'sl'
,p_message_text=>unistr('Tega tipa datoteke raz\010Dlenjevalnik ne podpira.')
,p_version_scn=>2693459
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328717967027575)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Nepoobla\0161\010Den dostop (wwv_flow_api.set_credentials ni nastavljeno).')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303688855027567)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'sl'
,p_message_text=>unistr('Delovni prostor ni bil ustvarjen, ker \017Ee obstaja.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129303516065027567)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'sl'
,p_message_text=>unistr('Skupina uporabnikov ni bila ustvarjena, ker \017Ee obstaja.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314974855027571)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'sl'
,p_message_text=>unistr('Podvojeno uporabni\0161ko ime najdeno za %0.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315001497027571)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri nalaganju uporabnikov. Ni uspelo za uporabnika %0.'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325859852027574)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalo\017Eilo bi se toliko uporabnikov: %0.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325614947027574)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'sl'
,p_message_text=>'Geslo'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325712279027574)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'sl'
,p_message_text=>'Privilegiji'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325452887027574)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'sl'
,p_message_text=>unistr('Uporabni\0161ko ime')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129405822217027598)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'sl'
,p_message_text=>'Napaka med upodabljanjem elementa strani #COMPONENT_NAME#.'
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320864331027573)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Elementa strani ni mogo\010De prikazati, ker obrazec HTML \0161e ni bil odprt.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129279287266027560)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri izra\010Dunavanju privzete vrednosti elementa za element strani #COMPONENT_NAME#.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320102457027572)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri izra\010Dunavanju objave elementa za element strani #COMPONENT_NAME#.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320061181027572)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri izra\010Dunavanju izvorne vrednosti elementa za element strani #COMPONENT_NAME#.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296877424027565)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'sl'
,p_message_text=>unistr('Nepoobla\0161\010Den dostop.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246347665027550)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'sl'
,p_message_text=>'Vrednost %0 od %1 ni veljavno polje JSON.'
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320300034027572)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'sl'
,p_message_text=>'JavaScript ni podprt.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320451104027573)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'sl'
,p_message_text=>'Seznam'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129321001358027573)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni bilo mogo\010De inicializirati poizvedbe.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129329043761027575)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'sl'
,p_message_text=>'Posodobitev %0 ni podprta.'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322591625027573)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'sl'
,p_message_text=>'Neveljaven ID elementa: %0 '
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350259800027582)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'sl'
,p_message_text=>unistr('Za ta element ne obstaja nobena pomo\010D.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312015703027570)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'sl'
,p_message_text=>'Ustvarjanje poizvedbe grafikona ni uspelo. Preverite nastavitve preslikave izvora in stolpcev.'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313379508027570)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'sl'
,p_message_text=>'Neveljavna vrednost za parameter p_mail_id: %0'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129350043364027582)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'sl'
,p_message_text=>unistr('Polja "Za" ali "Odgovori" ne morete uporabiti kot naslov "Od", saj vsebuje ve\010D e-po\0161tnih naslovov.')
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129434922560027607)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Presegli ste maksimalno \0161tevilo e-po\0161tnih sporo\010Dil na delovni prostor. Obrnite se na svojega skrbnika.')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291569248027564)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'sl'
,p_message_text=>'Ta postopek je treba priklicati iz seje aplikacije.'
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129313228145027570)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'sl'
,p_message_text=>'Vrednost NULL navedena za parameter %0.'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129371397745027588)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('E-po\0161tne predloge "%0" ni bilo mogo\010De najti v aplikaciji %1.')
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129447864772027611)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Parameter instance SMTP_HOST_ADDRESS mora biti nastavljen za po\0161iljanje po\0161te.')
,p_version_scn=>2693474
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129312642901027570)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Za po\0161iljanje po\0161te je treba navesti prejemnika sporo\010Dila.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129437365769027608)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Povezave SMTP s konfiguriranim e-po\0161tnim stre\017Enikom ni bilo mogo\010De vzpostaviti.')
,p_version_scn=>2693471
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129412645941027600)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'sl'
,p_message_text=>'Neveljaven klic Ajax!'
,p_version_scn=>2693468
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296523605027565)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Za vti\010Dnik %0 ni bila dolo\010Dena nobena funkcija Ajax')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129403187597027597)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Nobena funkcija izvajanja ni bila dolo\010Dena za vti\010Dnik %0')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296671587027565)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Za vti\010Dnik %0 ni bila dolo\010Dena nobena funkcija upodobitve')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413540945027601)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Vti\010Dnik vira podatkov REST "%0" ne vsebuje funkcije "Zmo\017Enosti".')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413403272027601)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Vti\010Dnik vira podatkov REST "%0" ne vsebuje funkcije DML.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413607669027601)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Vti\010Dnik vira podatkov REST "%0" ne vsebuje funkcije izvajanja.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129413720566027601)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'sl'
,p_message_text=>unistr('Vti\010Dnik vira podatkov REST "%0" ne vsebuje funkcije pridobivanja.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294007641027565)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka v kodi PLSQL, do katere je pri\0161lo med obdelovanjem vti\010Dnika.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302685179027567)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>unistr('Vrednost mora biti dolo\010Dena.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129335678903027577)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'sl'
,p_message_text=>unistr('Podatkovnega tipa %0 ni mogo\010De pretvoriti v VARCHAR2!')
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423838539027604)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Stolpca "%0", dolo\010Denega za atribut "%1", ni bilo mogo\010De najti v izpisku SQL!')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129251188687027552)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'sl'
,p_message_text=>'Vrednost %0 od %1 ni veljavno polje JSON.'
,p_version_scn=>2693438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401062897027597)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'sl'
,p_message_text=>'Za %0 mora biti navedena poizvedba o seznamu vrednosti (LOV) ali poimenovan seznam vrednosti.'
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129402611635027597)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'sl'
,p_message_text=>unistr('\0160tevilo stolpcev v poizvedbi LOV SQL za %0 je napa\010Dno. Oglejte si primere veljavnih izpiskov.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423651079027604)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'sl'
,p_message_text=>unistr('Za atribut "%0" ni dolo\010Den noben stolpec.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452862545027612)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'sl'
,p_message_text=>unistr('Vnesena vrednost %0 za atribut "%1" ni \0161tevilska.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129406143115027598)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 vsebuje napa\010Den tip podatkov v izpisku SQL. Stolpec \0161t. %1 je %2, vendar pri\010Dakovano je bilo %3.')
,p_version_scn=>2693466
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129423703643027604)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'sl'
,p_message_text=>unistr('Stolpec "%0", dolo\010Den za atribut "%1", ima tip podatkov %2, a bi moral imeti %3.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129293248617027564)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De najti postavitve poro\010Dila.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129280866800027560)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Omejitev izvajanj v ozadju prese\017Eena za %0.')
,p_version_scn=>2693442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231105522027546)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'sl'
,p_message_text=>unistr('Druga izvedba %0 se \017Ee izvaja.')
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129231050110027546)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'sl'
,p_message_text=>unistr('Za kontekst %1 se \017Ee izvaja druga izvedba %0.')
,p_version_scn=>2693434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129246088503027550)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'sl'
,p_message_text=>unistr('Nalo\017Eene datoteke niso vidne v delovni seji za izvajanje %0.')
,p_version_scn=>2693436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358519912027584)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'sl'
,p_message_text=>unistr('Funkcije Vsota izra\010Duna ni mogo\010De uporabiti za poro\010Dila na osnovi vira podatkov REST.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129320278746027572)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('ERR-2904 Ni mogo\010De nastaviti vrednosti bli\017Enjice.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325251656027574)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka: Neznan tip bli\017Enjice.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129262944911027555)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'sl'
,p_message_text=>'Iskalna poizvedba je predolga.'
,p_version_scn=>2693439
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129314339180027571)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni bilo mogo\010De pridobiti authentication_scheme v aplikaciji %0.')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129322348142027573)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni mogo\010De pridobiti komponente %0.')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129392608553027594)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'sl'
,p_message_text=>unistr('ID najemnika \017Ee obstaja za trenutno sejo.')
,p_version_scn=>2693463
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129325540231027574)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'sl'
,p_message_text=>unistr('E-po\0161ta')
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452398821027612)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'sl'
,p_message_text=>'Preverjanje pristnosti ni uspelo.'
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129352992652027582)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'sl'
,p_message_text=>unistr('Eden ali ve\010D pi\0161kotkov, nastavljenih v apex_util.g_request_cookies, vsebuje neveljavno vrednost.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129334892975027577)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'sl'
,p_message_text=>'Odgovor registra UDDI je bil neveljaven.'
,p_version_scn=>2693451
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129294163684027565)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'sl'
,p_message_text=>'Navedeni URL ni vrnil veljavnega dokumenta WSDL.'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296967459027565)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokument WSDL vsebuje ve\010D vezav SOAP. &PRODUCT_NAME. podpira samo WSDL-je z eno vezavo SOAP. Za nadaljevanje postopka ustvarjanja reference za to storitev kliknite Ro\010Dno ustvari referenco spletne storitve.')
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129372589330027588)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'sl'
,p_message_text=>'Odgovor storitve ni bil XML.'
,p_version_scn=>2693456
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452226261027612)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'sl'
,p_message_text=>unistr('\017Deton za dostop OAuth ni na voljo ali pa je potekel.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129416762461027602)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'sl'
,p_message_text=>unistr('Presegli ste maksimalno \0161tevilo zahtev spletne storitve na delovni prostor. Obrnite se na svojega skrbnika.')
,p_version_scn=>2693470
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129452483328027612)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'sl'
,p_message_text=>unistr('Stre\017Enik se je odzval z nepodprtim tipom \017Eetona OAuth.')
,p_version_scn=>2693476
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296341606027565)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'sl'
,p_message_text=>'Dokument WSDL ni vseboval vezave za SOAP, ki je zahtevana za namene dodajanja reference.'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129291704289027564)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'sl'
,p_message_text=>unistr('Ta WSDL zahteva poverilnice za preverjanje pristnosti. Spodaj navedite uporabni\0161ko ime in geslo.')
,p_version_scn=>2693444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129302729790027567)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'sl'
,p_message_text=>unistr('Dokumenta WSDL mehanizem upodabljanja ni mogel razumeti. Za nadaljevanje postopka ustvarjanja reference za to storitev kliknite Ro\010Dno ustvari referenco spletne storitve.')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129375595443027589)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'sl'
,p_message_text=>unistr('Ni bilo mogo\010De obdelati posodobitve.')
,p_version_scn=>2693458
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401330481027597)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'sl'
,p_message_text=>unistr('Stolpec za vra\010Dilo in stolpec za prikaz na seznamu vrednosti sta enaka!')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129401257612027597)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'sl'
,p_message_text=>unistr('Seznam vrednosti nima stolpca za vra\010Dilo.')
,p_version_scn=>2693464
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328925237027575)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri pridobivanju vrednosti stolpca: %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353827128027583)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'sl'
,p_message_text=>unistr('Trenutni podatki tabelarnega obrazca so prestari; izvorni podatki so bili spremenjeni.<br/> Kliknite <strong><a href="%0">tukaj</a></strong>, da zavr\017Eete spremembe in znova nalo\017Eite podatke iz baze podatkov.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309057787027569)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'sl'
,p_message_text=>unistr('Napaka pri dolo\010Danju niza \0161tevil\010Denja strani')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308992127027569)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('ni mogo\010De dolo\010Diti naslovov poizvedbe:'),
'%0'))
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309194512027569)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'sl'
,p_message_text=>unistr('napaka pri izvajanju zamenjav noge poro\010Dila')
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309213118027569)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('raz\010Dlenjevanje poizvedbe SQL ni uspelo:'),
'%0',
'%1'))
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315384887027571)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'sl'
,p_message_text=>unistr('Minimalno \0161tevilo zahtevanih vrstic: %0, \0161tevilo najdenih vrstic, ki pa niso prikazane: %1')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311784589027570)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'sl'
,p_message_text=>'stolpec poizvedbe #%0 (%1) je neveljaven, stolpci, ki uporabljajo HTML, potrebujejo druga imena'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129328893764027575)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'sl'
,p_message_text=>'Napaka pri pridobivanju naslovov poizvedb: %0'
,p_version_scn=>2693450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309366868027569)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('napaka poro\010Dila:'),
'%0'))
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129349419678027581)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'sl'
,p_message_text=>'Razvrsti po tem stolpcu'
,p_version_scn=>2693454
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311885252027570)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'sl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Poizvedbe ni mogo\010De raz\010Dleniti, preverite sintakso svoje poizvedbe.'),
'(%0)',
'</p>'))
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129353998613027583)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'sl'
,p_message_text=>'Ta obrazec vsebuje neshranjene spremembe. Pritisnite "V redu", da nadaljujete, ne da bi shranili spremembe.'
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129358426021027584)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'sl'
,p_message_text=>unistr('Shema \0161tevil\010Denja strani poro\010Dila (%0) ni podprta z izbranim virom podatkov.')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129311617178027570)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'sl'
,p_message_text=>'stolpec poizvedbe #%0 (%1) je neveljaven, uporabite drugo ime stolpca'
,p_version_scn=>2693448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315482703027571)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'sl'
,p_message_text=>unistr('vrstice %0 - %1 od ve\010D kot %2')
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129355950928027583)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'sl'
,p_message_text=>unistr('%0 - %1 od ve\010D kot %2')
,p_version_scn=>2693455
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129315232597027571)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'sl'
,p_message_text=>'vrstice %0 - %1 od %2'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129296084834027565)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'sl'
,p_message_text=>'%0 - %1 od %2'
,p_version_scn=>2693445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129309470809027569)
,p_name=>'Y'
,p_message_language=>'sl'
,p_message_text=>'Y'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129316788453027571)
,p_name=>'YEAR'
,p_message_language=>'sl'
,p_message_text=>'leto'
,p_version_scn=>2693449
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129308691602027569)
,p_name=>'YEARS'
,p_message_language=>'sl'
,p_message_text=>'leta'
,p_version_scn=>2693446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(129354096574027583)
,p_name=>'YES'
,p_message_language=>'sl'
,p_message_text=>'Da'
,p_version_scn=>2693455
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
 p_id=>wwv_flow_imp.id(109678305570583962.4486)
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
 p_id=>1.4486
,p_name=>unistr('Sporo\010Dila')
,p_alias=>'MESSAGES'
,p_step_title=>unistr('Sporo\010Dila')
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
