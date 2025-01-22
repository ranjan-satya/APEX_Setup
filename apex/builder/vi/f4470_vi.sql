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
,p_default_application_id=>4547
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4547 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4547
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131600849964038774')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'vi'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4547)
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
 p_id=>wwv_flow_imp.id(4547)
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
 p_id=>wwv_flow_imp.id(728504220438374.4547)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4547)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4547)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4547)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4547)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4547)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4547)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4547)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4547)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4547)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4547)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4547)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4547)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4547)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4547)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4547)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4547)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.vi'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4547)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4547)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4547)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4547)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4547)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4547)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4547)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.vi'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4547)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4547)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4547)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4547)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4547)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4547)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.vi'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4547)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4547)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4547)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.vi'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4547)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4547)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4547)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4547)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4547)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4547)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4547)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4547)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4547)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4547)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4547)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4547)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4547)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4547)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4547)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4547)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4547)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.vi'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4547)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4547)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4547)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4547)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4547)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4547)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4547)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4547)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4547)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4547)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4547)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4547)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4547)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4547)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4547)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4547)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4547)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.vi'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4547)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4547)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4547)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4547)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4547)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4547)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4547)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4547)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4547)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4547)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4547)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4547)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4547)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4547)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4547)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.vi'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4547)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4547)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4547)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4547)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4547)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4547)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4547)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4547)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4547)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4547)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4547)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4547)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4547)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4547)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4547)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4547)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4547)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4547)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4547)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4547)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4547)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4547)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4547)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4547)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4547)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4547)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4547)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4547)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4547)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4547)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4547)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4547)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4547)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4547)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4547)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4547)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4547)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4547)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4547)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4547)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4547)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4547)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4547)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4547)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4547)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4547)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4547)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4547)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4547)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4547)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4547)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4547)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4547)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4547)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4547)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4547)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4547)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4547)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4547)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4547)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4547)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4547)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4547)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4547)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4547)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4547)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4547)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4547)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4547)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4547)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4547)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4547)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4547)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4547)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4547)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4547)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4547)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4547)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4547)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4547)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4547)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4547)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4547)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4547)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4547)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4547)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4547)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4547)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4547)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4547)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4547)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4547)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4547)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4547)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4547)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4547)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4547)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4547)
,p_page_name=>'winlov'
,p_page_title=>unistr('H\00F4\0323p thoa\0323i ti\0300m ki\00EA\0301m')
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
,p_find_button_text=>unistr('T\00ECm ki\1EBFm')
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>unistr('\0110o\0301ng')
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('Ti\00EA\0301p theo &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; Tr\01B0\01A1\0301c')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">Ha\0300ng #FIRST_ROW# - #LAST_ROW#</div>')
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
 p_id=>wwv_flow_imp.id(649611609668764506.4547)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4547)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4547)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4547)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4547)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4547)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4547)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4547)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4547)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4547)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4547)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4547)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4547)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4547)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4547)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4547)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4547)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4547)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4547)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4547)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4547)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4547)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4547)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4547)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4547)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4547)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4547)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4547)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4547)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4547)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4547)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4547)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4547)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4547)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4547)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4547)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4547)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4547)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4547)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4547)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4547)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4547)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4547)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4547)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4547)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4547)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4547)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4547)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4547)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4547)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4547)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4547)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4547)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4547)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4547)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4547)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4547)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4547)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4547)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4547)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4547)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4547)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4547)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4547)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4547)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4547)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4547)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4547)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4547)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4547)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4547)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4547)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4547)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4547)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4547)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4547)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4547)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4547)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4547)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4547)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4547)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4547)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4547)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4547)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4547)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4547)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4547)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4547)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4547)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4547)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4547)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4547)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4547)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4547)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4547)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4547)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4547)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4547)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4547)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4547)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4547)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4547)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4547)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4547)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4547)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4547)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4547)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4547)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4547)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4547)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4547)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4547)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4547)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4547)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4547)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4547)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4547)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4547)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4547)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4547)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4547)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4547)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4547)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4547)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4547)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4547)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4547)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4547)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4547)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4547)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4547)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4547)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4547)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4547)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4547)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4547)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4547)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4547)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4547)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4547)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4547)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4547)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4547)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4547)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4547)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4547)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4547)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4547)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4547)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4547)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4547)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4547)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4547)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4547)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4547)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4547)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4547)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4547)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4547)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4547)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4547)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4547)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4547)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4547)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4547)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4547)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4547)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4547)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4547)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4547)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4547)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4547)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4547)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4547)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4547)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4547)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4547)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4547)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4547)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4547)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4547)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4547)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4547)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4547)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4547)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4547)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4547)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4547)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4547)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4547)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4547)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4547)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4547)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4547)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4547)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4547)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4547)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4547)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4547)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4547)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4547)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4547)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4547)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4547)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4547)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4547)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4547)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4547)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4547)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4547)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4547)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4547)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4547)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4547)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4547)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4547)
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
 p_id=>wwv_flow_imp.id(130886709974028073)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1ED9t %0')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871347924028068)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i qua\0309n tri\0323')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871257195028068)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ng\01B0\1EDDi d\00F9ng')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933973625028087)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Quy\1EC1n truy c\1EADp b\1ECB t\1EEB ch\1ED1i')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890811024028074)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E0i kho\1EA3n %0 c\1EE7a b\1EA1n \0111\00E3 \0111\01B0\1EE3c t\1EA1o.')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874079728028069)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0300i khoa\0309n na\0300y \0111a\0303 bi\0323 kho\0301a.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858542841028064)
,p_name=>'AM_PM'
,p_message_language=>'vi'
,p_message_text=>'AM / PM'
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841305518028059)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'vi'
,p_message_text=>unistr('li\00EAn k\00EA\0301t ha\0300nh \0111\00F4\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841212722028059)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'vi'
,p_message_text=>unistr('li\00EAn k\00EA\0301t h\00F4\0323p thoa\0323i')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005615634028108)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t/t\0103\0301t %0')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013450156028110)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'vi'
,p_message_text=>unistr('(\0110ang ho\1EA1t \0111\1ED9ng)')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818297071028052)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xo\0301a cu\00F4\0323c tro\0300 chuy\00EA\0323n')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818101792028052)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a cu\00F4\0323c tro\0300 chuy\00EA\0323n')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814703849028051)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00E2\0301p nh\00E2\0323n')
,p_is_js_message=>true
,p_version_scn=>2693768
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814861061028051)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'vi'
,p_message_text=>unistr('T\01B0\0300 ch\00F4\0301i')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814531185028051)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'vi'
,p_message_text=>unistr('Li\0323ch s\01B0\0309 chuy\00EA\0309n \0111\00F4\0309i')
,p_is_js_message=>true
,p_version_scn=>2693768
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817978208028052)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 sao che\0301p')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818010671028052)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 sao che\0301p va\0300o ba\0309ng ghi ta\0323m')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817743969028052)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao ch\00E9p')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817846519028052)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao che\0301p sang ba\0309ng ghi ta\0323m')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815259073028051)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 ly\0301')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815627765028051)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('AI bi\0323 v\00F4 hi\00EA\0323u ho\0301a \01A1\0309 c\00E2\0301p \0111\00F4\0323 kh\00F4ng gian la\0300m vi\00EA\0323c ho\0103\0323c ba\0309n \01B0\0301ng du\0323ng.')
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854938871028063)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y di\0323ch vu\0323 AI ta\0323o sinh v\01A1\0301i ma\0303 ho\0103\0323c ma\0303 ti\0303nh xa\0301c \0111i\0323nh.')
,p_version_scn=>2693831
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853630703028063)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i xa\0301c th\01B0\0323c ho\0103\0323c quy\00EA\0300n truy c\00E2\0323p bi\0323 c\00E2\0301m (HTTP-%1) \0111\00F4\0301i v\01A1\0301i URL %0. Ha\0303y ki\00EA\0309m tra c\00E2\0301u hi\0300nh cu\0309a Di\0323ch vu\0323 AI ta\0323o sinh %2.')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833445149028057)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u HTTP t\01A1\0301i Di\0323ch vu\0323 AI ta\0323o sinh ta\0323i %0 kh\00F4ng tha\0300nh c\00F4ng v\01A1\0301i HTTP-%1: %2')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857841213028064)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i trong y\00EAu c\00E2\0300u HTTP t\01A1\0301i Di\0323ch vu\0323 AI ta\0323o sinh cho tri\0300nh b\00F4\0309 tr\01A1\0323 %0 \01A1\0309 ch\00EA\0301 \0111\00F4\0323 %1. Ha\0303y ki\00EA\0309m tra c\00E2\0301u hi\0300nh cu\0309a Di\0323ch vu\0323 AI ta\0323o sinh.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820631334028053)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi\0301 du\0323')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819025046028052)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 ly\0301')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820419380028053)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818942260028052)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849691024028061)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('AI ta\0323o sinh OCI hi\00EA\0323n kh\00F4ng h\00F4\0303 tr\01A1\0323 tra\0309i nghi\00EA\0323m tro\0300 chuy\00EA\0323n co\0301 nhi\00EA\0300u tin nh\0103\0301n.')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829560562028055)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 l\01A1\0300i nh\0103\0301c %0 cho \01B0\0301ng du\0323ng %1. Ha\0303y ki\00EA\0309m tra xem Tri\0300nh ta\0323o \01B0\0301ng du\0323ng co\0301 du\0300ng \0111\01B0\01A1\0323c cho th\01B0\0323c th\00EA\0309 na\0300y hay kh\00F4ng.')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834664667028057)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 x\01B0\0309 ly\0301 pha\0309n h\00F4\0300i cho Di\0323ch vu\0323 AI %0, pha\0309n h\00F4\0300i %1')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840879378028059)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('G\01B0\0309i tin nh\0103\0301n')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829196850028055)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i trong D\1ECBch v\1EE5 AI ph\1EE5 tr\1EE3 %0')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814998669028051)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Tin nh\0103\0301n')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815048174028051)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'vi'
,p_message_text=>unistr('Nh\00E2\0323p tin nh\0103\0301n cu\0309a ba\0323n ta\0323i \0111\00E2y')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818399799028052)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\0300nh \0111a\0323i di\00EA\0323n cu\0309a ng\01B0\01A1\0300i du\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818404351028052)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'vi'
,p_message_text=>unistr('S\01B0\0309 du\0323ng mu\0323c na\0300y')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815177927028051)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n co\0301 tin nh\0103\0301n ch\01B0a g\01B0\0309i, ba\0323n co\0301 ch\0103\0301c ch\0103\0301n kh\00F4ng?')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984164567028101)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00EA\0323nh go\0323i Ajax \0111a\0303 tra\0309 v\00EA\0300 l\00F4\0303i ma\0301y chu\0309 %0 cho %1.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911248633028080)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 chuy\1EC3n \0111\1ED5i b\00ED danh \1EE9ng d\1EE5ng "%0" th\00E0nh ma\0303 \1EE9ng d\1EE5ng duy nh\1EA5t.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900017122028077)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1816 L\00F4\0303i kh\00F4ng mong \0111\01A1\0323i khi chuy\00EA\0309n \0111\00F4\0309i bi\0301 danh \01B0\0301ng du\0323ng p_flow_alias_or_id (%0).')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997492436028105)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 t\00F4\0309ng ki\00EA\0309m \01B0\0301ng du\0323ng giu\0301p d\00EA\0303 da\0300ng xa\0301c \0111i\0323nh li\00EA\0323u cu\0300ng m\00F4\0323t \01B0\0301ng du\0323ng co\0301 \0111\01B0\01A1\0323c tri\00EA\0309n khai tr\00EAn ca\0301c kh\00F4ng gian la\0300m vi\00EA\0323c hay kh\00F4ng. Ba\0323n co\0301 th\00EA\0309 so sa\0301nh gia\0301 tri\0323 t\00F4\0309ng ki\00EA\0309m na\0300y \0111\00EA\0309 xa\0301c \0111i\0323nh xem co\0301 gia\0301 tri\0323 tru\0300ng kh\01A1\0301p k')
||unistr('h\00F4ng. ')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884030745028072)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 ch\01B0\0301c n\0103ng xa\0301c th\01B0\0323c.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866067948028066)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 ch\01B0\0301c n\0103ng xa\0301c th\01B0\0323c.')
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037957116028117)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn \0111\00F4\0301i t\01B0\01A1\0323ng thu\00EA %0 do Oracle Cloud Identity Management tra\0309 v\00EA\0300 kh\00F4ng \0111\01B0\01A1\0323c u\0309y quy\00EA\0300n \0111\00F4\0301i v\01A1\0301i mi\00EA\0300n %1!<br/>Ha\0303y <a href="&LOGOUT_URL.">\0111\0103ng nh\00E2\0323p la\0323i</a> va\0300 chi\0309 \0111i\0323nh m\00F4\0323t t\00EAn \0111\00F4\0301i t\01B0\01A1\0323ng thu\00EA \0111\01B0\01A1\0323c u\0309y quy\00EA\0300n ho\0103\0323c thay \0111\00F4\0309i URL cu\0309a ba\0323')
||'n.'
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862169528028065)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0300i khoa\0309n "%0" cu\0309a ba\0323n kh\00F4ng co\0301 ca\0301c \0111\0103\0323c quy\00EA\0300n pha\0301t tri\00EA\0309n c\00E2\0300n thi\00EA\0301t (DB_DEVELOPER ho\0103\0323c DB_ADMINISTRATOR)<br/>\0111\00F4\0301i v\01A1\0301i kh\00F4ng gian la\0300m vi\00EA\0323c "%1"! Ha\0303y <a href="&LOGOUT_URL.">\0111\0103ng nh\00E2\0323p la\0323i</a> sau khi \0111\01B0\01A1\0323c c\00E2\0301p ca\0301c \0111\0103\0323c quy\00EA\0300n.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858728815028064)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn \0111\00F4\0301i t\01B0\01A1\0323ng thu\00EA do Oracle Cloud Identity Management tra\0309 v\00EA\0300 kh\00F4ng \0111\01B0\01A1\0323c u\0309y quy\00EA\0300n \0111\00F4\0301i v\01A1\0301i kh\00F4ng gian la\0300m vi\00EA\0323c hi\00EA\0323n ta\0323i!<br/>Ha\0303y <a href="&LOGOUT_URL.">\0111\0103ng nh\00E2\0323p la\0323i</a> va\0300 chi\0309 \0111i\0323nh m\00F4\0323t t\00EAn \0111\00F4\0301i t\01B0\01A1\0323ng thu\00EA \0111\01B0\01A1\0323c u\0309y quy\00EA\0300n.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862267937028065)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'vi'
,p_message_text=>unistr('V\00EC l\00FD do b\1EA3o m\1EADt, kh\00F4ng \0111\01B0\1EE3c ph\00E9p ch\1EA1y c\00E1c \1EE9ng d\1EE5ng c\1EE7a kh\00F4ng gian l\00E0m vi\1EC7c n\00E0y th\00F4ng qua mi\1EC1n trong URL.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883720550028072)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y \0111\00EA\0300 nghi\0323 ng\01B0\01A1\0300i qua\0309n tri\0323 c\01A1 s\01A1\0309 d\01B0\0303 li\00EA\0323u cu\0309a ba\0323n cha\0323y $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883630977028072)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'vi'
,p_message_text=>unistr('Go\0301i SYS.DBMS_LDAP kh\00F4ng t\00F4\0300n ta\0323i ho\0103\0323c kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883547139028072)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi x\1EED l\00FD ha\0300m ch\1EC9nh s\1EEDa ng\01B0\1EDDi d\00F9ng LDAP.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883866327028072)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 xa\0301c th\01B0\0323c LDAP.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884664424028072)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i trong \0111\1ED1i s\1ED1 p_flow_page \0111\1ED1i v\1EDBi quy tri\0300nh login_page.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884215578028072)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'vi'
,p_message_text=>unistr('p_session kh\00F4ng h\01A1\0323p l\00EA\0323 trong wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935521306028087)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1ED1i s\1ED1 kh\00F4ng \0111\00FAng \0111\1ECBnh d\1EA1ng cho wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884371232028072)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 chuy\00EA\0309n t\00EAn ng\01B0\01A1\0300i du\0300ng bi\0323 r\00F4\0303ng cho quy tri\0300nh \0111\0103ng nh\00E2\0323p.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871186453028068)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Vui lo\0300ng \0111\01A1\0323i <span id="apex_login_throttle_sec">%0</span> gi\00E2y \0111\00EA\0309 \0111\0103ng nh\00E2\0323p la\0323i.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872487293028068)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('N\1ED7 l\1EF1c \0111\0103ng nh\1EADp \0111\00E3 b\1ECB ch\1EB7n.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933253117028086)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ph\00E2\0300n xa\0301c th\01B0\0323c "%0"')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872907831028068)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 nho\0301m ba\0309o m\00E2\0323t bi\0323 r\00F4\0303ng.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884137207028072)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi th\01B0\0323c thi quy tr\00ECnh h\00E2\0323u x\00E1c th\1EF1c.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883973186028072)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi x\1EED l\00FD quy tr\00ECnh ti\00EA\0300n x\00E1c th\1EF1c.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885675887028072)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ha\0303y m\1EDF URL trong c\00F9ng m\00F4\0323t tr\00ECnh duy\1EC7t m\00E0 b\1EA1n du\0300ng \0111\00EA\0309 kh\01A1\0309i ta\0323o y\00EAu c\1EA7u \0110\1EB7t l\1EA1i m\1EADt kh\1EA9u. N\1EBFu b\1EA1n nh\1EA5p v\00E0o URL \0111\1EB7t l\1EA1i m\1EADt kh\1EA9u v\00E0 \0111\01B0\1EE3c chuy\1EC3n h\01B0\01A1\0301ng \0111\1EBFn'),
unistr('trang \0111\0103ng nh\1EADp, ha\0303y kh\01A1\0309i ta\0323o l\1EA1i y\00EAu c\00E2\0300u \0110\1EB7t l\1EA1i m\1EADt kh\1EA9u v\00E0 \0111\1EC3 m\01A1\0309'),
unistr('tr\00ECnh duy\1EC7t na\0300y.')))
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035432825028117)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'vi'
,p_message_text=>unistr('URL \0111\0103\0323t la\0323i m\00E2\0323t kh\00E2\0309u')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862425294028065)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Nho\0301m \01B0\0301ng du\0323ng du\0300ng Tri\0300nh qua\0309n ly\0301 ta\0300i nguy\00EAn %0 ch\01B0a \0111\01B0\01A1\0323c c\00E2\0301p quy\00EA\0300n %1')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862544157028065)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y s\01B0\0309 du\0323ng DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP \0111\00EA\0309 c\00E2\0301p \0111\0103\0323c quy\00EA\0300n co\0300n thi\00EA\0301u.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897144896028076)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi x\1EED l\00FD ch\1EE9c n\0103ng theo do\0303i phi\00EAn.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897294463028076)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi x\1EED l\00FD ch\1EE9c n\0103ng x\00E1c minh phi\00EAn.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897410814028076)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y y\00EAu c\1EA7u ng\01B0\01A1\0300i qu\1EA3n tr\1ECB %0 c\1EE7a b\1EA1n \0111\1ECBnh c\1EA5u h\00ECnh c\00F4ng c\1EE5 cho quy tri\0300nh \0110\0103ng nh\1EADp m\1ED9t l\1EA7n (SSO) tr\00EAn Oracle Application Server.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907835020028079)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng h\01A1\0323p l\00EA\0323 trong ma\0303 th\00F4ng ba\0301o %1 do sso tra\0309 v\00EA\0300.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884533022028072)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y chi\0309nh s\01B0\0309a l\01B0\01A1\0323c \0111\00F4\0300 xa\0301c th\01B0\0323c va\0300 th\00EAm t\00EAn \01B0\0301ng du\0323ng.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907555105028079)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh go\0323i kh\00F4ng h\01A1\0323p l\00EA\0323 cu\0309a quy tri\0300nh %0:')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907772500028079)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('Phi\00EAn \01B0\0301ng du\0323ng kh\00F4ng h\01A1\0323p l\00EA\0323 trong m\00E3 th\00F4ng b\00E1o urlc: %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907390407028079)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i trong portal_sso_redirect: thi\00EA\0301u th\00F4ng tin \0111\0103ng ky\0301 \01B0\0301ng du\0323ng: %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897390091028076)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'vi'
,p_message_text=>unistr('Go\0301i WWSEC_SSO_ENABLER_PRIVATE kh\00F4ng t\00F4\0300n ta\0323i ho\0103\0323c kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884453033028072)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 t\00ECm th\1EA5y t\00EAn \1EE9ng d\1EE5ng \0111\1ED1i t\00E1c \0111\00E3 \0111\0103ng k\00FD trong l\01B0\01A1\0323c \0111\1ED3 x\00E1c th\1EF1c.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907437705028079)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y \0111\0103ng ky\0301 \01B0\0301ng du\0323ng na\0300y nh\01B0 m\00F4 ta\0309 trong h\01B0\01A1\0301ng d\00E2\0303n ca\0300i \0111\0103\0323t.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897539513028076)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 xa\0301c th\01B0\0323c SSO.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010846198028109)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'vi'
,p_message_text=>unistr('URL tr\00E1i ph\00E9p: %0')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896955200028076)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 xa\0301c th\01B0\0323c.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862369448028065)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng gian l\00E0m vi\1EC7c "%0" kh\00F4ng ho\1EA1t \0111\1ED9ng. Ha\0303y li\00EAn h\00EA\0323 ng\01B0\01A1\0300i qu\1EA3n tr\1ECB.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863093649028065)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'vi'
,p_message_text=>'%0'
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872174081028068)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Quy\1EC1n truy c\1EADp b\1ECB quy tri\0300nh ki\1EC3m tra b\1EA3o m\1EADt \1EE9ng d\1EE5ng t\1EEB ch\1ED1i')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872292864028068)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Quy\1EC1n truy c\1EADp b\1ECB quy tri\0300nh ki\1EC3m tra b\1EA3o m\1EADt trang t\1EEB ch\1ED1i')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872395824028068)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 u\0309y quy\00EA\0300n.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941415008028089)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\01B0\01A1\0323c ta\0323o n\00EAn t\01B0\0300 %0 b\0103\0300ng %1')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941532252028089)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'vi'
,p_message_text=>unistr('ti\0300nh y\00EAu')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001304041028107)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00F4 t\1EA3 s\1EF1 ki\1EC7n')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001128458028106)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y k\00EA\0301t thu\0301c')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001463500028107)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 s\01B0\0323 ki\00EA\0323n')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001088376028106)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y b\0103\0301t \0111\00E2\0300u')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001270686028107)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 s\01B0\0323 ki\00EA\0323n')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843868975028060)
,p_name=>'APEX.CARD'
,p_message_language=>'vi'
,p_message_text=>unistr('The\0309')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844041784028060)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i the\0309')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884761345028072)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4\0323p cho\0323n kh\00F4ng hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886630135028073)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i n\00F4\0323i dung t\00F4\0309ng ki\00EA\0309m')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886568039028073)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i \0111i\0323nh da\0323ng t\00F4\0309ng ki\00EA\0309m')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956422973028093)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 sao che\0301p va\0300o ba\0309ng ghi ta\0323m.')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955922374028093)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\00ECnh duy\1EC7t n\00E0y kh\00F4ng h\1ED7 tr\1EE3 sao ch\00E9p t\1EEB m\00F4\0323t n\00FAt ho\1EB7c tri\0300nh \0111\01A1n. H\00E3y th\1EED du\0300ng t\00F4\0309 h\01A1\0323p phi\0301m Ctrl+C ho\1EB7c Command+C.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942151371028089)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110o\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820532488028053)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'vi'
,p_message_text=>unistr('N\00F4\0323i dung cu\0309a Tri\0300nh chi\0309nh s\01B0\0309a ma\0303 v\01B0\01A1\0323t qua\0301 \0111\00F4\0323 da\0300i t\00F4\0301i \0111a cu\0309a mu\0323c (th\01B0\0323c t\00EA\0301 la\0300 %0, \0111\01B0\01A1\0323c phe\0301p co\0301 %1 ky\0301 t\01B0\0323)')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000659315028106)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1ED9 t\01B0\01A1ng ph\1EA3n')
,p_is_js_message=>true
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995164512028105)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0323n ta\0323i')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995050687028105)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'vi'
,p_message_text=>unistr('Ban \0111\00E2\0300u')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999255291028106)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i la\0300 ma\0300u h\01A1\0323p l\00EA\0323. Vi\0301 du\0323: %0')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861654603028065)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0300u kha\0301c')
,p_is_js_message=>true
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861764645028065)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 b\00F4\0323 cho\0323n ma\0300u')
,p_is_js_message=>true
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818886933028052)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'vi'
,p_message_text=>unistr('Thanh tr\01B0\1EE3t alpha, thanh tr\01B0\1EE3t ngang. S\1EED d\1EE5ng c\00E1c ph\00EDm m\0169i t\00EAn \0111\1EC3 \0111i\1EC1u h\01B0\1EDBng.')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818598181028052)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'vi'
,p_message_text=>unistr('Thanh tr\01B0\01A1\0323t 4 h\01B0\01A1\0301ng \0111i\00EA\0300u chi\0309nh ph\00F4\0309 ma\0300u. S\01B0\0309 du\0323ng ca\0301c phi\0301m mu\0303i t\00EAn \0111\00EA\0309 \0111i\00EA\0300u h\01B0\01A1\0301ng.')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818686339028052)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'vi'
,p_message_text=>unistr('Thanh tr\01B0\1EE3t ma\0300u s\0103\0301c, thanh tr\01B0\1EE3t d\1ECDc. S\1EED d\1EE5ng c\00E1c ph\00EDm m\0169i t\00EAn \0111\1EC3 \0111i\1EC1u h\01B0\1EDBng.')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994944626028105)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ma\0300u')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995217891028105)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Thay \0111\00F4\0309i \0111i\0323nh da\0323ng ma\0300u')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033103271028116)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch gia\0301 tri\0323')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033206652028116)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 danh sa\0301ch cho: %0')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013565449028110)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'vi'
,p_message_text=>unistr('(\0110a\0303 hoa\0300n th\00E0nh)')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902448028028077)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00E3y li\00EAn h\1EC7 ng\01B0\01A1\0300i qua\0309n tri\0323 \01B0\0301ng du\0323ng cu\0309a ba\0323n.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917964834028082)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ha\0303y li\00EAn h\1EC7 ng\01B0\01A1\0300i qu\1EA3n tr\1ECB \1EE9ng d\1EE5ng c\1EE7a b\1EA1n.'),
unistr('Ba\0323n co\0301 th\00EA\0309 xem th\00F4ng tin chi ti\1EBFt v\1EC1 s\1EF1 c\1ED1 n\00E0y th\00F4ng qua ma\0303 g\1EE1 l\1ED7i "%0".')))
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999553013028106)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'vi'
,p_message_text=>unistr('S\1EEDa l\1ED7i tr\01B0\1EDBc khi l\01B0u.')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844899677028060)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'vi'
,p_message_text=>unistr('%0. Nh\00E2\0301n phi\0301m Backspace \0111\00EA\0309 xo\0301a.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943025818028089)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m th\00E2\0301y %0 k\00EA\0301t qua\0309 phu\0300 h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824916739028054)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m th\00E2\0301y 1 k\00EA\0301t qua\0309 phu\0300 h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942935958028089)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y k\00EA\0301t qua\0309 phu\0300 h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819325269028052)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'vi'
,p_message_text=>unistr('Kha\0301c')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819287651028052)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cho\0323n %0 gia\0301 tri\0323')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014045411028110)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0301n \0111\00F4\0323 hi\00EA\0323n ta\0323i')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999930369028106)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0323p tin \0111a\0303 chi\0309 \0111i\0323nh trong mu\0323c %0 kh\00F4ng t\00F4\0300n ta\0323i trong APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988490759028103)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'vi'
,p_message_text=>unistr('Phi\00EAn b\1EA3n hi\1EC7n t\1EA1i c\1EE7a d\1EEF li\1EC7u trong c\01A1 s\1EDF d\1EEF li\1EC7u \0111\00E3 thay \0111\1ED5i k\1EC3 t\1EEB khi ng\01B0\1EDDi d\00F9ng kh\01A1\0309i cha\0323y quy tr\00ECnh c\1EADp nh\1EADt.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957519456028093)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ta\0309i')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003813716028107)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i ti\1EC1n x\1EED l\00FD')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003645301028107)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'vi'
,p_message_text=>unistr('Che\0300n ha\0300ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017264314028111)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 t\01B0\0323: Ha\0300nh \0111\00F4\0323ng')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003754581028107)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E2\0323p nh\00E2\0323t ha\0300ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832296389028056)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859808657028065)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'vi'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845960133028060)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 pha\0309i la\0300 m\00F4\0323t b\00F4\0323 cho\0323n nga\0300y ho\0103\0323c m\00F4\0323t nga\0300y h\01A1\0323p l\00EA\0323, vi\0301 du\0323: %1.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955161550028093)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863374489028066)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'vi'
,p_message_text=>unistr('Hoa\0300n t\00E2\0301t')
,p_is_js_message=>true
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874321325028069)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 c\00F3 c\00E1c ph\1EA7n kh\00F4ng \0111\01B0\1EE3c h\1ED7 tr\1EE3 trong c\00E2\0301u tru\0301c \0111\1ECBnh d\1EA1ng: %1')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859539990028064)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943494433028089)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Li\0323ch b\00E2\0323t l\00EAn: %0')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859351606028064)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\1EA7n')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859449566028064)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'vi'
,p_message_text=>'WK'
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859779363028064)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00FAt')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859999207028065)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00E1ng')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860365832028065)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Tha\0301ng sau')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829970289028056)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'vi'
,p_message_text=>unistr('C\01B0\0309a s\00F4\0309 b\00E2\0323t l\00EAn cho %0')
,p_is_js_message=>true
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860297575028065)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Tha\0301ng tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952785247028092)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 cho\0323n nga\0300y chi\0309 \0111o\0323c')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861161426028065)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n nga\0300y')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830072723028056)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n nga\0300y va\0300 gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827203219028055)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n nga\0300y')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830654893028056)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\1ECDn th\00E1ng v\00E0 n\0103m')
,p_is_js_message=>true
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827465624028055)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n th\01A1\0300i gian')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827948136028055)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4m nay')
,p_is_js_message=>true
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845553032028060)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i la\0300 m\00F4\0323t nga\0300y h\01A1\0323p l\00EA\0323, vi\0301 du\0323: %0.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845279740028060)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i n\0103\0300m trong khoa\0309ng t\01B0\0300 %0 \0111\00EA\0301n %1.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845319423028060)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i tru\0300ng v\01A1\0301i ho\0103\0323c sau %0.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845406018028060)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i tru\0300ng v\01A1\0301i ho\0103\0323c tr\01B0\01A1\0301c %0.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836813674028058)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c kh\00F4ng hi\00EA\0309n thi\0323 nh\01B0ng co\0301 th\00EA\0309 chi\0309nh s\01B0\0309a')
,p_is_js_message=>true
,p_version_scn=>2693786
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860127212028065)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('N\0103m')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947131723028090)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# l\01A1\0301n h\01A1n nga\0300y t\00F4\0301i \0111a \0111a\0303 chi\0309 \0111i\0323nh %0.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947560620028091)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# kh\00F4ng kh\01A1\0301p v\01A1\0301i \0111i\0323nh da\0323ng %0.')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947097298028090)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# nho\0309 h\01A1n nga\0300y t\00F4\0301i thi\00EA\0309u \0111a\0303 chi\0309 \0111i\0323nh %0.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947276474028090)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# kh\00F4ng thu\00F4\0323c ph\1EA1m vi h\1EE3p l\1EC7 t\1EEB %0 \0111\1EBFn %1.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947451822028091)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# kh\00F4ng thu\00F4\0323c ph\1EA1m vi n\0103m h\1EE3p l\1EC7 t\1EEB %0 \0111\1EBFn %1.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839261212028058)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xa\0309y ra l\00F4\0303i n\00F4\0323i b\00F4\0323 trong khi x\01B0\0309 ly\0301 y\00EAu c\00E2\0300u DBMS_CLOUD.')
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999892360028106)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Hu\0309y')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025733470028114)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110o\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886927486028073)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'vi'
,p_message_text=>unistr('X\00E1c nh\00E2\0323n')
,p_is_js_message=>true
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027749606028114)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999684355028106)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00D4\0300NG Y\0301')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999720165028106)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867433025028067)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 h\00F4\0323p thoa\0323i')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907110028028079)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 h\00F4\0323p thoa\0323i kh\00F4ng hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828279467028055)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0\0301c n\0103ng ti\0301ch h\01A1\0323p s\0103\0303n cu\0309a Oracle Document Generator')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839019681028058)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi in ta\0300i li\00EA\0323u.')
,p_version_scn=>2693808
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816201461028052)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('%s kh\00F4ng h\00F4\0303 tr\01A1\0323 %1 la\0300m \0111\00E2\0300u ra.')
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828106837028055)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i "%0" khi go\0323i ch\01B0\0301c n\0103ng ti\0301ch h\01A1\0323p s\0103\0303n cu\0309a Oracle Document Generator:')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819609760028053)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u co\0301 m\00E2\0303u.')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845093541028060)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i trong khi ta\0309i t\00E2\0323p tin xu\00F4\0301ng.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844908025028060)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y d\01B0\0303 li\00EA\0323u co\0301 th\00EA\0309 ta\0309i xu\00F4\0301ng.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848519092028061)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0301nh n\0103ng na\0300y kh\00F4ng kha\0309 du\0323ng tr\00EAn m\00F4i tr\01B0\01A1\0300ng Chi\0309 th\01A1\0300i gian cha\0323y.')
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901377604028077)
,p_name=>'APEX.ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861211941028065)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 x\1EA3y ra l\1ED7i sau \0111\00E2y khi th\1EF1c thi l\1EC7nh g\1ECDi l\1EA1i x\1EED l\00FD l\1ED7i: %0')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873880144028069)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 x\1EA3y ra l\1ED7i khi v\1EBD trang l\1ED7i: %0')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862976251028065)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i n\00F4\0323i b\00F4\0323')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012606060028110)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ha\0303y li\00EAn h\1EC7 ng\01B0\01A1\0300i qu\1EA3n tr\1ECB.'),
unistr('Ba\0323n co\0301 th\00EA\0309 xem th\00F4ng tin chi ti\1EBFt v\1EC1 s\1EF1 c\1ED1 n\00E0y th\00F4ng qua ma\0303 g\1EE1 l\1ED7i "%0".')))
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007237702028108)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'vi'
,p_message_text=>unistr('C\01A1 s\1EDF d\1EEF li\1EC7u na\0300y m\1EDF \0111\1EC3 truy c\1EADp \01A1\0309 ch\00EA\0301 \0111\00F4\0323 ch\1EC9 \0111\1ECDc.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037343579028117)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'vi'
,p_message_text=>unistr('ORA-28353: Kh\00F4ng m\01A1\0309 \0111\01B0\01A1\0323c vi\0301. Hi\00EA\0323n kh\00F4ng th\00EA\0309 truy c\00E2\0323p d\01B0\0303 li\00EA\0323u \01B0\0301ng du\0323ng.')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007313358028108)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('R\00E2\0301t ti\00EA\0301c, trang na\0300y kh\00F4ng kha\0309 du\0323ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865976724028066)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng tin k\1EF9 thu\1EADt (ch\1EC9 d\00E0nh cho nh\00E0 ph\00E1t tri\1EC3n)')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971886670028098)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng ba\0301o l\00F4\0303i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985755715028102)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng d\01B0\0323 ki\00EA\0301n: %0')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950623621028091)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i du\0300ng \0111a\0303 co\0301 t\00EAn trong Danh sa\0301ch ki\00EA\0309m soa\0301t truy c\00E2\0323p')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950575189028091)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y xa\0301c nh\00E2\0323n vi\00EA\0323c th\00EAm %0 ng\01B0\01A1\0300i du\0300ng sau \0111\00E2y va\0300o danh sa\0301ch ki\00EA\0309m soa\0301t truy c\00E2\0323p <strong>%1</strong>.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951029956028092)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0300n ta\0323i ng\01B0\1EDDi d\00F9ng tru\0300ng l\1EB7p')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950780131028091)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'vi'
,p_message_text=>unistr('Thi\00EA\0301u ky\0301 hi\00EA\0323u at (@) trong \0111i\0323a chi\0309 email')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950817004028092)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'vi'
,p_message_text=>unistr('Thi\00EA\0301u d\00E2\0301u ch\00E2\0301m (.) trong \0111i\0323a chi\0309 email')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950930538028092)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ng\01B0\01A1\0300i du\0300ng qua\0301 da\0300i')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951278335028092)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\1EC9 nh\1EEFng ng\01B0\1EDDi d\00F9ng \0111\01B0\1EE3c x\00E1c \0111\1ECBnh trong danh s\00E1ch ki\1EC3m so\00E1t truy c\1EADp \1EE9ng d\1EE5ng m\1EDBi c\00F3 th\1EC3 truy c\1EADp \1EE9ng d\1EE5ng n\00E0y')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951322305028092)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\00E1 tr\1ECB c\00E0i \0111\1EB7t ki\1EC3m so\00E1t truy c\1EADp kh\00F4ng mong \0111\1EE3i: %0')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951136615028092)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'vi'
,p_message_text=>unistr('Mo\0323i ng\01B0\1EDDi d\00F9ng \0111\01B0\1EE3c x\00E1c th\1EF1c \0111\1EC1u c\00F3 th\1EC3 truy c\1EADp \1EE9ng d\1EE5ng n\00E0y')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995642379028105)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\0323 v\00F4 hi\00EA\0323u ho\0301a')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995504658028105)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 k\00EDch ho\1EA1t')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995827991028105)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('%0: Bi\0323 v\00F4 hi\00EA\0323u ho\0301a')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995756103028105)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('%0: \0110\01B0\01A1\0323c ki\0301ch hoa\0323t')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844359252028060)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng \0111\01B0\01A1\0323c h\00F4\0303 tr\01A1\0323')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905522519028078)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1EAFt')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905441972028078)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995412022028105)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng x\00E1c \0111\1ECBnh')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835954254028057)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'vi'
,p_message_text=>'%0 byte'
,p_is_js_message=>true
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836403591028057)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'vi'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693784
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836177200028057)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'vi'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836353399028057)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'vi'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988625884028103)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i xu\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841710884028059)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\0300y cho\0323n')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841430430028059)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 lo\0323c')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841627316028059)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C2\0309n thu\1ED9c t\00EDnh')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866349803028066)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm b\00F4\0323 lo\0323c')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942698476028089)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 lo\0323c \0111a\0303 a\0301p %0')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867063311028067)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C1p du\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986218967028102)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C1p du\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867100855028067)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Hu\0309y')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850956743028062)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u \0111\00F4\0300 thanh')
,p_is_js_message=>true
,p_version_scn=>2693825
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998983390028106)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'vi'
,p_message_text=>unistr('Kha\0301c')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851013559028062)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u \0111\00F4\0300 hi\0300nh tro\0300n')
,p_is_js_message=>true
,p_version_scn=>2693827
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997538065028105)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850736630028062)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301m')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986765421028102)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986897814028102)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a t\1EA5t c\1EA3')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986980900028102)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a %0')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003464948028107)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t %1, \0111\01B0\01A1\0323c thu\1ED9c t\00EDnh %0 tham chi\00EA\0301u, kh\00F4ng kha\0309 du\0323ng ho\0103\0323c kh\00F4ng \0111\01B0\01A1\0323c u\0309y quy\00EA\0300n.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814124751028051)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n b\00F4\0323 lo\0323c se\0303 hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693768
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940615511028089)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 k\00EA\0301t qua\0309')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940734992028089)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cho\0323n %0')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943564408028089)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 lo\0323c hi\00EA\0323n ta\0323i')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819160457028052)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm theo thu\00F4\0323c ti\0301nh y\00EAu c\1EA7u pha\0309i co\0301 Ngu\1ED3n d\1EEF li\1EC7u \1EDF c\1EA5p vu\0300ng.')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822899784028053)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch b\00F4\0323 lo\0323c')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001952111028107)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 v\01B0\1EE3t qu\00E1 gi\1EDBi h\1EA1n gi\00E1 tr\1ECB ri\00EAng bi\1EC7t (%0) cho thu\1ED9c t\00EDnh %1.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988202085028103)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 thu\00F4\0323c ti\0301nh %0 \0111\00F4\0301i v\01A1\0301i ca\0301c c\00F4\0323t DATE ho\0103\0323c TIMESTAMP.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986353614028102)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Lo\0323c %0')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860902193028065)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 (\0110a\0303 a\0301p du\0323ng b\00F4\0323 lo\0323c)')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986440176028102)
,p_name=>'APEX.FS.GO'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856407176028063)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'vi'
,p_message_text=>unistr('ch\01B0\0301a %0')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987888564028102)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'vi'
,p_message_text=>unistr('b\0103\0300ng %0')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856146037028063)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'vi'
,p_message_text=>unistr('l\01A1\0301n h\01A1n %0')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856202799028063)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'vi'
,p_message_text=>unistr('l\01A1\0301n h\01A1n ho\0103\0323c b\0103\0300ng %0')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855831504028063)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'vi'
,p_message_text=>unistr('nho\0309 h\01A1n %0')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856031106028063)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'vi'
,p_message_text=>unistr('nho\0309 h\01A1n ho\0103\0323c b\0103\0300ng %0')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855337716028063)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng ch\01B0\0301a %0')
,p_is_js_message=>true
,p_version_scn=>2693831
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841130539028059)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng b\0103\0300ng %0')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855483406028063)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng b\0103\0301t \0111\00E2\0300u b\0103\0300ng %0')
,p_is_js_message=>true
,p_version_scn=>2693831
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856352290028063)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'vi'
,p_message_text=>unistr('b\0103\0301t \0111\00E2\0300u b\0103\0300ng %0')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854414731028063)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\0323a cho\0323n thu\00F4\0323c ti\0301nh')
,p_is_js_message=>true
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830206545028056)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\1EC1n t\1ED1 b\1ED9 l\1ECDc "%0" kh\00F4ng h\1EE3p l\1EC7 \0111\1ED1i v\1EDBi thu\1ED9c t\00EDnh "%1".')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828659067028055)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'vi'
,p_message_text=>unistr('Thi\00EA\0301u ti\00EA\0300n t\00F4\0301 b\00F4\0323 lo\0323c cho thu\1ED9c t\00EDnh "%0".')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862893665028065)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Toa\0301n t\01B0\0309')
,p_is_js_message=>true
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844726901028060)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'vi'
,p_message_text=>unistr('ch\01B0\0301a')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843744297028060)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'vi'
,p_message_text=>unistr('b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844462997028060)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'vi'
,p_message_text=>unistr('l\01A1\0301n h\01A1n')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844544245028060)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'vi'
,p_message_text=>unistr('l\01A1\0301n h\01A1n ho\0103\0323c b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844165974028060)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'vi'
,p_message_text=>unistr('nho\0309 h\01A1n')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844210082028060)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'vi'
,p_message_text=>unistr('nho\0309 h\01A1n ho\0103\0323c b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855254649028063)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng ch\01B0\0301a')
,p_is_js_message=>true
,p_version_scn=>2693831
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843946983028060)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855135317028063)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng b\0103\0301t \0111\00E2\0300u b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693831
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130844629826028060)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'vi'
,p_message_text=>unistr('b\0103\0301t \0111\00E2\0300u b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863246589028066)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 loa\0323i d\01B0\0303 li\00EA\0323u %0 (%1) \0111\00F4\0301i v\01A1\0301i thu\1ED9c t\00EDnh Tr\01B0\01A1\0300ng \0111\00E2\0300u va\0300o.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830190885028056)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 b\1ED9 l\1ECDc "%0" \0111\1ED1i v\1EDBi thu\1ED9c t\00EDnh "%1" (lo\1EA1i d\1EEF li\1EC7u %2).')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862761338028065)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323')
,p_is_js_message=>true
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988019568028102)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a cung c\00E2\0301p c\00F4\0323t ti\0300m ki\00EA\0301m cho thu\1ED9c t\00EDnh %0')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814277149028051)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 lo\0323c kha\0301c')
,p_is_js_message=>true
,p_version_scn=>2693768
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940865941028089)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\00EA\0309m b\0103\0301t \0111\00E2\0300u khoa\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987588584028102)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 \0111\00EA\0301n %1')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987642527028102)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\00EAn %0')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987731800028102)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'vi'
,p_message_text=>unistr('D\01B0\01A1\0301i %0')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940928582028089)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\00EA\0309m k\00EA\0301t thu\0301c khoa\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005532598028108)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c danh sa\0301ch gia\0301 tri\0323 #%2 ("%1") cho thu\1ED9c t\00EDnh pha\0323m vi %0 kh\00F4ng h\01A1\0323p l\00EA\0323 (thi\00EA\0301u d\00E2\0301u ph\00E2n ca\0301ch "|").')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987977818028102)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0323n kh\00F4ng h\00F4\0303 tr\01A1\0323 ti\0301nh n\0103ng nh\00E2\0323p thu\0309 c\00F4ng \0111\00F4\0301i v\01A1\0301i thu\1ED9c t\00EDnh Pha\0323m vi %0, vi\0300 c\00F4\0323t la\0300 DATE ho\0103\0323c TIMESTAMP.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987257594028102)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0111\00EA\0301n')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850848084028062)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a bi\00EA\0309u \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693823
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937228526028088)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986659431028102)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986563647028102)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm...')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987483504028102)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'vi'
,p_message_text=>unistr('- Cho\0323n -')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850694348028062)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 bi\00EA\0309u \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987019396028102)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C2\0309n b\01A1\0301t')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987176018028102)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 t\00E2\0301t ca\0309')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130987392943028102)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 sao tr\01A1\0309 l\00EAn')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942566212028089)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('G\1EE3i \00FD b\1ED9 l\1ECDc')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988196650028103)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0323n chi\0309 h\00F4\0303 tr\01A1\0323 thu\00F4\0323c ti\0301nh Tr\01B0\01A1\0300ng v\0103n ba\0309n %0 \0111\00F4\0301i v\01A1\0301i ca\0301c c\00F4\0323t NUMBER.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813683783028051)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng s\00F4\0301 ha\0300ng')
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003512641028107)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 loa\0323i d\01B0\0303 li\00EA\0323u %0 (%1) \0111\00F4\0301i v\01A1\0301i ti\0300m ki\00EA\0301m theo thu\00F4\0323c ti\0301nh.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933739831028086)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 kh\00F4ng hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996058297028105)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Chuy\00EA\0309n \0111\1EBFn l\1ED7i')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952073229028092)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1ED5ng h\01A1\0323p.')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879995053028071)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\1EC1 tr\1ED1ng')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961382874028095)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'vi'
,p_message_text=>unistr('Thu go\0323n d\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952108179028092)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('D\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n.')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961275055028095)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 r\00F4\0323ng d\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961028444028094)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xo\0301a %0 ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030151807028115)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao che\0301p danh ti\0301nh')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823010164028054)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'vi'
,p_message_text=>unistr('Chuy\00EA\0309n sang ch\00EA\0301 \0111\00F4\0323 chi\0309nh s\01B0\0309a')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948980269028091)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E2\0300u ti\00EAn')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821833404028053)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C2\0309n h\00F4\0323p thoa\0323i')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820840785028053)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('N\1ED9i dung \00F4 tr\00E0n n\1ED5i')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822196611028053)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 n\00F4\0323i dung tra\0300n')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896392609028075)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00E2n trang cho l\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952334528028092)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\1EC1 nho\0301m')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952292510028092)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300.')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949044054028091)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cu\00F4\0301i cu\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823270027028054)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'vi'
,p_message_text=>unistr('R\01A1\0300i kho\0309i ch\00EA\0301 \0111\00F4\0323 chi\0309nh s\01B0\0309a')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847963041028061)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1EA3i t\1EA5t c\1EA3')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970807440028097)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 th\00EAm')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948707460028091)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0301p theo')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952446105028092)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0301 ha\0300ng cu\0309a trang')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861550095028065)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'vi'
,p_message_text=>'Trang %0'
,p_is_js_message=>true
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949161418028091)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'vi'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949268603028091)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'vi'
,p_message_text=>'%0 - %1/%2'
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006170346028108)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\0323a cho\0323n trang')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896649415028076)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n trang')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948829714028091)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846855306028061)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 khoa\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880209315028071)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\0323a cho\0323n ca\0301c ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029937532028115)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 th\00EAm')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030081603028115)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 thay \0111\00F4\0309i')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131038350687028117)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 t\01B0\0323 cu\0309a ha\0300ng trong l\01B0\01A1\0301i %0, c\00F4\0323t %1.')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131038479419028118)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 t\01B0\0323 cu\0309a ha\0300ng trong l\01B0\01A1\0301i %0.')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029896876028115)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 x\00F3a')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952685046028092)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880104328028071)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\0323a cho\0323n ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848055434028061)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cho\0323n %0 %1')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948196596028091)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cho\0323n %0 \00F4')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949368116028091)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cho\0323n %0 ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991440093028104)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n t\00E2\0301t ca\0309')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884995399028072)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n t\00E2\0301t ca\0309 ca\0301c ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961182369028094)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'vi'
,p_message_text=>'Trang %0'
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952564119028092)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952846695028092)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 s\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 t\0103ng d\00E2\0300n %0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130952978432028092)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 s\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 gia\0309m d\00E2\0300n %0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948283985028091)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 t\0103ng d\00E2\0300n')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948598048028091)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 t\0103ng d\00E2\0300n %0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948312396028091)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 gia\0309m d\00E2\0300n')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948696527028091)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 gia\0309m d\00E2\0300n %0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948483133028091)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng s\0103\0301p x\00EA\0301p')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814079365028051)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\0300y cho\0323n s\0103\0301p x\00EA\0301p')
,p_is_js_message=>true
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896491348028076)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u t\01B0\01A1\0323ng tra\0323ng tha\0301i')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896513614028076)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'vi'
,p_message_text=>unistr('Tra\0323ng tha\0301i l\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826325333028054)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'vi'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826003740028054)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'vi'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960984936028094)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng c\00F4\0323ng %0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879778824028071)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u HTTP t\01A1\0301i "%0" kh\00F4ng tha\0300nh c\00F4ng.')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881380617028071)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1ED9t %0')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881501326028071)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t %0 va\0300 ha\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881886158028071)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111\00EA\0301n c\00F4\0323t \0111\00E2\0300u ti\00EAn. C\00F4\0323t %0 va\0300 ha\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881710978028071)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111\00EA\0301n ha\0300ng \0111\00E2\0300u ti\00EAn. C\00F4\0323t %0 va\0300 ha\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027312498028114)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xu\00E2\0301t hi\00EA\0323n trong %0 c\00F4\0323t va\0300 %1 ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881995132028071)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111\00EA\0301n c\00F4\0323t cu\00F4\0301i cu\0300ng. C\00F4\0323t %0 va\0300 ha\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881651206028071)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111\00EA\0301n ha\0300ng cu\00F4\0301i cu\0300ng. C\00F4\0323t %0 va\0300 ha\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960834114028094)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xu\00E2\0301t hi\00EA\0323n trong %0 ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881464811028071)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00E0ng %0')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131038153010028117)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c %0')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945208341028090)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946204636028090)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946157245028090)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031757603028115)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1ED5ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017354973028111)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019006684028112)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0301t ca\0309')
,p_is_js_message=>true
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976686421028099)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0301t ca\0309 ca\0301c c\00F4\0323t v\0103n ba\0309n')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977830112028099)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Thay th\00EA\0301')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978902325028100)
,p_name=>'APEX.IG.AND'
,p_message_language=>'vi'
,p_message_text=>unistr('va\0300')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998321074028106)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301m gia\0301 tri\0323 ri\00EAng bi\00EA\0323t x\00E2\0301p xi\0309')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032790694028116)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng gia\0301 tri\0323 ri\00EAng bi\00EA\0323t x\00E2\0301p xi\0309')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015917716028111)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'vi'
,p_message_text=>unistr('V\00F9ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017809102028111)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('T\0103ng d\00E2\0300n')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977924898028099)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'vi'
,p_message_text=>unistr('U\0309y quy\00EA\0300n')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031837998028115)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'vi'
,p_message_text=>unistr('T\01B0\0323 \0111\00F4\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998718858028106)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung bi\0300nh')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032422300028116)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung bi\0300nh t\00F4\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015494440028111)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 tru\0323c nha\0303n')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015614431028111)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0301 ch\01B0\0303 s\00F4\0301 th\00E2\0323p ph\00E2n')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015530333028111)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 tru\0323c gia\0301 tri')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021642026028112)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0300u n\00EA\0300n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016029676028111)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'vi'
,p_message_text=>'Thanh'
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973243507028098)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'vi'
,p_message_text=>unistr('trong khoa\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022843679028113)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0309 hai')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016103191028111)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Bong bo\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946431217028090)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Hu\0309y')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978808062028100)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n bi\00EA\0323t ch\01B0\0303 hoa ch\01B0\0303 th\01B0\01A1\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033304804028116)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'vi'
,p_message_text=>unistr('(Ph\00E2n bi\00EA\0323t ch\01B0\0303 hoa ch\01B0\0303 th\01B0\01A1\0300ng)')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004650998028107)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 l\01B0u ca\0301c thay \0111\00F4\0309i')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946802977028090)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Thay \0111\00F4\0309i ch\00EA\0301 \0111\00F4\0323 xem')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979906189028100)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976431245028099)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy v\00E2\0301n cu\0309a ba\0323n v\01B0\01A1\0323t qua\0301 s\00F4\0301 \0111i\00EA\0309m d\01B0\0303 li\00EA\0323u t\00F4\0301i \0111a la\0300 %0 tr\00EAn m\00F4\0303i bi\00EA\0309u \0111\00F4\0300. Ha\0303y a\0301p du\0323ng b\00F4\0323 lo\0323c \0111\00EA\0309 gia\0309m s\00F4\0301 l\01B0\01A1\0323ng d\01B0\0303 li\00EA\0323u trong truy v\00E2\0301n c\01A1 s\01A1\0309 cu\0309a ba\0323n.')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945186353028090)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem bi\00EA\0309u \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953537316028092)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014998430028110)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110o\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021868578028112)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0300u s\0103\0301c')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999134040028106)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978225691028099)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945397142028090)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907289499028079)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i c\00F4\0323t')
,p_is_js_message=>true
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907041236028079)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i c\00F4\0323t "%0"')
,p_is_js_message=>true
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023606937028113)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c \0111i\0301ch cu\0309a c\00F4\0323t')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978309854028100)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\01B0\0301c ta\0323p')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945527755028090)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0301nh toa\0301n')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973867729028098)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'vi'
,p_message_text=>unistr('ch\01B0\0301a')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980117725028100)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'vi'
,p_message_text=>unistr('D\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953394798028092)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao che\0301p sang ba\0309ng ghi ta\0323m')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953441891028092)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao ch\00E9p xu\1ED1ng d\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998154308028106)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301m')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998297235028106)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301m gia\0301 tri\0323 ri\00EAng bi\00EA\0323t')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032667737028116)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng gia\0301 tri\0323 ri\00EAng bi\00EA\0323t')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032591812028116)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng s\1ED1 l\01B0\1EE3ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030231854028115)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0323o %0')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976837736028099)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'vi'
,p_message_text=>unistr('D\1EEF li\1EC7u')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023416457028113)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i d\01B0\0303 li\00EA\0323u')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023099367028113)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004444686028107)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\00E1 tr\1ECB ng\00E0y kh\00F4ng h\1EE3p l\1EC7')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974519570028098)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('nga\0300y')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977522905028099)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t m\0103\0323c \0111i\0323nh')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977325182028099)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Lo\1EA1i m\1EB7c \0111\1ECBnh')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946307967028090)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024581968028113)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n co\0301 ch\0103\0301c ch\0103\0301n mu\00F4\0301n xo\0301a ba\0301o ca\0301o na\0300y kh\00F4ng?')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981967920028101)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693882
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980734256028100)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017938986028111)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0309m d\00E2\0300n')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979671463028100)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi ti\00EA\0301t')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944839585028090)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem chi ti\00EA\0301t')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006982413028108)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('H\01B0\1EDBng')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979369255028100)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\0323 v\00F4 hi\00EA\0323u ho\0301a')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973948797028098)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng ch\01B0\0301a')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974138004028098)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng b\0103\0301t \0111\00E2\0300u b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016244743028111)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'vi'
,p_message_text=>unistr('Vo\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980359543028100)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i xu\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870634656028068)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 d\01B0\0303 li\00EA\0323u')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025540455028114)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n \0111i\0323nh da\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885753068028072)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng ta\0309i xu\00F4\0301ng %0 kh\00F4ng \0111\01B0\01A1\0323c cho phe\0301p.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018649022028112)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao che\0301p mu\0323c t\00F4\0309ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018715964028112)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao che\0301p d\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_is_js_message=>true
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981816529028101)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao che\0301p ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980615322028100)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao che\0301p ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945907920028090)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\1EC9nh s\1EEDa')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017741836028111)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a bi\00EA\0309u \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898243415028076)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a %0')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029136582028115)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a mu\0323c ph\00E2n nh\00F3m theo')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936322056028087)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 \01A1\0309 ch\00EA\0301 \0111\00F4\0323 chi\0309nh s\01B0\0309a')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911979286028080)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i \01A1\0309 ch\00EA\0301 \0111\00F4\0323 chi\0309nh s\01B0\0309a, ha\0303y nha\0309 \0111\00EA\0309 chuy\00EA\0309n sang ch\00EA\0301 \0111\00F4\0323 xem')
,p_is_js_message=>true
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025190110028113)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00F4\0300ng g\01B0\0309i, \00E2\0309n \0111i\0323a chi\0309 (bcc)')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025398937028113)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'vi'
,p_message_text=>unistr('N\00F4\0323i dung')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025093731028113)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00F4\0300ng g\01B0\0309i (cc)')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024712522028113)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 g\01B0\0309i email.')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025217578028113)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024961513028113)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i nh\00E2\0323n (\0111\00EA\0301n)')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979062658028100)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 k\00EDch ho\1EA1t')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972263487028098)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'vi'
,p_message_text=>unistr('b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979127764028100)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u th\01B0\0301c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024122859028113)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991361781028104)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0323p tin \0111a\0303 s\0103\0303n sa\0300ng. \0110ang b\1EAFt \0111\1EA7u t\1EA3i xu\00F4\0301ng.')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953605864028092)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4 ma\0300u')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955812437028093)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4 l\01B0\0323a cho\0323n b\0103\0300ng ma\0300u')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955751017028093)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4 ma\0300u l\01B0\0323a cho\0323n')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945486249028090)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ECDc')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978446074028100)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 lo\0323c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032150628028116)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ECDc...')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018128246028111)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E2\0300u ti\00EAn')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945636035028090)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4\0300i t\01B0\01A1\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976993001028099)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022793947028113)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1EA5u tr\00FAc \0111i\0323nh da\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024440301028113)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'vi'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024374633028113)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'vi'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935402347028087)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'vi'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869389357028067)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'vi'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981527241028100)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110o\0301ng b\0103ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979246300028100)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300m va\0300 toa\0301n t\01B0\0309')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016350999028111)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00EA\0303u')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998045734028106)
,p_name=>'APEX.IG.GO'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972843155028098)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'vi'
,p_message_text=>unistr('l\01A1\0301n h\01A1n')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972902515028098)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'vi'
,p_message_text=>unistr('l\01A1\0301n h\01A1n ho\0103\0323c b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979529786028100)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944657354028090)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem l\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018970673028112)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'vi'
,p_message_text=>unistr('Nh\00F3m')
,p_is_js_message=>true
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979755355028100)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n nho\0301m theo')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944918737028090)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem ph\00E2n nh\00F3m theo')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023301017028113)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i \0111i\00EA\0300u ki\00EA\0323n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022282360028113)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022453759028113)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\0103n chi\0309nh ti\00EAu \0111\00EA\0300')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032055774028116)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027571680028114)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>B\1EA1n c\00F3 th\1EC3 ch\00E8n, c\1EADp nh\1EADt v\00E0 x\00F3a d\1EEF li\1EC7u tr\1EF1c ti\1EBFp trong l\01B0\1EDBi t\01B0\01A1ng t\00E1c n\00E0y.</p>'),
'',
unistr('<p>Ch\00E8n h\00E0ng m\1EDBi b\1EB1ng c\00E1ch nh\1EA5p v\00E0o n\00FAt Th\00EAm h\00E0ng.</p>'),
'',
unistr('<p>Ch\1EC9nh s\1EEDa d\1EEF li\1EC7u hi\1EC7n c\00F3 b\1EB1ng c\00E1ch nh\1EA5p \0111\00FAp v\00E0o m\1ED9t \00F4 c\1EE5 th\1EC3. \0110\1ED1i v\1EDBi c\00F4ng vi\1EC7c ch\1EC9nh s\1EEDa l\1EDBn h\01A1n, h\00E3y nh\1EA5p v\00E0o Ch\1EC9nh s\1EEDa \0111\1EC3 chuy\00EA\0309n sang ch\1EBF \0111\1ED9 ch\1EC9nh s\1EEDa. \1EDE ch\1EBF \0111\1ED9 ch\1EC9nh s\1EEDa, b\1EA1n c\00F3 th\1EC3 nh\1EA5p m\1ED9t l\1EA7n ho\1EB7c s\1EED d\1EE5ng b\00E0n ph\00EDm \0111\1EC3 ch\1EC9nh s\1EEDa c\00E1c \00F4 c\1EE5 th')
||unistr('\1EC3.</p>'),
'',
unistr('<p>S\1EED d\1EE5ng tri\0300nh \0111\01A1n Thay \0111\1ED5i \0111\1EC3 sao ch\00E9p v\00E0 x\00F3a c\00E1c h\00E0ng. \0110\1EC3 ki\0301ch hoa\0323t tri\0300nh \0111\01A1n Thay \0111\1ED5i, h\00E3y s\1EED d\1EE5ng h\1ED9p cho\0323n \0111\1EC3 ch\1ECDn m\1ED9t ho\1EB7c nhi\1EC1u h\00E0ng.</p>'),
'',
unistr('<p>Sao ch\00E9p h\00E0ng \0111\00E3 ch\1ECDn b\1EB1ng c\00E1ch nh\1EA5p v\00E0o tri\0300nh \0111\01A1n Thay \0111\1ED5i v\00E0 ch\1ECDn Sao che\0301p h\00E0ng. X\00F3a h\00E0ng \0111\00E3 ch\1ECDn b\1EB1ng c\00E1ch nh\1EA5p v\00E0o tri\0300nh \0111\01A1n Thay \0111\1ED5i v\00E0 ch\1ECDn X\00F3a h\00E0ng.</p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029603639028115)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0301nh n\0103ng chi\0309nh s\01B0\0309a')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029799790028115)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>L\01B0\1EDBi t\01B0\01A1ng t\00E1c tr\00ECnh b\00E0y m\1ED9t t\00E2\0323p d\1EEF li\1EC7u trong m\1ED9t b\00E1o c\00E1o c\00F3 th\1EC3 ti\0300m ki\00EA\0301m va\0300 t\00F9y ch\1EC9nh. B\1EA1n c\00F3 th\1EC3 th\1EF1c hi\1EC7n nhi\1EC1u thao t\00E1c \0111\1EC3 gi\01A1\0301i h\1EA1n s\1ED1 l\01B0\01A1\0323ng d\01B0\0303 li\00EA\0323u \0111\01B0\1EE3c tr\1EA3 v\1EC1 v\00E0 thay \0111\1ED5i c\00E1ch hi\1EC3n th\1ECB d\1EEF li\1EC7u.</p>'),
'',
unistr('<p>S\1EED d\1EE5ng tr\01B0\1EDDng T\00ECm ki\1EBFm \0111\1EC3 l\1ECDc c\00E1c d\01B0\0303 li\00EA\0323u \0111\01B0\1EE3c tr\1EA3 v\1EC1. Nh\1EA5p v\00E0o H\00E0nh \0111\1ED9ng \0111\1EC3 truy c\1EADp nhi\1EC1u t\00F9y ch\1ECDn s\1EEDa \0111\1ED5i b\1ED1 c\1EE5c b\00E1o c\00E1o ho\1EB7c s\1EED d\1EE5ng tri\0300nh \0111\01A1n Ti\00EAu \0111\1EC1 c\1ED9t tr\00EAn c\00E1c c\1ED9t \0111\01B0\1EE3c hi\1EC3n th\1ECB.</p>'),
'',
unistr('<p>S\1EED d\1EE5ng C\00E0i \0111\1EB7t b\00E1o c\00E1o \0111\1EC3 l\01B0u c\00E1c mu\0323c t\00F9y ch\1EC9nh c\1EE7a b\1EA1n v\00E0o b\00E1o c\00E1o. B\1EA1n c\0169ng c\00F3 th\1EC3 t\1EA3i d\1EEF li\1EC7u t\1EEB b\00E1o c\00E1o xu\1ED1ng m\00F4\0323t t\00E2\0323p tin b\00EAn ngo\00E0i ho\1EB7c g\1EEDi d\1EEF li\1EC7u qua email cho ch\00EDnh m\00ECnh ho\1EB7c ng\01B0\1EDDi kh\00E1c.</p>'),
'',
unistr('<p>\0110\1EC3 t\00ECm hi\1EC3u th\00EAm, h\00E3y xem ph\00E2\0300n "S\1EED d\1EE5ng l\01B0\1EDBi t\01B0\01A1ng t\00E1c" trong <em>H\01B0\1EDBng d\1EABn c\1EE7a Oracle APEX d\00E0nh cho ng\01B0\1EDDi d\00F9ng cu\1ED1i</em>.')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029429357028115)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng quan')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027483617028114)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>B\1EA1n c\00F3 th\1EC3 t\00F9y ch\1EC9nh l\01B0\1EDBi t\01B0\01A1ng t\00E1c \0111\1EC3 hi\1EC3n th\1ECB d\1EEF li\1EC7u theo nhi\1EC1u c\00E1ch kh\00E1c nhau b\1EB1ng c\00E1ch s\1EED d\1EE5ng c\00E1c t\00EDnh n\0103ng t\00EDch h\1EE3p s\1EB5n.</p>'),
'',
unistr('<p>S\1EED d\1EE5ng tri\0300nh \0111\01A1n Ti\00EAu \0111\1EC1 c\1ED9t ho\1EB7c tri\0300nh \0111\01A1n Ha\0300nh \0111\00F4\0323ng \0111\1EC3 x\00E1c \0111\1ECBnh nh\01B0\0303ng c\1ED9t n\00E0o s\1EBD hi\1EC3n th\1ECB, theo th\01B0\0301 t\1EF1 n\00E0o v\00E0 \0111o\0301ng b\0103ng ca\0301c c\1ED9t. B\1EA1n c\0169ng c\00F3 th\1EC3 x\00E1c \0111\1ECBnh c\00E1c b\1ED9 l\1ECDc d\1EEF li\1EC7u kh\00E1c nhau v\00E0 s\1EAFp x\1EBFp d\1EEF li\1EC7u \0111\01B0\1EE3c tr\1EA3 v\1EC1.</p>'),
'',
unistr('<p>S\1EED d\1EE5ng n\00FAt Xem (li\1EC1n k\1EC1 tr\01B0\1EDDng T\00ECm ki\1EBFm) \0111\1EC3 truy c\1EADp c\00E1c ch\1EBF \0111\1ED9 xem d\1EEF li\1EC7u kh\00E1c c\00F3 th\1EC3 \0111\00E3 \0111\01B0\1EE3c nh\00E0 ph\00E1t tri\1EC3n \1EE9ng d\1EE5ng x\00E1c \0111\1ECBnh. B\1EA1n c\0169ng c\00F3 th\1EC3 t\1EA1o bi\1EC3u \0111\1ED3 ho\1EB7c xem bi\1EC3u \0111\1ED3 hi\1EC7n c\00F3.</p>'),
'',
unistr('<p><em>L\01B0u \00FD: Nh\1EA5p v\00E0o <strong>Tr\1EE3 gi\00FAp</strong> trong h\1ED9p tho\1EA1i l\01B0\1EDBi t\01B0\01A1ng t\00E1c \0111\1EC3 nh\00E2\0323n th\00EAm th\00F4ng tin chi ti\1EBFt v\1EC1 ch\1EE9c n\0103ng \0111\00E3 ch\1ECDn.</em></p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029566078028115)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0301nh n\0103ng ba\0301o ca\0301o')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980558136028100)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p l\01B0\01A1\0301i t\01B0\01A1ng ta\0301c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026386609028114)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 t\1ED5ng h\1EE3p c\00E1c c\1ED9t. C\00E1c gi\00E1 tr\1ECB t\1ED5ng h\1EE3p hi\1EC3n th\1ECB \1EDF cu\1ED1i d\1EEF li\1EC7u ho\1EB7c \1EDF cu\1ED1i m\1ED7i d\1EA5u ng\1EAFt n\1EBFu D\1EA5u ng\1EAFt \0111i\1EC1u khi\1EC3n \0111\01B0\1EE3c x\00E1c \0111\1ECBnh.</p>'),
'',
unistr('<p><strong>Danh s\00E1ch t\1ED5ng h\1EE3p</strong><br>'),
unistr('Danh s\00E1ch t\00F4\0309ng h\1EE3p hi\1EC3n th\1ECB c\00E1c mu\0323c t\00F4\0309ng h\1EE3p \0111\01B0\1EE3c x\00E1c \0111\1ECBnh. V\00F4 hi\1EC7u h\00F3a m\1ED9t mu\0323c t\00F4\0309ng h\1EE3p hi\1EC7n c\00F3 b\1EB1ng c\00E1ch b\1ECF ch\1ECDn mu\0323c \0111\00F3.<br>'),
unistr('Nh\1EA5p v\00E0o Th\00EAm ( &plus; ) \0111\1EC3 t\1EA1o mu\0323c t\00F4\0309ng h\1EE3p m\1EDBi ho\1EB7c nh\00E2\0301p va\0300o X\00F3a ( &minus; ) \0111\1EC3 x\00F3a mu\0323c t\00F4\0309ng h\1EE3p hi\1EC7n c\00F3.</p>'),
'',
unistr('<p><strong>C\00E0i \0111\1EB7t mu\0323c t\1ED5ng h\1EE3p</strong><br>'),
unistr('S\1EED d\1EE5ng bi\1EC3u m\1EABu \01A1\0309 b\00EAn ph\1EA3i \0111\1EC3 x\00E1c \0111\1ECBnh mu\0323c t\1ED5ng h\1EE3p.<br>'),
unistr('Ch\1ECDn T\00EAn c\1ED9t v\00E0 Lo\1EA1i t\00F4\0309ng h\1EE3p.<br>'),
unistr('N\00EA\0301u mu\00F4\0301n, b\1EA1n c\00F3 th\1EC3 nh\1EADp ch\00FA gi\1EA3i c\00F4ng c\1EE5 cho mu\0323c t\1ED5ng h\1EE3p \0111o\0301.<br>'),
unistr('N\1EBFu b\1EA1n \0111\00E3 x\00E1c \0111\1ECBnh D\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n, vi\1EC7c ch\1ECDn <strong>Hi\1EC3n th\1ECB gi\00E1 tr\1ECB t\1ED5ng th\1EC3</strong> s\1EBD hi\1EC3n th\1ECB gi\00E1 tr\1ECB trung b\00ECnh, t\1ED5ng ho\1EB7c gi\00E1 tr\1ECB t\01B0\01A1ng t\1EF1 t\1ED5ng th\1EC3 \1EDF cu\1ED1i d\1EEF li\1EC7u.</p>'),
'',
unistr('<p><em>L\01B0u \00FD: Truy c\1EADp h\1ED9p tho\1EA1i Mu\0323c t\1ED5ng h\1EE3p trong tri\0300nh \0111\01A1n H\00E0nh \0111\1ED9ng ho\1EB7c b\0103\0300ng ca\0301ch nh\1EA5p v\00E0o ti\00EAu \0111\1EC1 c\1ED9t v\00E0 t\1ED5ng ( &sum; ).</em></p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028592439028114)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p t\00F4\0309ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027090666028114)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 x\00E1c \0111\1ECBnh m\00F4\0323t bi\1EC3u \0111\1ED3 se\0303 hi\1EC3n th\1ECB d\01B0\1EDBi d\1EA1ng ch\1EBF \0111\1ED9 xem d\1EEF li\1EC7u ri\00EAng bi\1EC7t.<br>'),
unistr('Ch\1ECDn m\00F4\0323t Lo\1EA1i bi\1EC3u \0111\1ED3 v\00E0 ca\0301c thu\1ED9c t\00EDnh bi\1EC3u \0111\1ED3.</p>'),
unistr('<p><strong>Thu\1ED9c t\00EDnh bi\1EC3u \0111\1ED3</strong><br>'),
unistr('C\00E1c thu\1ED9c t\00EDnh bi\1EC3u \0111\1ED3 c\00F3 s\1EB5n s\1EBD kh\00E1c nhau t\00F9y thu\1ED9c v\00E0o lo\1EA1i bi\1EC3u \0111\1ED3.</p>'),
'<p>',
'<ul>',
unistr('   <li>Ch\1ECDn c\1ED9t ch\1EE9a gi\00E1 tr\1ECB cho thu\1ED9c t\00EDnh:'),
'     <ul>',
unistr('       <li>Nh\00E3n - V\0103n b\1EA3n cho t\1EEBng \0111i\1EC3m d\1EEF li\1EC7u.</li>'),
unistr('       <li>Gi\00E1 tr\1ECB - D\1EEF li\1EC7u se\0303 \0111\01B0\1EE3c v\1EBD bi\00EA\0309u \0111\00F4\0300.</li>'),
unistr('       <li>Chu\1ED7i - \0110\1EC3 x\00E1c \0111\1ECBnh truy v\1EA5n \0111\1ED9ng g\00F4\0300m nhi\1EC1u chu\1ED7i c\1EE7a b\1EA1n.</li>'),
unistr('       <li>M\1EDF - Gi\00E1 m\1EDF c\1EEDa cu\0309a c\00F4\0309 phi\00EA\0301u h\00E0ng ng\00E0y (Ch\1EC9 c\00F4\0309 phi\00EA\0301u).</li>'),
unistr('       <li>\0110\00F3ng - Gi\00E1 \0111\00F3ng c\01B0\0309a cu\0309a c\1ED5 phi\1EBFu h\00E0ng ng\00E0y (Ch\1EC9 c\1ED5 phi\1EBFu).</li>'),
unistr('       <li>Cao - Gi\00E1 tr\1ECB cao (Ch\1EC9 Ph\1EA1m vi v\00E0 C\00F4\0309 phi\00EA\0301u).</li>'),
unistr('       <li>Th\1EA5p - Gi\00E1 tr\1ECB th\1EA5p (Ch\1EC9 Ph\1EA1m vi v\00E0 C\00F4\0309 phi\00EA\0301u).</li>'),
unistr('       <li>Kh\00F4\0301i l\01B0\1EE3ng - Kh\00F4\0301i l\01B0\1EE3ng c\00F4\0309 phi\00EA\0301u ha\0300ng ng\00E0y (Ch\1EC9 c\00F4\0309 phi\00EA\0301u).</li>'),
unistr('       <li>Mu\0323c ti\00EAu - Gi\00E1 tr\1ECB mu\0323c ti\00EAu (ch\1EC9 Ph\00EA\0303u).</li>'),
unistr('       <li>X - Gi\00E1 tr\1ECB tr\1EE5c x (ch\1EC9 Bong b\00F3ng v\00E0 Ph\00E2n t\00E1n).</li>'),
unistr('       <li>Y - Gi\00E1 tr\1ECB tr\1EE5c y (ch\1EC9 Bong b\00F3ng v\00E0 Ph\00E2n t\00E1n).</li>'),
unistr('       <li>Z - Chi\1EC1u r\1ED9ng thanh ho\1EB7c b\00E1n k\00EDnh bong b\00F3ng (Ch\1EC9 Thanh, Bong b\00F3ng v\00E0 Ph\1EA1m vi).</li>'),
'     </ul>',
'   </li>',
unistr('   <li>H\01B0\1EDBng - D\1ECDc ho\1EB7c ngang.</li>'),
unistr('   <li>T\1ED5ng h\1EE3p - Ch\1ECDn c\00E1ch t\1ED5ng h\1EE3p c\00E1c gi\00E1 tr\1ECB bi\1EC3u \0111\1ED3.</li>'),
unistr('   <li>Ng\0103n x\00EA\0301p - Ch\1EC9 \0111\1ECBnh li\00EA\0323u c\00E1c m\1EE5c d\1EEF li\1EC7u c\00F3 \0111\01B0\1EE3c x\1EBFp ch\1ED3ng hay kh\00F4ng.</li>'),
unistr('   <li>S\1EAFp x\1EBFp theo - S\1EAFp x\1EBFp theo nh\00E3n ho\1EB7c (c\00E1c) gi\00E1 tr\1ECB.'),
'     <ul>',
unistr('       <li>H\01B0\01A1\0301ng - S\1EAFp x\1EBFp theo gi\00E1 tr\1ECB t\0103ng d\1EA7n ho\0103\0323c gi\1EA3m d\1EA7n.</li>'),
unistr('       <li>Gia\0301 tri\0323 r\00F4\0303ng - Ch\1EC9 \0111\1ECBnh c\00E1ch s\1EAFp x\1EBFp c\00E1c d\01B0\0303 li\00EA\0323u c\00F3 gi\00E1 tr\1ECB r\00F4\0303ng so v\1EDBi c\00E1c d\01B0\0303 li\00EA\0323u c\00F3 gi\00E1 tr\1ECB kh\00F4ng r\00F4\0303ng.</li>'),
'     </ul>',
'   </li>',
unistr('   <li>S\1ED1 l\01B0\01A1\0323ng ch\01B0\0303 s\00F4\0301 th\1EADp ph\00E2n</li>'),
unistr('   <li>Ti\00EAu \0111\1EC1 tr\1EE5c nh\00E3n</li>'),
unistr('   <li>Ti\00EAu \0111\1EC1 tr\1EE5c gi\00E1 tr\1ECB</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028972628028115)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p bi\00EA\0309u \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026028095028114)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 ch\1ECDn nh\01B0\0303ng c\1ED9t na\0300o se\0303 hi\1EC3n th\1ECB v\00E0 theo th\1EE9 t\1EF1 na\0300o.</p>'),
'',
unistr('<p>\1EA8n m\1ED9t c\1ED9t b\1EB1ng c\00E1ch b\1ECF ch\1ECDn c\1ED9t \0111\00F3.<br>'),
unistr('S\1EAFp x\1EBFp l\1EA1i c\00E1c c\1ED9t b\1EB1ng c\00E1ch nh\1EA5p v\00E0o Di chuy\1EC3n l\00EAn ( &uarr; ) ho\1EB7c Di chuy\1EC3n xu\1ED1ng ( &darr; ).<br>'),
unistr('S\1EED d\1EE5ng b\1ED9 ch\1ECDn th\1EA3 xu\1ED1ng \0111\1EC3 li\1EC7t k\00EA T\1EA5t c\1EA3 c\00E1c c\1ED9t, C\1ED9t \0111\01B0\1EE3c hi\1EC3n th\1ECB ho\1EB7c C\1ED9t kh\00F4ng \0111\01B0\1EE3c hi\1EC3n th\1ECB.</p>'),
'',
unistr('<p>N\00EA\0301u mu\00F4\0301n, ba\0323n co\0301 th\00EA\0309 s\1EED d\1EE5ng bi\1EC3u m\1EABu \0111\1EC3 ch\1EC9 \0111\1ECBnh chi\1EC1u r\1ED9ng t\1ED1i thi\1EC3u c\1EE7a c\1ED9t t\00EDnh b\1EB1ng pixel.</p>'),
'',
unistr('<p><em>L\01B0u \00FD: B\1EA1n c\0169ng c\00F3 th\1EC3 s\1EAFp x\1EBFp l\1EA1i c\00E1c c\1ED9t \0111\01B0\1EE3c hi\1EC3n th\1ECB b\1EB1ng c\00E1ch nh\1EA5p v\00E0o ch\1ED1t k\00E9o (\1EDF \0111\1EA7u ti\00EAu \0111\1EC1 c\1ED9t) v\00E0 k\00E9o c\1ED9t sang tr\00E1i ho\1EB7c ph\1EA3i. B\1EA1n c\0169ng c\00F3 th\1EC3 thay \0111\1ED5i \0111\1ED9 r\1ED9ng c\1ED9t c\1EE7a c\00E1c c\1ED9t \0111\01B0\1EE3c hi\1EC3n th\1ECB b\1EB1ng c\00E1ch ch\1ECDn d\1EA5u ph\00E2n c\00E1ch c\1ED9t, gi\1EEFa c\00E1c ')
||unistr('ti\00EAu \0111\1EC1 v\00E0 di chuy\1EC3n sang tr\00E1i ho\1EB7c sang ph\1EA3i.</em></p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028891325028115)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p c\00F4\0323t')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026454989028114)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 x\00E1c \0111\1ECBnh nh\01B0\0303ng c\1ED9t b\1ED5 sung d\1EF1a tr\00EAn ph\00E9p t\00EDnh to\00E1n h\1ECDc v\00E0 ha\0300m \0111\01B0\1EE3c th\1EF1c hi\1EC7n \0111\1ED1i v\1EDBi c\00E1c c\1ED9t hi\1EC7n c\00F3.</p>'),
'',
unistr('<p><strong>Danh s\00E1ch phe\0301p t\00EDnh</strong><br>'),
unistr('Danh s\00E1ch phe\0301p t\00EDnh hi\1EC3n th\1ECB c\00E1c phe\0301p t\00EDnh \0111\01B0\1EE3c x\00E1c \0111\1ECBnh. T\1EAFt m\00F4\0323t phe\0301p t\00EDnh hi\1EC7n c\00F3 b\1EB1ng c\00E1ch b\1ECF ch\1ECDn phe\0301p ti\0301nh \0111\00F3.<br>'),
unistr('Nh\1EA5p v\00E0o Th\00EAm ( &plus; ) \0111\1EC3 th\00EAm ph\00E9p t\00EDnh m\1EDBi ho\1EB7c nh\00E2\0301p va\0300o X\00F3a ( &minus; ) \0111\1EC3 x\00F3a ph\00E9p t\00EDnh hi\1EC7n c\00F3.</p>'),
'',
unistr('<p><strong>C\00E0i \0111\1EB7t phe\0301p t\00EDnh</strong><br>'),
unistr('S\1EED d\1EE5ng bi\1EC3u m\1EABu \0111\1EC3 x\00E1c \0111\1ECBnh ph\00E9p t\00EDnh.<br>'),
unistr('Nh\1EADp c\00E1c chi ti\1EBFt c\1ED9t nh\01B0 ti\00EAu \0111\1EC1, nh\00E3n v\00E0 ch\1ECDn c\00E0i \0111\1EB7t c\0103n ch\1EC9nh.<br>'),
unistr('S\1EED d\1EE5ng v\00F9ng v\0103n b\1EA3n Bi\1EC3u th\1EE9c \0111\1EC3 nh\1EADp (c\00E1c) c\1ED9t v\00E0 c\00E1c h\00E0m li\00EAn quan cho ph\00E9p t\00EDnh.<br>'),
unistr('Ch\1ECDn lo\1EA1i d\1EEF li\1EC7u th\00EDch h\1EE3p v\00E0 c\00E2\0301u tru\0301c \0111\1ECBnh d\1EA1ng (n\00EA\0301u mu\00F4\0301n) cho c\1ED9t m\1EDBi.</p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028419916028114)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p ti\0301nh toa\0301n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026741440028114)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 x\00E1c \0111\1ECBnh d\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n tr\00EAn m\1ED9t ho\1EB7c nhi\1EC1u c\1ED9t.</p>'),
'',
unistr('<p><strong>Danh s\00E1ch d\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n</strong><br>'),
unistr('Danh s\00E1ch d\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n hi\1EC3n th\1ECB c\00E1c d\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n \0111\01B0\1EE3c x\00E1c \0111\1ECBnh. T\1EAFt m\00F4\0323t c\1ED9t d\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n hi\1EC7n c\00F3 b\1EB1ng c\00E1ch b\1ECF ch\1ECDn c\1ED9t \0111\00F3.<br>'),
unistr('Nh\1EA5p v\00E0o Th\00EAm ( &plus; ) \0111\1EC3 \0111\01B0a c\1ED9t m\1EDBi v\00E0o d\1EA5u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n ho\1EB7c nh\00E2\0301p va\0300o X\00F3a ( &minus; ) \0111\1EC3 x\00F3a c\1ED9t hi\1EC7n c\00F3 kh\1ECFi d\1EA5u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n.<br>'),
unistr('\0110\1EC3 s\1EAFp x\1EBFp l\1EA1i c\00E1c c\1ED9t, h\00E3y nh\1EA5p v\00E0o Di chuy\1EC3n l\00EAn ( &uarr; ) ho\1EB7c Di chuy\1EC3n xu\1ED1ng ( &darr; ) \0111\1EC3 di chuy\1EC3n c\1ED9t \0111\00E3 ch\1ECDn l\00EAn v\00E0 xu\1ED1ng so v\1EDBi c\00E1c c\1ED9t kh\00E1c.</p>'),
'',
unistr('<p><strong>C\00E0i \0111\1EB7t d\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n</strong><br>'),
unistr('S\1EED d\1EE5ng bi\1EC3u m\1EABu \0111\1EC3 x\00E1c \0111\1ECBnh c\1ED9t d\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n.<br>'),
unistr('Ch\1ECDn m\00F4\0323t c\1ED9t d\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n, h\01B0\01A1\0301ng s\1EAFp x\1EBFp v\00E0 c\00E1ch s\1EAFp x\1EBFp c\00E1c c\1ED9t r\1ED7ng (c\1ED9t kh\00F4ng c\00F3 gi\00E1 tr\1ECB).</p>'),
'',
unistr('<p><em>L\01B0u \00FD: Khi xem l\01B0\1EDBi t\01B0\01A1ng t\00E1c, b\1EA1n c\00F3 th\1EC3 x\00E1c \0111\1ECBnh d\1EA5u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n b\1EB1ng c\00E1ch nh\1EA5p v\00E0o Ti\00EAu \0111\1EC1 c\1ED9t v\00E0 ch\1ECDn bi\1EC3u t\01B0\1EE3ng d\1EA5u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n.</em></p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028127120028114)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p d\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026968939028114)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 t\1EA3i mo\0323i h\00E0ng hi\1EC7n t\1EA1i xu\1ED1ng m\1ED9t t\00E2\0323p tin b\00EAn ngo\00E0i. T\00E2\0323p tin s\1EBD ch\1EC9 ch\1EE9a c\00E1c c\1ED9t hi\1EC7n \0111\01B0\1EE3c hi\1EC3n th\1ECB, s\1EED d\1EE5ng b\1EA5t k\1EF3 b\1ED9 l\1ECDc v\00E0 ca\0301ch s\1EAFp x\1EBFp n\00E0o \0111\01B0\1EE3c \00E1p d\1EE5ng cho d\1EEF li\1EC7u.</p>'),
'',
unistr('<p>Ch\1ECDn \0111\1ECBnh d\1EA1ng t\00E2\0323p tin v\00E0 nh\1EA5p v\00E0o T\1EA3i xu\1ED1ng.<br>'),
unistr('L\01B0u \00FD: CSV s\1EBD kh\00F4ng bao g\1ED3m \0111\1ECBnh d\1EA1ng v\0103n b\1EA3n nh\01B0 mu\0323c t\1ED5ng h\1EE3p v\00E0 d\00E2\0301u ng\1EAFt \0111i\00EA\0300u khi\00EA\0309n.</p>'),
'',
unistr('<p>\0110\1EC3 g\1EEDi t\00E2\0323p tin qua email, h\00E3y ch\1ECDn G\1EEDi d\01B0\1EDBi d\1EA1ng email v\00E0 nh\1EADp chi ti\1EBFt email (Ng\01B0\1EDDi nh\1EADn, Ti\00EAu \0111\1EC1 v\00E0 N\00F4\0323i dung).</p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027998393028114)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p ta\0309i xu\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026178724028114)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 \0111\1ECBnh c\1EA5u h\00ECnh ca\0301c b\1ED9 l\1ECDc d\1EEF li\1EC7u se\0303 gi\1EDBi h\1EA1n s\1ED1 h\00E0ng \0111\01B0\1EE3c tr\1EA3 v\1EC1.</p>'),
'',
unistr('<p><strong>Danh s\00E1ch b\1ED9 l\1ECDc</strong><br>'),
unistr('Danh s\00E1ch b\1ED9 l\1ECDc hi\1EC3n th\1ECB c\00E1c b\1ED9 l\1ECDc \0111\01B0\1EE3c x\00E1c \0111\1ECBnh. T\1EAFt b\1ED9 l\1ECDc hi\1EC7n c\00F3 b\1EB1ng c\00E1ch b\1ECF ch\1ECDn b\00F4\0323 lo\0323c \0111\00F3.</p>'),
unistr('Nh\1EA5p v\00E0o Th\00EAm ( &plus; ) \0111\1EC3 t\1EA1o b\1ED9 l\1ECDc m\1EDBi ho\1EB7c nh\00E2\0301p va\0300o X\00F3a ( &minus; ) \0111\1EC3 x\00F3a b\1ED9 l\1ECDc hi\1EC7n c\00F3.</p>'),
'',
unistr('<p><strong>C\00E0i \0111\1EB7t b\1ED9 l\1ECDc</strong><br>'),
unistr('S\1EED d\1EE5ng bi\1EC3u m\1EABu \0111\1EC3 x\00E1c \0111\1ECBnh ca\0301c thu\1ED9c t\00EDnh b\1ED9 l\1ECDc.<br>'),
unistr('Ch\1ECDn lo\1EA1i b\1ED9 l\1ECDc th\00EDch h\1EE3p:<br>'),
unistr('&nbsp;&nbsp;&nbsp;H\00E0ng - l\1ECDc m\1ED9t cu\0323m t\01B0\0300 trong b\1EA5t k\1EF3 c\1ED9t c\00F3 th\1EC3 l\1ECDc n\00E0o.<br>'),
unistr('&nbsp;&nbsp;&nbsp;C\1ED9t - l\1ECDc m\1ED9t c\1ED9t c\1EE5 th\1EC3 v\1EDBi to\00E1n t\1EED v\00E0 gi\00E1 tr\1ECB \0111\01B0\1EE3c ch\1EC9 \0111\1ECBnh.</p>'),
'',
unistr('<p><em>L\01B0u \00FD: Khi xem l\01B0\1EDBi t\01B0\01A1ng t\00E1c, b\1EA1n c\00F3 th\1EC3 x\00E1c \0111\1ECBnh b\1ED9 l\1ECDc h\00E0ng b\1EB1ng c\00E1ch nh\1EADp tr\1EF1c ti\1EBFp v\00E0o tr\01B0\1EDDng T\00ECm ki\1EBFm. Nh\00E2\0301p va\0300o Ch\1ECDn c\1ED9t c\00E2\0300n t\00ECm ki\1EBFm \0111\1EC3 gi\1EDBi h\1EA1n t\00ECm ki\1EBFm \01A1\0309 m\1ED9t c\1ED9t c\1EE5 th\1EC3. Ho\0103\0323c m\1EDF tri\0300nh \0111\01A1n Ti\00EAu \0111\1EC1 c\1ED9t v\00E0 ch\1ECDn m\1ED9t gi\00E1 tr\1ECB \0111\1EC3 t\1EA1o b')
||unistr('\1ED9 l\1ECDc c\1ED9t.</em></p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028715699028115)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p lo\0323c')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026592768028114)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 xem d\1EEF li\1EC7u nh\01B0 \0111\00E3 t\1ED3n t\1EA1i \1EDF th\1EDDi \0111i\1EC3m tr\01B0\1EDBc \0111\00F3.</p>'),
unistr('<p>Nh\1EADp s\1ED1 ph\00FAt trong qu\00E1 kh\1EE9 \0111\1EC3 th\1EF1c hi\1EC7n truy v\1EA5n h\1ED3i t\01B0\1EDFng.</p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028398867028114)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p h\00F4\0300i t\01B0\01A1\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029013123028115)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p ph\00E2n nho\0301m theo')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026654747028114)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 \0111\00E1nh d\1EA5u c\00E1c h\00E0ng ho\1EB7c c\1ED9t d\1EEF li\1EC7u d\1EF1a tr\00EAn \0111i\1EC1u ki\1EC7n \0111\00E3 nh\1EADp.</p>'),
'',
unistr('<p><strong>Danh s\00E1ch \0111\00E1nh d\1EA5u</strong><br>'),
unistr('Danh s\00E1ch \0111\00E1nh d\1EA5u hi\1EC3n th\1ECB c\00E1c ph\00E2\0300n \0111a\0301nh d\00E2\0301u \0111a\0303 x\00E1c \0111\1ECBnh. T\1EAFt m\00F4\0323t ph\00E2\0300n \0111\00E1nh d\1EA5u hi\1EC7n c\00F3 b\1EB1ng c\00E1ch b\1ECF ch\1ECDn ph\00E2\0300n \0111\00F3.<br>'),
unistr('Nh\1EA5p v\00E0o Th\00EAm ( &plus; ) \0111\1EC3 t\1EA1o ph\00E2\0300n \0111\00E1nh d\1EA5u m\1EDBi ho\1EB7c nh\00E2\0301p va\0300o X\00F3a ( &minus; ) \0111\1EC3 x\00F3a ph\00E2\0300n \0111\00E1nh d\1EA5u hi\1EC7n c\00F3.</p>'),
'',
unistr('<p><strong>C\00E0i \0111\1EB7t \0111\00E1nh d\1EA5u</strong><br>'),
unistr('S\1EED d\1EE5ng bi\1EC3u m\1EABu \0111\1EC3 x\00E1c \0111\1ECBnh ca\0301c thu\1ED9c t\00EDnh \0111\00E1nh d\1EA5u.<br>'),
unistr('Nh\1EADp t\00EAn, ch\1ECDn H\00E0ng ho\1EB7c C\1ED9t r\1ED3i ch\1ECDn m\00E3 m\00E0u HTML cho n\1EC1n v\00E0 v\0103n b\1EA3n.<br>'),
unistr('Ch\1ECDn <strong>Lo\1EA1i \0111i\1EC1u ki\1EC7n</strong> th\00EDch h\1EE3p \0111\1EC3 \0111a\0301nh d\00E2\0301u d\1EEF li\1EC7u c\1EE5 th\1EC3:<br>'),
unistr('&nbsp;&nbsp;&nbsp;H\00E0ng - \0111\00E1nh d\1EA5u c\1EE5m t\1EEB trong b\1EA5t k\1EF3 c\1ED9t n\00E0o.<br>'),
unistr('&nbsp;&nbsp;&nbsp;C\1ED9t - \0111\00E1nh d\1EA5u trong m\1ED9t c\1ED9t c\1EE5 th\1EC3 d\1EF1a tr\00EAn to\00E1n t\1EED v\00E0 gi\00E1 tr\1ECB \0111\01B0\1EE3c ch\1EC9 \0111\1ECBnh.</p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028236398028114)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p \0111a\0301nh d\00E2\0301u')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026895166028114)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 l\01B0u c\00E1c thay \0111\1ED5i b\1EA1n \0111\00E3 th\1EF1c hi\1EC7n \0111\1ED1i v\1EDBi c\1EA5u h\00ECnh v\00E0 b\1ED1 c\1EE5c l\01B0\1EDBi hi\1EC7n t\1EA1i.<br>'),
unistr('Nh\00E0 ph\00E1t tri\1EC3n \1EE9ng d\1EE5ng c\00F3 th\1EC3 x\00E1c \0111\1ECBnh nhi\1EC1u b\1ED1 c\1EE5c b\00E1o c\00E1o thay th\1EBF. N\1EBFu \0111\01B0\1EE3c ph\00E9p, b\1EA1n v\00E0 nh\1EEFng ng\01B0\1EDDi d\00F9ng cu\1ED1i kh\00E1c c\00F3 th\1EC3 l\01B0u b\00E1o c\00E1o \1EDF d\1EA1ng C\00F4ng khai, nh\01A1\0300 v\00E2\0323y ma\0300 t\1EA5t c\1EA3 nh\01B0\0303ng ng\01B0\1EDDi d\00F9ng kh\00E1c c\1EE7a l\01B0\1EDBi \0111\00EA\0300u xem \0111\01B0\01A1\0323c ba\0301o ca\0301o. B\1EA1n c\0169ng c\00F3 th')
||unistr('\1EC3 l\01B0u b\00E1o c\00E1o d\01B0\1EDBi d\1EA1ng B\00E1o c\00E1o ri\00EAng t\01B0 m\00E0 ch\1EC9 b\1EA1n m\1EDBi c\00F3 th\1EC3 xem.</p>'),
unistr('<p>Ch\1ECDn trong s\00F4\0301 c\00E1c lo\1EA1i s\1EB5n co\0301 v\00E0 nh\1EADp t\00EAn cho b\00E1o c\00E1o \0111a\0303 l\01B0u.</p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028011696028114)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Tr\01A1\0323 giu\0301p ba\0301o ca\0301o'),
''))
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131026278101028114)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>S\1EED d\1EE5ng h\1ED9p tho\1EA1i n\00E0y \0111\1EC3 \0111\1EB7t th\1EE9 t\1EF1 hi\1EC3n th\1ECB.</p>'),
'',
unistr('<p><strong>Danh s\00E1ch s\1EAFp x\1EBFp</strong><br>'),
unistr('H\1ED9p tho\1EA1i S\1EAFp x\1EBFp hi\1EC3n th\1ECB danh s\00E1ch c\00E1c quy t\1EAFc s\1EAFp x\1EBFp \0111a\0303 \0111\1ECBnh c\1EA5u h\00ECnh.<br>'),
unistr('Nh\1EA5p v\00E0o Th\00EAm ( &plus; ) \0111\1EC3 t\1EA1o c\1ED9t s\1EAFp x\1EBFp ho\1EB7c nh\00E2\0301p va\0300o X\00F3a ( &minus; ) \0111\1EC3 x\00F3a c\1ED9t s\1EAFp x\1EBFp.<br>'),
unistr('Nh\1EA5p v\00E0o Di chuy\1EC3n l\00EAn ( &uarr; ) v\00E0 Di chuy\1EC3n xu\1ED1ng ( &darr; ) \0111\1EC3 di chuy\1EC3n c\1ED9t s\1EAFp x\1EBFp \0111\00E3 ch\1ECDn l\00EAn v\00E0 xu\1ED1ng so v\1EDBi c\00E1c c\1ED9t s\1EAFp x\1EBFp kh\00E1c.</p>'),
'',
unistr('<p><strong>C\00E0i \0111\1EB7t s\1EAFp x\1EBFp</strong><br>'),
unistr('Ch\1ECDn c\1ED9t s\1EAFp x\1EBFp, h\01B0\01A1\0301ng s\1EAFp x\1EBFp v\00E0 c\00E1ch s\1EAFp x\1EBFp c\00E1c c\1ED9t r\1ED7ng (c\1ED9t kh\00F4ng c\00F3 gi\00E1 tr\1ECB).</p>'),
'',
unistr('<p><em>L\01B0u \00FD: Co\0301 th\00EA\0309 s\0103\0301p x\00EA\0301p d\1EEF li\1EC7u theo c\00E1c c\1ED9t kh\00F4ng hi\1EC3n th\1ECB. Tuy nhi\00EAn, kh\00F4ng ph\1EA3i c\1ED9t na\0300o cu\0303ng s\1EAFp x\1EBFp \0111\01B0\1EE3c.</em><br>'),
unistr('<em>Co\0301 th\00EA\0309 s\0103\0301p x\00EA\0301p c\00E1c c\1ED9t \0111\01B0\1EE3c hi\1EC3n th\1ECB b\1EB1ng c\00E1ch nh\1EA5n va\0300o m\0169i t\00EAn l\00EAn (t\0103ng d\1EA7n) ho\1EB7c xu\1ED1ng (gi\1EA3m d\1EA7n) \1EDF cu\1ED1i ti\00EAu \0111\1EC1 c\1ED9t. \0110\1EC3 th\00EAm c\1ED9t ti\1EBFp theo v\00E0o c\00E1ch s\1EAFp x\1EBFp hi\1EC7n c\00F3, h\00E3y gi\1EEF ph\00EDm Shift r\00F4\0300i nh\1EA5p v\00E0o m\0169i t\00EAn l\00EAn ho\1EB7c xu\1ED1ng.</em></p>')))
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131028640046028115)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p s\0103\0301p x\00EA\0301p')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027893891028114)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p \0111\0103ng ky\0301')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981446775028100)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C2\0309n')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945888031028090)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0301nh d\00E2\0301u')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015025407028111)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'vi'
,p_message_text=>'Cao'
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015851185028111)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'vi'
,p_message_text=>'Ngang'
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974461433028098)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979495764028100)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u t\01B0\01A1\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944735330028090)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem bi\00EA\0309u t\01B0\01A1\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972664207028098)
,p_name=>'APEX.IG.IN'
,p_message_language=>'vi'
,p_message_text=>unistr('thu\00F4\0323c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981097166028100)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t kh\00F4ng hoa\0323t \0111\00F4\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981152122028100)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t kh\00F4ng hoa\0323t \0111\00F4\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988745405028103)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xa\0309y ra l\00F4\0303i n\00F4\0323i b\00F4\0323 trong khi x\01B0\0309 ly\0301 y\00EAu c\00E2\0300u L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876669467028070)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 loa\0323i b\00F4\0323 lo\0323c c\00F4\0323t "%0" \0111\00F4\0301i v\01A1\0301i c\00F4\0323t "%1".')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027633019028114)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng nga\0300y kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002458133028107)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c kh\00F4ng h\00F4\0303 tr\01A1\0323 xa\0301c \0111i\0323nh b\00F4\0323 lo\0323c tr\00EAn c\00F4\0323t %0.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002333971028107)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng pha\0309i la\0300 loa\0323i b\00F4\0323 lo\0323c h\01A1\0323p l\00EA\0323 \0111\00EA\0309 xa\0301c \0111i\0323nh b\00F4\0323 lo\0323c L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883216453028072)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng s\00F4\0301 kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030392468028115)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030400115028115)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021538008028112)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111\0103\0323t tu\0300y cho\0323n S\0103\0301p x\00EA\0301p theo tha\0300nh %0, nh\01B0ng ch\01B0a cho\0323n c\00F4\0323t na\0300o cho %0.')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018894880028112)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_is_js_message=>true
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013982855028110)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng \0111\01B0\01A1\0323c hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973436633028098)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'vi'
,p_message_text=>unistr('trong th\01A1\0300i gian qua')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973699524028098)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('trong th\01A1\0300i gian t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972577523028098)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng tr\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972470309028098)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('bi\0323 tr\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022398561028113)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Nha\0303n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014374486028110)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Nha\0303n')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018259899028111)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'vi'
,p_message_text=>unistr('Cu\00F4\0301i cu\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962727939028095)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962944297028095)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\01A1\0300 qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963416859028095)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00FAt qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962472220028095)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Tha\0301ng tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962560790028095)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\00E2\0300n tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962686430028095)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 nga\0300y qua')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962826159028095)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\01A1\0300 qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963544052028095)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ph\00FAt qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963337440028095)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tha\0301ng qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963258224028095)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tu\00E2\0300n qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962237198028095)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 n\0103m qua')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962390137028095)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('N\0103m ngoa\0301i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022581823028113)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\0103n chi\0309nh \00F4')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022625841028113)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'vi'
,p_message_text=>unistr('S\1EED d\1EE5ng nho\0301m cho')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973020714028098)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'vi'
,p_message_text=>unistr('nho\0309 h\01A1n')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973127315028098)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'vi'
,p_message_text=>unistr('nho\0309 h\01A1n ho\0103\0323c b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016410491028111)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\01B0\01A1\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016575737028111)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\01B0\01A1\0300ng co\0301 di\00EA\0323n ti\0301ch')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022955960028113)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'vi'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015191176028111)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00E2\0301p')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025465623028114)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n ta\0301ch nhi\00EA\0300u \0111i\0323a chi\0309 b\0103\0300ng d\00E2\0301u ph\00E2\0309y')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974285602028098)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\01A1\0301p v\01A1\0301i bi\00EA\0309u th\01B0\0301c chi\0301nh quy')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998680259028106)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0301i \0111a')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032907110028116)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0301i \0111a chung')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998830530028106)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung vi\0323')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033014824028116)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung vi\0323 chung')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998538835028106)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0301i thi\00EA\0309u')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974386232028098)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('phu\0301t')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999391009028106)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('Phu\0301t tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032818393028116)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0301i thi\00EA\0309u chung')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974776328028098)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('tha\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981346934028100)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('D\1EEF li\1EC7u ch\1EE9a h\01A1n %0 h\00E0ng, v\01B0\1EE3t qu\00E1 m\1EE9c t\1ED1i \0111a cho ph\00E9p. Ha\0303y \00E1p d\1EE5ng c\00E1c b\1ED9 l\1ECDc b\1ED5 sung \0111\1EC3 xem k\1EBFt qu\1EA3.')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007168664028108)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh Ma\0303 ti\0303nh cu\0309a vu\0300ng vi\0300 trang ch\01B0\0301a nhi\00EA\0300u L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977482690028099)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977670194028099)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o \0111\01B0\1EE3c \0111\1EB7t t\00EAn')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961692489028095)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961464490028095)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\01A1\0300 t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963671888028095)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00FAt t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961942608028095)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Tha\0301ng sau')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961801156028095)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\00E2\0300n sau')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961733578028095)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ng\00E0y t\1EDBi')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130961504546028095)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\01A1\0300 t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963799963028095)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ph\00FAt t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963008378028095)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tha\0301ng t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963199464028095)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tu\00E2\0300n t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962145868028095)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 n\0103m t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130962026901028095)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('N\0103m sau')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973335665028098)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng n\0103\0300m trong khoa\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972394312028098)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037157864028117)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Vu\0300ng co\0301 ma\0303 %0 kh\00F4ng pha\0309i la\0300 vu\0300ng L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c ho\0103\0323c kh\00F4ng t\00F4\0300n ta\0323i trong \01B0\0301ng du\0323ng %1.')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972746670028098)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng thu\00F4\0323c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973538031028098)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng di\00EA\0303n ra trong th\01A1\0300i gian qua')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130973734582028098)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng di\00EA\0303n ra trong th\01A1\0300i gian t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981217804028100)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y d\01B0\0303 li\00EA\0323u')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018022495028111)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 r\00F4\0303ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023172847028113)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0301')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018305395028111)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1EAFt')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018475749028111)
,p_name=>'APEX.IG.ON'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971514389028098)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('1 phu\0301t tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025934659028114)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 b\00F4\0323 cho\0323n ma\0300u: %0')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014865450028110)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978534622028100)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Toa\0301n t\01B0\0309')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014237743028110)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'vi'
,p_message_text=>unistr('H\01B0\01A1\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016661331028111)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\0300nh tro\0300n')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130979897150028100)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945089263028090)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025829471028114)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n ta\0301ch ca\0301c gia\0301 tri\0323 b\0103\0300ng "%0"')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016789418028111)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'vi'
,p_message_text=>unistr('C\01B0\0323c')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022043781028113)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\01B0\0303a')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131022156296028113)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'vi'
,p_message_text=>unistr('K\00EA\0301t thu\0301c')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021960865028113)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t \0111\00E2\0300u')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977732610028099)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0301nh')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978070037028099)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('M\0103\0323c \0111i\0323nh chi\0301nh')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994514644028105)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o chi\0301nh')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868140924028067)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'vi'
,p_message_text=>unistr('Bao g\1ED3m c\00E1c th\1EBB tr\1EE3 n\0103ng')
,p_is_js_message=>true
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865513078028066)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'vi'
,p_message_text=>'Ngang'
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865662238028066)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'vi'
,p_message_text=>unistr('Do\0323c')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865427520028066)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'vi'
,p_message_text=>unistr('H\01B0\1EDBng trang')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865314079028066)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'vi'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865206248028066)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'vi'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868333640028067)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F9y ch\1EC9nh')
,p_is_js_message=>true
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865016786028066)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0301p ly\0301')
,p_is_js_message=>true
,p_version_scn=>2693841
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864935474028066)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0')
,p_is_js_message=>true
,p_version_scn=>2693841
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865129567028066)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o kh\00F4\0309 nho\0309')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864869409028066)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ki\0301ch c\01A1\0303 trang')
,p_is_js_message=>true
,p_version_scn=>2693839
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830407723028056)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i bo\0309 v\0103n ba\0309n \0111a da\0323ng th\01B0\0301c')
,p_is_js_message=>true
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016803474028111)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'vi'
,p_message_text=>'Radar'
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131016924767028111)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0323m vi')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027162161028114)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00E0m m\1EDBi')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982079468028101)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('La\0300m m\01A1\0301i ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693883
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980815317028100)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('La\0300m m\01A1\0301i ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986043379028102)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Vu\0300ng l\01B0\01A1\0301i t\01B0\01A1ng ta\0301c kh\00F4ng t\00F4\0300n ta\0323i trong \01B0\0301ng du\0323ng %0, trang %1 va\0300 vu\0300ng %2.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946508487028090)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a %0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977161685028099)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036399601028117)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 x\00F3a b\00E1o c\00E1o')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036086203028117)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 l\01B0u ba\0301o ca\0301o thay th\00EA\0301 cho t\00E2\0301t ca\0309 ng\01B0\1EDDi d\00F9ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035995893028117)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 l\01B0u ba\0301o ca\0301o m\0103\0323c \0111i\0323nh cho t\00E2\0301t ca\0309 ng\01B0\1EDDi d\00F9ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036255095028117)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 l\01B0u ba\0301o ca\0301o ri\00EAng t\01B0')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036174599028117)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 l\01B0u ba\0301o ca\0301o c\00F4ng khai cho t\00E2\0301t ca\0309 ng\01B0\1EDDi d\00F9ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130986105048028102)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c \0111a\0303 l\01B0u v\01A1\0301i t\00EAn %0 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971482125028098)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('D\01B0\0303 li\00EA\0323u l\01B0\01A1\0301i k\00EA\0309 t\01B0\0300 %0 phu\0301t tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971305625028097)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('D\01B0\0303 li\00EA\0323u l\01B0\01A1\0301i k\00EA\0309 t\01B0\0300 1 phu\0301t tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906849797028079)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o l\01B0\01A1\0301i t\01B0\01A1ng ta\0301c kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029311397028115)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o - Chi\0309nh s\01B0\0309a')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985929132028102)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c \0111a\0303 l\01B0u v\01A1\0301i ma\0303 %0 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131029242781028115)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o - L\01B0u d\01B0\01A1\0301i da\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946670012028090)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t l\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037232979028117)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c \0111a\0303 l\01B0u v\01A1\0301i ma\0303 ti\0303nh %0 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032251075028116)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem ba\0301o ca\0301o')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130945785857028090)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982108240028101)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4i phu\0323c thay \0111\00F4\0309i')
,p_is_js_message=>true
,p_version_scn=>2693883
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980929614028100)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('Hoa\0300n nguy\00EAn ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978154258028099)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977042738028099)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng m\00F4\0303i trang')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036879247028117)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131038021854028117)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i ha\0300ng %0')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946094240028090)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991154450028104)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0111\00E3 l\01B0u')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895760990028075)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o \0111a\0303 l\01B0u: %0')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944205038028090)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o \0111a\0303 l\01B0u')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944307021028090)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('M\0103\0323c \0111i\0323nh')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917816226028082)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00F4\0323t ba\0301o ca\0301o \0111\01B0\01A1\0323c l\01B0u co\0301 t\00EAn %0 \0111a\0303 t\00F4\0300n ta\0323i. Ha\0303y nh\00E2\0323p t\00EAn m\01A1\0301i.')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944429680028090)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ri\00EAng t\01B0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944579967028090)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4ng khai')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031941540028115)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u d\01B0\01A1\0301i da\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980203793028100)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u ca\0300i \0111\0103\0323t ba\0301o ca\0301o')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017097978028111)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n ta\0301n')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944166791028090)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024213855028113)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m ki\00EA\0301m: T\00E2\0301t ca\0309 ca\0301c c\00F4\0323t v\0103n ba\0309n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130944045978028090)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m ki\00EA\0301m: %0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023589889028113)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m ki\00EA\0301m: V\0103n ba\0309n \0111\00E2\0300y \0111u\0309')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971273828028097)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m ki\00EA\0301m ''%0''')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013680870028110)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'vi'
,p_message_text=>unistr('- Cho\0323n -')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953748172028092)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\0323a cho\0323n')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006876246028108)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n 1 ha\0300ng trong vu\0300ng chi\0301nh')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943998888028090)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ca\0301c c\00F4\0323t c\00E2\0300n ti\0300m ki\00EA\0301m')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036583637028117)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00E0nh \0111\1ED9ng l\01B0\0323a ch\1ECDn')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953941558028092)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\0323a cho\0323n \00F4')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953897872028092)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\0323a cho\0323n ha\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024833796028113)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('G\01B0\0309i d\01B0\01A1\0301i da\0323ng email')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017455399028111)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Chu\1ED7i')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941659067028089)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996805043028105)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\1EC3n th\1ECB gi\00E1 tr\1ECB t\1ED5ng th\1EC3')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981741116028100)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem m\00F4\0323t h\00E0ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980053229028100)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017599877028111)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p theo')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036962446028117)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n chi\0309 co\0301 th\00EA\0309 xa\0301c \0111i\0323nh m\00F4\0323t ki\00EA\0309u s\0103\0301p x\00EA\0301p cho m\00F4\0303i c\00F4\0323t.')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036765998028117)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'vi'
,p_message_text=>unistr('Thay \0111\00F4\0309i')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131018541372028112)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\0103n x\00EA\0301p')
,p_is_js_message=>true
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974085607028098)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'vi'
,p_message_text=>unistr('b\0103\0301t \0111\00E2\0300u b\0103\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017186275028111)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0309 phi\00EA\0301u')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936413967028087)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('K\00E9o d\00E3n chi\1EC1u r\1ED9ng c\1ED9t')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130980486600028100)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103ng ky\0301')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130998493226028106)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131038253998028117)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i t\01B0\01A1ng ta\0301c. Ba\0301o ca\0301o: %0, Xem: %1.')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131032384005028116)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng chung')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015309220028111)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c ti\00EAu')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021770698028112)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0300u v\0103n ba\0309n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946715781028090)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t/t\0103\0301t')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828855353028055)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996742915028105)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'vi'
,p_message_text=>unistr('Chu\0301 gia\0309i c\00F4ng cu\0323')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130977287317028099)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130981630893028100)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'vi'
,p_message_text=>unistr('Bo\0309 \0111o\0301ng b\0103ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978722288028100)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\01A1n vi\0323')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024684863028113)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'vi'
,p_message_text=>unistr('Co\0301 nh\01B0\0303ng thay \0111\00F4\0309i ch\01B0a \0111\01B0\01A1\0323c l\01B0u. Ba\0323n co\0301 mu\00F4\0301n ti\00EA\0301p tu\0323c kh\00F4ng?')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130978677606028100)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014441860028110)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019306367028112)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t bu\00F4\0323c co\0301 m\00F4\0323t gia\0301 tri\0323.')
,p_is_js_message=>true
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004579912028107)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 (kh\00F4ng th\00EA\0309 thay \0111\00F4\0309i mu\0301i gi\01A1\0300)')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023214410028113)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'vi'
,p_message_text=>unistr('V\0103n ba\0309n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015704741028111)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'vi'
,p_message_text=>unistr('Do\0323c')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976781259028099)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'vi'
,p_message_text=>'Xem'
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911887583028080)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0\01A1\0301i \01A1\0309 ch\00EA\0301 \0111\00F4\0323 xem, ha\0303y nh\00E2\0301n \0111\00EA\0309 chi\0309nh s\01B0\0309a')
,p_is_js_message=>true
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013778380028110)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131015255051028111)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4\0301i l\01B0\01A1\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974606463028098)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('tu\00E2\0300n')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013847585028110)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\00EA\0300u r\00F4\0323ng c\00F4\0323t t\00F4\0301i thi\00EA\0309u (pixel)')
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965803023028096)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong khoa\0309ng t\01B0\0300 %1 \0111\00EA\0301n %2')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965508373028096)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ch\1EE9a %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965603353028096)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng ch\01B0\0301a %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941003987028089)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng b\0103\0301t \0111\00E2\0300u b\0103\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964362618028095)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 b\0103\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964521062028095)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 l\01A1\0301n h\01A1n %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964641804028096)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 l\01A1\0301n h\01A1n ho\0103\0323c b\0103\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965382210028096)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 n\0103\0300m trong %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966578424028096)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 nga\0300y qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966331844028096)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 gi\01A1\0300 qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966105742028096)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 phu\0301t qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966906680028096)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 tha\0301ng qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966718517028096)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 tu\00E2\0300n qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967130269028096)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 n\0103m qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966491445028096)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong nga\0300y qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966203992028096)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong gi\01A1\0300 qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966086611028096)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong phu\0301t qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966895384028096)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong tha\0301ng qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130966668047028096)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong tu\00E2\0300n qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967010162028096)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong n\0103m qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968959625028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 nga\0300y t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968709926028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 gi\01A1\0300 t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968506903028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 phu\0301t t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969370160028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 tha\0301ng t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969180868028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 tu\00E2\0300n t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969555808028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 n\0103m t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968879259028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong nga\0300y t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968612832028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong gi\01A1\0300 t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968437971028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong phu\0301t t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969236101028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong tha\0301ng t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969010693028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong tu\00E2\0300n t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969413530028097)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong n\0103m t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965016302028096)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng tr\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964947511028096)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 bi\0323 tr\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964778172028096)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 nho\0309 h\01A1n %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964832186028096)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 nho\0309 h\01A1n ho\0103\0323c b\0103\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965141827028096)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\00F4\0301ng %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965790273028096)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\01A1\0301p v\01A1\0301i bi\00EA\0309u th\01B0\0301c chi\0301nh quy %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971621724028098)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 phu\0301t tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965907803028096)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng n\0103\0300m trong khoa\0309ng t\01B0\0300 %1 \0111\00EA\0301n %2')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964460572028095)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng b\0103\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965467762028096)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng n\0103\0300m trong %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967707087028096)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 nga\0300y qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967545888028096)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 gi\01A1\0300 qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967307250028096)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 phu\0301t qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968115231028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 tha\0301ng qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967923397028096)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 tu\00E2\0300n qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968374930028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 n\0103m qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967672050028096)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong nga\0300y qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967464446028096)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong gi\01A1\0300 qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967203712028096)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong phu\0301t qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968044208028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong tha\0301ng qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130967863191028096)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong tu\00E2\0300n qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130968221224028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong n\0103m qua')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970144263028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 nga\0300y t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969917730028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 gi\01A1\0300 t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969771950028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 phu\0301t t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970576988028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 tha\0301ng t\01A1\0301i ')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970362467028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 tu\00E2\0300n t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970712364028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 n\0103m t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970020694028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong nga\0300y t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969822801028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong gi\01A1\0300 t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130969606510028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong phu\0301t t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970498224028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong tha\0301ng t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970274302028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong tu\00E2\0300n t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970653805028097)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong n\0103m t\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130965279248028096)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng gi\00F4\0301ng %1')
,p_is_js_message=>true
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972107605028098)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 b\0103\0301t \0111\00E2\0300u b\0103\0300ng %1')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014541739028110)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'vi'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974844644028098)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('n\0103m')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014647205028110)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'vi'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014770008028110)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'vi'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023726650028113)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 Hai, nga\0300y 12 tha\0301ng 1 n\0103m 2016')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023888713028113)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'vi'
,p_message_text=>unistr('Tha\0301ng 1')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131023990453028113)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'vi'
,p_message_text=>unistr('16 gi\01A1\0300 tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131024089028028113)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'vi'
,p_message_text=>unistr('trong 16 gi\1EDD')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842058791028059)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C1p du\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834031153028057)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E9o h\00ECnh \1EA3nh c\1EE7a b\1EA1n v\00E0 s\1EED d\1EE5ng thanh tr\01B0\1EE3t thu ph\00F3ng \0111\1EC3 \0111\0103\0323t la\0323i v\1ECB tri\0301 h\00ECnh \1EA3nh \0111\00F3 trong khung.</p>'),
'',
unistr('<p>Khi t\1EADp trung v\00E0o tr\00ECnh c\1EAFt hi\0300nh \1EA3nh, ba\0323n co\0301 th\00EA\0309 s\01B0\0309 du\0323ng c\00E1c ph\00EDm t\0103\0301t sau \0111\00E2y:</p>'),
'<ul>',
unistr('     <li>M\0169i t\00EAn tr\00E1i: Di chuy\1EC3n h\00ECnh \1EA3nh sang tr\00E1i*</li>'),
unistr('     <li>M\0169i t\00EAn l\00EAn: Di chuy\1EC3n h\00ECnh \1EA3nh l\00EAn tr\00EAn*</li>'),
unistr('     <li>M\0169i t\00EAn ph\1EA3i: Di chuy\1EC3n h\00ECnh \1EA3nh sang ph\1EA3i*</li>'),
unistr('     <li>M\0169i t\00EAn xu\1ED1ng: Di chuy\1EC3n h\00ECnh \1EA3nh xu\1ED1ng d\01B0\01A1\0301i*</li>'),
unistr('     <li>I: Ph\00F3ng to</li>'),
unistr('     <li>O: Thu nh\1ECF</li>'),
unistr('     <li>L: Xoay tr\00E1i</li>'),
unistr('     <li>R: Xoay ph\1EA3i</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Gi\1EEF phi\0301m Shift \0111\1EC3 di chuy\1EC3n nhanh h\01A1n</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834245622028057)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p c\0103\0301t hi\0300nh a\0309nh')
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842173457028059)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834565450028057)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('C\0103\0301t hi\0300nh a\0309nh')
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842297511028059)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\1EC3n thanh tr\01B0\1EE3t \0111\1EC3 \0111i\1EC1u ch\1EC9nh m\1EE9c thu ph\00F3ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871812641028068)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i t\00E2\0323p tin kh\00F4ng h\01A1\0323p l\00EA\0323. Ca\0301c loa\0323i t\00E2\0323p tin \0111\01B0\01A1\0323c h\00F4\0303 tr\01A1\0323 %0.')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006221875028108)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'vi'
,p_message_text=>unistr('Duy\00EA\0323t')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005903841028108)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n t\00E2\0323p tin')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006025330028108)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n t\00E2\0323p tin')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871614129028068)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ke\0301o va\0300 tha\0309')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872074016028068)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'vi'
,p_message_text=>unistr('Ke\0301o va\0300 tha\0309 ca\0301c t\00E2\0323p tin')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873418047028069)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n t\00E2\0323p tin ho\0103\0323c tha\0309 m\00F4\0323t t\00E2\0323p tin va\0300o \0111\00E2y.')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873528527028069)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ho\0103\0323c tha\0309 ca\0301c t\00E2\0323p tin va\0300o \0111\00E2y.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873614328028069)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n t\00E2\0323p tin ho\0103\0323c tha\0309 m\00F4\0323t t\00E2\0323p tin va\0300o \0111\00E2y.')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873775857028069)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ho\0103\0323c tha\0309 ca\0301c t\00E2\0323p tin va\0300o \0111\00E2y.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871956407028068)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 t\00E2\0323p tin')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871778604028068)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1EADp tin qu\00E1 l\1EDBn. K\00EDch c\01A1\0303 t\00E2\0323p tin t\1ED1i \0111a l\00E0 %0.')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852242061028062)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 ta\0309i l\00EAn nhi\00EA\0300u t\00E2\0323p tin.')
,p_is_js_message=>true
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835185094028057)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840634709028059)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t bu\00F4\0323c co\0301 \0111i\0323a chi\0309.')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839554046028058)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00E0nh ph\1ED1')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839906971028059)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 qu\00F4\0301c gia')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839682331028058)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'vi'
,p_message_text=>unistr('S\1ED1 nh\00E0')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840524092028059)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'vi'
,p_message_text=>unistr('V\0129 \0111\1ED9')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840493424028059)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kinh \0111\1ED9')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840332595028059)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 tr\00EAn ba\0309n \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840082618028059)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\00EA\0309m')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839773552028058)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 b\01B0u chi\0301nh')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839810810028058)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0309u bang')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839415951028058)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\01B0\01A1\0300ng')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839345471028058)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('K\1EBFt qu\1EA3 m\00E3 h\00F3a \0111\1ECBa l\00FD')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870861970028068)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\01B0\01A1\0323c m\00E3 h\00F3a \0111\1ECBa l\00FD')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870954520028068)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng \0111\01B0\01A1\0323c m\00E3 h\00F3a \0111\1ECBa l\00FD')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840291715028059)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0309n \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840156875028059)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y \0111i\0323a chi\0309.')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840705286028059)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t bu\00F4\0323c co\0301 %0.')
,p_is_js_message=>true
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130946949455028090)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t bu\00F4\0323c co\0301 %0 ho\0103\0323c %1.')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036499686028117)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem v\0103n ba\0309n tr\01A1\0323 giu\0301p cho %0.')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842421515028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n hi\0300nh a\0309nh')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842549002028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n hi\0300nh a\0309nh')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842337346028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i xu\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842623372028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ke\0301o va\0300 tha\0309')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842749168028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'vi'
,p_message_text=>unistr('Ke\0301o va\0300 tha\0309 hi\0300nh a\0309nh')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842814723028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n hi\0300nh a\0309nh ho\0103\0323c tha\0309 m\00F4\0323t hi\0300nh a\0309nh va\0300o \0111\00E2y.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130842911936028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ho\0103\0323c tha\0309 ca\0301c hi\0300nh a\0309nh va\0300o \0111\00E2y.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843065602028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n hi\0300nh a\0309nh ho\0103\0323c tha\0309 m\00F4\0323t hi\0300nh a\0309nh va\0300o \0111\00E2y.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843197223028059)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ho\0103\0323c tha\0309 ca\0301c hi\0300nh a\0309nh va\0300o \0111\00E2y.')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927869822028085)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cho\0323n')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927967684028085)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 bo\0309 cho\0323n')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955453400028093)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4\0323p t\00F4\0309 h\01A1\0323p chi\0309 \0111o\0323c bi\0323 tr\00F4\0301ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953278344028092)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4\0323p danh sa\0301ch chi\0309 \0111o\0323c bi\0323 tr\00F4\0301ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953087624028092)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4\0323p t\00F4\0309 h\01A1\0323p chi\0309 \0111o\0323c')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130953167461028092)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4\0323p danh sa\0301ch chi\0309 \0111o\0323c')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868886233028067)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# kh\00F4ng thu\00F4\0323c ph\1EA1m vi h\1EE3p l\1EC7 t\1EEB %0 \0111\1EBFn %1.')
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868937650028067)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# kh\00F4ng ph\1EA3i l\00E0 b\1ED9i s\1ED1 c\1EE7a %0.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956255734028093)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'vi'
,p_message_text=>unistr('Chuy\00EA\0309n \0111\00F4\0309i ch\00EA\0301 \0111\00F4\0323 chi\0309 \0111o\0323c')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896827894028076)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c kh\00F4ng th\00EA\0309 chi\0309nh s\01B0\0309a co\0301 li\00EAn k\00EA\0301t')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868418548028067)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i kh\01A1\0301p v\01A1\0301i ca\0301c gia\0301 tri\0323 %0 va\0300 %1.')
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868642283028067)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng')
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954939600028093)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1EAFt')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955030287028093)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868512727028067)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Co\0301')
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876472569028070)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 cho\0323n ng\00F4n ng\01B0\0303')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130812890956028051)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm mu\0323c nh\00E2\0323p')
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989622549028103)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989726500028103)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130812957716028051)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c nh\00E2\0323p \0111a\0303 cho\0323n')
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993416565028104)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'vi'
,p_message_text=>unistr('N\00E2ng cao')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993715327028104)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Hu\0309y')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993554667028104)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng th\01B0\01A1\0300ng')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993807753028104)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\0300y cho\0323n m\00E2\0303u tr\01B0\0323c ti\00EA\0301p')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994482630028104)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0301c t\00F9y ch\1ECDn m\1EABu kh\00F4ng s\1EB5n co\0301 v\00EC th\00E0nh ph\1EA7n n\00E0y kh\00F4ng \0111\01B0\1EE3c hi\1EC3n th\1ECB tr\00EAn trang.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993362660028104)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y tu\0300y cho\0323n m\00E2\0303u.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993633417028104)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847401169028061)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a hi\0300nh tro\0300n')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849881156028061)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'vi'
,p_message_text=>unistr('Ki\1EC3u t\00F9y ch\1EC9nh kh\00F4ng ph\1EA3i l\00E0 JSON h\1EE3p l\1EC7.')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847783118028061)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4ng c\1EE5 kho\1EA3ng c\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847562758028061)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ve\0303 hi\0300nh tro\0300n')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827341751028055)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323a \0111i\00EA\0309m hi\00EA\0323n ta\0323i')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833713835028057)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E1c t\1ECDa \0111\1ED9 c\1EE7a v\1ECB tr\00ED ban \0111\1EA7u kh\00F4ng h\1EE3p l\1EC7.')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822781064028053)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('V\1ECB tr\00ED ban \0111\1EA7u ph\1EA3i l\00E0 h\00ECnh h\1ECDc \0111i\1EC3m.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831326370028056)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'vi'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826574895028055)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01A1\0301p')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996928952028105)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01A1\0301p: %0')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845753770028060)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0309n \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815437366028051)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng b\00E1o')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831514110028056)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'vi'
,p_message_text=>unistr('d\0103\0323m')
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995979704028105)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('D\1EEF li\1EC7u ch\1EE9a h\01A1n %0 h\00E0ng, v\01B0\1EE3t qu\00E1 m\1EE9c t\1ED1i \0111a cho ph\00E9p.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825866017028054)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">\0110i\00EA\0300u khoa\0309n</a> &nbsp;&nbsp; D\01B0\0303 li\00EA\0323u ba\0309n \0111\00F4\0300 &copy; 2021 HERE')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822460616028053)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng du\0300ng \0111\01B0\01A1\0323c lo\1EA1i d\1EEF li\1EC7u SDO_GEOMETRY trong c\01A1 s\01A1\0309 d\01B0\0303 li\00EA\0323u n\00E0y.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825979416028054)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; C\00F4\0323ng ta\0301c vi\00EAn OpenStreetMap </a>')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850509632028062)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; C\00F4\0323ng ta\0301c vi\00EAn OpenStreetMap </a>')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826764216028055)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\00EA\0309m')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997072061028105)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 \0111i\00EA\0309m')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847658955028061)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'vi'
,p_message_text=>unistr('Thu ph\00F3ng h\00ECnh ch\1EEF nh\1EADt')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847310197028061)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827144488028055)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i Ph\01B0\01A1ng vi\0323 la\0300 B\0103\0301c')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941981767028089)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'vi'
,p_message_text=>unistr('Chuy\00EA\0309n sang ch\00EA\0301 \0111\00F4\0323 2D')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942018480028089)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'vi'
,p_message_text=>unistr('Chuy\00EA\0309n sang ch\00EA\0301 \0111\00F4\0323 3D')
,p_is_js_message=>true
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847213494028061)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t/t\0103\0301t th\00F4ng ba\0301o ba\0309n quy\00EA\0300n')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847850366028061)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng khoa\0309ng ca\0301ch')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826878253028055)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'vi'
,p_message_text=>unistr('Pho\0301ng to')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827082385028055)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'vi'
,p_message_text=>unistr('Thu nho\0309')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991507439028104)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E2\0323m')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992486383028104)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00ECnh \1EA3nh')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992033203028104)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E3 n\1ED9i tuy\1EBFn')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004799064028108)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Che\0300n hi\0300nh a\0309nh')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004877531028108)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'vi'
,p_message_text=>unistr('Che\0300n li\00EAn k\00EA\0301t')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991689360028104)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'vi'
,p_message_text=>unistr('Nghi\00EAng')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005430016028108)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'vi'
,p_message_text=>unistr('Li\00EAn k\1EBFt')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992372624028104)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992279679028104)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh s\00E1ch c\00F3 th\1EE9 t\1EF1')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991733416028104)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991876299028104)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng c\00F3 g\00EC \0111\1EC3 xem tr\01B0\1EDBc')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991981771028104)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'vi'
,p_message_text=>unistr('Ga\0323ch ngang ch\01B0\0303')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992110545028104)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh s\00E1ch kh\00F4ng c\00F3 th\1EE9 t\1EF1')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971060640028097)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'vi'
,p_message_text=>unistr('hi\00EA\0323n ta\0323i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131027273481028114)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00E1c...')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130970921045028097)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110ang ta\0309i')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885193770028072)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'vi'
,p_message_text=>unistr('Nu\0301t chia ta\0301ch')
,p_is_js_message=>true
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885009784028072)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh \0111\01A1n chia ta\0301ch')
,p_is_js_message=>true
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002025971028107)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0 th\00F4ng ba\0301o')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826110564028054)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng t\00ECm th\1EA5y %0')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976051877028099)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i la\0300 s\00F4\0301 nho\0309 h\01A1n ho\0103\0323c b\0103\0300ng %0.')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976188637028099)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i la\0300 m\00F4\0323t s\00F4\0301 h\01A1\0323p l\00EA\0323.')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976265757028099)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# kh\00F4ng kh\01A1\0301p v\01A1\0301i \0111i\0323nh da\0323ng s\00F4\0301 %0 (Vi\0301 du\0323: %1).')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975987525028099)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i la\0300 s\00F4\0301 l\01A1\0301n h\01A1n ho\0103\0323c b\0103\0300ng %0.')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975805154028099)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i la\0300 s\00F4\0301 n\0103\0300m trong khoa\0309ng t\01B0\0300 %0 \0111\00EA\0301n %1.')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971122375028097)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'vi'
,p_message_text=>unistr('m\01A1\0309 trong c\01B0\0309a s\00F4\0309 m\01A1\0301i')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920937449028083)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'vi'
,p_message_text=>unistr('Trang n\00E0y \0111\00E3 \0111\01B0\1EE3c g\1EEDi v\00E0 kh\00F4ng th\1EC3 g\1EEDi l\1EA1i.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902374996028077)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y \01B0\0301ng du\0323ng "%0" trang "%1".')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937845751028088)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('#LABEL# pha\0309i co\0301 gia\0301 tri\0323 na\0300o \0111o\0301.')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828542372028055)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C2\0309n m\00E2\0323t kh\00E2\0309u')
,p_is_js_message=>true
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828411007028055)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 m\00E2\0323t kh\00E2\0309u')
,p_is_js_message=>true
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876018644028069)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990089100028103)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110o\0301ng')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989976009028103)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m%0')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990262162028103)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0301p theo')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990176573028103)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\01A1\0301c')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866825860028067)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'vi'
,p_message_text=>unistr('Nh\00E2\0323p m\00F4\0323t cu\0323m t\01B0\0300 ti\0300m ki\00EA\0301m ch\01B0\0301a i\0301t nh\00E2\0301t %0 ky\0301 t\01B0\0323.')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943157291028089)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh s\00E1ch gi\00E1 tr\1ECB b\1EADt l\00EAn: %0')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866948202028067)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'vi'
,p_message_text=>unistr('Nh\00E2\0323p cu\0323m t\01B0\0300 ti\0300m ki\00EA\0301m.')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813953323028051)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch gia\0301 tri\0323')
,p_is_js_message=>true
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866791213028067)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng t\00ECm th\1EA5y k\1EBFt qu\1EA3.')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866679683028067)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a %0')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963888844028095)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'vi'
,p_message_text=>unistr('Cu\0323m t\01B0\0300 ti\0300m ki\00EA\0301m')
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989855746028103)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816088573028051)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u %0.')
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828394832028055)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i trong khi in b\00E1o c\00E1o.')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130839144148028058)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 tin ta\0300i li\00EA\0323u b\0103\0300ng ma\0301y chu\0309 in \0111a\0303 \0111i\0323nh c\00E2\0301u hi\0300nh.')
,p_version_scn=>2693815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861880440028065)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i trong qua\0301 tri\0300nh \0111\00E1nh gi\00E1 tham s\1ED1 %0 khi g\1ECDi %1. Ha\0303y xem ba\0309n ghi l\1ED7i \0111\1EC3 bi\1EBFt chi ti\1EBFt.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000538898028106)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110ang x\1EED l\00FD')
,p_is_js_message=>true
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859671370028064)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Quay la\0323i')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860778074028065)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'vi'
,p_message_text=>unistr('Trang web n\00E0y c\00F3 ch\1EE9c n\0103ng \1EE9ng d\1EE5ng. H\00E3y c\00E0i \0111\1EB7t \01B0\0301ng du\0323ng \0111\00F3 tr\00EAn thi\1EBFt b\1ECB c\1EE7a b\1EA1n \0111\1EC3 c\00F3 tr\1EA3i nghi\1EC7m t\1ED1t nh\1EA5t.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862094715028065)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\1EBFp theo')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863692829028066)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t \01B0\0301ng du\0323ng na\0300y')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848443999028061)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F3 v\1EBB nh\01B0 thi\1EBFt b\1ECB ho\1EB7c tr\00ECnh duy\1EC7t c\1EE7a b\1EA1n hi\1EC7n kh\00F4ng h\1ED7 tr\1EE3 c\00E0i \0111\1EB7t \1EE8ng d\1EE5ng web l\0169y ti\1EBFn.')
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843539028028060)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'vi'
,p_message_text=>unistr('1. Nh\00E2\0301n va\0300o bi\00EA\0309u t\01B0\01A1\0323ng <strong>Chia se\0309</strong>')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843622469028060)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'vi'
,p_message_text=>unistr('2. Cu\00F4\0323n xu\00F4\0301ng va\0300 nh\00E2\0301n va\0300o <strong>Th\00EAm va\0300o ma\0300n hi\0300nh chi\0301nh</strong>')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860092000028065)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'vi'
,p_message_text=>unistr('3. Nh\00E2\0301n va\0300o <strong style="color:#007AE1;">Th\00EAm</strong> \0111\00EA\0309 xa\0301c nh\00E2\0323n')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859175178028064)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'vi'
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
unistr('    <h1>Kh\00F4ng th\00EA\0309 k\00EA\0301t n\00F4\0301i</h1>'),
unistr('    <p>C\00F3 v\1EBB nh\01B0 c\00F3 s\1EF1 c\1ED1 m\1EA1ng. H\00E3y ki\1EC3m tra k\1EBFt n\1ED1i c\1EE7a b\1EA1n r\00F4\0300i th\1EED l\1EA1i.</p>'),
unistr('    <button type="button">Th\01B0\0309 la\0323i</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859024962028064)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 k\00EA\0301t n\00F4\0301i')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905639515028078)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Thi\00EA\0301t bi\0323 na\0300y kh\00F4ng ki\0301ch hoa\0323t \0111\01B0\01A1\0323c th\00F4ng ba\0301o \0111\00E2\0309y.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911145877028080)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c ch\1ECDn nhanh cho %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911073354028080)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Li\00EAn k\00EA\0301t cho\0323n nhanh')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130884894848028072)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'vi'
,p_message_text=>unistr('Nu\0301t radio kh\00F4ng hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828990094028055)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem m\00F4\0323t h\00E0ng')
,p_is_js_message=>true
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011630035028110)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956960998028093)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0309 nga\0300y')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034526094028116)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('G\1EEDi l\1EDDi m\1EDDi')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034383110028116)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\0300y cho\0323n')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958791387028094)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem h\00E0ng nga\0300y cho ca\0309 nga\0300y ')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958584022028094)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem h\00E0ng nga\0300y cho d\1EEF li\1EC7u co\0301 th\1EDDi gian ')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002796789028107)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\00E0y')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997779307028105)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00F4 ta\0309')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881225927028071)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'vi'
,p_message_text=>'CSV'
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881019968028071)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'vi'
,p_message_text=>'iCal'
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880968442028071)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'vi'
,p_message_text=>'PDF'
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130881101976028071)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'vi'
,p_message_text=>'XML'
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880619319028071)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y k\00EA\0301t thu\0301c')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880892621028071)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn s\01B0\0323 ki\00EA\0323n')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034445823028116)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01A1\0300i m\01A1\0300i')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002804715028107)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002586352028107)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00E1ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005152242028108)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0301p theo')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019194397028112)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng co\0301 s\01B0\0323 ki\00EA\0323n')
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034711803028116)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a s\01B0\0323 ki\00EA\0323n hi\00EA\0323n co\0301.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034610717028116)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'vi'
,p_message_text=>unistr('G\01B0\0309i l\01A1\0300i m\01A1\0300i qua email.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005248902028108)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\01A1\0301c')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012968990028110)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('G\01B0\0309i email')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012729676028110)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'vi'
,p_message_text=>unistr('G\01B0\0309i email')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035321390028117)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Mo\0323i tr\01B0\01A1\0300ng \0111\00EA\0300u b\0103\0301t bu\00F4\0323c.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035277896028116)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('G\1EEDi l\1EDDi m\1EDDi')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034232763028116)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012894052028110)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301n')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880765707028071)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y b\0103\0301t \0111\00E2\0300u')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010904388028109)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\1EC3u m\1EABu tr\00EAn %0')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958337083028094)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01A1\0300i gian')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005387642028108)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4m nay')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003315399028107)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'vi'
,p_message_text=>'Xem'
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002619248028107)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\1EA7n')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958671404028094)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem h\00E0ng tu\1EA7n cho ca\0309 nga\0300y')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958402649028094)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem h\00E0ng tu\1EA7n cho d\1EEF li\1EC7u co\0301 th\1EDDi gian')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003205614028107)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('N\0103m')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002933964028107)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1ED9t...')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003080206028107)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i th\00EAm...')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932487957028086)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'vi'
,p_message_text=>unistr('Quay la\0323i')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873993085028069)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i th\00EAm...')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876255600028069)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm...')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003169517028107)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i th\00EAm...')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005049586028108)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ma\0303 vu\0300ng %0.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876135122028069)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y d\01B0\0303 li\00EA\0323u')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903654380028078)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 \0111\1EB7t l\1EA1i ph\00E2n trang cho vu\0300ng.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867395609028067)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi thi\1EBFt l\1EADp ph\00E2n trang cho vu\0300ng.')
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997114550028105)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1ED9t...')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851615242028062)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0301nh n\0103ng ta\0309i khi c\00E2\0300n kh\00F4ng t\01B0\01A1ng thi\0301ch v\01A1\0301i ca\0301c vi\0323 tri\0301 trong %0, la\0300 vu\0300ng duy nh\00E2\0301t (m\00F4\0323t ph\00E2\0300n). Ba\0323n n\00EAn v\00F4 hi\00EA\0323u ho\0301a ti\0301nh n\0103ng ta\0309i khi c\00E2\0300n cho vu\0300ng na\0300y ho\0103\0323c di chuy\00EA\0309n ca\0301c tha\0300nh ph\00E2\0300n vi\0323 tri\0301 sang m\00F4\0323t vu\0300ng kha\0301c.')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846907957028061)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Thi\00EA\0301u m\00E2\0303u nho\0301m trong tha\0300nh ph\00E2\0300n m\00E2\0303u cho %0.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841998592028059)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 l\00E0 m\1ED9t v\00F9ng \0111\01A1n le\0309 (m\1ED9t ph\1EA7n) v\00E0 \0111a\0303 tr\1EA3 v\1EC1 nhi\1EC1u h\00E0ng.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004999455028108)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 loa\0323i vu\0300ng %0.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867216791028067)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi hi\1EC3n th\1ECB vu\0300ng "#COMPONENT_NAME#".')
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937914942028088)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('#COLUMN_HEADER# pha\0309i co\0301 gia\0301 tri\0323 na\0300o \0111o\0301.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819518799028052)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n pha\0309i chi\0309 \0111i\0323nh b\00F4\0301 cu\0323c ba\0301o ca\0301o.')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033868020028116)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('%0, tri\0300nh soa\0323n tha\0309o v\0103n ba\0309n \0111a da\0323ng th\01B0\0301c')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940063842028088)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2\0300n \0111\00E1nh d\1EA5u HTML v\0103n b\1EA3n \0111a d\1EA1ng th\1EE9c v\01B0\1EE3t qu\00E1 \0111\1ED9 d\00E0i t\1ED1i \0111a c\1EE7a m\1EE5c (th\1EF1c t\1EBF la\0300 %0, \0111\01B0\01A1\0323c ph\00E9p co\0301 %1 k\00FD t\1EF1)')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849432357028061)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\00ECnh so\1EA1n th\1EA3o v\0103n b\1EA3n \0111a d\1EA1ng th\1EE9c \01A1\0309 ch\00EA\0301 \0111\00F4\0323 ch\1EC9 \0111\1ECDc')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849394286028061)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh soa\0323n tha\0309o v\0103n ba\0309n \0111a da\0323ng th\01B0\0301c')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849119133028061)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'vi'
,p_message_text=>unistr('C\0103n chi\0309nh')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849276840028061)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0309 sung')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848951785028061)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00F4ng ch\01B0\0303')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848877866028061)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1ECBnh d\1EA1ng')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849058653028061)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch')
,p_is_js_message=>true
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002123375028107)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994609877028105)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Sao che\0301p')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992942129028104)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t \0111a\0303 hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992892816028104)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng bao g\00F4\0300m gia\0301 tri\0323 r\00F4\0303ng')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131002277359028107)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm')
,p_is_js_message=>true
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956523557028093)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\1EC3n xu\1ED1ng')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956615491028093)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\1EC3n l\00EAn')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992671547028104)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0301p theo')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993232524028104)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t kha\0301c')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992793669028104)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993055493028104)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00E0ng %0')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993147639028104)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng %0/%1')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994778093028105)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00E0m m\1EDBi')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994820359028105)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4i phu\0323c thay \0111\00F4\0309i')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130992514933028104)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E0i \0111\1EB7t')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951770589028092)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi\0301 du\0323: %0')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956068370028093)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi\0301 du\0323: %0')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868783209028067)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('1 k\00EA\0301t qua\0309')
,p_is_js_message=>true
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865811256028066)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 k\00EA\0301t qua\0309')
,p_is_js_message=>true
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917631507028082)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n trang')
,p_is_js_message=>true
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917759226028082)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'vi'
,p_message_text=>unistr('K\00EA\0301t qua\0309, %0 \0111\00EA\0301n %1')
,p_is_js_message=>true
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813431720028051)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103ng nh\00E2\0323p la\0323i')
,p_is_js_message=>true
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813362260028051)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Phi\00EAn cu\0309a ba\0323n \0111a\0303 k\00EA\0301t thu\0301c')
,p_is_js_message=>true
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813522906028051)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia ha\0323n')
,p_is_js_message=>true
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813192377028051)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'vi'
,p_message_text=>unistr('Phi\00EAn cu\0309a ba\0323n se\0303 k\00EA\0301t thu\0301c lu\0301c %0. Ba\0323n co\0301 mu\00F4\0301n gia ha\0323n phi\00EAn \0111o\0301 kh\00F4ng?')
,p_is_js_message=>true
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813293096028051)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'vi'
,p_message_text=>unistr('Phi\00EAn c\1EE7a b\1EA1n s\1EBD k\1EBFt th\00FAc l\00FAc %0 v\00E0 kh\00F4ng th\1EC3 gia h\1EA1n. H\00E3y l\01B0u ngay m\1ECDi c\00F4ng vi\1EC7c \0111\1EC3 tr\00E1nh m\1EA5t d\1EEF li\1EC7u')
,p_is_js_message=>true
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012575204028110)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 ma\0303 do\0323n de\0323p phi\00EAn c\01A1 s\01A1\0309 d\01B0\0303 li\00EA\0323u.')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902272689028077)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 ma\0303 thi\00EA\0301t l\00E2\0323p phi\00EAn c\01A1 s\01A1\0309 d\01B0\0303 li\00EA\0323u.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872682526028068)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Phi\00EAn cu\0309a ba\0323n \0111a\0303 k\00EA\0301t thu\0301c.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011774205028110)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y \0111\00F3ng h\1ED9p tho\1EA1i n\00E0y v\00E0 nh\1EA5n n\00FAt t\1EA3i l\1EA1i tr\00EAn tr\00ECnh duy\1EC7t c\1EE7a b\1EA1n \0111\1EC3 nh\00E2\0323n \0111\01B0\01A1\0323c phi\00EAn m\1EDBi.')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030679916028115)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('<a href="%0">\0110\0103ng nh\00E2\0323p</a> la\0323i \0111\00EA\0309 ta\0323o m\00F4\0323t phi\00EAn m\01A1\0301i.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914969215028081)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'vi'
,p_message_text=>unistr('Phi\00EAn kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958072257028094)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 ki\0301ch hoa\0323t Vai tr\00F2 \0111\1ED9ng trong phi\00EAn B\1EA3o m\1EADt \1EE9ng d\1EE5ng th\1EF1c cho ng\01B0\1EDDi d\00F9ng "%0".')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900102231028077)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-99900 Kh\00F4ng th\00EA\0309 ta\0323o ma\0303 phi\00EAn duy nh\00E2\0301t: %0')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829254231028055)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i d\1EEF li\1EC7u tr\1EA1ng th\00E1i phi\00EAn CLOB kh\00F4ng \0111\01B0\1EE3c ph\00E9p \0111\00F4\0301i v\01A1\0301i m\1EE5c %0.')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848675165028061)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 thay th\1EBF c\00E1c m\1EE5c c\1EE7a loa\0323i d\1EEF li\1EC7u tr\1EA1ng th\00E1i phi\00EAn CLOB.')
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917452861028082)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi ph\1EA1m ti\0301nh n\0103ng b\1EA3o v\1EC7 tr\1EA1ng th\00E1i phi\00EAn: Nguy\00EAn nh\00E2n c\00F3 th\1EC3 la\0300 do thay \0111\1ED5i th\1EE7 c\00F4ng m\1EE5c trang \0111\01B0\1EE3c b\1EA3o v\1EC7 %0. N\1EBFu b\1EA1n kh\00F4ng bi\00EA\0301t ch\1EAFc nguy\00EAn nh\00E2n g\00E2y ra l\1ED7i n\00E0y, ha\0303y li\00EAn h\1EC7 ng\01B0\01A1\0300i qu\1EA3n tr\1ECB \1EE9ng d\1EE5ng \0111\1EC3 \0111\01B0\1EE3c h\1ED7 tr\1EE3.')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131038633559028118)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi ph\1EA1m ti\0301nh n\0103ng b\1EA3o v\1EC7 trang: Nguy\00EAn nh\00E2n c\00F3 th\1EC3 la\0300 do g\1EEDi m\1ED9t trang ch\01B0a t\1EA3i xong ho\1EB7c do thay \0111\1ED5i th\1EE7 c\00F4ng c\00E1c m\1EE5c trang \0111\01B0\1EE3c b\1EA3o v\1EC7. \0110\1EC3 \0111\01B0\1EE3c h\1ED7 tr\1EE3 th\00EAm, ha\0303y li\00EAn h\1EC7 ng\01B0\01A1\0300i qu\1EA3n tr\1ECB \1EE9ng d\1EE5ng.')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037730076028117)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ch\01B0\0301a m\00F4\0323t trong s\00F4\0301 ca\0301c ky\0301 t\01B0\0323 kh\00F4ng h\01A1\0323p l\00EA\0323 sau \0111\00E2y &<>"/;,*|=% ho\0103\0323c --')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037843484028117)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ch\01B0\0301a m\00F4\0323t trong s\00F4\0301 ca\0301c ky\0301 t\01B0\0323 kh\00F4ng h\01A1\0323p l\00EA\0323 sau \0111\00E2y &<>"/;,*|=% ho\0103\0323c -- ho\0103\0323c do\0300ng m\01A1\0301i.')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037528142028117)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ch\01B0\0301a ky\0301 t\01B0\0323 \0111\0103\0323c bi\00EA\0323t. Chi\0309 cho phe\0301p ca\0301c ky\0301 t\01B0\0323 a-Z, 0-9 va\0300 d\00E2\0301u ca\0301ch.')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037688348028117)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ch\01B0\0301a <, > ho\0103\0323c " la\0300 ca\0301c ky\0301 t\01B0\0323 kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875017600028069)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng c\00F3 gia\0301 tri\0323 t\1ED5ng ki\1EC3m n\00E0o \0111\01B0\1EE3c cung c\1EA5p \0111\1EC3 hi\1EC3n th\1ECB qu\00E1 tr\00ECnh x\1EED l\00FD cho m\1ED9t trang y\00EAu c\1EA7u gia\0301 tri\0323 t\1ED5ng ki\1EC3m khi m\1ED9t ho\1EB7c nhi\1EC1u gi\00E1 tr\1ECB y\00EAu c\1EA7u, x\00F3a b\1ED9 nh\1EDB \0111\1EC7m ho\1EB7c \0111\1ED1i s\1ED1 \0111\01B0\1EE3c chuy\1EC3n d\01B0\1EDBi d\1EA1ng tham s\1ED1.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912319695028080)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi ph\1EA1m ti\0301nh n\0103ng b\1EA3o v\1EC7 tr\1EA1ng th\00E1i phi\00EAn: Nguy\00EAn nh\00E2n c\00F3 th\1EC3 la\0300 do thay \0111\1ED5i th\1EE7 c\00F4ng m\00F4\0323t URL co\0301 ch\01B0\0301a gia\0301 tri\0323 t\00F4\0309ng ki\00EA\0309m ho\0103\0323c do s\01B0\0309 du\0323ng li\00EAn k\00EA\0301t co\0301 gia\0301 tri\0323 t\00F4\0309ng ki\00EA\0309m kh\00F4ng chi\0301nh xa\0301c ho\0103\0323c bi\0323 thi\00EA\0301u. N\1EBFu b\1EA1n kh\00F4ng bi\00EA\0301t ch\1EAFc nguy\00EA')
||unistr('n nh\00E2n g\00E2y ra l\1ED7i n\00E0y, ha\0303y li\00EAn h\1EC7 ng\01B0\01A1\0300i qu\1EA3n tr\1ECB \1EE9ng d\1EE5ng \0111\1EC3 \0111\01B0\1EE3c h\1ED7 tr\1EE3.')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130993936506028104)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1EAFt ch\1EBF \0111\1ED9 t\01B0\01A1ng ph\1EA3n cao')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994069033028104)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t ch\1EBF \0111\1ED9 t\01B0\01A1ng ph\1EA3n cao')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858428931028064)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 c\00E2\0323p nh\00E2\0323t ca\0300i \0111\0103\0323t \01B0\0301ng du\0323ng %0 vi\0300 ca\0300i \0111\0103\0323t na\0300y \0111\01B0\01A1\0323c \0111\0103ng ky\0301 t\01B0\0300 m\00F4\0323t \01B0\0301ng du\0323ng kha\0301c.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908770450028079)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'vi'
,p_message_text=>unistr('D\01B0\1EDBi c\00F9ng')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908940183028079)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'vi'
,p_message_text=>unistr('Xu\00F4\0301ng')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909059713028079)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\00EA\0309n')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909141495028079)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\00EA\0309n t\00E2\0301t ca\0309')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909282470028079)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909330470028079)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a t\00E2\0301t ca\0309')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909471638028079)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908604304028079)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\00EAn cu\0300ng')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908824174028079)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00EAn')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020451702028112)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'vi'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021199115028112)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('trong %0 nga\0300y')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020306632028112)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'vi'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021260305028112)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('trong %0 gi\1EDD')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020179643028112)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'vi'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021338713028112)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('trong %0 ph\00FAt')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020740561028112)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tha\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020964103028112)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('trong %0 tha\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020266559028112)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'vi'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021057266028112)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('trong %0 gi\00E2y')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020532621028112)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'vi'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131021479776028112)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('trong %0 tu\00E2\0300n')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020635679028112)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'vi'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020825973028112)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('trong %0 n\0103m')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821700855028053)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'vi'
,p_message_text=>unistr('[\0110\01B0\1EDDng]')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822374010028053)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'vi'
,p_message_text=>unistr('[Nhi\1EC1u \0111\01B0\1EDDng]')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822098770028053)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'vi'
,p_message_text=>unistr('[Nhi\1EC1u \0111i\1EC3m]')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822578426028053)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'vi'
,p_message_text=>unistr('[Nhi\1EC1u \0111a gi\00E1c]')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822611757028053)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'vi'
,p_message_text=>unistr('[\0110\1ED1i t\01B0\1EE3ng h\00ECnh h\1ECDc]')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821642480028053)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'vi'
,p_message_text=>unistr('[\0110i\00EA\0309m (%0,%1)]')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821946109028053)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'vi'
,p_message_text=>unistr('[\0110a gi\00E1c]')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821193840028053)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'vi'
,p_message_text=>unistr('Vu\0300ng \0111a\0303 thu go\0323n: %0')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936292596028087)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Thu g\1ECDn')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820111799028053)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 di chuy\00EA\0309n b\1ED9 chia \0111\1ECBnh h\01B0\1EDBng theo chi\1EC1u ngang sang tra\0301i ho\0103\0323c pha\0309i')
,p_is_js_message=>true
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820307129028053)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111a\0323t \0111\00EA\0301n ki\0301ch th\01B0\01A1\0301c t\00F4\0301i \0111a la\0300 %0px')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821300038028053)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111a\0323t \0111\00EA\0301n ki\0301ch th\01B0\01A1\0301c t\00F4\0301i thi\00EA\0309u la\0300 %0px')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821271266028053)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'vi'
,p_message_text=>unistr('Vu\0300ng \0111\01B0\01A1\0323c thu go\0323n')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821004492028053)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'vi'
,p_message_text=>unistr('Vu\0300ng \0111\01B0\01A1\0323c kh\00F4i phu\0323c')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820767149028053)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 thay \0111\00F4\0309i ki\0301ch th\01B0\01A1\0301c tha\0300nh %0px')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820999380028053)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'vi'
,p_message_text=>unistr('V\00F9ng \0111\00E3 kh\00F4i ph\1EE5c: %0')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936120329028087)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4i phu\0323c')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820271924028053)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 di chuy\00EA\0309n b\1ED9 chia \0111\1ECBnh h\01B0\1EDBng theo chi\1EC1u do\0323c l\00EAn tr\00EAn ho\0103\0323c xu\00F4\0301ng d\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985619101028102)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a m\01B0\0301c x\00EA\0301p loa\0323i')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975594778028099)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng thu\00F4\0323c pha\0323m vi x\00EA\0301p loa\0323i h\01A1\0323p l\00EA\0323 t\01B0\0300 1 - %1')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975612767028099)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng pha\0309i la\0300 s\00F4\0301')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971725185028098)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng ba\0301o tha\0300nh c\00F4ng')
,p_is_js_message=>true
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033508286028116)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0301p theo')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033496163028116)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943698440028089)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng t\00ECm th\1EA5y h\1EC7 th\1ED1ng d\01B0\0303 li\00EA\0323u li\00EAn k\00EA\0301t v\01A1\0301i th\01B0\0323c th\00EA\0309 t\00E1c v\1EE5 n\00E0y')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951906837028092)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi\00EA\0323c th\01B0\0323c hi\00EA\0323n ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i ta\0301c vu\0323 %0 kh\00F4ng tha\0300nh c\00F4ng - ta\0301c vu\0323 \0111\01B0\01A1\0323c \0111\0103\0323t \01A1\0309 tra\0323ng tha\0301i bi\0323 l\00F4\0303i, ha\0303y ki\00EA\0309m tra ma\0303 ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i ta\0301c vu\0323')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832145992028056)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm ch\00FA th\00EDch: Kh\00F4ng \0111\01B0\1EE3c \1EE7y quy\1EC1n')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831471750028056)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0301c vu\0323 \0111a\0303 \0111\01B0\01A1\0323c ga\0301n')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824803766028054)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 ga\0301n cho %0')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831158509028056)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('H\1EE7y t\00E1c v\1EE5: Kh\00F4ng \0111\01B0\1EE3c \1EE7y quy\1EC1n')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846763104028061)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 xo\0301a ng\01B0\01A1\0300i phu\0323 tra\0301ch th\01B0\0323c t\00EA\0301 cu\0309a ta\0301c vu\0323 na\0300y. Ha\0303y u\0309y quy\00EA\0300n ta\0301c vu\0323 cho m\00F4\0323t ng\01B0\01A1\0300i tham gia kha\0301c tr\01B0\01A1\0301c khi th\01B0\0309 la\0323i thao ta\0301c na\0300y.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830758335028056)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('X\00E1c nh\1EADn t\00E1c v\1EE5: Kh\00F4ng \0111\01B0\1EE3c \1EE7y quy\1EC1n')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830868433028056)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ho\00E0n th\00E0nh t\00E1c v\1EE5: Kh\00F4ng \0111\01B0\1EE3c \1EE7y quy\1EC1n')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830980591028056)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('\1EE6y quy\1EC1n t\00E1c v\1EE5: Kh\00F4ng \0111\01B0\1EE3c \1EE7y quy\1EC1n')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829383157028055)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y \0111\00EA\0301n ha\0323n cu\0309a ta\0301c vu\0323 kh\00F4ng \0111\01B0\01A1\0323c la\0300 nga\0300y trong qua\0301 kh\01B0\0301.')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824678611028054)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y \0111\00EA\0301n ha\0323n %0')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825057823028054)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00E0nh \0111\1ED9ng \0111\1ED1i v\1EDBi t\00E1c v\1EE5 %1 kh\00F4ng th\00E0nh c\00F4ng. Th\00F4ng b\00E1o l\1ED7i - %0')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824788779028054)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng tha\0300nh c\00F4ng')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824384613028054)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tha\0300nh c\00F4ng')
,p_is_js_message=>true
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824518043028054)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00E0nh \0111\1ED9ng %1 \0111\00E3 th\00E0nh c\00F4ng v\1EDBi th\00F4ng b\00E1o %0')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827833622028055)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\1EDBc khi h\1EBFt h\1EA1n')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853497045028063)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Hu\0309y')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852997942028062)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hu\0309y ta\0301c vu\0323')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853584707028063)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\1EDDi tham gia kh\00F4ng \0111\01B0\1EE3c ph\00E9p h\1EE7y ta\0301c vu\0323 na\0300y')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852868068028062)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'vi'
,p_message_text=>unistr('Xa\0301c nh\00E2\0323n')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853279206028062)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0301c vu\0323 \0111\00E3 \0111\01B0\1EE3c ng\01B0\1EDDi d\00F9ng kh\00E1c x\00E1c nh\1EADn ho\1EB7c ng\01B0\1EDDi tham gia kh\00F4ng c\00F3 quy\1EC1n xa\0301c nh\1EADn ta\0301c vu\0323 n\00E0y')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853020200028062)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0301c vu\0323 \0111a\0303 \0111\01B0\01A1\0323c %0 xa\0301c nh\00E2\0323n')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954133739028092)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'vi'
,p_message_text=>unistr('Hoa\0300n th\00E0nh')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852633590028062)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hoa\0300n tha\0300nh ta\0301c vu\0323 v\01A1\0301i k\00EA\0301t qua\0309 %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853926785028063)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0301c vu\0323 na\0300y kh\00F4ng \0111\01B0\01A1\0323c ga\0301n ho\0103\0323c ng\01B0\01A1\0300i tham gia kh\00F4ng \0111\01B0\01A1\0323c phe\0301p hoa\0300n tha\0300nh ta\0301c vu\0323 na\0300y')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814305831028051)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hoa\0300n tha\0300nh ta\0301c vu\0323 ma\0300 kh\00F4ng co\0301 k\00EA\0301t qua\0309')
,p_version_scn=>2693768
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954282980028092)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0323o')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847131657028061)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 ta\0323o ta\0301c vu\0323 v\01A1\0301i ma\0303 %0')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954366853028093)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'vi'
,p_message_text=>unistr('U\0309y quy\00EA\0300n')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852758885028062)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 u\0309y quy\00EA\0300n ta\0301c vu\0323 cho ng\01B0\01A1\0300i phu\0323 tra\0301ch ti\00EA\0300m n\0103ng %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853377634028063)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\1EDDi tham gia kh\00F4ng c\00F3 quy\1EC1n ho\1EB7c ng\01B0\1EDDi tham gia m\1EDBi kh\00F4ng ph\1EA3i l\00E0 ng\01B0\01A1\0300i phu\0323 tra\0301ch ti\1EC1m n\0103ng c\1EE7a ta\0301c vu\0323 n\00E0y')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826456059028054)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'vi'
,p_message_text=>unistr('La\0300m h\00EA\0301t ha\0323n')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827550462028055)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E1c v\1EE5 \0111a\0303 h\00EA\0301t ha\0323n.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954495789028093)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng tha\0300nh c\00F4ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823177755028054)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0301c vu\0323 na\0300y kh\00F4ng \0111\01B0\01A1\0323c ga\0301n ho\0103\0323c ng\01B0\01A1\0300i tham gia kh\00F4ng \0111\01B0\01A1\0323c phe\0301p y\00EAu c\00E2\0300u th\00F4ng tin cho ta\0301c vu\0323 na\0300y')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823337544028054)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a co\0301 th\00F4ng tin na\0300o \0111\01B0\01A1\0323c y\00EAu c\00E2\0300u cho ta\0301c vu\0323 na\0300y ho\0103\0323c ng\01B0\01A1\0300i tham gia kh\00F4ng \0111\01B0\01A1\0323c phe\0301p g\01B0\0309i th\00F4ng tin cho ta\0301c vu\0323 na\0300y.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826969340028055)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('La\0300m cho ta\0301c vu\0323 h\00EA\0301t ha\0323n vi\0300 \0111a\0303 \0111a\0323t t\01A1\0301i s\00F4\0301 l\00E2\0300n gia ha\0323n t\00F4\0301i \0111a la\0300 %0.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854235059028063)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0301c vu\0323 \01A1\0309 tra\0323ng tha\0301i kh\00F4ng chi\0301nh xa\0301c ho\0103\0323c ng\01B0\01A1\0300i tham gia kh\00F4ng pha\0309i la\0300 ng\01B0\1EDDi qu\1EA3n tr\1ECB kinh doanh cu\0309a ta\0301c vu\0323 na\0300y')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854389086028063)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Thao ta\0301c %0 kh\00F4ng xa\0301c \0111i\0323nh ho\0103\0323c kh\00F4ng a\0301p du\0323ng cho ta\0301c vu\0323 na\0300y')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954567904028093)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0309i pho\0301ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940242966028088)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0301c vu\0323 \0111a\0303 \0111\01B0\01A1\0323c gia\0309i pho\0301ng, nh\01B0\0303ng ng\01B0\01A1\0300i kha\0301c co\0301 th\00EA\0309 xa\0301c nh\00E2\0323n b\00E2y gi\01A1\0300')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833180322028056)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng cho phe\0301p gia\0309i pho\0301ng ta\0301c vu\0323 - ng\01B0\01A1\0300i du\0300ng kh\00F4ng pha\0309i la\0300 ng\01B0\01A1\0300i phu\0323 tra\0301ch ta\0301c vu\0323 na\0300y')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850120266028062)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a ng\01B0\01A1\0300i phu\0323 tra\0301ch')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850318797028062)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xo\0301a ng\01B0\01A1\0300i tham gia %0 kho\0309i ta\0301c vu\0323 na\0300y')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827795877028055)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia ha\0323n')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826623552028055)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 gia ha\0323n ta\0301c vu\0323 v\01A1\0301i ma\0303 %0, s\00F4\0301 l\00E2\0300n gia ha\0323n t\00F4\0301i \0111a co\0300n la\0323i tr\01B0\01A1\0301c khi h\00EA\0301t ha\0323n la\0300 %1.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130827654342028055)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 gia ha\0323n ma\0303 ta\0301c vu\0323 %0 v\01A1\0301i ma\0303 ta\0301c vu\0323 %1')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823638426028054)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u th\00F4ng tin')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823574781028054)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 y\00EAu c\00E2\0300u %0 cung c\00E2\0301p th\00EAm th\00F4ng tin: %1')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821423793028053)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t gia\0301 tri\0323 %0 cho tu\0300y cho\0323n Tri\0300nh kh\01A1\0309i ta\0323o co\0301 th\00EA\0309 hoa\0300n tha\0300nh')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823701122028054)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'vi'
,p_message_text=>unistr('G\01B0\0309i th\00F4ng tin')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823484777028054)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 g\1EEDi th\00F4ng tin \0111\01B0\1EE3c y\00EAu c\1EA7u cho %0: %1')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954668510028093)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E2\0323p nh\00E2\0323t chu\0301 thi\0301ch')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851147876028062)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm chu\0301 thi\0301ch: %0')
,p_version_scn=>2693827
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854044776028063)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\1EA1ng th\00E1i cu\0309a ta\0301c vu\0323 kh\00F4ng cho ph\00E9p c\00F3 chu\0301 thi\0301ch')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861357092028065)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1EB7t ng\00E0y \0111\1EBFn h\1EA1n t\00E1c v\1EE5 l\00E0 %0')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819427005028052)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y \0111\1EBFn h\1EA1n c\1EADp nh\1EADt')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954798921028093)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E2\0323p nh\00E2\0323t ng\01B0\01A1\0300i phu\0323 tra\0301ch')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852479267028062)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm ng\01B0\01A1\0300i phu\0323 tra\0301ch ti\00EA\0300m n\0103ng %0 va\0300o danh sa\0301ch ng\01B0\01A1\0300i tham gia ta\0301c vu\0323')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851588490028062)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1EADp nh\1EADt tham s\1ED1')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954823997028093)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E2\0323p nh\00E2\0323t m\01B0\0301c \01B0u ti\00EAn')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853145726028062)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t m\01B0\0301c \01B0u ti\00EAn cho ta\0301c vu\0323 la\0300 %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850448309028062)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 c\1EADp nh\1EADt tham s\1ED1 "%0" t\1EEB "%1" th\00E0nh "%2".')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833990636028057)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hu\0309y t\00E1c v\1EE5 v\00EC th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\1EC7c t\01B0\01A1ng \1EE9ng \0111\00E3 b\1ECB ch\1EA5m d\1EE9t.')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831058800028056)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('Chuy\1EC3n ti\1EBFp t\00E1c v\1EE5: Kh\00F4ng \0111\01B0\1EE3c \1EE7y quy\1EC1n')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824439525028054)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i kh\01A1\0309i ta\0323o %0 %1')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833396332028057)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xa\0309y ra l\00F4\0303i n\00F4\0323i b\00F4\0323 kh\00F4ng mong \0111\01A1\0323i')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831658629028056)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng a\0301p du\0323ng thao ta\0301c cho ta\0301c vu\0323')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857224418028064)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'vi'
,p_message_text=>unistr('Chu\0309 s\01A1\0309 h\01B0\0303u ti\00EA\0300m n\0103ng na\0300y kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832944382028056)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 ph\00EA duy\1EC7t')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833005946028056)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\0323 t\01B0\0300 ch\00F4\0301i')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814472246028051)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u pha\0309i co\0301 k\00EA\0301t qua\0309 khi hoa\0300n tha\0300nh ta\0301c vu\0323')
,p_version_scn=>2693768
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130814681325028051)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0301c vu\0323 kh\00F4ng \0111\01B0\01A1\0323c phe\0301p co\0301 k\00EA\0301t qua\0309')
,p_version_scn=>2693768
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850246859028062)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 c\00E2\0323p nh\00E2\0323t tham s\00F4\0301 %0.')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846596680028060)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i tham gia \0111a\0303 t\00F4\0300n ta\0323i cho th\01B0\0323c th\00EA\0309 ta\0301c vu\0323 na\0300y.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130948083516028091)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00E2\0309n c\00E2\0301p')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825126241028054)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00E2\0309n c\00E2\0301p')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947984525028091)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'vi'
,p_message_text=>'Cao'
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825225492028054)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01B0\0301c \01B0u ti\00EAn cao')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947889148028091)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung bi\0300nh')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825397848028054)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01B0\0301c \01B0u ti\00EAn trung bi\0300nh')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947712351028091)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00E2\0301p')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825415677028054)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01B0\0301c \01B0u ti\00EAn th\00E2\0301p')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947673458028091)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00E2\0301p nh\00E2\0301t')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825548611028054)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01B0\0301c \01B0u ti\00EAn th\00E2\0301p nh\00E2\0301t')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831257332028056)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1EB7t m\1EE9c \01B0u ti\00EAn cho t\00E1c v\1EE5: Kh\00F4ng \0111\01B0\1EE3c \1EE7y quy\1EC1n')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832404663028056)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 g\00E1n')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832817098028056)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hu\0309y')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832565402028056)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hoa\0300n th\00E0nh')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832768868028056)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\0323 l\00F4\0303i')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130826263589028054)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 h\00EA\0301t ha\0323n')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832603547028056)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng tha\0300nh c\00F4ng')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822951200028053)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 y\00EAu c\00E2\0300u th\00F4ng tin')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832332901028056)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 bo\0309 ga\0301n')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854794698028063)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Vi\00EA\0323c ta\0323o ta\0301c vu\0323 m\01A1\0301i cho \0111i\0323nh nghi\0303a ta\0301c vu\0323 %0 trong \01B0\0301ng du\0323ng %1 kh\00F4ng tha\0300nh c\00F4ng.'),
'SQLCODE: %2'))
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854675808028063)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'vi'
,p_message_text=>unistr('N\1ED7 l\1EF1c t\1EA1o ta\0301c v\1EE5 cho \0111\1ECBnh ngh\0129a ta\0301c v\1EE5 %0 trong \1EE9ng d\1EE5ng %1 kh\00F4ng th\00E0nh c\00F4ng v\00EC \0111\1ECBnh ngh\0129a ta\0301c v\1EE5 kh\00F4ng ch\1EE9a b\1EA5t k\1EF3 ng\01B0\01A1\0300i phu\0323 tra\0301ch ti\1EC1m n\0103ng n\00E0o - ha\0303y ch\1EC9nh s\1EEDa \0111\1ECBnh ngh\0129a ta\0301c v\1EE5 v\00E0 th\00EAm \00EDt nh\1EA5t 1 ng\01B0\1EDDi tham gia thu\1ED9c lo\1EA1i ng\01B0\01A1\0300i phu\0323 tra\0301c')
||unistr('h ti\1EC1m n\0103ng')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831951931028056)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y \0111\1ECBnh ngh\0129a ta\0301c vu\0323')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831884205028056)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ng\01B0\01A1\0300i tham gia cho ta\0301c vu\0323 na\0300y')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833225814028057)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Co\0301 nhi\00EA\0300u ta\0301c vu\0323 cho ma\0303 ta\0301c vu\0323 \0111a\0303 cung c\00E2\0301p - ha\0303y ki\00EA\0309m tra v\01A1\0301i ng\01B0\1EDDi qu\1EA3n tr\1ECB c\01A1 s\01A1\0309 d\01B0\0303 li\00EA\0323u cu\0309a ba\0323n')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130832009827028056)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ta\0301c vu\0323')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130831792981028056)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y tham s\00F4\0301 t\00E1c v\1EE5')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868040608028067)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng')
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867949951028067)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00EA duy\00EA\0323t')
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815336919028051)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\01B0\0323c thi \0111\01B0\01A1\0323c quy tri\0300nh a\0301p quy t\0103\0301c ky\0300 nghi\0309 %2 cho \0111i\0323nh nghi\0303a ta\0301c vu\0323 %0 trong \01B0\0301ng du\0323ng %1.')
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815509533028051)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 th\00EAm ng\01B0\1EDDi tham gia %1 \0111\1EC3 thay th\1EBF cho ng\01B0\1EDDi tham gia %0 . L\00FD do - %2 .')
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019260712028112)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Thanh c\00F4ng cu\0323')
,p_is_js_message=>true
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872756603028068)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'vi'
,p_message_text=>unistr('\01AF\0301ng du\0323ng')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033976271028116)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 r\00F4\0323ng/thu go\0323n \0111i\00EA\0300u h\01B0\01A1\0301ng')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034030732028116)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 r\00F4\0323ng/thu go\0323n c\00F4\0323t b\00EAn')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942423766028089)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\1EC1u h\01B0\1EDBng ch\00EDnh')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843248866028059)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'vi'
,p_message_text=>unistr('"%0" la\0300 t\00EAn ph\1EA7n gi\1EEF ch\1ED7 kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950165857028091)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('1 nga\0300y')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949954256028091)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('1 gi\01A1\0300')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950216310028091)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 nga\0300y')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950045670028091)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\01A1\0300')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949878610028091)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 phu\0301t')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950432700028091)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tu\00E2\0300n')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130950339872028091)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('1 tu\00E2\0300n')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848105451028061)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cho\0323n %0 mu\0323c')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848332732028061)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n mu\0323c')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848221858028061)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n %0')
,p_is_js_message=>true
,p_version_scn=>2693821
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037054957028117)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t \0111\00E2\0300u trang')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894622592028075)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 k\00EDch ho\1EA1t')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863146032028065)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi x\01B0\0309 ly\0301 y\00EAu c\00E2\0300u.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130848735541028061)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 c\1EADp nh\1EADt tin nh\1EAFn v\0103n b\1EA3n %0 v\00EC tin nh\0103\0301n na\0300y \0111\01B0\1EE3c \0111\0103ng k\00FD t\1EEB m\1ED9t \1EE9ng d\1EE5ng kh\00E1c.')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951806274028092)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u co\0301 gia\0301 tri\0323')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130868201839028067)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E2\0301p \0111\00F4\0323 ti\00EAu \0111\00EA\0300 %0, bi\0323 \00E2\0309n')
,p_is_js_message=>true
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996605189028105)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'vi'
,p_message_text=>unistr('Trang n\00E0y c\00F3 nh\1EEFng thay \0111\1ED5i ch\01B0a l\01B0u.')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858251538028064)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4ng cu\0323 \0111i\00EA\0300u h\01B0\01A1\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857946296028064)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'vi'
,p_message_text=>unistr('Pho\0301ng to')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858996548028064)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01B0\0301c thu pho\0301ng {0}%')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858005358028064)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'vi'
,p_message_text=>unistr('Thu nho\0309')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858163523028064)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i m\01B0\0301c thu pho\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833657923028057)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 truy c\00E2\0323p s\01A1 \0111\00F4\0300 lu\00F4\0300ng c\00F4ng vi\00EA\0323c va\0300o lu\0301c na\0300y.')
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833592135028057)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('S\01A1 \0111\00F4\0300 lu\00F4\0300ng c\00F4ng vi\00EA\0323c')
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835458085028057)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \0111ang \01A1\0309 tra\0323ng tha\0301i %1. Vi\0300 v\00E2\0323y, kh\00F4ng cho phe\0301p th\01B0\0323c hi\00EA\0323n thao ta\0301c na\0300y')
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838067944028058)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 %1 cu\0309a hoa\0323t \0111\00F4\0323ng %2 trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \0111a\0303 hoa\0300n tha\0300nh')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837869984028058)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 t\1EA1o th\01B0\0323c th\00EA\0309 m\1EDBi %1 c\1EE7a ho\1EA1t \0111\1ED9ng %2 trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829664387028055)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ha\0300ng d\01B0\0303 li\00EA\0323u b\00F4\0309 sung \0111\01B0\01A1\0323c li\00EAn k\00EA\0301t v\01A1\0301i th\01B0\0323c th\00EA\0309 hoa\0323t \0111\00F4\0323ng cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c na\0300y')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837928540028058)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 bi\0323 l\00F4\0303i %1 cu\0309a hoa\0323t \0111\00F4\0323ng %2 trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \0111a\0303 \0111\01B0\01A1\0323c th\01B0\0309 la\0323i')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819992273028053)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 hoa\0323t \0111\00F4\0323ng %1 trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \0111a\0303 bi\0323 ch\00E2\0301m d\01B0\0301t')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853783450028063)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 hoa\0323t \0111\00F4\0323ng %1 trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \0111a\0303 h\00EA\0301t th\01A1\0300i gian ch\01A1\0300 va\0300 bi\0323 ch\00E2\0301m d\01B0\0301t.')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838164521028058)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 %1 cu\0309a hoa\0323t \0111\00F4\0323ng %2 trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \01A1\0309 tra\0323ng tha\0301i \0110ang ch\01A1\0300')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819712925028053)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 %0 cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c \0111a\0303 \0111\01B0\01A1\0323c thay \0111\00F4\0309i va\0300 ti\00EA\0301p tu\0323c ta\0323i hoa\0323t \0111\00F4\0323ng %1')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837123694028058)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 \0111ang ch\01A1\0300 %1 cu\0309a hoa\0323t \0111\00F4\0323ng %2 trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \0111a\0303 hoa\0300n tha\0300nh tha\0300nh c\00F4ng')
,p_version_scn=>2693786
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836970809028058)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Hoa\0323t \0111\00F4\0323ng \0111ang ch\01A1\0300 %1 bi\0323 l\00F4\0303i vi\0300 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \0111a\0303 \01A1\0309 tra\0323ng tha\0301i Bi\0323 l\00F4\0303i tr\01B0\01A1\0301c khi hoa\0323t \0111\00F4\0323ng na\0300y hoa\0300n tha\0300nh')
,p_version_scn=>2693786
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837037329028058)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'vi'
,p_message_text=>unistr('Hoa\0323t \0111\00F4\0323ng \0111ang ch\01A1\0300 %1 \0111a\0303 bi\0323 ch\00E2\0301m d\01B0\0301t vi\0300 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 \0111a\0303 \01A1\0309 tra\0323ng tha\0301i \0110a\0303 ch\00E2\0301m d\01B0\0301t tr\01B0\01A1\0301c khi hoa\0323t \0111\00F4\0323ng na\0300y hoa\0300n tha\0300nh')
,p_version_scn=>2693786
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130820018212028053)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi\00EA\0323c ch\00E2\0301m d\01B0\0301t hoa\0323t \0111\00F4\0323ng %1 trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 kh\00F4ng tha\0300nh c\00F4ng do ngoa\0323i l\00EA\0323 - %2')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835621010028057)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'vi'
,p_message_text=>unistr('Lu\1ED3ng c\00F4ng vi\1EC7c hi\1EC7n \0111ang b\1EADn ho\00E0n th\00E0nh thao t\00E1c tr\01B0\1EDBc \0111\00F3. Ha\0303y th\1EED l\1EA1i sau')
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851774004028062)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hoa\0300n th\00E0nh %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834752442028057)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 ti\00EA\0301p tu\0323c lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 vi\0300 lu\00F4\0300ng c\00F4ng vi\00EA\0323c na\0300y hi\00EA\0323n \0111ang \01A1\0309 Hoa\0323t \0111\00F4\0323ng %1 kh\00F4ng \01A1\0309 tra\0323ng tha\0301i \0110ang ch\01A1\0300')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846673509028060)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng ph\1EA3i l\00E0 ng\01B0\0303 c\1EA3nh t\01B0\01A1ng quan lu\00F4\0300ng c\00F4ng vi\1EC7c h\1EE3p l\1EC7 cho quy tr\00ECnh \0111ang \0111\01B0\1EE3c Ho\1EA1t \0111\1ED9ng cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c n\00E0y th\1EF1c thi. Ng\1EEF c\1EA3nh t\01B0\01A1ng quan ph\1EA3i l\00E0 v\0103n b\1EA3n \0111\01B0\1EE3c ph\00E2n c\00E1ch b\1EB1ng d\1EA5u hai ch\1EA5m ch\1EE9a APEX_APPL_WORKFLOW theo sau l\00E0 Ma\0303 th\01B0\0323c th')
||unistr('\00EA\0309 lu\1ED3ng c\00F4ng vi\1EC7c v\00E0 Ma\0303 th\01B0\0323c th\00EA\0309 ho\1EA1t \0111\1ED9ng.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837307129028058)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 t\1EA1o th\01B0\0323c th\00EA\0309 m\1EDBi %0 c\1EE7a lu\00F4\0300ng c\00F4ng vi\00EA\0323c %1, phi\00EAn b\1EA3n %2')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829427816028055)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ha\0300ng d\01B0\0303 li\00EA\0323u b\00F4\0309 sung \0111\01B0\01A1\0323c li\00EAn k\00EA\0301t v\01A1\0301i th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c na\0300y')
,p_version_scn=>2693777
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851997233028062)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y \0111\00EA\0301n ha\0323n %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837221396028058)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'vi'
,p_message_text=>unistr('Lu\1ED3ng c\00F4ng vi\1EC7c %0 \0111\00E3 k\1EBFt th\00FAc v\1EDBi tr\1EA1ng th\00E1i %1')
,p_version_scn=>2693786
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834457631028057)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i d\01B0\0303 li\00EA\0323u %1 cho ca\0301c \0111i\00EA\0300u ki\00EA\0323n \0111\01B0\01A1\0323c so sa\0301nh trong ti\0301nh n\0103ng Chuy\00EA\0309n \0111\00F4\0309i hoa\0323t \0111\00F4\0323ng cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 kh\00F4ng t\01B0\01A1ng thi\0301ch v\01A1\0301i toa\0301n t\01B0\0309 \0111i\00EA\0300u ki\00EA\0323n')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824263501028054)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i kh\01A1\0309i ta\0323o %0 %1')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130847024474028061)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 ta\0323o th\01B0\0323c th\00EA\0309 m\01A1\0301i %0 cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c %1, phi\00EAn ba\0309n %2 - \0111\01B0\01A1\0323c go\0323i t\01B0\0300 th\01B0\0323c th\00EA\0309 hoa\0323t \0111\00F4\0323ng %4 cu\0309a th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %3')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130819870114028053)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Hoa\0323t \0111\00F4\0323ng co\0301 ma\0303 ti\0303nh %1 kh\00F4ng pha\0309i la\0300 hoa\0323t \0111\00F4\0323ng trong lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0. Ha\0303y ki\00EA\0309m tra ma\0303 ti\0303nh cu\0309a hoa\0323t \0111\00F4\0323ng cho Phi\00EAn ba\0309n lu\00F4\0300ng c\00F4ng vi\00EA\0323c t\01B0\01A1ng \01B0\0301ng.')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845192967028060)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 la\0300 tham s\00F4\0301 b\0103\0301t bu\00F4\0323c \0111\00F4\0301i v\01A1\0301i lu\00F4\0300ng c\00F4ng vi\00EA\0323c na\0300y va\0300 kh\00F4ng \0111\01B0\01A1\0323c \0111\00EA\0309 TR\00D4\0301NG.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837780126028058)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 %0 cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c \0111a\0303 \0111\01B0\01A1\0323c ti\00EA\0301p tu\0323c')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837670626028058)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 %0 cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c \0111a\0303 \0111\01B0\01A1\0323c th\01B0\0309 la\0323i')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852063414028062)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 l\00E2\0300n th\01B0\0309 la\0323i')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852171386028062)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 l\00E2\0300n th\01B0\0309 la\0323i')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851818452028062)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 b\1EAFt \0111\1EA7u %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846008581028060)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110ang ho\1EA1t \0111\1ED9ng')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846285675028060)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hoa\0300n th\00E0nh')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846312492028060)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1ECB l\1ED7i')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846476756028060)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 ta\0323m ng\01B0\0300ng')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130846111921028060)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 ch\00E2\0301m d\01B0\0301t')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861421315028065)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110ang ch\01A1\0300')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837499710028058)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 %0 c\1EE7a lu\1ED3ng c\00F4ng vi\1EC7c \0111\00E3 b\1ECB t\1EA1m ng\01B0\0300ng')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843388919028060)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 xa\0301c \0111i\0323nh hoa\0323t \0111\00F4\0323ng ti\00EA\0301p theo cho Th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0. Ha\0303y xa\0301c minh va\0300 chi\0309nh s\01B0\0309a ca\0301c \0111i\00EA\0300u ki\00EA\0323n \0111a\0303 xa\0301c \0111i\0323nh cho hoa\0323t \0111\00F4\0323ng chuy\00EA\0309n \0111\00F4\0309i hi\00EA\0323n ta\0323i tr\01B0\01A1\0301c khi th\01B0\0309 la\0323i lu\00F4\0300ng c\00F4ng vi\00EA\0323c.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130837553350028058)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 %0 cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c \0111a\0303 bi\0323 ch\00E2\0301m d\01B0\0301t')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836635202028058)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 ng\01B0\1EDDi qu\1EA3n tr\1ECB kinh doanh cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 m\01A1\0301i co\0301 th\00EA\0309 ti\00EA\0301p tu\0323c lu\00F4\0300ng c\00F4ng vi\00EA\0323c na\0300y')
,p_version_scn=>2693786
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836769125028058)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 ng\01B0\1EDDi qu\1EA3n tr\1ECB kinh doanh va\0300/ho\0103\0323c ng\01B0\01A1\0300i phu\0323 tra\0301ch m\01A1\0301i co\0301 th\00EA\0309 th\01B0\0309 la\0323i lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0')
,p_version_scn=>2693786
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836272255028057)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 ng\01B0\1EDDi qu\1EA3n tr\1ECB kinh doanh cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c na\0300y m\01A1\0301i co\0301 th\00EA\0309 ta\0323m ng\01B0\0300ng th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0')
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836570555028057)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 ng\01B0\01A1\0300i phu\0323 tra\0301ch va\0300 ng\01B0\1EDDi qu\1EA3n tr\1ECB kinh doanh cu\0309a th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 m\01A1\0301i co\0301 th\00EA\0309 ch\00E2\0301m d\01B0\0301ng lu\00F4\0300ng c\00F4ng vi\00EA\0323c na\0300y')
,p_version_scn=>2693784
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834915730028057)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 ng\01B0\1EDDi qu\1EA3n tr\1ECB kinh doanh \0111\01B0\01A1\0323c xa\0301c \0111i\0323nh cho lu\00F4\0300ng c\00F4ng vi\00EA\0323c na\0300y m\01A1\0301i co\0301 th\00EA\0309 c\00E2\0323p nh\00E2\0323t ca\0301c bi\00EA\0301n cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849583242028061)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 pha\0309i \01A1\0309 tra\0323ng tha\0301i Bi\0323 l\00F4\0303i ho\0103\0323c \0110a\0303 ta\0323m ng\01B0\0300ng thi\0300 m\01A1\0301i co\0301 th\00EA\0309 c\00E2\0323p nh\00E2\0323t ca\0301c bi\00EA\0301n cu\0309a no\0301.')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841027853028059)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 c\00E2\0323p nh\00E2\0323t gia\0301 tri\0323 bi\00EA\0301n %0 cu\0309a lu\00F4\0300ng c\00F4ng vi\00EA\0323c tha\0300nh %1')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851235086028062)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 kh\00F4ng co\0301 phi\00EAn ba\0309n na\0300o \0110ang hoa\0323t \0111\00F4\0323ng')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851317613028062)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'vi'
,p_message_text=>unistr('Lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 kh\00F4ng co\0301 phi\00EAn ba\0309n na\0300o \0110ang pha\0301t tri\00EA\0309n')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130851459104028062)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0 kh\00F4ng co\0301 phi\00EAn ba\0309n na\0300o \0110ang hoa\0323t \0111\00F4\0323ng ho\0103\0323c \0110ang pha\0301t tri\00EA\0309n')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834380821028057)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y th\01B0\0323c th\00EA\0309 hoa\0323t \0111\00F4\0323ng %1 cho th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834126877028057)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y th\01B0\0323c th\00EA\0309 lu\00F4\0300ng c\00F4ng vi\00EA\0323c %0')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869203692028067)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0309 la\0300m vi\00EA\0323c na\0300y kh\00F4ng co\0301 ba\0309ng ti\0301nh na\0300o \0111ang ho\1EA1t \0111\1ED9ng.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869197611028067)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0309 la\0300m vi\00EA\0323c na\0300y kh\00F4ng \0111\01B0\01A1\0323c kh\01A1\0309i cha\0323y.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869073763028067)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 x\1EA3y ra l\1ED7i n\1ED9i b\1ED9 trong khi t\1EA1o t\00E2\0323p tin XLSX.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871517440028068)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'vi'
,p_message_text=>unistr('Trang ti\0301nh')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882140093028071)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ba\0309ng ti\0301nh "%0" \0111a\0303 \0111\01B0\01A1\0323c du\0300ng. Ha\0303y th\01B0\0309 m\00F4\0323t t\00EAn kha\0301c.')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010754481028109)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925778590028084)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh \0111\01A1n ha\0300nh \0111\00F4\0323ng')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921470451028083)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm ha\0300m')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921342485028083)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm c\00F4\0323t ph\00E2n nho\0301m theo')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958954774028094)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm c\00F4\0323t ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959069043028094)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00EAm c\00F4\0323t ha\0300ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893462219028075)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1ED5ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931944354028086)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng h\01A1\0323p')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912840178028080)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung bi\0300nh')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917150014028082)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301m')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912912347028080)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0301i \0111a')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913196323028080)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung vi\0323')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913095274028080)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0301i thi\00EA\0309u')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912723768028080)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng %0')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913819807028081)
,p_name=>'APEXIR_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0301t ca\0309')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892705829028074)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0301t ca\0309 ca\0301c c\00F4\0323t')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872854623028068)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0301t ca\0309 ca\0301c ha\0300ng')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007731749028108)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Thay th\00EA\0301')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009375060028109)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'vi'
,p_message_text=>unistr('M\0103\0323c \0111i\0323nh thay th\1EBF:  %0 ')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906988573028079)
,p_name=>'APEXIR_AND'
,p_message_language=>'vi'
,p_message_text=>unistr('va\0300')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941787332028089)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 nh\1EADp b\00E1o c\00E1o \0111\00E3 l\01B0u. N\1ED9i dung b\1ECB h\1ECFng.')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941815136028089)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 nh\1EADp b\00E1o c\00E1o \0111\00E3 l\01B0u. N\1ED9i dung b\1ECB tr\00F4\0301ng.')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894976414028075)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C1p du\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888532215028073)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('T\0103ng d\00E2\0300n')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910006767028079)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('K\00EA\0309 t\01B0\0300 %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009903850028109)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung bi\0300nh %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001568407028107)
,p_name=>'APEXIR_BAR'
,p_message_language=>'vi'
,p_message_text=>'Thanh'
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894226476028075)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'vi'
,p_message_text=>unistr('trong khoa\0309ng')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887372868028073)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0300u n\00EA\0300n')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889276674028073)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'vi'
,p_message_text=>unistr('xanh d\01B0\01A1ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923329860028083)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'vi'
,p_message_text=>unistr('D\01B0\1EDBi c\00F9ng')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854183712028063)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0301c nu\0301t b\00EAn ca\0323nh thanh ti\0300m ki\00EA\0301m cu\0309a %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889885057028074)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Hu\0309y')
,p_is_js_message=>true
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896109966028075)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh mu\0323c')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887215254028073)
,p_name=>'APEXIR_CELL'
,p_message_language=>'vi'
,p_message_text=>unistr('\00D4')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913724805028081)
,p_name=>'APEXIR_CHART'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u \0111\00F4\0300')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924209441028084)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110ang kh\01A1\0309i ta\0323o...')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130963905808028095)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\1EA3i ch\1EC9 \0111\1ECBnh nha\0303n bi\00EA\0309u \0111\00F4\0300.')
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976370010028099)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy v\00E2\0301n cu\0309a ba\0323n v\01B0\01A1\0323t qua\0301 s\00F4\0301 \0111i\00EA\0309m d\01B0\0303 li\00EA\0323u t\00F4\0301i \0111a la\0300 %0 tr\00EAn m\00F4\0303i bi\00EA\0309u \0111\00F4\0300. Ha\0303y a\0301p du\0323ng b\00F4\0323 lo\0323c \0111\00EA\0309 gia\0309m s\00F4\0301 l\01B0\01A1\0323ng d\01B0\0303 li\00EA\0323u trong truy v\00E2\0301n c\01A1 s\01A1\0309 cu\0309a ba\0323n.')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975260109028099)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('S\00F4\0301 l\01B0\01A1\0323ng ha\0300ng t\00F4\0301i \0111a cho m\00F4\0323t truy v\00E2\0301n Bi\00EA\0309u \0111\00F4\0300 se\0303 gi\01A1\0301i ha\0323n s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng trong truy v\00E2\0301n c\01A1 s\01A1\0309, ch\01B0\0301 kh\00F4ng pha\0309i s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng hi\00EA\0309n thi\0323.  '),
unistr('Truy v\00E2\0301n c\01A1 s\01A1\0309 cu\0309a ba\0323n v\01B0\01A1\0323t qua\0301 s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng t\00F4\0301i \0111a la\0300 %0. Ha\0303y a\0301p du\0323ng b\00F4\0323 lo\0323c \0111\00EA\0309 gia\0309m s\00F4\0301 l\01B0\01A1\0323ng d\01B0\0303 li\00EA\0323u trong truy v\00E2\0301n c\01A1 s\01A1\0309 cu\0309a ba\0323n.')))
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892807798028074)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i bi\00EA\0309u \0111\00F4\0300')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856765391028064)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem bi\00EA\0309u \0111\00F4\0300 cu\0309a %0')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130971937707028098)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n t\00E2\0301t ca\0309')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910421455028080)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n \0111i\0323nh da\0323ng ba\0301o ca\0301o')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918288885028082)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('xo\0301a')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889764496028074)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929543080028085)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896759076028076)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\0301 danh c\00F4\0323t')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004358895028107)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ECDc...')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864544188028066)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 c\00F4\0323t')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878639393028070)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i c\00F4\0323t')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878907489028070)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300nh \0111\00F4\0323ng \0111\00F4\0301i v\01A1\0301i c\00F4\0323t "%0"')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920373018028083)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh \0111\01A1n ti\00EAu \0111\00EA\0300 c\00F4\0323t')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924054831028084)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng tin c\00F4\0323t')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006628064028108)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Nha\0303n c\00F4\0323t')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921729710028083)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1ED9t %0')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904619336028078)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'vi'
,p_message_text=>unistr('ch\01B0\0301a')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905936981028078)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng ch\01B0\0301a')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888202343028073)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'vi'
,p_message_text=>unistr('thu\00F4\0323c')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906106122028078)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng di\00EA\0303n ra trong th\01A1\0300i gian qua')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915229824028081)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng di\00EA\0303n ra trong th\01A1\0300i gian t\01A1\0301i')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906047630028078)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'vi'
,p_message_text=>unistr('trong th\01A1\0300i gian qua')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915145528028081)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('trong th\01A1\0300i gian t\01A1\0301i')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888105526028073)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng bi\0323 r\00F4\0303ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888004224028073)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('bi\0323 r\1ED7ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887862121028073)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'vi'
,p_message_text=>unistr('gi\00F4\0301ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888336364028073)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng thu\00F4\0323c')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887984159028073)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng gi\00F4\0301ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904997763028078)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\01A1\0301p v\01A1\0301i bi\00EA\0309u th\01B0\0301c chi\0301nh quy')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910339174028080)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0301nh toa\0301n')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130974942656028099)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u th\01B0\0301c ti\0301nh')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929899906028085)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0323o phe\0301p ti\0301nh b\0103\0300ng bi\0301 danh c\00F4\0323t.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929950059028085)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'vi'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930073706028085)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'vi'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930172150028085)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'vi'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871092030028068)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'vi'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914503398028081)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0301nh toa\0301n')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922395950028083)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'vi'
,p_message_text=>unistr('D\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_is_js_message=>true
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925323017028084)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'vi'
,p_message_text=>unistr('D\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011913141028110)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t d\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867788188028067)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301m gia\0301 tri\0323 ri\00EAng bi\00EA\0323t')
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010413735028109)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301m gia\0301 tri\0323 ri\00EAng bi\00EA\0323t')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010380372028109)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1EBFm %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983316780028101)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng nga\0300y')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131036683688028117)
,p_name=>'APEXIR_DATA'
,p_message_language=>'vi'
,p_message_text=>unistr('D\1EEF li\1EC7u')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924199228028084)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o d\01B0\0303 li\00EA\0323u k\00EA\0309 t\01B0\0300 %0 phu\0301t tr\01B0\01A1\0301c.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857158389028064)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem d\01B0\0303 li\00EA\0323u cu\0309a %0')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893596286028075)
,p_name=>'APEXIR_DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y')
,p_version_scn=>2693860
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928035512028085)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('M\0103\0323c \0111i\0323nh')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007517848028108)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i ba\0301o ca\0301o m\0103\0323c \0111i\0323nh')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889946777028074)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_is_js_message=>true
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893855647028075)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1EA1n c\00F3 mu\1ED1n x\00F3a c\00E1c c\00E0i \0111\1EB7t b\00E1o c\00E1o n\00E0y kh\00F4ng?')
,p_version_scn=>2693862
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994331118028104)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a ba\0301o ca\0301o m\0103\0323c \0111i\0323nh')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922024093028083)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a ba\0301o ca\0301o')
,p_is_js_message=>true
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888629585028073)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0309m d\00E2\0300n')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896207686028075)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00F4 ta\0309')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920242847028083)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem m\00F4\0323t h\00E0ng')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928525789028085)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('H\01B0\1EDBng %0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929405439028085)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\0323 v\00F4 hi\00EA\0323u ho\0301a')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889432443028073)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hi\00EA\0309n thi\0323')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892646370028074)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t \0111a\0303 hi\00EA\0309n thi\0323')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928485959028085)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 trong ba\0301o ca\0301o')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923291201028083)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'vi'
,p_message_text=>unistr('Xu\00F4\0301ng')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914604844028081)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i xu\00F4\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928360467028085)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng hi\00EA\0309n thi\0323')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997693459028105)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2\0300n \0111a\0301nh d\00E2\0301u co\0301 cu\0300ng \0111i\00EA\0300u ki\00EA\0323n \0111a\0303 t\00F4\0300n ta\0323i.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012118424028110)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1ED9t ba\0309ng t\00F4\0309ng h\01A1\0323p bi\0323 tr\00F9ng l\1EB7p. Danh s\00E1ch c\1ED9t ba\0309ng t\00F4\0309ng h\01A1\0323p ph\1EA3i l\00E0 duy nh\1EA5t.')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012301147028110)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\1EC9nh s\1EEDa')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924350018028084)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a ca\0300i \0111\0103\0323t bi\00EA\0309u \0111\00F4\0300')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930925808028086)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a bi\00EA\0309u \0111\00F4\0300')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894814252028075)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a d\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931362690028086)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a b\00F4\0323 lo\0323c')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897895583028076)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a mu\0323c h\00F4\0300i t\01B0\01A1\0309ng')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989139840028103)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a mu\0323c ph\00E2n nh\00F3m theo')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931264800028086)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a ph\00E2\0300n \0111a\0301nh d\00E2\0301u')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959249715028094)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918694933028082)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a ba\0301o ca\0301o')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007864015028108)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'vi'
,p_message_text=>'Email'
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880083228028071)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323a chi\0309 email')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008104675028109)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'vi'
,p_message_text=>'Bcc'
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008303590028109)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'vi'
,p_message_text=>unistr('N\00F4\0323i dung')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008073094028108)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'vi'
,p_message_text=>'Cc'
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008898044028109)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1EA7n su\1EA5t')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885257178028072)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a \0111i\0323nh c\00E2\0301u hi\0300nh email cho \01B0\0301ng du\0323ng na\0300y.  Ha\0303y li\00EAn h\00EA\0323 ng\01B0\1EDDi qu\1EA3n tr\1ECB.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982653384028101)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\1EA3i ch\1EC9 \0111\1ECBnh \0111i\0323a chi\0309 email.')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008452406028109)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem ph\00E2\0300n \0111i\0301nh ke\0300m')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008253030028109)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983601457028101)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\1EA3i ch\1EC9 \0111\1ECBnh ti\00EAu \0111\00EA\0300 email.')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007997663028108)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i nh\00E2\0323n')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887014675028073)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 k\00EDch ho\1EA1t')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931115274028086)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ki\0301ch hoa\0323t/V\00F4 hi\00EA\0323u ho\0301a')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930694360028086)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i! %0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930251333028085)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi\0301 du\0323')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931017247028086)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'vi'
,p_message_text=>unistr('Vi\0301 du\0323:')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892586788028074)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng bao g\00F4\0300m gia\0301 tri\0323 r\00F4\0303ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931696017028086)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 r\00F4\0323ng/Thu go\0323n')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929254667028085)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u th\01B0\0301c')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914115956028081)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ECDc')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925293087028084)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 lo\0323c')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935929272028087)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u th\01B0\0301c lo\0323c')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034143674028116)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u th\01B0\0301c lo\0323c qua\0301 da\0300i.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878856287028070)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('G\1EE3i \00FD b\1ED9 l\1ECDc')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935879493028087)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i b\1ED9 lo\0323c')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931852288028086)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n c\00F4\0323t \0111\00EA\0309 ti\0300m ki\00EA\0301m')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914483311028081)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4\0300i t\01B0\01A1\0309ng')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929054353028085)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy v\1EA5n h\1ED3i t\01B0\1EDFng cho ph\00E9p b\1EA1n xem d\1EEF li\1EC7u nh\01B0 \0111a\0303 t\1ED3n t\1EA1i \1EDF th\1EDDi \0111i\1EC3m tr\01B0\1EDBc \0111\00F3.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983076679028101)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Khoa\0309ng th\1EDDi gian h\1ED3i t\01B0\1EDFng')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984464398028101)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910264277028080)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1EA5u tr\00FAc \0111i\0323nh da\0323ng %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921948680028083)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300m')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929710226028085)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300m %0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007450715028108)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300m/toa\0301n t\01B0\0309')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921601260028083)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300m %0')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913940291028081)
,p_name=>'APEXIR_GO'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887501744028073)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'vi'
,p_message_text=>unistr('xanh lu\0323c')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932570381028086)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ph\00E2n nh\00F3m theo')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932631790028086)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300m ph\00E2n nho\0301m theo')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867836466028067)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n nho\0301m theo')
,p_is_js_message=>true
,p_version_scn=>2693843
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008522977028109)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ph\00E2n nh\00F3m theo %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964095660028095)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh c\00F4\0323t ph\00E2n nho\0301m theo.')
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975100294028099)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0301 l\01B0\01A1\0323ng ha\0300ng t\00F4\0301i \0111a cho m\00F4\0323t truy v\00E2\0301n Ph\00E2n nho\0301m theo se\0303 gi\01A1\0301i ha\0323n s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng trong truy v\00E2\0301n c\01A1 s\01A1\0309, ch\01B0\0301 kh\00F4ng pha\0309i s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng hi\00EA\0309n thi\0323. Truy v\00E2\0301n c\01A1 s\01A1\0309 cu\0309a ba\0323n v\01B0\01A1\0323t qua\0301 s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng t\00F4\0301i \0111a la\0300 %0. Ha\0303y a\0301p du\0323ng b\00F4')
||unistr('\0323 lo\0323c \0111\00EA\0309 gia\0309m s\00F4\0301 l\01B0\01A1\0323ng d\01B0\0303 li\00EA\0323u trong truy v\00E2\0301n c\01A1 s\01A1\0309 cu\0309a ba\0323n.')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955340146028093)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p mu\0323c ph\00E2n nh\00F3m theo')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012047707028110)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 t\01B0\0323 s\0103\0301p x\00EA\0301p mu\0323c ph\00E2n nho\0301m theo')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856968211028064)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem ph\00E2n nho\0301m theo cu\0309a %0')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892901726028074)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ngang')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926990984028084)
,p_name=>'APEXIR_HELP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918719308028082)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('B\00E1o c\00E1o t\01B0\01A1ng t\00E1c cho ph\00E9p ng\01B0\1EDDi d\00F9ng cu\1ED1i t\00F9y ch\1EC9nh b\00E1o c\00E1o. Ng\01B0\1EDDi d\00F9ng c\00F3 th\1EC3 thay \0111\1ED5i b\1ED1 c\1EE5c d\1EEF li\1EC7u b\00E1o c\00E1o b\1EB1ng c\00E1ch ch\1ECDn c\1ED9t, \00E1p d\1EE5ng b\1ED9 l\1ECDc, \0111\00E1nh d\1EA5u v\00E0 s\1EAFp x\1EBFp. Ng\01B0\1EDDi d\00F9ng c\0169ng c\00F3 th\1EC3 x\00E1c \0111\1ECBnh c\00E1c d\00E2\0301u ng\1EAFt, ph\00E2\0300n t\00F4\0309ng h\1EE3p, bi\1EC3u \0111\1ED3, mu\0323c ph\00E2')
||unistr('n nh\00F3m theo v\00E0 th\00EAm c\00E1c ph\00E9p t\00EDnh c\1EE7a ri\00EAng mi\0300nh. Ng\01B0\1EDDi d\00F9ng c\0169ng c\00F3 th\1EC3 thi\1EBFt l\1EADp go\0301i \0111\0103ng k\00FD \0111\1EC3 phi\00EAn b\1EA3n HTML c\1EE7a b\00E1o c\00E1o s\1EBD \0111\01B0\1EE3c g\1EEDi qua email cho h\1ECD v\00E0o kho\1EA3ng th\1EDDi gian \0111\01B0\1EE3c ch\1EC9 \0111\1ECBnh. Ng\01B0\1EDDi d\00F9ng c\00F3 th\1EC3 t\1EA1o nhi\1EC1u bi\1EBFn th\1EC3 c\1EE7a m\1ED9t b\00E1o c\00E1o v\00E0 l\01B0')
||unistr('u ch\00FAng d\01B0\1EDBi d\1EA1ng b\00E1o c\00E1o \0111\01B0\1EE3c \0111\1EB7t t\00EAn \0111\1EC3 xem \01A1\0309 ch\00EA\0301 \0111\00F4\0323 c\00F4ng khai ho\1EB7c ri\00EAng t\01B0.'),
'<p/>',
unistr('C\00E1c ph\1EA7n ti\1EBFp theo t\00F3m t\1EAFt nh\01B0\0303ng c\00E1ch giu\0301p ba\0323n t\00F9y ch\1EC9nh b\00E1o c\00E1o t\01B0\01A1ng t\00E1c. \0110\1EC3 t\00ECm hi\1EC3u th\00EAm, h\00E3y xem ph\00E2\0300n "S\1EED d\1EE5ng b\00E1o c\00E1o t\01B0\01A1ng t\00E1c" trong <i>H\01B0\1EDBng d\1EABn cu\0309a Oracle APEX d\00E0nh cho ng\01B0\1EDDi d\00F9ng cu\1ED1i</i>.')))
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925806217028084)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh \0111\01A1n Ha\0300nh \0111\00F4\0323ng xu\00E2\0301t hi\00EA\0323n \01A1\0309 b\00EAn pha\0309i nu\0301t \0110i tr\00EAn thanh Ti\0300m ki\00EA\0301m. Ha\0303y s\01B0\0309 du\0323ng tri\0300nh \0111\01A1n na\0300y \0111\00EA\0309 tu\0300y chi\0309nh m\00F4\0323t ba\0301o ca\0301o t\01B0\01A1ng ta\0301c.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919592829028082)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('T\1ED5ng h\1EE3p l\00E0 c\00E1c ph\00E9p t\00EDnh to\00E1n h\1ECDc \0111\01B0\1EE3c th\1EF1c hi\1EC7n \0111\1ED1i v\1EDBi m\1ED9t c\1ED9t. C\00E1c mu\0323c t\1ED5ng h\1EE3p hi\1EC3n th\1ECB sau m\1ED7i d\00E2\0301u ng\1EAFt \0111i\1EC1u khi\1EC3n v\00E0 \1EDF cu\1ED1i b\00E1o c\00E1o trong c\1ED9t m\00E0 ch\00FAng \0111\01B0\1EE3c x\00E1c \0111\1ECBnh. C\00E1c t\00F9y ch\1ECDn bao g\00F4\0300m:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Mu\0323c t\00F4\0309ng h\1EE3p</strong> cho ph\00E9p b\1EA1n ch\1ECDn mu\0323c t\00E2\0323p h\01A1\0323p'),
unistr('\0111a\0303 x\00E1c \0111\1ECBnh tr\01B0\01A1\0301c \0111o\0301 \0111\1EC3 ch\1EC9nh s\1EEDa.</li>'),
unistr('<li><strong>H\00E0m</strong> l\00E0 h\00E0m c\1EA7n th\1EF1c hi\1EC7n (v\00ED d\1EE5: SUM, MIN).</li>'),
unistr('<li><strong>C\1ED9t</strong> du\0300ng \0111\1EC3 ch\1ECDn c\1ED9t se\0303 \0111\01B0\01A1\0323c \00E1p h\00E0m to\00E1n h\1ECDc. Ch\1EC9 ca\0301c c\00F4\0323t'),
unistr('s\00F4\0301 m\01A1\0301i hi\1EC3n th\1ECB.</li>'),
'</ul>'))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919623800028082)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('B\1EA1n c\00F3 th\1EC3 x\00E1c \0111\1ECBnh m\1ED9t bi\1EC3u \0111\1ED3 cho m\1ED7i b\00E1o c\00E1o \0111a\0303 l\01B0u. Sau khi'),
unistr('x\00E1c \0111\1ECBnh, b\1EA1n c\00F3 th\1EC3 chuy\1EC3n \0111\1ED5i gi\1EEFa ca\0301c ch\1EBF \0111\1ED9 xem bi\1EC3u \0111\1ED3 v\00E0 b\00E1o c\00E1o b\1EB1ng c\00E1ch s\1EED d\1EE5ng ca\0301c bi\1EC3u t\01B0\1EE3ng ch\1EBF \0111\1ED9 xem trong thanh T\00ECm ki\1EBFm.'),
unistr('C\00E1c t\00F9y ch\1ECDn bao g\00F4\0300m:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Lo\1EA1i bi\1EC3u \0111\1ED3</strong> x\00E1c \0111\1ECBnh lo\1EA1i bi\1EC3u \0111\1ED3 c\1EA7n \0111\01B0a v\00E0o.'),
unistr('Ch\1ECDn trong s\00F4\0301 ca\0301c loa\0323i sau: thanh ngang, thanh d\1ECDc, h\00ECnh tr\00F2n ho\1EB7c \0111\01B0\1EDDng.</li>'),
'',
unistr('\005C<li><strong>Nh\00E3n</strong> cho ph\00E9p b\1EA1n ch\1ECDn c\1ED9t s\1EBD d\00F9ng l\00E0m nh\00E3n.</li>'),
unistr('<li><strong>Ti\00EAu \0111\1EC1 tr\1EE5c cho nh\00E3n</strong> l\00E0 ti\00EAu \0111\1EC1 hi\1EC3n th\1ECB tr\00EAn tr\1EE5c li\00EAn k\1EBFt v\1EDBi c\1ED9t \0111\01B0\1EE3c ch\1ECDn cho'),
unistr('Nh\00E3n. Tu\0300y cho\0323n n\00E0y kh\00F4ng kha\0309 du\0323ng cho bi\1EC3u \0111\1ED3 h\00ECnh tr\00F2n.</li>'),
unistr('<li><strong>Gi\00E1 tr\1ECB</strong> cho ph\00E9p b\1EA1n ch\1ECDn c\1ED9t c\00E2\0300n du\0300ng l\00E0m gi\00E1 tr\1ECB. N\1EBFu ha\0300m c\1EE7a b\1EA1n'),
unistr('l\00E0 COUNT, ba\0323n kh\00F4ng c\1EA7n ph\1EA3i ch\1ECDn Gi\00E1 tr\1ECB.</li>'),
unistr('<li><strong>Ti\00EAu \0111\1EC1 tr\1EE5c cho gi\00E1 tr\1ECB</strong> l\00E0 ti\00EAu \0111\1EC1 hi\1EC3n th\1ECB tr\00EAn tr\1EE5c li\00EAn k\1EBFt v\1EDBi c\1ED9t \0111\01B0\1EE3c ch\1ECDn cho'),
unistr('Gi\00E1 tr\1ECB. Tu\0300y cho\0323n n\00E0y kh\00F4ng kha\0309 du\0323ng cho bi\1EC3u \0111\1ED3 h\00ECnh tr\00F2n.</li>'),
unistr('<li><strong>H\00E0m</strong> l\00E0 m\1ED9t h\00E0m t\00F9y ch\1ECDn se\0303 th\1EF1c hi\1EC7n tr\00EAn c\1ED9t \0111\01B0\1EE3c ch\1ECDn cho Gi\00E1 tr\1ECB.</li>'),
unistr('<li><strong>S\1EAFp x\1EBFp</strong> cho ph\00E9p b\1EA1n s\1EAFp x\1EBFp loa\0323t k\1EBFt qu\1EA3 c\1EE7a m\00ECnh.</li></ul>')))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918918808028082)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('M\00F4\0323t tri\0300nh \0111\01A1n ti\00EAu \0111\00EA\0300 c\00F4\0323t se\0303 hi\00EA\0309n thi\0323 khi ba\0323n nh\00E2\0301p va\0300o ti\00EAu \0111\00EA\0300 c\00F4\0323t b\00E2\0301t ky\0300. Ca\0301c tu\0300y cho\0323n bao g\00F4\0300m:'),
'<p></p>',
'<ul>',
unistr('Bi\00EA\0309u t\01B0\01A1\0323ng <li><strong>S\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 t\0103ng d\00E2\0300n</strong> se\0303 s\0103\0301p x\00EA\0301p ba\0301o ca\0301o theo th\01B0\0301 t\01B0\0323 c\00F4\0323t t\0103ng d\00E2\0300n.</li>'),
unistr('Bi\00EA\0309u t\01B0\01A1\0323ng <li><strong>S\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 gia\0309m d\00E2\0300n</strong> se\0303 s\0103\0301p x\00EA\0301p ba\0301o ca\0301o theo th\01B0\0301 t\01B0\0323 c\00F4\0323t gia\0309m d\00E2\0300n.</li>'),
unistr('<li><strong>\00C2\0309n c\00F4\0323t</strong> se\0303 \00E2\0309n c\00F4\0323t. Kh\00F4ng pha\0309i c\00F4\0323t na\0300o cu\0303ng \00E2\0309n \0111\01B0\01A1\0323c. N\00EA\0301u kh\00F4ng th\00EA\0309 \00E2\0309n m\00F4\0323t c\00F4\0323t, se\0303 kh\00F4ng co\0301 bi\00EA\0309u t\01B0\01A1\0323ng \00C2\0309n c\00F4\0323t.</li>'),
unistr('<li><strong>Ng\0103\0301t c\00F4\0323t</strong> se\0303 ta\0323o m\00F4\0323t nho\0301m d\00E2\0301u ng\0103\0301t \01A1\0309 tr\00EAn c\00F4\0323t. Thao ta\0301c na\0300y se\0303 ke\0301o c\00F4\0323t ra kho\0309i ba\0301o ca\0301o d\01B0\01A1\0301i da\0323ng d\01B0\0303 li\00EA\0323u chi\0301nh.</li>'),
unistr('<li><strong>Th\00F4ng tin v\00EA\0300 c\00F4\0323t</strong> se\0303 hi\00EA\0309n thi\0323 v\0103n ba\0309n tr\01A1\0323 giu\0301p v\00EA\0300 c\00F4\0323t, n\00EA\0301u co\0301.</li>'),
unistr('<li><strong>Vu\0300ng v\0103n ba\0309n</strong> \0111\01B0\01A1\0323c du\0300ng \0111\00EA\0309 nh\00E2\0323p ca\0301c ti\00EAu chi\0301 ti\0300m ki\00EA\0301m kh\00F4ng ph\00E2n bi\1EC7t ch\1EEF hoa ch\1EEF th\01B0\1EDDng'),
unistr('(kh\00F4ng c\00E2\0300n thi\00EA\0301t \0111\00F4\0301i v\01A1\0301i ky\0301 t\01B0\0323 \0111a\0323i di\00EA\0323n). Vi\00EA\0323c nh\00E2\0323p m\00F4\0323t gia\0301 tri\0323 se\0303 la\0300m gia\0309m danh sa\0301ch'),
unistr('gia\0301 tri\0323 \01A1\0309 cu\00F4\0301i tri\0300nh \0111\01A1n. Sau \0111o\0301, ba\0323n co\0301 th\00EA\0309 cho\0323n m\00F4\0323t gia\0301 tri\0323 t\01B0\0300'),
unistr('d\01B0\01A1\0301i cu\0300ng va\0300 gia\0301 tri\0323 \0111a\0303 cho\0323n se\0303 \0111\01B0\01A1\0323c ta\0323o la\0300m b\00F4\0323 lo\0323c b\0103\0300ng d\00E2\0301u ''='''),
unistr('(vi\0301 du\0323: <code>column = ''ABC''</code>). Ho\0103\0323c ba\0323n co\0301 th\00EA\0309 nh\00E2\0301p va\0300o bi\00EA\0309u t\01B0\01A1\0323ng \0110e\0300n pin r\00F4\0300i nh\00E2\0323p m\00F4\0323t gia\0301 tri\0323 c\00E2\0300n ta\0323o la\0300m b\00F4\0323 lo\0323c b\0103\0300ng b\00F4\0309 ng\01B0\0303 ''LIKE'''),
unistr('(vi\0301 du\0323: <code>column LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>Danh sa\0301ch gia\0301 tri\0323 duy nh\00E2\0301t</strong> ch\01B0\0301a 500 gia\0301 tri\0323 duy nh\00E2\0301t \0111\00E2\0300u ti\00EAn'),
unistr('\0111a\0301p \01B0\0301ng ca\0301c ti\00EAu chi\0301 b\00F4\0323 lo\0323c cu\0309a ba\0323n. N\00EA\0301u c\00F4\0323t la\0300 nga\0300y, m\00F4\0323t danh sa\0301ch khoa\0309ng'),
unistr('nga\0300y se\0303 hi\00EA\0309n thi\0323. N\00EA\0301u ba\0323n cho\0323n m\00F4\0323t gia\0301 tri\0323, m\00F4\0323t b\00F4\0323 lo\0323c se\0303 \0111\01B0\01A1\0323c'),
unistr('ta\0323o b\0103\0300ng d\00E2\0301u ''='' (vi\0301 du\0323: <code>column = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919409011028082)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Cho ph\00E9p b\1EA1n th\00EAm c\00E1c c\1ED9t \0111\01B0\1EE3c t\00EDnh to\00E1n v\00E0o b\00E1o c\00E1o c\1EE7a m\00ECnh. \0110\00E2y c\00F3 th\1EC3 l\00E0 c\00E1c ph\00E9p t\00EDnh to\00E1n h\1ECDc (v\00ED d\1EE5: <code>NBR_HOURS/24</code>) ho\1EB7c c\00E1c h\00E0m ti\00EAu chu\1EA9n'),
unistr('cu\0309a Oracle \00E1p d\1EE5ng cho nh\01B0\0303ng c\1ED9t hi\1EC7n c\00F3. M\1ED9t s\1ED1 c\00F4\0323t hi\1EC3n th\1ECB d\01B0\1EDBi d\1EA1ng v\00ED d\1EE5 v\00E0 m\1ED9t s\1ED1 kh\00E1c (ch\1EB3ng h\1EA1n nh\01B0 <code>TO_DATE)</code> c\0169ng c\00F3 th\1EC3 \0111\01B0\1EE3c s\1EED d\1EE5ng). C\00E1c t\00F9y ch\1ECDn bao g\00F4\0300m:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Phe\0301p t\00EDnh</strong> cho ph\00E9p b\1EA1n ch\1ECDn m\1ED9t ph\00E9p t\00EDnh \0111\01B0\1EE3c x\00E1c \0111\1ECBnh tr\01B0\1EDBc \0111\00F3 \0111\1EC3 ch\1EC9nh s\1EEDa.</li>'),
unistr('<li><strong>Ti\00EAu \0111\1EC1 c\1ED9t</strong> l\00E0 ti\00EAu \0111\1EC1 c\1ED9t cho c\1ED9t m\1EDBi.</li>'),
unistr('<li><strong>C\00E2\0301u tru\0301c \0111\1ECBnh d\1EA1ng</strong> l\00E0 c\00E2\0301u tru\0301c \0111\1ECBnh d\1EA1ng cu\0309a Oracle \0111\01B0\1EE3c \00E1p d\1EE5ng cho c\1ED9t (v\00ED d\1EE5: S9999).</li>'),
unistr('<li><strong>Phe\0301p t\00EDnh</strong> l\00E0 ph\00E9p t\00EDnh se\0303 \0111\01B0\1EE3c th\1EF1c hi\1EC7n. Trong qu\00E1 tr\00ECnh t\00EDnh to\00E1n, c\00E1c c\1ED9t \0111\01B0\1EE3c tham chi\1EBFu b\1EB1ng b\00ED danh \0111\01B0\1EE3c hi\1EC3n th\1ECB.</li>'),
'</ul>',
unistr('<p>B\00EAn d\01B0\1EDBi phe\0301p t\00EDnh, c\00E1c c\1ED9t trong truy v\1EA5n c\1EE7a b\1EA1n se\0303 hi\1EC3n th\1ECB v\1EDBi'),
unistr('b\00ED danh \0111\01B0\01A1\0323c li\00EAn k\00EA\0301t. Vi\00EA\0323c nh\00E2\0301p v\00E0o t\00EAn c\1ED9t ho\1EB7c b\00ED danh se\0303 \0111\01B0a'),
unistr('ch\00FAng va\0300o phe\0301p t\00EDnh. B\00EAn c\1EA1nh C\1ED9t l\00E0 b\00E0n ph\00EDm s\00F4\0301. B\00E0n ph\00EDm s\00F4\0301 n\00E0y co\0301 ta\0301c du\0323ng nh\01B0'),
unistr('m\00F4\0323t l\1ED1i t\1EAFt \0111\1EBFn c\00E1c ph\00EDm th\01B0\1EDDng d\00F9ng. \1EDE phi\0301a ngo\00E0i b\00EAn ph\1EA3i l\00E0 H\00E0m.</p>'),
unistr('<p>Phe\0301p ti\0301nh m\00E2\0303u sau \0111\00E2y minh h\1ECDa c\00E1ch hi\1EC3n th\1ECB t\1ED5ng l\01B0\01A1ng th\01B0\01A1\0309ng:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(trong \0111\00F3 A l\00E0 T\1ED4 CH\1EE8C, B l\00E0 L\01AF\01A0NG v\00E0 C l\00E0 HOA H\1ED2NG)'),
''))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925972461028084)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'vi'
,p_message_text=>unistr('D\00F9ng \0111\1EC3 t\1EA1o nh\00F3m d\00E2\0301u ng\1EAFt tr\00EAn m\1ED9t ho\1EB7c nhi\1EC1u c\1ED9t. Thao t\00E1c n\00E0y s\1EBD k\00E9o c\00E1c c\1ED9t ra kh\1ECFi b\00E1o c\00E1o t\01B0\01A1ng t\00E1c v\00E0 hi\1EC3n th\1ECB ch\00FAng d\01B0\1EDBi d\1EA1ng d\01B0\0303 li\00EA\0323u ch\00EDnh.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920193346028082)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1EC3 xem chi ti\1EBFt t\1EEBng h\00E0ng m\1ED9t, h\00E3y nh\1EA5p v\00E0o bi\1EC3u t\01B0\1EE3ng ch\00EA\0301 \0111\00F4\0323 xem m\1ED9t h\00E0ng tr\00EAn h\00E0ng b\1EA1n mu\1ED1n xem. N\1EBFu c\00F3, ch\1EBF \0111\1ED9 xem m\1ED9t h\00E0ng s\1EBD lu\00F4n l\00E0 c\1ED9t \0111\1EA7u ti\00EAn. T\00F9y thu\1ED9c v\00E0o ca\0301ch t\00F9y ch\1EC9nh b\00E1o c\00E1o t\01B0\01A1ng t\00E1c, ch\1EBF \0111\1ED9 xem m\00F4\0323t h\00E0ng c\00F3 th\1EC3 l\00E0 ch\1EBF \0111\1ED9 xem ti\00EAu ')
||unistr('chu\1EA9n ho\1EB7c m\00F4\0323t trang t\00F9y ch\1EC9nh c\00F3 th\1EC3 cho ph\00E9p c\1EADp nh\1EADt.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920012950028082)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho ph\00E9p t\1EA3i xu\1ED1ng loa\0323t k\1EBFt qu\1EA3 hi\1EC7n t\1EA1i. C\00E1c \0111\1ECBnh d\1EA1ng t\1EA3i xu\1ED1ng bao g\1ED3m PDF, Excel, HTML v\00E0 CSV. C\00E1c t\00F9y ch\1ECDn t\1EA3i xu\1ED1ng se\0303 kh\00E1c nhau t\00F9y thu\1ED9c v\00E0o \0111\1ECBnh d\1EA1ng \0111\00E3 ch\1ECDn. Ba\0323n cu\0303ng co\0301 th\00EA\0309 g\01B0\0309i t\1EA5t c\1EA3 \0111\1ECBnh d\1EA1ng na\0300y d\01B0\1EDBi d\1EA1ng email.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919118814028082)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('T\1EADp trung v\00E0o b\00E1o c\00E1o b\1EB1ng c\00E1ch th\00EAm ho\1EB7c s\1EEDa \0111\1ED5i m\1EC7nh \0111\1EC1 <code>WHERE</code> tr\00EAn truy v\1EA5n. B\1EA1n c\00F3 th\1EC3 l\1ECDc theo c\1ED9t ho\1EB7c theo h\00E0ng.  '),
unistr('<p>N\1EBFu b\1EA1n l\1ECDc theo c\1ED9t, h\00E3y ch\1ECDn m\1ED9t c\1ED9t (kh\00F4ng c\1EA7n pha\0309i'),
unistr('l\00E0 c\00F4\0323t hi\1EC3n th\1ECB), ch\1ECDn to\00E1n t\1EED Oracle ti\00EAu chu\1EA9n (=, !=, kh\00F4ng n\0103\0300m trong, trong khoa\0309ng) v\00E0 nh\1EADp bi\1EC3u th\1EE9c \0111\1EC3 so s\00E1nh. Bi\1EC3u th\1EE9c c\00F3 ph\00E2n bi\1EC7t ch\1EEF hoa ch\1EEF th\01B0\1EDDng. S\1EED d\1EE5ng % l\00E0m k\00FD t\1EF1 \0111\1EA1i di\1EC7n (v\00ED d\1EE5: <code>STATE_NAME'),
unistr('nh\01B0 A%)</code>.</p>'),
unistr('<p>N\1EBFu l\1ECDc theo h\00E0ng, b\1EA1n c\00F3 th\1EC3 t\1EA1o c\00E1c m\1EC7nh \0111\1EC1 <code>WHERE</code> ph\1EE9c t\1EA1p b\1EB1ng c\00E1ch s\1EED d\1EE5ng'),
unistr('b\00ED danh c\1ED9t v\00E0 b\00E2\0301t ky\0300 h\00E0m ho\1EB7c to\00E1n t\1EED na\0300o cu\0309a Oracle (v\00ED d\1EE5: <code>G = ''VA'' ho\1EB7c G = ''CT''</code>, trong \0111\00F3'),
unistr('<code>G</code> l\00E0 b\00ED danh c\1EE7a <code>CUSTOMER_STATE</code>).</p>'),
''))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919709135028082)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Truy v\1EA5n h\1ED3i t\01B0\1EDFng cho ph\00E9p b\1EA1n xem d\1EEF li\1EC7u nh\01B0 \0111\00E3 t\1ED3n t\1EA1i \1EDF th\1EDDi \0111i\1EC3m'),
unistr('tr\01B0\1EDBc \0111\00F3. Kho\1EA3ng th\1EDDi gian m\1EB7c \0111\1ECBnh m\00E0 b\1EA1n c\00F3 th\1EC3 h\1ED3i t\01B0\1EDFng l\00E0 3 gi\1EDD (ho\1EB7c 180'),
unistr('ph\00FAt) nh\01B0ng s\1ED1 l\01B0\1EE3ng th\1EF1c t\1EBF s\1EBD kh\00E1c nhau \0111\1ED1i v\1EDBi m\1ED7i c\01A1 s\1EDF d\1EEF li\1EC7u.')))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984319629028101)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0110\1ECBnh d\1EA1ng cho ph\00E9p b\1EA1n t\00F9y ch\1EC9nh c\00E1ch hi\1EC3n th\1ECB b\00E1o c\00E1o.'),
unistr('\0110\1ECBnh d\1EA1ng ch\1EE9a tri\0300nh \0111\01A1n phu\0323 sau:</p>'),
unistr('<ul><li>S\1EAFp x\1EBFp</li>'),
unistr('<li>D\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n</li>'),
unistr('<li>\0110\00E1nh d\1EA5u</li>'),
unistr('<li>T\00EDnh to\00E1n</li>'),
unistr('<li>T\1ED5ng h\1EE3p</li>'),
unistr('<li>Bi\1EC3u \0111\1ED3</li>'),
unistr('<li>Ph\00E2n nh\00F3m theo</li>'),
unistr('<li>Ba\0309ng t\00F4\0309ng h\01A1\0323p</li>'),
'</ul>'))
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982514723028101)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ba\0323n co\0301 th\00EA\0309 xa\0301c \0111i\0323nh m\00F4\0323t ch\00EA\0301 \0111\00F4\0323 xem Ph\00E2n nho\0301m theo tr\00EAn m\00F4\0303i ba\0301o ca\0301o'),
unistr('\0111a\0303 l\01B0u. Sau khi xa\0301c \0111i\0323nh, ba\0323n co\0301 th\00EA\0309 chuy\00EA\0309n \0111\00F4\0309i gi\01B0\0303a ca\0301c ch\00EA\0301 \0111\00F4\0323 xem ph\00E2n nho\0301m theo va\0300 ba\0301o ca\0301o'),
unistr('b\0103\0300ng ca\0301c bi\00EA\0309u t\01B0\01A1\0323ng xem tr\00EAn thanh Ti\0300m ki\00EA\0301m. \0110\00EA\0309 ta\0323o m\00F4\0323t ch\00EA\0301 \0111\00F4\0323 xem Ph\00E2n nho\0301m theo,'),
unistr('ba\0323n cho\0323n:'),
'<p></p><ul>',
unistr('<li>ca\0301c c\00F4\0323t se\0303 du\0300ng \0111\00EA\0309 nho\0301m</li>'),
unistr('<li>ca\0301c c\00F4\0323t se\0303 t\00F4\0309ng h\01A1\0323p cu\0300ng v\01A1\0301i ha\0300m se\0303 \0111\01B0\01A1\0323c th\01B0\0323c hi\00EA\0323n (trung bi\0300nh, t\00F4\0309ng, \0111\00EA\0301m, v.v.)</li>'),
'</ul>'))
,p_version_scn=>2693883
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919373895028082)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Cho phe\0301p ba\0323n xa\0301c \0111i\0323nh m\00F4\0323t b\00F4\0323 lo\0323c. Ca\0301c ha\0300ng \0111a\0301p \01B0\0301ng ti\00EAu chi\0301 lo\0323c se\0303 hi\00EA\0309n thi\0323 nh\01B0 \0111\01B0\01A1\0323c \0111a\0301nh d\00E2\0301u theo ca\0301c \0111\0103\0323c \0111i\00EA\0309m \0111\01B0\01A1\0323c li\00EAn k\00EA\0301t v\01A1\0301i b\00F4\0323 lo\0323c. Ca\0301c tu\0300y cho\0323n bao g\00F4\0300m:</p>'),
'<ul>',
unistr('<li><strong>T\00EAn</strong> chi\0309 \0111\01B0\01A1\0323c du\0300ng \0111\00EA\0309 hi\00EA\0309n thi\0323.</li>'),
unistr('<li><strong>Th\01B0\0301 t\01B0\0323</strong> xa\0301c \0111i\0323nh th\01B0\0301 t\01B0\0323 se\0303 du\0300ng \0111\00EA\0309 \0111a\0301nh gia\0301 ca\0301c quy t\0103\0301c.</li>'),
unistr('<li><strong>\0110\01B0\01A1\0323c ki\0301ch hoa\0323t</strong> xa\0301c \0111i\0323nh li\00EA\0323u m\00F4\0323t quy t\0103\0301c \0111\01B0\01A1\0323c ki\0301ch hoa\0323t hay bi\0323 v\00F4 hi\00EA\0323u ho\0301a.</li>'),
unistr('<li><strong>Loa\0323i \0111a\0301nh d\00E2\0301u</strong> xa\0301c \0111i\0323nh li\00EA\0323u ha\0300ng ho\0103\0323c \00F4 co\0301 \0111\01B0\01A1\0323c \0111a\0301nh d\00E2\0301u'),
unistr('hay kh\00F4ng. N\00EA\0301u cho\0323n \00F4 thi\0300 c\00F4\0323t \0111\01B0\01A1\0323c tham chi\00EA\0301u trong'),
unistr('\0110i\00EA\0300u ki\00EA\0323n \0111a\0301nh d\00E2\0301u se\0303 \0111\01B0\01A1\0323c \0111a\0301nh d\00E2\0301u.</li>'),
unistr('<li><strong>Ma\0300u n\00EA\0300n</strong> la\0300 ma\0300u m\01A1\0301i cho n\00EA\0300n cu\0309a vu\0300ng \0111\01B0\01A1\0323c \0111a\0301nh d\00E2\0301u.</li>'),
unistr('<li><strong>Ma\0300u v\0103n ba\0309n</strong> la\0300 ma\0300u m\01A1\0301i cho v\0103n ba\0309n trong vu\0300ng \0111\01B0\01A1\0323c \0111a\0301nh d\00E2\0301u.</li>'),
unistr('<li><strong>\0110i\00EA\0300u ki\00EA\0323n \0111a\0301nh d\00E2\0301u</strong> xa\0301c \0111i\0323nh \0111i\00EA\0300u ki\00EA\0323n b\00F4\0323 lo\0323c cu\0309a ba\0323n.</li>'),
'</ul>',
''))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130812769424028050)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ba\0323n co\0301 th\00EA\0309 xa\0301c \0111i\0323nh m\00F4\0323t ch\00EA\0301 \0111\00F4\0323 xem ba\0309ng t\00F4\0309ng h\01A1\0323p tr\00EAn m\00F4\0303i ba\0301o ca\0301o \0111\01B0\01A1\0323c l\01B0u. Sau khi xa\0301c \0111i\0323nh, ba\0323n co\0301 th\00EA\0309 chuy\00EA\0309n \0111\00F4\0309i gi\01B0\0303a ca\0301c ch\00EA\0301 \0111\00F4\0323 xem ba\0309ng t\00F4\0309ng h\01A1\0323p va\0300 ba\0301o ca\0301o b\0103\0300ng bi\00EA\0309u t\01B0\01A1\0323ng ch\00EA\0301 \0111\00F4\0323 xem tr\00EAn thanh Ti\0300m ki\00EA\0301m. \0110\00EA')
||unistr('\0309 ta\0323o m\00F4\0323t ch\00EA\0301 \0111\00F4\0323 xem ba\0309ng t\00F4\0309ng h\01A1\0323p, ba\0323n cho\0323n: '),
'<p></p>',
'<ul>',
unistr('<li>ca\0301c c\00F4\0323t se\0303 a\0301p ba\0309ng t\00F4\0309ng h\01A1\0323p</li>'),
unistr('<li>ca\0301c c\00F4\0323t se\0303 hi\00EA\0309n thi\0323 d\01B0\01A1\0301i da\0323ng ha\0300ng</li>'),
unistr('<li>ca\0301c c\00F4\0323t se\0303 t\00F4\0309ng h\01A1\0323p cu\0300ng v\01A1\0301i ha\0300m c\00E2\0300n th\01B0\0323c hi\00EA\0323n (trung bi\0300nh, t\00F4\0309ng, \0111\00EA\0301m, v.v.)</li>'),
'</ul>'))
,p_version_scn=>2693764
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930482576028086)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('N\1EBFu b\1EA1n t\00F9y ch\1EC9nh b\00E1o c\00E1o t\01B0\01A1ng t\00E1c, c\00E0i \0111\1EB7t b\00E1o c\00E1o s\1EBD hi\1EC3n th\1ECB'),
unistr('b\00EAn d\01B0\1EDBi thanh T\00ECm ki\1EBFm v\00E0 ph\00EDa tr\00EAn b\00E1o c\00E1o. C\00F3 th\1EC3 thu g\1ECDn v\00E0 m\1EDF r\1ED9ng vu\0300ng na\0300y b\1EB1ng bi\1EC3u t\01B0\1EE3ng \01A1\0309 b\00EAn tr\00E1i.'),
'<p>',
unistr('\0110\1ED1i v\1EDBi m\1ED7i c\00E0i \0111\1EB7t b\00E1o c\00E1o, b\1EA1n c\00F3 th\1EC3:'),
'</p><ul>',
unistr('<li>Ch\1EC9nh s\1EEDa c\00E0i \0111\1EB7t b\1EB1ng c\00E1ch nh\1EA5p v\00E0o t\00EAn.</li>'),
unistr('<li>T\1EAFt/B\1EADt c\00E0i \0111\1EB7t b\1EB1ng c\00E1ch b\1ECF ch\1ECDn ho\1EB7c ch\1ECDn h\1ED9p cho\0323n B\1EADt/T\1EAFt. S\1EED d\1EE5ng mu\0323c \0111i\1EC1u khi\1EC3n n\00E0y \0111\1EC3 t\1EA1m th\1EDDi t\1EAFt v\00E0 b\1EADt m\1ED9t c\00E0i \0111\1EB7t.</li>'),
unistr('<li>X\00F3a mu\0323c c\00E0i \0111\1EB7t b\1EB1ng c\00E1ch nh\1EA5p v\00E0o bi\1EC3u t\01B0\1EE3ng X\00F3a.</li>'),
'</ul>',
unistr('<p>N\1EBFu \0111\00E3 t\1EA1o bi\1EC3u \0111\1ED3, mu\0323c ph\00E2n nh\00F3m theo ho\1EB7c ba\0309ng t\00F4\0309ng h\01A1\0323p, b\1EA1n c\00F3 th\1EC3 chuy\1EC3n \0111\1ED5i gi\1EEFa ch\00FAng'),
unistr('v\00E0 b\00E1o c\00E1o c\01A1 s\1EDF b\1EB1ng c\00E1ch s\1EED d\1EE5ng ca\0301c li\00EAn k\00EA\0301t Ch\1EBF \0111\1ED9 xem b\00E1o c\00E1o, Ch\1EBF \0111\1ED9 xem bi\1EC3u \0111\1ED3, Ch\1EBF \0111\1ED9 xem ph\00E2n nh\00F3m theo v\00E0 Ch\1EBF \0111\1ED9 xem ba\0309ng t\00F4\0309ng h\01A1\0323p'),
unistr('hi\1EC3n th\1ECB \01A1\0309 b\00EAn ph\1EA3i. N\1EBFu \0111ang xem bi\1EC3u \0111\1ED3, mu\0323c ph\00E2n nh\00F3m theo ho\1EB7c ba\0309ng t\00F4\0309ng h\01A1\0323p, b\1EA1n'),
unistr('c\0169ng c\00F3 th\1EC3 s\1EED d\1EE5ng li\00EAn k\1EBFt Ch\1EC9nh s\1EEDa \0111\1EC3 ch\1EC9nh s\1EEDa c\00E0i \0111\1EB7t.</p>'),
''))
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919957489028082)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1EB7t l\1EA1i b\00E1o c\00E1o v\1EC1 c\00E0i \0111\1EB7t m\1EB7c \0111\1ECBnh, x\00F3a m\1ECDi mu\0323c t\00F9y ch\1EC9nh m\00E0 b\1EA1n \0111\00E3 th\1EF1c hi\1EC7n.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984602740028101)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1EB7t s\1ED1 l\01B0\1EE3ng d\01B0\0303 li\00EA\0323u se\0303 hi\1EC3n th\1ECB tr\00EAn m\1ED7i trang.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919820414028082)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>L\01B0u b\00E1o c\00E1o \0111a\0303 t\00F9y ch\1EC9nh \0111\1EC3 s\1EED d\1EE5ng trong t\01B0\01A1ng lai. B\1EA1n cung c\1EA5p t\00EAn v\00E0 n\00F4\0323i dung m\00F4 t\1EA3 kh\00F4ng b\0103\0301t bu\00F4\0323c, \0111\1ED3ng th\1EDDi c\00F3 th\1EC3 \0111\0103\0323t b\00E1o c\00E1o \01A1\0309 ch\00EA\0301 \0111\00F4\0323 c\00F4ng khai (ngh\0129a l\00E0 t\1EA5t c\1EA3 ng\01B0\1EDDi d\00F9ng \0111\00EA\0300u c\00F3 th\1EC3 truy c\1EADp v\00E0o b\00E1o c\00E1o m\1EB7c \0111\1ECBnh ch\00EDnh). B\1EA1n c\00F3 th')
||unistr('\1EC3 l\01B0u 4 lo\1EA1i b\00E1o c\00E1o t\01B0\01A1ng t\00E1c:</p>'),
'<ul>',
unistr('<li><strong>M\1EB7c \0111\1ECBnh ch\00EDnh</strong> (Ch\1EC9 d\00E0nh cho nh\00E0 ph\00E1t tri\1EC3n). M\1EB7c \0111\1ECBnh ch\00EDnh l\00E0 b\00E1o c\00E1o hi\1EC3n th\1ECB ban \0111\1EA7u. Ba\0323n kh\00F4ng th\1EC3 \0111\1ED5i t\00EAn hay x\00F3a ca\0301c b\00E1o c\00E1o M\1EB7c \0111\1ECBnh ch\00EDnh.</li>'),
unistr('<li><strong>B\00E1o c\00E1o thay th\1EBF</strong> (Ch\1EC9 d\00E0nh cho nh\00E0 ph\00E1t tri\1EC3n). Cho ph\00E9p nh\00E0 ph\00E1t tri\1EC3n t\1EA1o nhi\1EC1u b\1ED1 c\1EE5c b\00E1o c\00E1o. Ch\1EC9 nh\00E0 ph\00E1t tri\1EC3n m\1EDBi c\00F3 th\1EC3 l\01B0u, \0111\1ED5i t\00EAn ho\1EB7c x\00F3a B\00E1o c\00E1o thay th\1EBF.</li>'),
unistr('<li><strong>B\00E1o c\00E1o c\00F4ng khai</strong> (Ng\01B0\1EDDi d\00F9ng cu\1ED1i). Ng\01B0\1EDDi d\00F9ng cu\1ED1i t\1EA1o ba\0301o ca\0301o c\00F3 th\1EC3 l\01B0u, \0111\1ED5i t\00EAn ho\1EB7c x\00F3a ba\0301o ca\0301o \0111o\0301. Nh\1EEFng ng\01B0\1EDDi d\00F9ng kh\00E1c c\00F3 th\1EC3 xem v\00E0 l\01B0u b\1ED1 c\1EE5c d\01B0\1EDBi d\1EA1ng m\1ED9t b\00E1o c\00E1o kh\00E1c.</li>'),
unistr('<li><strong>B\00E1o c\00E1o ri\00EAng t\01B0</strong> (Ng\01B0\1EDDi d\00F9ng cu\1ED1i). Ch\1EC9 ng\01B0\1EDDi d\00F9ng cu\1ED1i t\1EA1o b\00E1o c\00E1o m\1EDBi c\00F3 th\1EC3 xem, l\01B0u, \0111\1ED5i t\00EAn ho\1EB7c x\00F3a b\00E1o c\00E1o.</li>'),
'</ul>',
unistr('<p>N\1EBFu b\1EA1n l\01B0u b\00E1o c\00E1o \0111a\0303 t\00F9y ch\1EC9nh, b\1ED9 ch\1ECDn B\00E1o c\00E1o s\1EBD hi\1EC3n th\1ECB trong thanh T\00ECm ki\1EBFm \1EDF b\00EAn tr\00E1i b\1ED9 ch\1ECDn H\00E0ng (n\1EBFu t\00EDnh n\0103ng n\00E0y \0111\01B0\1EE3c b\1EADt).</p>')))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918808914028082)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'vi'
,p_message_text=>unistr('\01A0\0309 \0111\00E2\0300u m\00F4\0303i trang ba\0301o ca\0301o la\0300 m\00F4\0323t vu\0300ng ti\0300m ki\00EA\0301m. Vu\0300ng (hay thanh Ti\0300m ki\00EA\0301m) na\0300y cung c\00E2\0301p ca\0301c ti\0301nh n\0103ng sau:')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985225988028102)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'vi'
,p_message_text=>unistr('<li><strong>Tri\0300nh \0111\01A1n ha\0300nh \0111\00F4\0323ng</strong> cho phe\0301p ba\0323n tu\0300y chi\0309nh ba\0301o ca\0301o. Ha\0303y xem ca\0301c ph\00E2\0300n sau \0111\00E2y.</li>')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984733879028101)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'vi'
,p_message_text=>unistr('<li><strong>Bi\1EC3u t\01B0\1EE3ng Ch\1ECDn c\1ED9t</strong> cho ph\00E9p b\1EA1n x\00E1c \0111\1ECBnh c\1ED9t n\00E0o c\1EA7n t\00ECm ki\1EBFm (ho\1EB7c t\1EA5t c\1EA3).</li>')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985077253028102)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'vi'
,p_message_text=>unistr('<li><strong>Ba\0301o ca\0301o</strong> hi\00EA\0309n thi\0323 ca\0301c ba\0301o ca\0301o m\0103\0323c \0111i\0323nh thay th\00EA\0301 va\0300 ba\0301o ca\0301o ri\00EAng t\01B0 ho\0103\0323c c\00F4ng khai \0111a\0303 l\01B0u.</li>')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984982032028101)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('<li><strong>H\00E0ng</strong> \0111\1EB7t s\1ED1 l\01B0\1EE3ng d\01B0\0303 li\00EA\0323u se\0303 hi\1EC3n th\1ECB tr\00EAn m\1ED7i trang.</li>')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984805761028101)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>V\00F9ng v\0103n b\1EA3n</strong> cho ph\00E9p b\1EA1n nh\1EADp ti\00EAu ch\00ED t\00ECm ki\1EBFm kh\00F4ng ph\00E2n bi\1EC7t ch\1EEF hoa ch\1EEF th\01B0\1EDDng (ng\1EE5 \00FD c\00E1c k\00FD t\1EF1 \0111\1EA1i di\1EC7n).</li>'),
unistr('<li><strong>N\00FAt \0110i</strong> th\1EF1c hi\1EC7n t\00ECm ki\1EBFm. Vi\00EA\0323c nh\1EA5n ph\00EDm enter c\0169ng s\1EBD th\1EF1c hi\1EC7n t\00ECm ki\1EBFm khi con tr\1ECF \1EDF trong v\00F9ng v\0103n b\1EA3n t\00ECm ki\1EBFm.</li>')))
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985183912028102)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('<li><strong>Bi\00EA\0309u t\01B0\01A1\0323ng ch\00EA\0301 \0111\00F4\0323 xem</strong> chuy\00EA\0309n \0111\00F4\0309i gi\01B0\0303a ca\0301c ch\00EA\0301 \0111\00F4\0323 xem bi\00EA\0309u t\01B0\01A1\0323ng, ba\0301o ca\0301o, chi ti\00EA\0301t, bi\00EA\0309u \0111\00F4\0300, ph\00E2n nho\0301m theo va\0300 ba\0309ng t\00F4\0309ng h\01A1\0323p cu\0309a ba\0301o ca\0301o n\00EA\0301u \0111\01B0\01A1\0323c xa\0301c \0111i\0323nh.</li>')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919024451028082)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('Du\0300ng \0111\1EC3 s\1EEDa \0111\1ED5i c\00E1c c\1ED9t \0111\01B0\1EE3c hi\1EC3n th\1ECB. C\00E1c c\1ED9t \1EDF b\00EAn ph\1EA3i se\0303 hi\00EA\0309n thi\0323. C\00E1c c\1ED9t \01A1\0309 b\00EAn tr\00E1i b\1ECB \1EA9n. B\1EA1n c\00F3 th\1EC3 s\1EAFp x\1EBFp l\1EA1i c\00E1c c\1ED9t \0111\01B0\1EE3c hi\1EC3n th\1ECB b\1EB1ng m\0169i t\00EAn \1EDF ph\00EDa ngoa\0300i b\00EAn ph\1EA3i. C\00E1c c\1ED9t \0111\01B0\1EE3c t\00EDnh to\00E1n c\00F3 ti\1EC1n t\1ED1 <strong>**</strong>.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130919226338028082)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Du\0300ng \0111\00EA\0309 thay \0111\00F4\0309i ca\0301c c\00F4\0323t c\00E2\0300n s\0103\0301p x\00EA\0301p va\0300 xa\0301c \0111i\0323nh li\00EA\0323u'),
unistr('se\0303 s\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 t\0103ng d\00E2\0300n hay gia\0309m d\00E2\0300n. Ba\0323n cu\0303ng co\0301 th\00EA\0309 chi\0309 \0111i\0323nh ca\0301ch x\01B0\0309 ly\0301 ca\0301c gia\0301 tri\0323'),
unistr('<code>NULL</code>. Ca\0300i \0111\0103\0323t m\0103\0323c \0111i\0323nh lu\00F4n hi\00EA\0309n thi\0323 ca\0301c gia\0301 tri\0323 <code>NULL</code> \01A1\0309 vi\0323 tri\0301 cu\00F4\0301i cu\0300ng ho\0103\0323c lu\00F4n hi\00EA\0309n thi\0323 chu\0301ng \01A1\0309 vi\0323 tri\0301 \0111\00E2\0300u ti\00EAn. Ca\0301ch s\0103\0301p x\00EA\0301p \0111\01B0\01A1\0323c xa\0301c \0111i\0323nh se\0303 hi\00EA\0309n thi\0323 \01A1\0309 b\00EAn pha\0309i'),
unistr('ca\0301c ti\00EAu \0111\00EA\0300 c\00F4\0323t trong ba\0301o ca\0301o.</p>')))
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982319360028101)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Khi th\00EAm go\0301i \0111\0103ng k\00FD, b\1EA1n cung c\1EA5p m\00F4\0323t \0111\1ECBa ch\1EC9 email (ho\1EB7c nhi\1EC1u \0111\1ECBa ch\1EC9 email, \0111\01B0\1EE3c ph\00E2n t\00E1ch b\1EB1ng d\1EA5u ph\1EA9y), ti\00EAu \0111\1EC1 email, t\1EA7n su\1EA5t c\0169ng nh\01B0 ng\00E0y b\1EAFt \0111\1EA7u v\00E0 ng\00E0y k\1EBFt th\00FAc. C\00E1c email nh\00E2\0323n \0111\01B0\01A1\0323c se\0303 bao g\1ED3m phi\00EAn b\1EA3n \0111\00E3 xu\1EA5t (PDF, Excel, HTML ho\1EB7')
||unistr('c CSV) c\1EE7a b\00E1o c\00E1o t\01B0\01A1ng t\00E1c ch\1EE9a d\1EEF li\1EC7u hi\1EC7n t\1EA1i b\1EB1ng c\00E1ch s\1EED d\1EE5ng c\00E0i \0111\1EB7t b\00E1o c\00E1o c\00F3 s\1EB5n khi th\00EAm go\0301i \0111\0103ng k\00FD.')
,p_version_scn=>2693883
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923961998028084)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C2\0309n c\00F4\0323t')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914366574028081)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0301nh d\00E2\0301u')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925494403028084)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\1EA7n \0111\00E1nh d\1EA5u')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895653765028075)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0301nh d\00E2\0301u \00F4, %0 tr\00EAn %1')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930522594028086)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\00EA\0300u ki\00EA\0323n \0111a\0301nh d\00E2\0301u')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895501619028075)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0301nh d\00E2\0301u ha\0300ng, %0 tr\00EAn %1')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982906089028101)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ki\00EA\0309u \0111a\0301nh d\00E2\0301u')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887173359028073)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i \0111a\0301nh d\00E2\0301u')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001708642028107)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'vi'
,p_message_text=>'Ngang'
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030744226028115)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'vi'
,p_message_text=>unistr('1 mu\0323c ca\0300i \0111\0103\0323t kh\00F4ng hoa\0323t \0111\00F4\0323ng')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030807385028115)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 mu\0323c ca\0300i \0111\0103\0323t kh\00F4ng hoa\0323t \0111\00F4\0323ng')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920579010028083)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p ba\0301o ca\0301o t\01B0\01A1ng ta\0301c')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931516847028086)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924945403028084)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u th\01B0\0301c ti\0301nh kh\00F4ng h\01A1\0323p l\00EA\0323. %0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880503172028071)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y k\00EA\0301t thu\0301c pha\0309i sau nga\0300y b\0103\0301t \0111\00E2\0300u.')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939705607028088)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u th\01B0\0301c lo\0323c kh\00F4ng h\01A1\0323p l\00EA\0323. %0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009537338028109)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy v\00E2\0301n lo\0323c kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030900424028115)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'vi'
,p_message_text=>unistr('1 mu\0323c ca\0300i \0111\0103\0323t kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031056317028115)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 mu\0323c ca\0300i \0111\0103\0323t kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983195314028101)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('(ti\0301nh b\1EB1ng ph\00FAt)')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000115325028106)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'vi'
,p_message_text=>'%0 trong %1 qua'
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000345970028106)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 trong %1 t\01A1\0301i')
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000260265028106)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 qua')
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000416672028106)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 kh\00F4ng di\00EA\0303n ra trong %1 t\01A1\0301i')
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929634032028085)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E0n ph\00EDm s\00F4\0301')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893343030028075)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Nha\0303n %0')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923555945028083)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 tru\0323c cho nha\0303n')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915805246028081)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y qua')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916099862028081)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\01A1\0300 qua')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915581651028081)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Tha\0301ng tr\01B0\01A1\0301c')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915656313028081)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\00E2\0300n tr\01B0\01A1\0301c')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915706810028081)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 nga\0300y qua')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915963509028081)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\01A1\0300 qua')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915390744028081)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 n\0103m qua')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915450704028081)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('N\0103m ngoa\0301i')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893240062028075)
,p_name=>'APEXIR_LINE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\01B0\01A1\0300ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890024503028074)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\01B0\01A1\0300ng co\0301 di\00EA\0323n ti\0301ch')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009491402028109)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem tr\00EAn ba\0309n \0111\00F4\0300')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924410676028084)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'vi'
,p_message_text=>unistr('Theo \01B0\01A1\0301c ti\0301nh, truy v\1EA5n se\0303 v\01B0\1EE3t qu\00E1 s\00F4\0301 l\01B0\01A1\0323ng t\00E0i nguy\00EAn t\1ED1i \0111a \0111\01B0\1EE3c ph\00E9p. Ha\0303y s\1EEDa \0111\1ED5i c\00E0i \0111\1EB7t b\00E1o c\00E1o c\1EE7a b\1EA1n r\00F4\0300i th\1EED l\1EA1i.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905895623028078)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0301 l\01B0\01A1\0323ng ha\0300ng t\00F4\0301i \0111a cho ba\0301o ca\0301o na\0300y la\0300 %0 ha\0300ng. Ha\0303y a\0301p du\0323ng b\00F4\0323 lo\0323c \0111\00EA\0309 gia\0309m s\00F4\0301 l\01B0\01A1\0323ng d\01B0\0303 li\00EA\0323u trong truy v\00E2\0301n cu\0309a ba\0323n.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010000318028109)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0301i \0111a %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010253228028109)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'vi'
,p_message_text=>unistr('Trung vi\0323 %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852510859028062)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng ba\0301o')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910176490028079)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 phu\0301t tr\01B0\01A1\0301c')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010189278028109)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0301i thi\00EA\0309u %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009131295028109)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00E1ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983530567028101)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng tha\0301ng')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922781611028083)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\00EA\0309n')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922631905028083)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\00EA\0309n t\00E2\0301t ca\0309')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035879182028117)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh Ma\0303 ti\0303nh cu\0309a vu\0300ng vi\0300 trang ch\01B0\0301a nhi\00EA\0300u ba\0301o ca\0301o t\01B0\01A1ng ta\0301c.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888757999028073)
,p_name=>'APEXIR_NAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918441496028082)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c t\00F4\0309ng h\01A1\0323p m\01A1\0301i')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031621439028115)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh mu\0323c m\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918514673028082)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c ti\0301nh toa\0301n m\01A1\0301i')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913289123028080)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\1EBFp theo')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916392493028081)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y t\01A1\0301i')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916195973028081)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\01A1\0300 t\01A1\0301i')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916684184028081)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Tha\0301ng sau')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916598342028081)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\00E2\0300n sau')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916456432028081)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ng\00E0y t\1EDBi')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916210201028081)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\01A1\0300 t\01A1\0301i')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916898458028081)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 n\0103m sau')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916758987028081)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('N\0103m sau')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889026194028073)
,p_name=>'APEXIR_NO'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931715043028086)
,p_name=>'APEXIR_NONE'
,p_message_language=>'vi'
,p_message_text=>unistr('- Kh\00F4ng co\0301 -')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982723960028101)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323a chi\0309 email kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854809850028063)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng c\00F3 c\1ED9t n\00E0o \0111\01B0\1EE3c ch\1ECDn \0111\1EC3 hi\1EC3n th\1ECB. Ha\0303y s\1EED d\1EE5ng <strong>C\1ED9t</strong> trong tr\00ECnh \0111\01A1n Ha\0300nh \0111\00F4\0323ng \0111\1EC3 hi\1EC3n th\1ECB c\00E1c c\1ED9t.')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928266359028085)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 r\00F4\0303ng lu\00F4n \01A1\0309 vi\0323 tri\0301 \0111\00E2\0300u ti\00EAn')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928123893028085)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 r\00F4\0303ng lu\00F4n \01A1\0309 vi\0323 tri\0301 cu\00F4\0301i cu\0300ng')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928671167028085)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p gia\0301 tri\0323 r\00F4\0303ng %0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925081317028084)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01A1\0300i gian h\00F4\0300i t\01B0\01A1\0309ng pha\0309i \01A1\0309 \0111i\0323nh da\0323ng s\00F4\0301.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924677132028084)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 t\01B0\0323 pha\0309i la\0300 s\00F4\0301.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929151344028085)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Toa\0301n t\01B0\0309')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887644360028073)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'vi'
,p_message_text=>'cam'
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001617043028107)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'vi'
,p_message_text=>unistr('H\01B0\01A1\0301ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889531284028073)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'vi'
,p_message_text=>unistr('Kha\0301c')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855726574028063)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n trang c\1EE7a %0')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869700855028067)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'vi'
,p_message_text=>unistr('H\01B0\1EDBng trang')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870427615028068)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'vi'
,p_message_text=>'Ngang'
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870544438028068)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'vi'
,p_message_text=>unistr('Do\0323c')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869601025028067)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ki\0301ch c\01A1\0303 trang')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870275579028068)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'vi'
,p_message_text=>'A3'
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870190218028068)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'vi'
,p_message_text=>'A4'
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870336143028068)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F9y ch\1EC9nh')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869986292028068)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0301p ly\0301')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869836607028068)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870013189028068)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o kh\00F4\0309 nho\0309')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010570706028109)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2\0300n tr\0103m tr\00EAn t\00F4\0309ng s\00F4\0301 l\01B0\01A1\0323ng %0 (%)')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009780411028109)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2\0300n tr\0103m tr\00EAn t\00F4\0309ng c\00F4\0323ng %0 (%)')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008797946028109)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2\0300n tr\0103m tr\00EAn t\00F4\0309ng s\00F4\0301 l\01B0\01A1\0323ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008642459028109)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2\0300n tr\0103m tr\00EAn t\00F4\0309ng c\00F4\0323ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893164799028075)
,p_name=>'APEXIR_PIE'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\0300nh tro\0300n')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958896266028094)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960342006028094)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh mu\0323c t\00F4\0309ng h\01A1\0323p.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960547699028094)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n kh\00F4ng th\00EA\0309 t\00F4\0309ng h\01A1\0323p tr\00EAn m\00F4\0323t c\00F4\0323t \0111\01B0\01A1\0323c cho\0323n la\0300m c\00F4\0323t ha\0300ng.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959716601028094)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959589202028094)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ba\0309ng t\00F4\0309ng h\01A1\0323p %0')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960144456028094)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh c\00F4\0323t ba\0309ng t\00F4\0309ng h\01A1\0323p.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130812698992028050)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0301 l\01B0\01A1\0323ng ha\0300ng t\00F4\0301i \0111a cho m\00F4\0323t truy v\00E2\0301n ba\0309ng t\00F4\0309ng h\01A1\0323p se\0303 gi\01A1\0301i ha\0323n s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng trong truy v\00E2\0301n c\01A1 s\01A1\0309, ch\01B0\0301 kh\00F4ng pha\0309i s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng hi\00EA\0309n thi\0323. Truy v\00E2\0301n c\01A1 s\01A1\0309 cu\0309a ba\0323n v\01B0\01A1\0323t qua\0301 s\00F4\0301 l\01B0\01A1\0323ng ha\0300ng t\00F4\0301i \0111a la\0300 %0. Ha\0303y a\0301p du\0323ng b')
||unistr('\00F4\0323 lo\0323c \0111\00EA\0309 gia\0309m s\00F4\0301 l\01B0\01A1\0323ng d\01B0\0303 li\00EA\0323u trong truy v\00E2\0301n c\01A1 s\01A1\0309 cu\0309a ba\0323n.')
,p_version_scn=>2693764
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960089158028094)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926049031028084)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ba\0309ng t\00F4\0309ng h\01A1\0323p ch\01B0\0301a qua\0301 nhi\00EA\0300u gia\0301 tri\0323 ri\00EAng bi\00EA\0323t - kh\00F4ng th\00EA\0309 ta\0323o SQL ba\0309ng t\00F4\0309ng h\01A1\0323p.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857066721028064)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem ba\0309ng t\00F4\0309ng h\01A1\0323p cu\0309a %0')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982856287028101)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem tr\01B0\01A1\0301c')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913325421028080)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\01A1\0301c')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007673983028108)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0301nh')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983819084028101)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o chi\0301nh')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869557446028067)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Bao g\1ED3m c\00E1c th\1EBB tr\1EE3 n\0103ng')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830399268028056)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i bo\0309 v\0103n ba\0309n \0111a da\0323ng th\01B0\0301c')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938755793028088)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ri\00EAng t\01B0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893746865028075)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4ng khai')
,p_version_scn=>2693862
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889339407028073)
,p_name=>'APEXIR_RED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0111o\0309')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035707078028117)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 ti\0303nh cu\0309a vu\0300ng %0 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922860894028083)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922928252028083)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a t\00E2\0301t ca\0309')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031162880028115)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a bi\00EA\0309u \0111\00F4\0300')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922424653028083)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a d\00E2\0301u ng\0103\0301t \0111i\00EA\0300u khi\00EA\0309n')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922135006028083)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a b\00F4\0323 lo\0323c')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922220612028083)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'vi'
,p_message_text=>unistr('X\00F3a mu\0323c h\1ED3i t\01B0\1EDFng')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031257135028115)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('X\00F3a mu\0323c ph\00E2n nh\00F3m theo')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130922563206028083)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a ph\00E2\0300n \0111a\0301nh d\00E2\0301u')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031345094028115)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012475723028110)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a ba\0301o ca\0301o')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994249866028104)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00F4\0309i t\00EAn ba\0301o ca\0301o m\0103\0323c \0111i\0323nh')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932044218028086)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00F4\0309i t\00EAn ba\0301o ca\0301o')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913657128028081)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o')
,p_is_js_message=>true
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131010664697028109)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885894783028072)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E1o c\00E1o t\01B0\01A1ng t\00E1c \0111\00E3 l\01B0u v\1EDBi b\00ED danh %0 kh\00F4ng t\1ED3n t\1EA1i.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939033299028088)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885958787028072)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 b\00E1o c\00E1o t\01B0\01A1ng t\00E1c \0111\00E3 l\01B0u %0 kh\00F4ng t\1ED3n t\1EA1i.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930378213028085)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t ba\0301o ca\0301o')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130854545594028063)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0300i \0111\0103\0323t ba\0301o ca\0301o cu\0309a %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910696828028080)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00EA\0301 \0111\00F4\0323 xem ba\0301o ca\0301o')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914828337028081)
,p_name=>'APEXIR_RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893931443028075)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4i ph\1EE5c b\00E1o c\00E1o v\1EC1 c\00E0i \0111\1EB7t m\1EB7c \0111\1ECBnh.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889112607028073)
,p_name=>'APEXIR_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006732497028108)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n kh\00F4ng th\00EA\0309 s\01B0\0309 du\0323ng ROWID la\0300m c\00F4\0323t ma\0303 chi\0301nh cho Ngu\00F4\0300n d\01B0\0303 li\00EA\0323u REST.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921535078028083)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984594035028101)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng m\00F4\0303i trang')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959854073028094)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ha\0300ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959690449028094)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ha\0300ng %0')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960224814028094)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh c\00F4\0323t ha\0300ng.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960469997028094)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ha\0300ng pha\0309i kha\0301c v\01A1\0301i c\00F4\0323t ba\0309ng t\00F4\0309ng h\01A1\0323p.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936095676028087)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 l\1ECDc ha\0300ng')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910798024028080)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng %0/%1')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130915012205028081)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'vi'
,p_message_text=>unistr('V\0103n ba\0309n ha\0300ng ch\01B0\0301a')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888438793028073)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925649587028084)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o \0111a\0303 l\01B0u')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925520406028084)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o \0111a\0303 l\01B0u = "%0"')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927727253028085)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E0i \0111\1EB7t b\00E1o c\00E1o hi\1EC7n t\1EA1i s\1EBD \0111\01B0\1EE3c du\0300ng l\00E0m m\1EB7c \0111\1ECBnh cho t\1EA5t c\1EA3 ng\01B0\1EDDi d\00F9ng.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130994169253028104)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u ba\0301o ca\0301o m\0103\0323c \0111i\0323nh')
,p_is_js_message=>true
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914733289028081)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u ba\0301o ca\0301o')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031520363028115)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u ba\0301o ca\0301o*')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985558680028102)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920456964028083)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Thanh ti\0300m ki\00EA\0301m')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130853866607028063)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'vi'
,p_message_text=>unistr('Thanh ti\0300m ki\00EA\0301m cu\0309a %0')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131031406031028115)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m ki\00EA\0301m: %0')
,p_is_js_message=>true
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991003869028103)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0300m ki\00EA\0301m ba\0301o ca\0301o')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975089301028099)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1ED9t \0111\00E3 ch\1ECDn')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890174016028074)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('- Cho\0323n c\00F4\0323t -')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914084370028081)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n c\00F4\0323t')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893681617028075)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('- Cho\0323n ha\0300m -')
,p_version_scn=>2693860
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921241996028083)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('- Cho\0323n c\00F4\0323t ph\00E2n nho\0301m theo -')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959356239028094)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('- Cho\0323n c\00F4\0323t ba\0309ng t\00F4\0309ng h\01A1\0323p -')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009679052028109)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ha\0300ng')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959400122028094)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('- Cho\0323n c\00F4\0323t ha\0300ng -')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130840949323028059)
,p_name=>'APEXIR_SEND'
,p_message_language=>'vi'
,p_message_text=>unistr('G\01B0\0309i')
,p_is_js_message=>true
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863479642028066)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('G\01B0\0309i d\01B0\01A1\0301i da\0323ng email')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888867942028073)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 t\01B0\0323')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130914270422028081)
,p_name=>'APEXIR_SORT'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p')
,p_is_js_message=>true
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923735818028084)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 t\0103ng d\00E2\0300n')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923872698028084)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p theo th\01B0\0301 t\01B0\0323 gia\0309m d\00E2\0300n')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011864536028110)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\1EE9 t\1EF1 s\1EAFp x\1EBFp')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918175144028082)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'vi'
,p_message_text=>unistr('d\1EA5u c\00E1ch')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130929368631028085)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tra\0323ng tha\0301i %0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983219132028101)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103ng ky\0301')
,p_is_js_message=>true
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009050448028109)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'vi'
,p_message_text=>unistr('K\00EA\0301t thu\0301c')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828003903028055)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1ECF qua n\1EBFu kh\00F4ng t\00ECm th\1EA5y d\1EEF li\1EC7u')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131008992165028109)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t \0111\00E2\0300u t\01B0\0300')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009815161028109)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000793815028106)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'vi'
,p_message_text=>unistr('%0, Ba\0301o ca\0301o = %1, Xem = %2')
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887703973028073)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0300u v\0103n ba\0309n')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906496473028078)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('nga\0300y')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906311389028078)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('gi\01A1\0300')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906292329028078)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'vi'
,p_message_text=>unistr('phu\0301t')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906660496028078)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('tha\0301ng')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906525877028078)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('tu\00E2\0300n')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130906732171028079)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('n\0103m')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131012267278028110)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t/t\0103\0301t')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923019506028083)
,p_name=>'APEXIR_TOP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\00EAn cu\0300ng')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005724534028108)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t \0111a\0303 ta\0301ch nho\0301m')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924522841028084)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ph\00E2\0300n \0111a\0301nh d\00E2\0301u pha\0309i la\0300 duy nh\00E2\0301t.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892417004028074)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('loa\0323i d\01B0\0303 li\00EA\0323u kh\00F4ng \0111\01B0\01A1\0323c h\00F4\0303 tr\01A1\0323')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923136118028083)
,p_name=>'APEXIR_UP'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00EAn')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924708200028084)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y nh\00E2\0323p m\00F4\0323t ma\0300u h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130924899248028084)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0303y nh\00E2\0323p m\00F4\0323t c\00E2\0301u tru\0301c \0111i\0323nh da\0323ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130889615438028074)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923658728028083)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300 tru\0323c cho gia\0301 tri\0323')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130931440043028086)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u co\0301 gia\0301 tri\0323')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130893054470028074)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t do\0323c')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131001867934028107)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'vi'
,p_message_text=>unistr('Do\0323c')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930799927028086)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem bi\00EA\0309u \0111\00F4\0300')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989389190028103)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem chi ti\00EA\0301t')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033630906028116)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o ch\01B0a \0111\01B0\01A1\0323c xa\0301c \0111i\0323nh ch\00EA\0301 \0111\00F4\0323 xem %0.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989480626028103)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem mu\0323c ph\00E2n nh\00F3m theo')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989288241028103)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u t\01B0\01A1\0323ng ch\00EA\0301 \0111\00F4\0323 xem')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959112803028094)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem ba\0309ng t\00F4\0309ng h\01A1\0323p')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130930822761028086)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem b\00E1o c\00E1o')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983436876028101)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng tu\00E2\0300n')
,p_version_scn=>2693886
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913536114028081)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o \0111ang x\01B0\0309 ly\0301')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011253262028109)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 nga\0300y')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011157172028109)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\01A1\0300')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011074510028109)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 phu\0301t')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011447306028109)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tha\0301ng')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011322342028109)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tu\00E2\0300n')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131011578157028109)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 n\0103m')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131009205038028109)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('N\0103m')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130887407314028073)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'vi'
,p_message_text=>unistr('va\0300ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130888903506028073)
,p_name=>'APEXIR_YES'
,p_message_language=>'vi'
,p_message_text=>unistr('Co\0301')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130923481854028083)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 ch\01B0\0301a < or > la\0300 ca\0301c ky\0301 t\01B0\0323 kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130947322760028091)
,p_name=>'APEX_REGION'
,p_message_language=>'vi'
,p_message_text=>unistr('Vu\0300ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838496908028058)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 tri\0301ch xu\00E2\0301t t\00E2\0323p tin ZIP.')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838364440028058)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng t\00ECm th\1EA5y ch\1EEF k\00FD cu\1ED1i th\01B0 m\1EE5c trung t\00E2m. T\00E2\0323p tin n\00E0y kh\00F4ng ph\1EA3i l\00E0 t\00E2\0323p tin ZIP.')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130869479490028067)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 vi pha\0323m \0111i\1EC1u ki\1EC7n ti\00EAn quy\1EBFt c\1EE7a API')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891510074028074)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 l\00E2\0301y gia\0301 tri\0323 cho Ca\0300i \0111\0103\0323t \01B0\0301ng du\0323ng %0 vi\0300 tu\0300y cho\0323n ba\0309n d\01B0\0323ng \0111\01B0\01A1\0323c li\00EAn k\00EA\0301t bi\0323 v\00F4 hi\00EA\0323u ho\0301a.')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891446878028074)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 \0111\0103\0323t gia\0301 tri\0323 cho Ca\0300i \0111\0103\0323t \01B0\0301ng du\0323ng %0 vi\0300 tu\0300y cho\0323n ba\0309n d\01B0\0323ng \0111\01B0\01A1\0323c li\00EAn k\00EA\0301t bi\0323 v\00F4 hi\00EA\0323u ho\0301a.')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004097880028107)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 ca\0300i \0111\0103\0323t \01B0\0301ng du\0323ng %0 kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131003962872028107)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a xa\0301c \0111i\0323nh c\00E0i \0111\1EB7t \1EE9ng d\1EE5ng \0111\01B0\1EE3c y\00EAu c\1EA7u %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004136179028107)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 \0111\0103\0323t gia\0301 tri\0323 r\00F4\0303ng cho ca\0300i \0111\0103\0323t \01B0\0301ng du\0323ng %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878045899028070)
,p_name=>'BACK'
,p_message_language=>'vi'
,p_message_text=>unistr('Quay la\0323i')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860430694028065)
,p_name=>'BUILDER'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh ta\0323o')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934059251028087)
,p_name=>'BUTTON LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Nha\0303n nu\0301t')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857316599028064)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'vi'
,p_message_text=>unistr('Nho\0301m CSS cu\0309a nu\0301t')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895891050028075)
,p_name=>'BUTTON_ID'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 nu\0301t \0111a\0303 ta\0323o se\0303 la\0300 Ma\0303 ti\0303nh cu\0309a nu\0301t n\00EA\0301u \0111\01B0\01A1\0323c xa\0301c \0111i\0323nh. N\00EA\0301u kh\00F4ng ma\0303 se\0303 la\0300 ma\0303 \0111\01B0\01A1\0323c ta\0323o n\00F4\0323i b\00F4\0323 \01A1\0309 \0111i\0323nh da\0323ng ''B'' || [Ma\0303 nu\0301t n\00F4\0323i b\00F4\0323]')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829816883028055)
,p_name=>'CANDLESTICK'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\0300nh n\00EA\0301n')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943822008028089)
,p_name=>'CENTER'
,p_message_language=>'vi'
,p_message_text=>unistr('Gi\01B0\0303a')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890440255028074)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u %0')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880438842028071)
,p_name=>'CHECK$'
,p_message_language=>'vi'
,p_message_text=>unistr('b\1ED9 ch\1ECDn h\00E0ng')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131005832976028108)
,p_name=>'CHECKED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0111a\0303 cho\0323n')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982274931028101)
,p_name=>'COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t')
,p_version_scn=>2693883
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939804636028088)
,p_name=>'COMMENTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\00FA th\00EDch')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920888422028083)
,p_name=>'CONTINUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0301p tu\0323c')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878303635028070)
,p_name=>'COPYRIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0309n quy\00EA\0300n &copy; 1999, %0, Oracle va\0300/ho\0103\0323c ca\0301c c\00F4ng ty li\00EAn k\00EA\0301t cu\0309a Oracle.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926536438028084)
,p_name=>'COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00EA\0301m')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933518899028086)
,p_name=>'CREATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0323o')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988983677028103)
,p_name=>'CREATED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 ta\0323o')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989071627028103)
,p_name=>'CREATED_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i ta\0323o')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909944388028079)
,p_name=>'CREATED_ON'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y ta\0323o')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921030274028083)
,p_name=>'CUSTOM'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F9y ch\1EC9nh')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932241224028086)
,p_name=>'CUSTOMIZE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\0300y chi\0309nh')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934221839028087)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111\1EB7t l\1EA1i ca\0301c tu\0300y cho\0323n trang cho ng\01B0\1EDDi d\00F9ng %0.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934337446028087)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 thay \0111\00F4\0309i ca\0301c tu\0300y cho\0323n cho ng\01B0\1EDDi d\00F9ng %0.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934116160028087)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 \0111\1EB7t l\1EA1i ca\0301c tu\0300y cho\0323n trang cho ng\01B0\1EDDi d\00F9ng %0.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895292286028075)
,p_name=>'DAILY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng nga\0300y')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858660289028064)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0323p tin \0111a\0303 ta\0309i l\00EAn kh\00F4ng h\01A1\0323p l\00EA\0323 ho\0103\0323c co\0301 \0111u\00F4i kh\00F4ng chi\0301nh xa\0301c.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890623847028074)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 s\01B0\0309 du\0323ng b\00F4\0323 cho\0323n XML ho\0103\0323c JSON kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835704413028057)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4\0300 s\01A1 d\01B0\0303 li\00EA\0323u va\0300 t\00E2\0323p tin \0111a\0303 ta\0309i l\00EAn kh\00F4ng ch\01B0\0301a b\00E2\0301t ky\0300 c\00F4\0323t na\0300o cu\0309a ba\0309ng \0111i\0301ch.')
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949653969028091)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y d\01B0\0303 li\00EA\0323u trong t\00E2\0323p tin \0111a\0303 ta\0309i l\00EAn.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949771084028091)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y d\01B0\0303 li\00EA\0323u trong ba\0309ng ti\0301nh "%0".')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855522174028063)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0323p tin \0111a\0303 chi\0309 \0111i\0323nh kh\00F4ng pha\0309i la\0300 t\00E2\0323p tin XLSX.')
,p_version_scn=>2693831
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130821544837028053)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'vi'
,p_message_text=>unistr('Qu\00E1 tr\00ECnh t\1EA3i d\1EEF li\1EC7u \0111\00E3 ho\00E0n t\1EA5t: \0111\00E3 x\1EED l\00FD %0 h\00E0ng.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823899003028054)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Qu\00E1 tr\00ECnh t\1EA3i d\1EEF li\1EC7u \0111\00E3 ho\00E0n t\1EA5t: \0111\00E3 x\1EED l\00FD %0 h\00E0ng nh\01B0ng co\0301 1 l\1ED7i.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824145186028054)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('Qu\00E1 tr\00ECnh t\1EA3i d\1EEF li\1EC7u \0111\00E3 ho\00E0n t\1EA5t: \0111\00E3 x\1EED l\00FD %0 h\00E0ng nh\01B0ng co\0301 %1 l\1ED7i.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130823907581028054)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'vi'
,p_message_text=>unistr('Qu\00E1 tr\00ECnh t\1EA3i d\1EEF li\1EC7u \0111\00E3 ho\00E0n t\1EA5t: \0111\00E3 x\1EED l\00FD 1 h\00E0ng.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838257032028058)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Qu\00E1 tr\00ECnh t\1EA3i d\1EEF li\1EC7u \0111\00E3 ho\00E0n t\1EA5t: \0111\00E3 x\1EED l\00FD 1 h\00E0ng nh\01B0ng co\0301 l\1ED7i.')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130824040093028054)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('Qu\00E1 tr\00ECnh t\1EA3i d\1EEF li\1EC7u \0111\00E3 ho\00E0n t\1EA5t: \0111\00E3 x\1EED l\00FD 1 h\00E0ng ma\0300 kh\00F4ng c\00F3 l\1ED7i.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956771240028093)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t \0111i\0301ch')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863989897028066)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ta\0309i')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864025957028066)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i ti\1EC1n x\1EED l\00FD')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956824768028093)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t ngu\00F4\0300n')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957620397028093)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng nga\0300y/s\00F4\0301')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863774340028066)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'vi'
,p_message_text=>unistr('Che\0300n ha\0300ng')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019898406028112)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng truy lu\0323c \0111\01B0\01A1\0323c gi\00E1 tr\1ECB ti\0300m ki\00EA\0301m.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130989568750028103)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'vi'
,p_message_text=>unistr('Chu\00E2\0309n kh\01A1\0301p d\01B0\0303 li\00EA\0323u/ba\0309ng')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957791107028094)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864180874028066)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 t\01B0\0323: Ha\0300nh \0111\00F4\0323ng')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951456571028092)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Quy t\1EAFc chuy\1EC3n \0111\1ED5i kh\00F4ng th\00E0nh c\00F4ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863833842028066)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E2\0323p nh\00E2\0323t ha\0300ng')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926152030028084)
,p_name=>'DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899022823028076)
,p_name=>'DAY'
,p_message_language=>'vi'
,p_message_text=>unistr('nga\0300y')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899144798028076)
,p_name=>'DAYS'
,p_message_language=>'vi'
,p_message_text=>unistr('nga\0300y')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939504006028088)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\0301nh n\0103ng g\01A1\0303 l\00F4\0303i kh\00F4ng \0111\01B0\01A1\0323c ki\0301ch hoa\0323t cho \01B0\0301ng du\0323ng na\0300y.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130991241114028104)
,p_name=>'DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('M\0103\0323c \0111i\0323nh')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899828139028077)
,p_name=>'DELETE'
,p_message_language=>'vi'
,p_message_text=>unistr('xo\0301a')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875421774028069)
,p_name=>'DELETE_MSG'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1EA1n c\00F3 mu\1ED1n th\1EF1c hi\1EC7n h\00E0nh \0111\1ED9ng x\00F3a n\00E0y kh\00F4ng?')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855056631028063)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c ghi \0111e\0300 phi\00EAn')
,p_version_scn=>2693831
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855938334028063)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho phe\0301p ghi \0111e\0300 phi\00EAn')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856800102028064)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xa\0309y ra l\00F4\0303i khi ta\0309i ca\0301c mu\0323c ghi \0111e\0300 phi\00EAn.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856604376028064)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xa\0309y ra l\00F4\0303i khi l\01B0u ca\0301c mu\0323c ghi \0111e\0300 phi\00EAn.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130856529154028064)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 l\01B0u ca\0301c mu\0323c ghi \0111e\0300 phi\00EAn. Ha\0303y \0111o\0301ng h\00F4\0323p thoa\0323i na\0300y \0111\00EA\0309 xem ca\0301c thay \0111\00F4\0309i.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829748597028055)
,p_name=>'DIAL_PCT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0309ng chia \0111\00F4\0323 (Ph\00E2\0300n tr\0103m)')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130870773275028068)
,p_name=>'DOWNLOAD'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i xu\00F4\0301ng')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990387575028103)
,p_name=>'DUP_USER'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ng\01B0\01A1\0300i du\0300ng bi\0323 tru\0300ng l\0103\0323p trong danh sa\0301ch.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879150151028070)
,p_name=>'EDIT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\1EC9nh s\1EEDa')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890364893028074)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y \0111i\0323a chi\0309 email "%0".')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873035169028068)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Email na\0300y do %0 g\01B0\0309i.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990536968028103)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323a chi\0309 email qua\0301 da\0300i. Gi\01A1\0301i ha\0323n la\0300 240 ky\0301 t\01B0\0323.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920788722028083)
,p_name=>'ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951548912028092)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 \0111\1EB7t gi\00E1 tr\1ECB ngu\1ED3n m\1EE5c trang cho v\00F9ng l\00E0m m\1EDBi m\1ED9t ph\1EA7n trang')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912057511028080)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i ta\0323o')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873331384028069)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u \0111a\0303 h\00EA\0301t ha\0323n')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130865737962028066)
,p_name=>'FILE_EMPTY'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0323p tin bi\0323 tr\00F4\0301ng.')
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955526330028093)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ki\0301ch c\01A1\0303 cu\0309a t\00E2\0323p tin \0111a\0303 ta\0309i l\00EAn v\01B0\01A1\0323t qua\0301 %0 MB. Ha\0303y ta\0309i t\00E2\0323p tin nho\0309 h\01A1n l\00EAn.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875665090028069)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('X\00E1c th\1EF1c ng\01B0\1EDDi d\00F9ng kh\00F4ng th\00E0nh c\00F4ng v\00E0 m\1ED9t ho\1EB7c nhi\1EC1u t\00E2\0323p tin kh\00F4ng \0111\01B0\1EE3c t\1EA3i l\00EAn.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875777445028069)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0323c th\00EA\0309 n\00E0y kh\00F4ng cho ph\00E9p ng\01B0\1EDDi d\00F9ng ch\01B0a \0111\01B0\1EE3c x\00E1c th\1EF1c t\1EA3i t\00E2\0323p tin l\00EAn.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955663086028093)
,p_name=>'FILTERS'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 lo\0323c')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933614094028086)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xa\0309y ra 1 l\00F4\0303i')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932843502028086)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 xa\0309y ra %0 l\00F4\0303i')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878201557028070)
,p_name=>'FORM_OF'
,p_message_language=>'vi'
,p_message_text=>'%0/%1'
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917218689028082)
,p_name=>'GO'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019438274028112)
,p_name=>'HELP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p')
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860565297028065)
,p_name=>'HOME'
,p_message_language=>'vi'
,p_message_text=>unistr('Trang ch\1EE7')
,p_is_js_message=>true
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898812414028076)
,p_name=>'HOUR'
,p_message_language=>'vi'
,p_message_text=>unistr('gi\01A1\0300')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898987665028076)
,p_name=>'HOURS'
,p_message_language=>'vi'
,p_message_text=>unistr('gi\01A1\0300')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130880363817028071)
,p_name=>'ICON'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\00EA\0309u t\01B0\01A1\0323ng %0')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857618744028064)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01A1\0323 giu\0301p c\0103\0301t bi\00EA\0309u t\01B0\01A1\0323ng')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858818855028064)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E9o bi\00EA\0309u t\01B0\01A1\0323ng c\1EE7a b\1EA1n v\00E0 s\1EED d\1EE5ng thanh tr\01B0\1EE3t thu ph\00F3ng \0111\1EC3 \0111\0103\0323t la\0323i v\1ECB tri\0301 bi\00EA\0309u t\01B0\01A1\0323ng \0111\00F3 trong khung.</p>'),
'',
unistr('<p>Khi ta\0309i m\00F4\0323t bi\00EA\0309u t\01B0\01A1\0323ng m\01A1\0301i l\00EAn, bi\00EA\0309u t\01B0\01A1\0323ng \0111o\0301 se\0303 \0111\01B0\01A1\0323c chi\0309nh la\0323i c\01A1\0303 cho v\01B0\0300a v\01A1\0301i 3 \0111i\0323nh da\0323ng: bi\00EA\0309u t\01B0\01A1\0323ng y\00EAu thi\0301ch, nho\0309 va\0300 l\01A1\0301n.</p>'),
'',
unistr('<p>Khi t\1EADp trung v\00E0o tr\00ECnh c\1EAFt bi\00EA\0309u t\01B0\01A1\0323ng, ba\0323n co\0301 th\00EA\0309 s\01B0\0309 du\0323ng c\00E1c ph\00EDm t\0103\0301t sau \0111\00E2y:</p>'),
'<ul>',
unistr('    <li>M\0169i t\00EAn tr\00E1i: Di chuy\1EC3n h\00ECnh \1EA3nh sang tr\00E1i*</li>'),
unistr('     <li>M\0169i t\00EAn l\00EAn: Di chuy\1EC3n h\00ECnh \1EA3nh l\00EAn tr\00EAn*</li>'),
unistr('     <li>M\0169i t\00EAn ph\1EA3i: Di chuy\1EC3n h\00ECnh \1EA3nh sang ph\1EA3i*</li>'),
unistr('     <li>M\0169i t\00EAn xu\1ED1ng: Di chuy\1EC3n h\00ECnh \1EA3nh xu\1ED1ng d\01B0\01A1\0301i*</li>'),
unistr('     <li>I: Ph\00F3ng to</li>'),
unistr('     <li>O: Thu nh\1ECF</li>'),
unistr('     <li>L: Xoay tr\00E1i</li>'),
unistr('     <li>R: Xoay ph\1EA3i</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Gi\1EEF phi\0301m Shift \0111\1EC3 di chuy\1EC3n nhanh h\01A1n</em></p>')))
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864354980028066)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('K\00E9o \0111\1EC3 \0111\1EB7t l\1EA1i v\1ECB tr\00ED bi\1EC3u t\01B0\1EE3ng')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864470262028066)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\1EC3n thanh tr\01B0\1EE3t \0111\1EC3 \0111i\1EC1u ch\1EC9nh m\1EE9c thu ph\00F3ng')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857474716028064)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309nh s\01B0\0309a bi\00EA\0309u t\01B0\01A1\0323ng \01B0\0301ng du\0323ng')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857724085028064)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi l\01B0u bi\00EA\0309u t\01B0\01A1\0323ng')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940165583028088)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'vi'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> \01AF\0301ng du\0323ng na\0300y s\01B0\0309 du\0323ng ca\0301c bi\00EA\0309u t\01B0\01A1\0323ng cu\0303. Vi\00EA\0323c ta\0309i bi\00EA\0309u t\01B0\01A1\0323ng m\01A1\0301i l\00EAn se\0303 thay th\00EA\0301 mo\0323i bi\00EA\0309u t\01B0\01A1\0323ng cu\0303.</p>')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130858341210028064)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0309i bi\00EA\0309u t\01B0\01A1\0323ng m\01A1\0301i l\00EAn')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934512202028087)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng tin xa\0301c th\01B0\0323c \0111\0103ng nh\00E2\0323p kh\00F4ng h\01A1\0323p l\00EA\0323')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035654963028117)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 kh\00F4ng h\01A1\0323p l\00EA\0323 cho tham s\00F4\0301: %0')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928851551028085)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'vi'
,p_message_text=>unistr('D\01B0\01A1\0301i da\0323ng ca\0300i \0111\0103\0323t ba\0301o ca\0301o m\0103\0323c \0111i\0323nh')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928924893028085)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('D\01B0\01A1\0301i da\0323ng ba\0301o ca\0301o \0111\01B0\1EE3c \0111\1EB7t t\00EAn')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910834928028080)
,p_name=>'IR_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i %0. %1')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910549403028080)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 t\00EDnh to\00E1n m\01B0\0301c \0111i\1EC1u h\01B0\1EDBng bi\1EC3u m\1EABu. %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886175002028072)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ba\0301o ca\0301o t\01B0\01A1ng ta\0301c.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885523220028072)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Vu\0300ng ba\0301o ca\0301o t\01B0\01A1ng ta\0301c kh\00F4ng t\00F4\0300n ta\0323i trong \01B0\0301ng du\0323ng %0, trang %1 va\0300 vu\0300ng %2.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130928787194028085)
,p_name=>'IR_STAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 hi\00EA\0309n thi\0323 cho nha\0300 pha\0301t tri\00EA\0309n')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130916957487028082)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy v\00E2\0301n ba\0301o ca\0301o c\00E2\0300n co\0301 ma\0303 duy nh\00E2\0301t \0111\00EA\0309 xa\0301c \0111i\0323nh m\00F4\0303i ha\0300ng. Kh\00F4ng th\00EA\0309 s\01B0\0309 du\0323ng ma\0303 \0111a\0303 cung c\00E2\0301p cho truy v\00E2\0301n na\0300y. Ha\0303y xa\0301c \0111i\0323nh m\00F4\0323t c\00F4\0323t ma\0303 duy nh\00E2\0301t. %0')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917033205028082)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy v\00E2\0301n ba\0301o ca\0301o c\00E2\0300n co\0301 ma\0303 duy nh\00E2\0301t \0111\00EA\0309 xa\0301c \0111i\0323nh m\00F4\0303i ha\0300ng. Kh\00F4ng th\00EA\0309 s\01B0\0309 du\0323ng ma\0303 \0111a\0303 cung c\00E2\0301p cho truy v\00E2\0301n na\0300y. Ha\0303y chi\0309nh s\01B0\0309a ca\0301c thu\00F4\0323c ti\0301nh ba\0301o ca\0301o \0111\00EA\0309 xa\0301c \0111i\0323nh m\00F4\0323t c\00F4\0323t ma\0303 duy nh\00E2\0301t. %0')
,p_version_scn=>2693870
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957994898028094)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n t\00E2\0323p tin')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957862551028094)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ke\0301o va\0300 tha\0309 t\00E2\0323p tin va\0300o \0111\00E2y ho\0103\0323c')
,p_is_js_message=>true
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878531880028070)
,p_name=>'ITEMS'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912284489028080)
,p_name=>'ITEM_VALUE'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 mu\0323c')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926803732028084)
,p_name=>'LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Nha\0303n')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939417857028088)
,p_name=>'LANGUAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\00F4n ng\01B0\0303')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899528956028076)
,p_name=>'LAST'
,p_message_language=>'vi'
,p_message_text=>unistr('sau c\00F9ng')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875549329028069)
,p_name=>'LENGTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\00EA\0300u da\0300i')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933840271028087)
,p_name=>'LOGIN'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103ng nh\1EADp')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975493966028099)
,p_name=>'MANAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Qua\0309n ly\0301')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131038521814028118)
,p_name=>'MAXIMIZE'
,p_message_language=>'vi'
,p_message_text=>unistr('Pho\0301ng to')
,p_is_js_message=>true
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898683507028076)
,p_name=>'MINUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('phu\0301t')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898733660028076)
,p_name=>'MINUTES'
,p_message_language=>'vi'
,p_message_text=>unistr('phu\0301t')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990717901028103)
,p_name=>'MISSING_AT'
,p_message_language=>'vi'
,p_message_text=>unistr('Thi\00EA\0301u ky\0301 hi\00EA\0323u "@" trong \0111i\0323a chi\0309 email.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990990929028103)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'vi'
,p_message_text=>unistr('C\1EA3nh b\00E1o: Ch\01B0a xa\0301c \0111i\0323nh m\1EABu Trang h\1ED9p tho\1EA1i cho trang H\1ED9p tho\1EA1i %0 trong \1EE9ng d\1EE5ng %1.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990629566028103)
,p_name=>'MISSING_DOT'
,p_message_language=>'vi'
,p_message_text=>unistr('Thi\00EA\0301u d\00E2\0301u "." trong mi\00EA\0300n \0111i\0323a chi\0309 email.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936919654028087)
,p_name=>'MODULE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2n h\00EA\0323')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891120619028074)
,p_name=>'MONTH'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00E1ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895049322028075)
,p_name=>'MONTHLY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng tha\0301ng')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891242752028074)
,p_name=>'MONTHS'
,p_message_language=>'vi'
,p_message_text=>unistr('tha\0301ng')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926443969028084)
,p_name=>'MOVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\00EA\0309n')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997268680028105)
,p_name=>'MOVE_FROM'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\00EA\0309n t\01B0\0300')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997362837028105)
,p_name=>'MOVE_TO'
,p_message_language=>'vi'
,p_message_text=>unistr('Di chuy\00EA\0309n \0111\00EA\0301n')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130913413734028080)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi th\01B0\0323c hi\00EA\0323n thao ta\0301c xo\0301a nhi\00EA\0300u ha\0300ng: ha\0300ng= %0, %1, %2')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912443454028080)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng \0111\01B0\01A1\0323c la\0300 ng\01B0\01A1\0300i du\0300ng th\00F4ng th\01B0\01A1\0300ng')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861058786028065)
,p_name=>'NAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926663278028084)
,p_name=>'NEW'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0323o m\01A1\0301i')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890933004028074)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n co\0301 th\00EA\0309 \0111\0103ng nh\00E2\0323p va\0300o %0 b\0103\0300ng ca\0301ch chuy\00EA\0309n \0111\00EA\0301n:')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891091164028074)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng ba\0301o ta\0300i khoa\0309n %0 m\01A1\0301i')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019602752028112)
,p_name=>'NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EA\0301p theo')
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936813412028087)
,p_name=>'NO'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131033781564028116)
,p_name=>'NOBODY'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng co\0301 ai')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899930154028077)
,p_name=>'NOT'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng pha\0309i')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942867800028089)
,p_name=>'NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng pha\0309i gia\0301 tri\0323 r\00F4\0303ng')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912506399028080)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng pha\0309i %0')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932376865028086)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('kh\00F4ng ti\0300m th\00E2\0301y d\01B0\0303 li\00EA\0323u')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942328461028089)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ba\0301o ca\0301o co\0301 th\00EA\0309 c\00E2\0323p nh\00E2\0323t. Chi\0309 co\0301 th\00EA\0309 th\01B0\0323c hi\00EA\0323n ca\0301c thao ta\0301c c\00E2\0323p nh\00E2\0323t va\0300 xo\0301a nhi\00EA\0300u ha\0300ng tr\00EAn bi\00EA\0309u m\00E2\0303u da\0323ng ba\0309ng thu\00F4\0323c loa\0323i "Ba\0301o ca\0301o co\0301 th\00EA\0309 c\00E2\0323p nh\00E2\0323t".')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943262359028089)
,p_name=>'OK'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\1ED3ng \00FD')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938522819028088)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'vi'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131037418072028117)
,p_name=>'ORA_06550'
,p_message_language=>'vi'
,p_message_text=>unistr('ORA-06550: do\0300ng %0, c\00F4\0323t %1')
,p_version_scn=>2693895
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988380130028103)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1EA1n \0111ang s\1EED d\1EE5ng tr\00ECnh duy\1EC7t web \0111a\0303 l\1ED7i th\1EDDi. \0110\1EC3 bi\1EBFt danh s\00E1ch c\00E1c tr\00ECnh duy\1EC7t \0111\01B0\1EE3c h\1ED7 tr\1EE3, ha\0303y tham kh\1EA3o H\01B0\1EDBng d\1EABn c\00E0i \0111\1EB7t Oracle APEX.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883309965028072)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323t h\00E0ng \0111\01B0\1EE3c y\00EAu c\1EA7u kh\00F4ng h\1EE3p l\1EC7, d\1EEF li\1EC7u ngu\1ED3n c\1EE7a b\00E1o c\00E1o \0111\00E3 \0111\01B0\1EE3c s\1EEDa \0111\1ED5i.')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905300857028078)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh s\00F4\0301 trang h\01A1\0323p l\00EA\0323, vi\0301 du\0323: p?n=1234.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909596225028079)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\1EBFp theo')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909637559028079)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323t ti\00EA\0301p theo')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909794184028079)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\01A1\0301c')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130909873775028079)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323t tr\01B0\01A1\0301c')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019587767028112)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ph\00E2n trang')
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949562517028091)
,p_name=>'PASSWORD'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890231652028074)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u cu\0309a ba\0323n cho %0 \0111a\0303 \0111\01B0\01A1\0323c thay \0111\00F4\0309i.')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877982071028070)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\1EADt kh\1EA9u kh\00F4ng tu\00E2n thu\0309 c\00E1c quy t\1EAFc v\1EC1 \0111\00F4\0323 ph\01B0\0301c ta\0323p cu\0309a m\1EADt kh\1EA9u tr\00EAn trang web n\00E0y.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877066686028070)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u m\01A1\0301i pha\0309i ch\00EAnh l\00EA\0323ch i\0301t nh\00E2\0301t %0 ky\0301 t\01B0\0323 so v\01A1\0301i m\00E2\0323t kh\00E2\0309u cu\0303.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877639445028070)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u kh\00F4ng \0111\01B0\01A1\0323c ch\01B0\0301a t\00EAn ng\01B0\01A1\0300i du\0300ng.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877881898028070)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\1EADt kh\1EA9u ch\1EE9a m\1ED9t t\1EEB \0111\01A1n gi\1EA3n b\1ECB c\1EA5m.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877709054028070)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u kh\00F4ng \0111\01B0\01A1\0323c ch\01B0\0301a t\00EAn kh\00F4ng gian la\0300m vi\00EA\0323c.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876997905028070)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u pha\0309i ch\01B0\0301a i\0301t nh\00E2\0301t %0 ky\0301 t\01B0\0323.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877115667028070)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u pha\0309i ch\01B0\0301a i\0301t nh\00E2\0301t m\00F4\0323t ky\0301 t\01B0\0323 ba\0309ng ch\01B0\0303 ca\0301i (%0).')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877566953028070)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u pha\0309i ch\01B0\0301a i\0301t nh\00E2\0301t m\00F4\0323t ky\0301 t\01B0\0323 ch\01B0\0303 th\01B0\01A1\0300ng theo ba\0309ng ch\01B0\0303 ca\0301i.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877238271028070)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\1EADt kh\1EA9u ph\1EA3i ch\1EE9a \00EDt nh\1EA5t m\1ED9t k\00FD t\1EF1 s\1ED1 (0123456789).')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877392621028070)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u pha\0309i ch\01B0\0301a i\0301t nh\00E2\0301t m\00F4\0323t ky\0301 t\01B0\0323 d\00E2\0301u c\00E2u (%0).')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130877400718028070)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u pha\0309i ch\01B0\0301a i\0301t nh\00E2\0301t m\00F4\0323t ky\0301 t\01B0\0323 ch\01B0\0303 hoa theo ba\0309ng ch\01B0\0303 ca\0301i.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890716854028074)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\00F4ng ba\0301o \0111\0103\0323t la\0323i m\00E2\0323t kh\00E2\0309u')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875887790028069)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 s\01B0\0309 du\0323ng m\1EADt kh\1EA9u na\0300y vi\0300 m\00E2\0323t kh\00E2\0309u \0111a\0303 \0111\01B0\1EE3c s\1EED d\1EE5ng trong v\00F2ng %0 ng\00E0y qua.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130872560717028068)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\1EC3u \0111\1ED3 ph\1EA7n tr\0103m')
,p_is_js_message=>true
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964123835028095)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c')
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130964201307028095)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'vi'
,p_message_text=>unistr('M\1EE5c')
,p_version_scn=>2693879
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938390042028088)
,p_name=>'PERCENT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\00E2\0300n tr\0103m')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907617596028079)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Vui lo\0300ng li\00EAn h\00EA\0323 ng\01B0\01A1\0300i qua\0309n tri\0323.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019790427028112)
,p_name=>'PREVIOUS'
,p_message_language=>'vi'
,p_message_text=>unistr('Tr\01B0\01A1\0301c')
,p_version_scn=>2693893
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956381307028093)
,p_name=>'PRINT'
,p_message_language=>'vi'
,p_message_text=>'In'
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937124254028087)
,p_name=>'PRIVILEGES'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323c quy\00EA\0300n')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905777994028078)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'vi'
,p_message_text=>unistr('Tham chi\00EA\0301u vu\0300ng')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926753997028084)
,p_name=>'REPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937022174028087)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'vi'
,p_message_text=>unistr('Ky\0300 ba\0301o ca\0301o')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131019901716028112)
,p_name=>'REPORT_LABEL'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0301o ca\0301o: %0')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937718512028088)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00F4\0309ng s\00F4\0301 tr\00EAn ba\0301o ca\0301o')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883489658028072)
,p_name=>'RESET'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i ph\00E2n trang')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912176869028080)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i ph\00E2n trang')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942212626028089)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323t la\0323i m\00E2\0323t kh\00E2\0309u')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918072278028082)
,p_name=>'RESTORE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4i phu\0323c')
,p_is_js_message=>true
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130951620040028092)
,p_name=>'RESULTS'
,p_message_language=>'vi'
,p_message_text=>unistr('K\00EA\0301t qua\0309')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943340116028089)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Quay la\0323i \01B0\0301ng du\0323ng.')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130943774592028089)
,p_name=>'RIGHT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ph\1EA3i')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975754109028099)
,p_name=>'ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00E0ng %0')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926364158028084)
,p_name=>'ROW_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0301 l\01B0\01A1\0323ng ha\0300ng')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816186246028052)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ho\0309i Oracle')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816475113028052)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110o\0301ng Ask Oracle')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816727426028052)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch th\00F4ng ba\0301o')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816335115028052)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 Ask Oracle')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816643808028052)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'vi'
,p_message_text=>unistr('S\01A1 \0111\00F4\0300 s\1EA3n ph\1EA9m')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816594123028052)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh s\00E1ch g\1EE3i \00FD')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817426207028052)
,p_name=>'RW_CLEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('Xo\0301a')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817321895028052)
,p_name=>'RW_CLOSE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110o\0301ng')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817120740028052)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem th\00EAm')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817564310028052)
,p_name=>'RW_GO_TO'
,p_message_language=>'vi'
,p_message_text=>unistr('Chuy\00EA\0309n \0111\00EA\0301n')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816991603028052)
,p_name=>'RW_GP_STEP'
,p_message_language=>'vi'
,p_message_text=>unistr('B\01B0\01A1\0301c')
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817023780028052)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'vi'
,p_message_text=>'/'
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130816876737028052)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t t\0103\0301t ch\00EA\0301 \0111\00F4\0323 hi\00EA\0309n thi\0323 b\01B0\01A1\0301c')
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815983080028051)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'vi'
,p_message_text=>unistr('\00C2\0309n m\00E2\0323t kh\00E2\0309u')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817220436028052)
,p_name=>'RW_OPEN'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815727001028051)
,p_name=>'RW_ORACLE'
,p_message_language=>'vi'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130815821098028051)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 m\00E2\0323t kh\00E2\0309u')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130817627074028052)
,p_name=>'RW_START'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t \0111\00E2\0300u')
,p_is_js_message=>true
,p_version_scn=>2693770
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130942748803028089)
,p_name=>'SAVE'
,p_message_language=>'vi'
,p_message_text=>unistr('L\01B0u')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938924302028088)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('M\0103\0323c \0111i\0323nh thay th\1EBF')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939365099028088)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00F4 ta\0309')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938824131028088)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('M\0103\0323c \0111i\0323nh chi\0301nh')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939654370028088)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F3 s\1EB5n h\01A1n %0 h\00E0ng. Ha\0303y t\0103ng b\1ED9 ch\1ECDn h\00E0ng \0111\1EC3 xem nhi\1EC1u h\00E0ng h\01A1n.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131007097821028108)
,p_name=>'SEARCH'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm ki\1EBFm')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898547984028076)
,p_name=>'SECONDS'
,p_message_language=>'vi'
,p_message_text=>unistr('gi\00E2y')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938427589028088)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem ph\00E2\0300n \0111i\0301nh ke\0300m')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999069137028106)
,p_name=>'SELECT_ROW'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ha\0300ng')
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938142576028088)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'vi'
,p_message_text=>unistr('T\0103\0301t ch\00EA\0301 \0111\00F4\0323 tri\0300nh \0111o\0323c ma\0300n hi\0300nh')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938278853028088)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2\0323t ch\00EA\0301 \0111\00F4\0323 tri\0300nh \0111o\0323c ma\0300n hi\0300nh')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934424583028087)
,p_name=>'SHOW'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000835726028106)
,p_name=>'SHOW_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 t\00E2\0301t ca\0309')
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131025614219028114)
,p_name=>'SIGN_IN'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103ng nh\00E2\0323p')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130976560808028099)
,p_name=>'SIGN_OUT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103ng xu\00E2\0301t')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927358779028085)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 nga\0300y tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934909212028087)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 nga\0300y k\00EA\0309 t\01B0\0300 b\00E2y gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927238481028085)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\01A1\0300 tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934886497028087)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\01A1\0300 k\00EA\0309 t\01B0\0300 b\00E2y gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927193385028085)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 phu\0301t tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934759288028087)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 phu\0301t k\00EA\0309 t\01B0\0300 b\00E2y gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927588064028085)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tha\0301ng tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935145300028087)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tha\0301ng k\00EA\0309 t\01B0\0300 b\00E2y gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935371920028087)
,p_name=>'SINCE_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00E2y gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927075917028085)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\00E2y tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130934614174028087)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 gi\00E2y k\00EA\0309 t\01B0\0300 b\00E2y gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927413462028085)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tu\00E2\0300n tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935085728028087)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 tu\00E2\0300n k\00EA\0309 t\01B0\0300 b\00E2y gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130927612591028085)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 n\0103m tr\01B0\01A1\0301c')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935238421028087)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 n\0103m k\00EA\0309 t\01B0\0300 b\00E2y gi\01A1\0300')
,p_is_js_message=>true
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921193054028083)
,p_name=>'STANDARD'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu chu\00E2\0309n')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938002336028088)
,p_name=>'START_DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Nga\0300y b\0103\0301t \0111\00E2\0300u')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873230760028069)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n nh\00E2\0323n \0111\01B0\01A1\0323c email na\0300y t\01B0\0300 go\0301i \0111\0103ng ky\0301 ba\0301o ca\0301o t\01B0\01A1ng ta\0301c do %0 ta\0323o.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034838066028116)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'vi'
,p_message_text=>unistr('Go\0301i \0111\0103ng ky\0301')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984249199028101)
,p_name=>'TAB'
,p_message_language=>'vi'
,p_message_text=>'Tab'
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898477297028076)
,p_name=>'TITLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ti\00EAu \0111\00EA\0300')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878142878028070)
,p_name=>'TODAY'
,p_message_language=>'vi'
,p_message_text=>unistr('H\00F4m nay')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937675211028088)
,p_name=>'TOTAL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\1ED5ng')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879478902028070)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Co\0301 th\00EA\0309 cho\0323n t\00F4\0301i \0111a %0 c\00F4\0323t.')
,p_version_scn=>2693850
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835226597028057)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Thu go\0323n t\00E2\0301t ca\0309')
,p_is_js_message=>true
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835827502028057)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'vi'
,p_message_text=>unistr('Thu go\0323n t\00E2\0301t ca\0309 mu\0323c b\00EAn d\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130834878117028057)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 r\00F4\0323ng t\00E2\0301t ca\0309')
,p_is_js_message=>true
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835572038028057)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'vi'
,p_message_text=>unistr('M\01A1\0309 r\00F4\0323ng t\00E2\0301t ca\0309 mu\0323c b\00EAn d\01B0\01A1\0301i')
,p_is_js_message=>true
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130836013229028057)
,p_name=>'TREE.REPARENT'
,p_message_language=>'vi'
,p_message_text=>unistr('Thay \0111\00F4\0309i tha\0300nh ph\00E2\0300n cha')
,p_is_js_message=>true
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958169965028094)
,p_name=>'TREES'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E2y')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000986625028106)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('B\0103\0301t bu\00F4\0323c')
,p_version_scn=>2693889
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130921886019028083)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng \0111\01B0\01A1\0323c u\0309y quy\00EA\0300n')
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130972003394028098)
,p_name=>'UNAVAILABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng s\0103\0303n co\0301')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935752920028087)
,p_name=>'UNKNOWN'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng xa\0301c \0111i\0323nh')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874198016028069)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 x\1EA3y ra l\1ED7i x\00E1c th\1EF1c kh\00F4ng \0111\01B0\1EE3c nh\1EADn d\1EA1ng.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876327983028069)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'vi'
,p_message_text=>unistr('N\00EA\0301u ba\0323n kh\00F4ng mu\00F4\0301n nh\00E2\0323n email n\01B0\0303a, ha\0303y nh\00E2\0301p va\0300o <a href="%0">hu\0309y \0111\0103ng ky\0301</a> \0111\00EA\0309 qua\0309n ly\0301 go\0301i \0111\0103ng ky\0301 cu\0309a ba\0323n.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130873172932028069)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'vi'
,p_message_text=>unistr('N\00EA\0301u ba\0323n kh\00F4ng mu\00F4\0301n nh\00E2\0323n email n\01B0\0303a, ha\0303y truy c\00E2\0323p va\0300o URL sau \0111\00E2y \0111\00EA\0309 qua\0309n ly\0301 go\0301i \0111\0103ng ky\0301 cu\0309a ba\0323n:')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130912644567028080)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('loa\0323i d\01B0\0303 li\00EA\0323u kh\00F4ng \0111\01B0\01A1\0323c h\00F4\0303 tr\01A1\0323')
,p_version_scn=>2693868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899706032028076)
,p_name=>'UPDATE'
,p_message_language=>'vi'
,p_message_text=>unistr('c\00E2\0323p nh\00E2\0323t')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898350247028076)
,p_name=>'UPDATED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 c\1EADp nh\1EADt')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841532444028059)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110ang n\00E2ng c\00E2\0301p')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130841870212028059)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'vi'
,p_message_text=>unistr('Oracle APEX \0111ang \0111\01B0\01A1\0323c n\00E2ng c\00E2\0301p l\00EAn phi\00EAn ba\0309n m\01A1\0301i h\01A1n. Qua\0301 tri\0300nh na\0300y th\01B0\01A1\0300ng m\00E2\0301t t\00F4\0301i \0111a 3 phu\0301t.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905160794028078)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'vi'
,p_message_text=>unistr('URL \0111\01B0\01A1\0323c y\00EAu c\00E2\0300u \0111a\0303 bi\0323 c\00E2\0301m. Ha\0303y li\00EAn h\00EA\0323 ng\01B0\01A1\0300i qu\1EA3n tr\1ECB.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130926231110028084)
,p_name=>'USER'
,p_message_language=>'vi'
,p_message_text=>unistr('Ng\01B0\01A1\0300i du\0300ng')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130949422686028091)
,p_name=>'USERNAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ng\01B0\01A1\0300i du\0300ng')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990866507028103)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ng\01B0\01A1\0300i du\0300ng qua\0301 da\0300i. Gi\01A1\0301i ha\0323n la\0300 %0 ky\0301 t\01B0\0323.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933313151028086)
,p_name=>'USERS'
,p_message_language=>'vi'
,p_message_text=>unistr('ng\01B0\01A1\0300i du\0300ng')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130990485061028103)
,p_name=>'USER_EXISTS'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ng\01B0\01A1\0300i du\0300ng \0111a\0303 t\00F4\0300n ta\0323i.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131004232088028107)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\0300nh a\0309nh h\00F4\0300 s\01A1 cho ng\01B0\1EDDi d\00F9ng %0')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866173110028066)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'vi'
,p_message_text=>unistr('T\01B0\0323 \0111\00F4\0323ng ho\0301a - %0')
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864642995028066)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'vi'
,p_message_text=>'Trang %0 - %1 '
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867557694028067)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'vi'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130867664054028067)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'vi'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866539476028067)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E2\0301u hi\0300nh ti\0300m ki\00EA\0301m - %0')
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866490846028067)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch gia\0301 tri\0323 \0111\00F4\0323ng du\0300ng chung - %0')
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130866203834028066)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh nghi\0303a c\00F4ng vi\00EA\0323c - %0')
,p_version_scn=>2693842
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864718423028066)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'vi'
,p_message_text=>unistr('Lu\00F4\0300ng c\00F4ng vi\00EA\0323c - %0 ')
,p_version_scn=>2693839
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886875592028073)
,p_name=>'VALID'
,p_message_language=>'vi'
,p_message_text=>unistr('H\01A1\0323p l\00EA\0323')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878468680028070)
,p_name=>'VALIDATIONS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ki\00EA\0309m duy\00EA\0323t')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939187663028088)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh gia\0301 tri\0323')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985460775028102)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh gia\0301 tri\0323 cho %0')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908052176028079)
,p_name=>'VERTICAL'
,p_message_language=>'vi'
,p_message_text=>unistr('do\0323c')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899652996028076)
,p_name=>'VIEW'
,p_message_language=>'vi'
,p_message_text=>'xem'
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933476925028086)
,p_name=>'VIEWS'
,p_message_language=>'vi'
,p_message_text=>unistr('ch\00EA\0301 \0111\00F4\0323 xem')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939940952028088)
,p_name=>'VIEW_ALL'
,p_message_language=>'vi'
,p_message_text=>unistr('Xem t\00E2\0301t ca\0309')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879853354028071)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'vi'
,p_message_text=>unistr('Li\00EAn k\1EBFt kh\00F4ng hi\00EA\0309n thi\0323')
,p_is_js_message=>true
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130920607993028083)
,p_name=>'WARNING'
,p_message_language=>'vi'
,p_message_text=>unistr('Ca\0309nh ba\0301o')
,p_is_js_message=>true
,p_version_scn=>2693873
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899211654028076)
,p_name=>'WEEK'
,p_message_language=>'vi'
,p_message_text=>unistr('tu\00E2\0300n')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895195485028075)
,p_name=>'WEEKLY'
,p_message_language=>'vi'
,p_message_text=>unistr('Ha\0300ng tu\00E2\0300n')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899314672028076)
,p_name=>'WEEKS'
,p_message_language=>'vi'
,p_message_text=>unistr('tu\00E2\0300n')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130939251149028088)
,p_name=>'WELCOME_USER'
,p_message_language=>'vi'
,p_message_text=>unistr('Cha\0300o m\01B0\0300ng: %0')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937435048028088)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0301t hi\00EA\0323n th\1EA5y gi\00E1 tr\1ECB kh\00F4ng h\1EE3p l\1EC7, ha\0303y x\00E1c minh d\01B0\0303 li\00EA\0323u \0111a\0303 nh\00E2\0323p.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937593401028088)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0301t hi\00EA\0323n th\1EA5y gi\00E1 tr\1ECB kh\00F4ng h\1EE3p l\1EC7, ha\0303y x\00E1c minh d\01B0\0303 li\00EA\0323u \0111a\0303 nh\00E2\0323p.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875327246028069)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0301t hi\00EA\0323n th\1EA5y gi\00E1 tr\1ECB ng\00E0y kh\00F4ng h\1EE3p l\1EC7, ha\0303y x\00E1c minh \0111\1ECBnh d\1EA1ng ng\00E0y.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130937346359028088)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0301t hi\00EA\0323n th\1EA5y gi\00E1 tr\1ECB s\00F4\0301 kh\00F4ng h\1EE3p l\1EC7, ha\0303y x\00E1c minh \0111\1ECBnh d\1EA1ng s\00F4\0301.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886484153028073)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00ECm th\1EA5y gi\00E1 tr\1ECB nha\0303n th\01A1\0300i gian kh\00F4ng h\1EE3p l\1EC7, vui l\00F2ng x\00E1c minh \0111\1ECBnh d\1EA1ng nha\0303n th\01A1\0300i gian.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130910958778028080)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 li\00EAn k\1EBFt "%0". Ha\0303y s\1EED d\1EE5ng d\1EA5u ngo\1EB7c k\00E9p cho c\00E1c m\1EE5c nhi\1EC1u byte ho\1EB7c x\00E1c minh r\0103\0300ng \0111\1ED9 d\00E0i c\1EE7a m\1EE5c kh\00F4ng v\01B0\01A1\0323t qua\0301 30 byte. S\1EED d\1EE5ng c\00FA ph\00E1p v() \0111\1EC3 tham chi\1EBFu c\00E1c m\1EE5c d\00E0i qua\0301 30 byte.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900750727028077)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'vi'
,p_message_text=>unistr('Quy\1EC1n truy c\1EADp b\1ECB quy tri\0300nh ki\1EC3m tra b\1EA3o m\1EADt %0 t\1EEB ch\1ED1i')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903274246028077)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('\01AF\0301ng du\0323ng kh\00F4ng kha\0309 du\0323ng')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901617003028077)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y \01B0\0301ng du\0323ng.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901762471028077)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('\01B0\0301ng du\0323ng=%0 kh\00F4ng gian la\0300m vi\00EA\0323c=%1')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902165032028077)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Quy\00EA\0300n truy c\00E2\0323p va\0300o \01B0\0301ng du\0323ng na\0300y bi\0323 ha\0323n ch\00EA\0301, vui lo\0300ng th\01B0\0309 la\0323i sau.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902052110028077)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 ca\0301c nha\0300 pha\0301t tri\00EA\0309n \01B0\0301ng du\0323ng m\01A1\0301i co\0301 quy\00EA\0300n truy c\00E2\0323p va\0300o \01B0\0301ng du\0323ng na\0300y, vui lo\0300ng th\01B0\0309 la\0323i sau.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901224726028077)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-7744 Kh\00F4ng th\1EC3 x\1EED l\00FD nh\00E1nh \0111\00EA\0301n h\00E0m tr\1EA3 v\1EC1 URL.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901124923028077)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-7744 Kh\00F4ng th\1EC3 x\1EED l\00FD nh\00E1nh \0111\00EA\0301n h\00E0m tr\1EA3 v\1EC1 trang.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901460309028077)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1430 Kh\00F4ng h\00F4\0303 tr\01A1\0323 quy tri\0300nh go\0323i \0111\00EA\0309 hi\00EA\0309n thi\0323 t\01B0\0300 trang: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902566867028077)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1018 L\00F4\0303i khi xo\0301a b\00F4\0323 nh\01A1\0301 \0111\00EA\0323m b\01B0\01A1\0301c.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900913476028077)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1005 Loa\0323i ti\0301nh toa\0301n kh\00F4ng xa\0301c \0111i\0323nh.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901825291028077)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1201 Ma\0303 phi\00EAn kh\00F4ng \0111\01B0\01A1\0323c \0111\0103\0323t cho xa\0301c th\01B0\0323c tu\0300y chi\0309nh.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901985749028077)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'vi'
,p_message_text=>'trang=%0'
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901539802028077)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-7620 Kh\00F4ng th\00EA\0309 xa\0301c \0111i\0323nh kh\00F4ng gian la\0300m vi\00EA\0323c cho \01B0\0301ng du\0323ng (%0).')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882047024028071)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\1EC9nh s\1EEDa')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900601668028077)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1802 Kh\00F4ng th\00EA\0309 ti\0300m th\00E2\0301y ma\0303 mu\0323c "%0"')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900374628028077)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1002 Kh\00F4ng th\00EA\0309 ti\0300m th\00E2\0301y ma\0303 mu\0323c cho mu\0323c "%0" trong \01B0\0301ng du\0323ng "%1".')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900435005028077)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i kh\00F4ng mong \0111\01A1\0323i, kh\00F4ng th\00EA\0309 ti\0300m th\00E2\0301y t\00EAn mu\0323c \01A1\0309 c\00E2\0301p \0111\00F4\0323 \01B0\0301ng du\0323ng ho\0103\0323c trang.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900887090028077)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n \0111a\0303 \01A1\0309 trang \0111\00E2\0300u ti\00EAn cu\0309a d\01B0\0303 li\00EA\0323u.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917389760028082)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 mu\0323c (%0) kh\00F4ng pha\0309i la\0300 mu\0323c \0111\01B0\01A1\0323c xa\0301c \0111i\0323nh tr\00EAn trang hi\00EA\0323n ta\0323i.')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874986370028069)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 \0111\0103\0323t m\1EE5c b\1EB1ng c\00E1ch chuy\1EC3n ca\0301c \0111\1ED1i s\1ED1 sang \1EE9ng d\1EE5ng.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875238311028069)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'vi'
,p_message_text=>unistr('(Kh\00F4ng co\0301 gia\0301 tri\0323 t\00F4\0309ng ki\00EA\0309m na\0300o \0111\01B0\01A1\0323c cung c\00E2\0301p)')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874776278028069)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'vi'
,p_message_text=>unistr('M\1EE5c c\00F3 th\1EC3 \0111\01B0\1EE3c \0111\1EB7t khi \0111i k\00E8m m\00F4\0323t gia\0301 tri\0323 t\1ED5ng ki\1EC3m "d\1EA5u trang c\1EA5p ng\01B0\01A1\0300i du\0300ng".')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874612814028069)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'vi'
,p_message_text=>unistr('M\1EE5c c\00F3 th\1EC3 \0111\01B0\1EE3c \0111\1EB7t khi \0111i k\00E8m m\00F4\0323t gia\0301 tri\0323 t\1ED5ng ki\1EC3m "d\1EA5u trang c\1EA5p \1EE9ng d\1EE5ng".')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874894689028069)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('M\1EE5c c\00F3 th\1EC3 \0111\01B0\1EE3c \0111\1EB7t khi \0111i k\00E8m m\00F4\0323t gia\0301 tri\0323 t\1ED5ng ki\1EC3m "phi\00EAn".')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874551647028069)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Mu\0323c kh\00F4ng \0111\01B0\01A1\0323c ba\0309o v\00EA\0323.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902603539028077)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng co\0301 tr\01A1\0323 giu\0301p tr\00EAn trang.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130890505922028074)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng gian l\00E0m vi\1EC7c %0 kh\00F4ng c\00F3 \0111\1EB7c quy\1EC1n ph\00E2n ta\0301ch d\01B0\1EDBi d\1EA1ng gia\0309n \0111\1ED3 %1.')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130901091965028077)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1010 \0110a\0303 v\01B0\1EE3t qu\00E1 gi\1EDBi h\1EA1n \0111\1EC7 quy x\1EED l\00FD ch\00E2\0301p nh\00E2\0323n nha\0301nh \0111\00EA\0301n trang. %0')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130857520059028064)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Trang kh\00F4ng kha\0309 du\0323ng, ba\0323n kh\00F4ng th\00EA\0309 cha\0323y m\00E2\0303u trang.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875169828028069)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 go\0323i trang na\0300y b\0103\0300ng URL ho\0103\0323c b\0103\0300ng l\00EA\0323nh GET hay POST \0111\00F4\0301i v\01A1\0301i quy tri\0300nh hi\00EA\0309n thi\0323, ma\0300 pha\0309i go\0323i trang na\0300y b\0103\0300ng loa\0323i nha\0301nh "Nha\0301nh \0111\00EA\0301n trang".')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130959953739028094)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi c\00F4\0301 l\01B0u gi\00E1 tr\1ECB kh\00F4ng ph\1EA3i s\1ED1 v\00E0o m\1EE5c %0. ')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892248395028074)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0309n \0111\1ED3 ph\00E2n ta\0301ch c\1EE7a \1EE9ng d\1EE5ng "%0" kh\00F4ng t\1ED3n t\1EA1i trong c\01A1 s\1EDF d\1EEF li\1EC7u.')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892360995028074)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 co\0301 th\00EA\0309 s\01B0\0309 du\0323ng ca\0301c ta\0300i khoa\0309n trong kh\00F4ng gian la\0300m vi\00EA\0323c INTERNAL \0111\00EA\0309 truy c\00E2\0323p &PRODUCT_NAME. <a href="%0">Di\0323ch vu\0323 qua\0309n tri\0323</a>.')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900284372028077)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-1029 Kh\00F4ng th\00EA\0309 l\01B0u tr\01B0\0303 th\00F4ng tin phi\00EAn. phi\00EAn=%0 mu\0323c=%1')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903303637028078)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 d\1EEBng do\0300 ti\0300m: %0')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130900522800028077)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i kh\00F4ng mong \0111\01A1\0323i')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911362029028080)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i trong update_substitution_cache: %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903465323028078)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i cung c\00E2\0301p \01B0\0301ng du\0323ng va\0300 trang \0111\00EA\0309 xem tr\01A1\0323 giu\0301p.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130925133416028084)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y mu\0323c t\01B0\0323 \0111\00F4\0323ng.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860611021028065)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i truy v\00E2\0301n t\01B0\0323 \0111\00F4\0323ng: %0')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904508284028078)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 sa\0300ng lo\0323c %0 phi\00EAn.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845836153028060)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 th\1EF1c thi m\00E3 %0! Ma\0303 na\0300y kh\00F4ng \0111\01B0\1EE3c c\01A1 s\1EDF d\1EEF li\1EC7u h\1ED7 tr\1EE3 ho\1EB7c kh\00F4ng \0111\01B0\1EE3c k\00EDch ho\1EA1t b\0103\0300ng tham s\1ED1 th\01B0\0323c th\00EA\0309 MLE_LANGUAGES.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130843427268028060)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng du\0300ng \0111\01B0\01A1\0323c c\00F4ng c\1EE5 \0111a ng\00F4n ng\1EEF tr\00EAn phi\00EAn b\1EA3n c\01A1 s\1EDF d\1EEF li\1EC7u n\00E0y!')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882693894028071)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0309ng t\00E2\0323p h\01A1\0323p \01B0\0301ng du\0323ng kh\00F4ng \0111\01B0\01A1\0323c r\00F4\0303ng')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882400050028071)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'vi'
,p_message_text=>unistr('S\1ED1 thu\1ED9c t\00EDnh th\00E0nh ph\00E2\0300n \0111\01B0\1EE3c ch\1EC9 \0111\1ECBnh %0 kh\00F4ng h\1EE3p l\1EC7. S\1ED1 thu\1ED9c t\00EDnh ph\1EA3i n\1EB1m trong kho\1EA3ng t\1EEB 1 \0111\1EBFn %1')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882964053028072)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0323p h\01A1\0323p \01B0\0301ng du\0323ng \0111a\0303 t\00F4\0300n ta\0323i')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882705887028071)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn t\00E2\0323p h\01A1\0323p kh\00F4ng \0111\01B0\01A1\0323c r\00F4\0303ng')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882813047028071)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn t\00E2\0323p h\01A1\0323p kh\00F4ng \0111\01B0\01A1\0323c da\0300i qua\0301 255 ky\0301 t\01B0\0323')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882285519028071)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E2\0323p h\01A1\0323p \01B0\0301ng du\0323ng %0 kh\00F4ng t\00F4\0300n ta\0323i')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883051444028072)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'vi'
,p_message_text=>unistr('Con tr\1ECF v\1EABn ch\01B0a m\1EDF')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882301469028071)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Th\01B0\0301 t\01B0\0323 tha\0300nh ph\00E2\0300n %0 kh\00F4ng t\00F4\0300n ta\0323i trong t\00E2\0323p h\01A1\0323p \01B0\0301ng du\0323ng %1'),
''))
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130882551700028071)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('Th\01B0\0301 t\01B0\0323 tha\0300nh ph\00E2\0300n %0 kh\00F4ng t\00F4\0300n ta\0323i trong t\00E2\0323p h\01A1\0323p \01B0\0301ng du\0323ng "%1"')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835374181028057)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 thu\1EADt to\00E1n %0 \0111\1ED1i v\1EDBi ECDSA.')
,p_version_scn=>2693781
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130835081481028057)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 \0111\01B0\01A1\0300ng cong elip %0.')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960711450028094)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 ch\1EE9c n\0103ng m\1EADt m\00E3 "%0" tr\00EAn h\1EC7 th\1ED1ng n\00E0y.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013074850028110)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 ki\1EC3m tra kh\1EA3 n\0103ng truy c\1EADp')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904039638028078)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110o\0301ng')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904173819028078)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'vi'
,p_message_text=>unistr('Tu\0300y cho\0323n tu\0300y chi\0309nh trang')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904204879028078)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'vi'
,p_message_text=>unistr('M\0103\0323c \0111i\0323nh')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904315913028078)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 hi\00EA\0309n thi\0323')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904499053028078)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\0323 \00E2\0309n')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903892946028078)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'vi'
,p_message_text=>unistr('Cho\0323n ca\0301c vu\0300ng ba\0323n mu\00F4\0301n \0111\01B0a va\0300o trang na\0300y. Ca\0301c vu\0300ng \0111\01B0\01A1\0323c cho\0323n co\0301 th\00EA\0309 kh\00F4ng hi\00EA\0309n thi\0323 n\00EA\0301u ba\0323n \01A1\0309 ng\01B0\0303 ca\0309nh \01B0\0301ng du\0323ng kh\00F4ng phu\0300 h\01A1\0323p ho\0103\0323c kh\00F4ng co\0301 ca\0301c \0111\0103\0323c quy\00EA\0300n thi\0301ch h\01A1\0323p.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903984642028078)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'vi'
,p_message_text=>unistr('Trang n\00E0y kh\00F4ng th\00EA\0309 tu\0300y chi\0309nh.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013378422028110)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1EA1n c\00F3 th\1EC3 c\00E1 nh\00E2n h\00F3a giao di\1EC7n c\1EE7a \1EE9ng d\1EE5ng n\00E0y b\1EB1ng c\00E1ch thay \0111\1ED5i Ki\1EC3u ch\1EE7 \0111\1EC1. Ha\0303y ch\1ECDn Ki\1EC3u ch\1EE7 \0111\1EC1 t\1EEB danh s\00E1ch b\00EAn d\01B0\1EDBi r\00F4\0300i nh\1EA5p v\00E0o \00C1p d\1EE5ng thay \0111\1ED5i.')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131014112067028110)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'vi'
,p_message_text=>unistr('Hi\00EA\0309n thi\0323 vu\0300ng')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013282676028110)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'vi'
,p_message_text=>unistr('S\01B0\0309 du\0323ng ki\00EA\0309u m\0103\0323c \0111i\0323nh cu\0309a \01B0\0301ng du\0323ng')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131013187723028110)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Giao di\00EA\0323n ')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957349069028093)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 mu\0323c c\00F4\0323t \0111\01B0\01A1\0323c tham chi\00EA\0301u trong ph\00E2\0300n t\00F4\0309ng h\01A1\0323p %0 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130850024737028062)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 th\00EAm ta\0301c vu\0323 xu\1EA5t d\1EEF li\1EC7u cho \0111\1ECBnh d\1EA1ng %0.')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813078089028051)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 \0111\1EA7u ra CLOB \0111\1ED1i v\1EDBi \0111\1ECBnh d\1EA1ng %0.')
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957008140028093)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'vi'
,p_message_text=>unistr('D\1EA5u ng\1EAFt c\1ED9t c\00E2\0300n ph\1EA3i \1EDF \0111\1EA7u m\1EA3ng c\1ED9t.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957170293028093)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 mu\0323c nho\0301m c\00F4\0323t \0111\01B0\01A1\0323c tham chi\00EA\0301u trong %0 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130864273769028066)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('xu\00E2\0301t')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130871469933028068)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng xu\00E2\0301t pha\0309i la\0300 XML v\01A1\0301i Ma\0301y chu\0309 in la\0300 ORDS.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957414952028093)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 mu\0323c c\00F4\0323t \0111\01B0\01A1\0323c tham chi\00EA\0301u trong ph\00E2\0300n \0111a\0301nh d\00E2\0301u %0 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130860855119028065)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110i\0323nh da\0323ng xu\00E2\0301t kh\00F4ng h\01A1\0323p l\00EA\0323: %0')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130957210907028093)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Chi\0309 mu\0323c nho\0301m chi\0301nh \0111\01B0\01A1\0323c tham chi\00EA\0301u trong %0 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130982490001028101)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t %1 cu\0309a ba\0309ng %0 la\0300 c\00F4\0323t danh ti\0301nh "GENERATED ALWAYS". Ha\0303y \0111a\0309m ba\0309o r\0103\0300ng kh\00F4ng co\0301 c\00F4\0323t ngu\00F4\0300n na\0300o \0111\01B0\01A1\0323c chu\00E2\0309n kh\01A1\0301p v\01A1\0301i c\00F4\0323t %1 trong h\00F4\0323p thoa\0323i \0110i\0323nh c\00E2\0301u hi\0300nh.')
,p_version_scn=>2693883
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894064915028075)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'vi'
,p_message_text=>unistr('Kho\1EA3ng th\1EDDi gian g\01B0\0309i \0111a\0303 ch\1EC9 \0111\1ECBnh qu\00E1 th\1EA5p.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894181231028075)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a c\00F3 c\1ED9t n\00E0o \0111\01B0\1EE3c cung c\1EA5p \0111\1EC3 t\1EA3i d\1EEF li\1EC7u.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895428141028075)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng t\00ECm th\1EA5y c\1ED9t n\00E0o cho b\1ED9 ch\1ECDn h\00E0ng "%0". Ha\0303y th\01B0\0309 t\1EF1 \0111\1ED9ng ph\00E1t hi\1EC7n ho\1EB7c ki\00EA\0309m tra c\1EA5u tr\00FAc JSON.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904806620028078)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y ba\0309ng ti\0301nh trong t\00E2\0323p tin XLSX.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849925787028061)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E1c c\00E2\0301p \0111\01B0\1EE3c y\00EAu c\1EA7u cu\0309a h\00EA\0323 th\00F4\0301ng c\00E2\0301p b\00E2\0323c \0111\1EC3 kh\00E1m ph\00E1 (%0) v\01B0\1EE3t qu\00E1 gia\0301 tri\0323 t\1ED1i \0111a la\0300 %1.')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130904714867028078)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0309ng ti\0301nh \0111a\0303 chi\0309 \0111i\0323nh kh\00F4ng t\00F4\0300n ta\0323i trong t\00E2\0323p tin XLSX.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130883139014028072)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'vi'
,p_message_text=>unistr('Phi\00EAn b\1EA3n hi\1EC7n t\1EA1i c\1EE7a d\1EEF li\1EC7u trong c\01A1 s\1EDF d\1EEF li\1EC7u \0111\00E3 thay \0111\1ED5i k\1EC3 t\1EEB khi ng\01B0\1EDDi d\00F9ng kh\01A1\0309i cha\0323y quy tr\00ECnh c\1EADp nh\1EADt.')
,p_version_scn=>2693853
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886054152028072)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi c\00E2\0323p nh\00E2\0323t ca\0301c c\00F4\0323t ba\0301o ca\0301o: %0')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996546311028105)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 chuy\00EA\0309n \0111\00F4\0309i %0 sang SDO_GEOMETRY.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933019557028086)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 chuy\00EA\0309n \0111\00F4\0309i c\00F4\0323t %0 thu\00F4\0323c loa\0323i d\01B0\0303 li\00EA\0323u %1 sang VARCHAR2!')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940493804028088)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y c\00F4\0323t "%0" \0111a\0303 chi\0309 \0111i\0323nh cho thu\00F4\0323c ti\0301nh "%1" trong ngu\00F4\0300n d\01B0\0303 li\00EA\0323u!')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876519650028070)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 loa\0323i b\00F4\0323 lo\0323c %0 \0111\00F4\0301i v\01A1\0301i ca\0301c c\00F4\0323t nhi\00EA\0300u gia\0301 tri\0323.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131000020510028106)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'vi'
,p_message_text=>unistr('B\00F4\0323 lo\0323c "trong khoa\0309ng" kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130855628436028063)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y gia\0301 tri\0323 %2 trong c\00F4\0323t %0, ha\0300ng #%1.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130852354204028062)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t %0 ho\0103\0323c ha\0300ng #%1 kh\00F4ng t\00F4\0300n ta\0323i.')
,p_version_scn=>2693828
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838934150028058)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'vi'
,p_message_text=>unistr('Lo\1EA1i danh sa\0301ch gia\0301 tri\0323 \0111\01B0\1EE3c ch\1EC9 \0111\1ECBnh kh\00F4ng h\1EE3p l\1EC7.')
,p_version_scn=>2693805
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838845442028058)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Lo\1EA1i truy v\1EA5n kh\00F4ng h\1EE3p l\1EC7. Lo\1EA1i truy v\1EA5n ph\1EA3i l\00E0 B\1EA3ng, Truy v\1EA5n SQL ho\1EB7c H\00E0m PL/SQL tr\1EA3 v\1EC1 Truy v\1EA5n SQL.')
,p_version_scn=>2693797
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130933159774028086)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kh\00F4ng ph\00E2n ta\0301ch \0111\01B0\01A1\0323c truy v\00E2\0301n SQL!'),
'%0'))
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940540145028088)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y vi\0323 tri\0301 c\00F4\0323t \0111a\0303 chi\0309 \0111i\0323nh %0 cho thu\00F4\0323c ti\0301nh "%1" trong c\00E2u l\00EA\0323nh SQL!')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130830508994028056)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'vi'
,p_message_text=>unistr('Qua\0301 nhi\00EA\0300u mu\0323c \0111\01B0\01A1\0323c s\01B0\0309 du\0323ng trong b\00F4\0323 lo\0323c Nhi\00EA\0300u gi\00E1 tr\1ECB.')
,p_version_scn=>2693778
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130940337869028088)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a chi\0309 \0111i\0323nh c\00F4\0323t cho thu\00F4\0323c ti\0301nh "%0".')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838714891028058)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('N\1ED9i dung h\00E0m PL/SQL kh\00F4ng tr\1EA3 v\1EC1 gi\00E1 tr\1ECB.')
,p_version_scn=>2693793
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130956192428028093)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ngu\1ED3n d\1EEF li\1EC7u REST kh\00F4ng ch\1EE9a Thao t\00E1c \0111\1EC3 x\1EED l\00FD h\00E0nh \0111\1ED9ng DML \0111\01B0\1EE3c y\00EAu c\1EA7u.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997847811028105)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1ED9 l\1ECDc ph\1EA1m vi ch\1EC9 \0111\01B0\1EE3c h\1ED7 tr\1EE3 \0111\1ED1i v\1EDBi c\00E1c lo\1EA1i d\1EEF li\1EC7u NUMBER, DATE ho\1EB7c TIMESTAMP.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130818760297028052)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Y\00EAu c\00E2\0300u kh\00F4ng tha\0300nh c\00F4ng v\01A1\0301i %0')
,p_version_scn=>2693771
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130822200365028053)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng du\0300ng \0111\01B0\01A1\0323c t\00EDnh n\0103ng chuy\1EC3n \0111\1ED5i t\1EEB GeoJSON sang SDO_GEOMETRY (c\1ED9t %0) trong c\01A1 s\1EDF d\1EEF li\1EC7u n\00E0y.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825623719028054)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 t\00EDnh n\0103ng chuy\1EC3n \0111\1ED5i SDO_GEOMETRY (c\1ED9t %0) \0111\1ED1i v\1EDBi c\00E1c ngu\1ED3n d\1EEF li\1EC7u XML.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130849722479028061)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 k\00FD t\1EF1 %0 d\01B0\1EDBi d\1EA1ng d\1EA5u ph\00E2n c\00E1ch nhi\1EC1u gi\00E1 tr\1ECB.')
,p_version_scn=>2693822
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130997916543028105)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 s\01B0\0309 du\0323ng ha\0300m na\0300y tr\00EAn Ng\01B0\0303 ca\0309nh truy v\00E2\0301n.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130825772694028054)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i d\01B0\0303 li\00EA\0323u c\00F4\0323t kh\00F4ng kh\1EDBp.')
,p_version_scn=>2693774
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130859294893028064)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ngu\00F4\0300n d\01B0\0303 li\00EA\0323u na\0300y kh\00F4ng h\00F4\0303 tr\01A1\0323 thay \0111\00F4\0309i nhi\00EA\0300u ha\0300ng.')
,p_version_scn=>2693833
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838605706028058)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 v\01B0\1EE3t qu\00E1 gi\1EDBi h\1EA1n Li\00EAn k\1EBFt ORDS OUT n\1ED9i b\1ED9. Ha\0303y gi\1EA3m s\1ED1 l\01B0\1EE3ng h\00E0ng DML.')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941346091028089)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kh\00F4ng th\1EC3 ph\00E2n ta\0301ch ph\1EA3n h\1ED3i JSON t\1EEB m\00E1y ch\1EE7 t\1EEB xa: '),
'%0'))
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130838582905028058)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Loa\0323i ng\01B0\0303 ca\0309nh kh\00F4ng xa\0301c \0111i\0323nh ho\0103\0323c kh\00F4ng chi\0301nh xa\0301c.')
,p_version_scn=>2693787
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130862641264028065)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E1c th\00E0nh ph\1EA7n kh\00F4ng \0111\01B0\1EE3c h\1ED7 tr\1EE3 \0111\00F4\0301i v\01A1\0301i n\00F4\0323i dung xu\1EA5t c\00F3 th\1EC3 \0111\1ECDc: %0')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130960628163028094)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh ph\00E2n ta\0301ch kh\00F4ng h\00F4\0303 tr\01A1\0323 loa\0323i t\00E2\0323p tin na\0300y.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911458627028080)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy c\00E2\0323p tra\0301i phe\0301p (wwv_flow_api.set_credentials kh\00F4ng \0111\01B0\01A1\0323c \0111\0103\0323t).')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886398364028073)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng gian la\0300m vi\00EA\0323c kh\00F4ng ta\0323o \0111\01B0\01A1\0323c vi\0300 \0111a\0303 t\00F4\0300n ta\0323i.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130886277861028072)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'vi'
,p_message_text=>unistr('Nho\0301m ng\01B0\1EDDi d\00F9ng kh\00F4ng ta\0323o \0111\01B0\01A1\0323c vi\0300 \0111a\0303 t\00F4\0300n ta\0323i.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897634091028076)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0301t hi\00EA\0323n th\00E2\0301y t\00EAn ng\01B0\01A1\0300i du\0300ng tru\0300ng l\0103\0323p cho %0.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897779332028076)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi ta\0309i ng\01B0\1EDDi d\00F9ng. Kh\00F4ng ta\0309i \0111\01B0\01A1\0323c ng\01B0\1EDDi d\00F9ng %0.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908518833028079)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'vi'
,p_message_text=>unistr('Co\0301 le\0303 \0111a\0303 ta\0309i %0 ng\01B0\01A1\0300i du\0300ng.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908341729028079)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E2\0323t kh\00E2\0309u')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908498951028079)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\0103\0323c quy\00EA\0300n')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908192798028079)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00EAn ng\01B0\1EDDi d\00F9ng')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988571655028103)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i trong khi hi\00EA\0309n thi\0323 mu\0323c trang #COMPONENT_NAME#.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903525479028078)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 hi\00EA\0309n thi\0323 mu\0323c trang vi\0300 bi\00EA\0309u m\00E2\0303u HTML ch\01B0a \0111\01B0\01A1\0323c m\01A1\0309.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130861979751028065)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi ti\0301nh gia\0301 tri\0323 m\0103\0323c \0111i\0323nh cu\0309a mu\0323c cho mu\0323c trang #COMPONENT_NAME#.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902877547028077)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi th\01B0\0323c hi\00EA\0323n sau t\00EDnh to\00E1n m\1EE5c cho m\1EE5c trang #COMPONENT_NAME#.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902748919028077)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi ti\0301nh gia\0301 tri\0323 ngu\00F4\0300n cu\0309a mu\0323c cho mu\0323c trang #COMPONENT_NAME#.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879544202028070)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy c\00E2\0323p tra\0301i phe\0301p.')
,p_version_scn=>2693852
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130829054502028055)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 %0 cu\0309a %1 kh\00F4ng pha\0309i la\0300 ma\0309ng JSON h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903085984028077)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 JavaScript.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903150889028077)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130903704396028078)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 kh\01A1\0309i ta\0323o truy v\00E2\0301n.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911777468028080)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\00F4\0303 tr\01A1\0323 c\1EADp nh\1EADt %0.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905214078028078)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 mu\0323c kh\00F4ng h\01A1\0323p l\00EA\0323: %0 ')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932953002028086)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng co\0301 tr\01A1\0323 giu\0301p cho mu\0323c na\0300y.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894775144028075)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ta\0323o truy v\00E2\0301n bi\00EA\0309u \0111\00F4\0300 kh\00F4ng tha\0300nh c\00F4ng. Ha\0303y ki\00EA\0309m tra ca\0300i \0111\0103\0323t Chu\00E2\0309n kh\01A1\0301p ngu\00F4\0300n va\0300 c\00F4\0323t.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130896083471028075)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 kh\00F4ng h\01A1\0323p l\00EA\0323 cho tham s\00F4\0301 p_mail_id: %0')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932746900028086)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 s\01B0\0309 du\0323ng tr\01B0\01A1\0300ng "Ng\01B0\01A1\0300i nh\00E2\0323n" ho\0103\0323c "Ng\01B0\01A1\0300i nh\00E2\0323n th\01B0 tra\0309 l\01A1\0300i" la\0300m \0111i\0323a chi\0309 "Ng\01B0\01A1\0300i g\01B0\0309i", vi\0300 ca\0301c tr\01B0\01A1\0300ng na\0300y ch\01B0\0301a nhi\00EA\0300u \0111i\0323a chi\0309 email.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131017698141028111)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'vi'
,p_message_text=>unistr('Ba\0323n \0111a\0303 v\01B0\01A1\0323t qua\0301 s\00F4\0301 l\01B0\01A1\0323ng email t\00F4\0301i \0111a tr\00EAn m\00F4\0303i kh\00F4ng gian la\0300m vi\00EA\0323c. Ha\0303y li\00EAn h\00EA\0323 ng\01B0\01A1\0300i qua\0309n tri\0323.')
,p_version_scn=>2693891
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874219129028069)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'vi'
,p_message_text=>unistr('Quy tri\0300nh n\00E0y ph\1EA3i \0111\01B0\1EE3c g\1ECDi t\1EEB b\00EAn trong m\1ED9t phi\00EAn \1EE9ng d\1EE5ng.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895964386028075)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cung c\00E2\0301p gi\00E1 tr\1ECB r\00F4\0303ng cho tham s\1ED1 %0.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130954024959028092)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y m\00E2\0303u email "%0" trong \01B0\0301ng du\0323ng %1.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131030584139028115)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i \0111\0103\0323t tham s\00F4\0301 th\01B0\0323c th\00EA\0309 SMTP_HOST_ADDRESS \0111\00EA\0309 g\01B0\0309i th\01B0.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130895322793028075)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1EA1n ph\1EA3i cung c\1EA5p ng\01B0\1EDDi nh\00E2\0323n th\01B0 \0111\1EC3 g\1EEDi th\01B0.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131020045403028112)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 thi\1EBFt l\1EADp k\1EBFt n\1ED1i SMTP v\01A1\0301i m\00E1y ch\1EE7 email \0111a\0303 \0111i\0323nh c\00E2\0301u hi\0300nh.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130995373632028105)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00EA\0323nh go\0323i Ajax kh\00F4ng h\01A1\0323p l\00EA\0323!')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879277334028070)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a xa\0301c \0111i\0323nh ha\0300m Ajax na\0300o cho tri\0300nh b\00F4\0309 tr\01A1\0323 %0')
,p_version_scn=>2693847
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985877137028102)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a xa\0301c \0111i\0323nh ha\0300m th\01B0\0323c thi na\0300o cho tri\0300nh b\00F4\0309 tr\01A1\0323 %0')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879355076028070)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a xa\0301c \0111i\0323nh ha\0300m hi\00EA\0309n thi\0323 na\0300o cho tri\0300nh b\00F4\0309 tr\01A1\0323 %0')
,p_version_scn=>2693850
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996295236028105)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh b\00F4\0309 tr\01A1\0323 ngu\00F4\0300n d\01B0\0303 li\00EA\0323u REST "%0" kh\00F4ng ch\01B0\0301a ha\0300m "Capabilities".')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996170320028105)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh b\00F4\0309 tr\01A1\0323 ngu\00F4\0300n d\01B0\0303 li\00EA\0323u REST "%0" kh\00F4ng ch\01B0\0301a ha\0300m DML.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996363322028105)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh b\00F4\0309 tr\01A1\0323 ngu\00F4\0300n d\01B0\0303 li\00EA\0323u REST "%0" kh\00F4ng ch\01B0\0301a ha\0300m th\01B0\0323c thi.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130996400567028105)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'vi'
,p_message_text=>unistr('Tri\0300nh b\00F4\0309 tr\01A1\0323 ngu\00F4\0300n d\01B0\0303 li\00EA\0323u REST "%0" kh\00F4ng ch\01B0\0301a ha\0300m ti\0300m na\0323p.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876712231028070)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 pha\0301t sinh l\00F4\0303i \01A1\0309 ma\0303 PLSQL trong khi x\01B0\0309 ly\0301 tri\0300nh b\00F4\0309 tr\01A1\0323.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885389208028072)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh gia\0301 tri\0323.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130918368247028082)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 chuy\00EA\0309n \0111\00F4\0309i loa\0323i d\01B0\0303 li\00EA\0323u %0 sang VARCHAR2!')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006515706028108)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng ti\0300m th\00E2\0301y c\00F4\0323t "%0" \0111a\0303 chi\0309 \0111i\0323nh cho thu\00F4\0323c ti\0301nh "%1" trong c\00E2u l\00EA\0323nh SQL!')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130833825893028057)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 %0 cu\0309a %1 kh\00F4ng pha\0309i la\0300 ma\0309ng JSON h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693779
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983765980028101)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309i chi\0309 \0111i\0323nh truy v\1EA5n danh s\00E1ch gi\00E1 tr\1ECB (LOV) ho\1EB7c danh s\00E1ch gi\00E1 tr\1ECB \0111\01B0\1EE3c \0111\1EB7t t\00EAn cho %0.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130985376991028102)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110a\0303 cho\0323n s\00F4\0301 l\01B0\01A1\0323ng c\00F4\0323t kh\00F4ng chi\0301nh xa\0301c trong truy v\00E2\0301n SQL LOV cho %0. Ha\0303y xem vi\0301 du\0323 \0111\00EA\0309 bi\00EA\0301t ca\0301c c\00E2u l\00EA\0323nh h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006307912028108)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'vi'
,p_message_text=>unistr('Ch\01B0a chi\0309 \0111i\0323nh c\00F4\0323t cho thu\00F4\0323c ti\0301nh "%0".')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035560659028117)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('Gia\0301 tri\0323 \0111a\0303 nh\00E2\0323p %0 cho thu\00F4\0323c ti\0301nh "%1" kh\00F4ng pha\0309i la\0300 s\00F4\0301.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130988824278028103)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 co\0301 loa\0323i d\01B0\0303 li\00EA\0323u kh\00F4ng chi\0301nh xa\0301c trong c\00E2u l\00EA\0323nh SQL. C\00F4\0323t # %1 la\0300 %2 nh\01B0ng theo d\01B0\0323 ki\00EA\0301n pha\0309i la\0300 %3.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131006430586028108)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t "%0" \0111\01B0\01A1\0323c chi\0309 \0111i\0323nh cho thu\00F4\0323c ti\0301nh "%1" co\0301 loa\0323i d\01B0\0303 li\00EA\0323u %2 nh\01B0ng pha\0309i co\0301 %3.')
,p_version_scn=>2693890
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130875986048028069)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 t\00ECm th\1EA5y b\00F4\0301 cu\0323c b\00E1o c\00E1o.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130863592707028066)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'vi'
,p_message_text=>unistr('\0110\00E3 v\01B0\1EE3t qu\00E1 Gi\1EDBi h\1EA1n th\1EF1c thi trong n\1EC1n cho %0.')
,p_version_scn=>2693836
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813814750028051)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00F4\0323t ta\0301c vu\0323 th\01B0\0323c thi kha\0301c cu\0309a %0 \0111ang cha\0323y.')
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130813791196028051)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00F4\0323t ta\0301c vu\0323 th\01B0\0323c thi kha\0301c cu\0309a %0 \0111ang cha\0323y cho ng\01B0\0303 ca\0309nh %1.')
,p_version_scn=>2693765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130828732974028055)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00E1c t\00E2\0323p tin \0111\00E3 t\1EA3i l\00EAn kh\00F4ng hi\1EC3n th\1ECB trong phi\00EAn l\00E0m vi\1EC7c \0111\1ED1i v\1EDBi ta\0301c vu\0323 th\1EF1c thi cu\0309a %0.')
,p_version_scn=>2693777
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941263119028089)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\1EC3 s\1EED d\1EE5ng t\00EDnh n\0103ng T\00EDnh t\1ED5ng cho c\00E1c b\00E1o c\00E1o d\1EF1a tr\00EAn Ngu\1ED3n d\1EEF li\1EC7u REST.')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130902970160028077)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('ERR-2904 Kh\00F4ng th\00EA\0309 \0111\0103\0323t gia\0301 tri\0323 l\00F4\0301i t\0103\0301t.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130907935504028079)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i: Loa\0323i l\00F4\0301i t\0103\0301t kh\00F4ng xa\0301c \0111i\0323nh.')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130845698468028060)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'vi'
,p_message_text=>unistr('Truy v\00E2\0301n ti\0300m ki\00EA\0301m qua\0301 da\0300i.')
,p_version_scn=>2693818
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897094090028076)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 ti\0300m na\0323p authentication_scheme trong \01B0\0301ng du\0323ng %0.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130905015440028078)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 ti\0300m na\0323p tha\0300nh ph\00E2\0300n %0.')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130975317623028099)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 \0111\00F4\0301i t\01B0\01A1\0323ng thu\00EA \0111a\0303 t\00F4\0300n ta\0323i cho phi\00EAn hi\00EA\0323n ta\0323i.')
,p_version_scn=>2693881
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130908226803028079)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'vi'
,p_message_text=>'Email'
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035098871028116)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'vi'
,p_message_text=>unistr('Xa\0301c th\01B0\0323c kh\00F4ng tha\0300nh c\00F4ng.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130935671704028087)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00F4\0323t ho\0103\0323c nhi\00EA\0300u cookie \0111a\0303 \0111\0103\0323t trong apex_util.g_request_cookies ch\01B0\0301a gia\0301 tri\0323 kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130917546900028082)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309n h\00F4\0300i t\01B0\0300 s\00F4\0309 \0111\0103ng ky\0301 UDDI kh\00F4ng h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693872
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130876897023028070)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'vi'
,p_message_text=>unistr('URL \0111a\0303 cung c\00E2\0301p kh\00F4ng tra\0309 v\00EA\0300 ta\0300i li\00EA\0323u WSDL h\01A1\0323p l\00EA\0323.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879618379028071)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E0i li\1EC7u WSDL ch\1EE9a nhi\1EC1u li\00EAn k\00EA\0301t SOAP. &PRODUCT_NAME. ch\1EC9 h\1ED7 tr\1EE3 ta\0300i li\00EA\0323u WSDL co\0301 m\1ED9t li\00EAn k\00EA\0301t SOAP. Ha\0303y nh\1EA5p v\00E0o T\1EA1o tham chi\1EBFu d\1ECBch v\1EE5 web theo c\00E1ch th\1EE7 c\00F4ng \0111\1EC3 ti\1EBFp t\1EE5c t\1EA1o tham chi\1EBFu cho d\1ECBch v\1EE5 n\00E0y.')
,p_version_scn=>2693852
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130955204293028093)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'vi'
,p_message_text=>unistr('Pha\0309n h\00F4\0300i t\01B0\0300 di\0323ch vu\0323 kh\00F4ng pha\0309i la\0300 XML.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131034935796028116)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'vi'
,p_message_text=>unistr('Ma\0303 th\00F4ng b\00E1o truy c\00E2\0323p OAuth kh\00F4ng kha\0309 du\0323ng ho\0103\0323c \0111a\0303 h\00EA\0301t ha\0323n.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130999474292028106)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'vi'
,p_message_text=>unistr('B\1EA1n \0111\00E3 v\01B0\1EE3t qu\00E1 s\1ED1 l\01B0\1EE3ng y\00EAu c\1EA7u d\1ECBch v\1EE5 web t\1ED1i \0111a cho m\1ED7i kh\00F4ng gian l\00E0m vi\1EC7c. Ha\0303y li\00EAn h\1EC7 ng\01B0\01A1\0300i qu\1EA3n tr\1ECB.')
,p_version_scn=>2693888
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131035159013028116)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'vi'
,p_message_text=>unistr('M\00E1y ch\1EE7 \0111a\0303 ph\1EA3n h\1ED3i b\1EB1ng lo\1EA1i m\00E3 th\00F4ng b\00E1o OAuth kh\00F4ng \0111\01B0\1EE3c h\1ED7 tr\1EE3.')
,p_version_scn=>2693894
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130879080211028070)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'vi'
,p_message_text=>unistr('T\00E0i li\1EC7u WSDL kh\00F4ng ch\1EE9a li\00EAn k\00EA\0301t cho SOAP. \0110\00E2y la\0300 \0111i\00EA\0300u b\0103\0301t bu\00F4\0323c \0111\1EC3 th\00EAm tham chi\1EBFu.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130874483278028069)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'vi'
,p_message_text=>unistr('WSDL na\0300y y\00EAu c\00E2\0300u pha\0309i co\0301 th\00F4ng tin xa\0301c th\01B0\0323c. Ha\0303y cung c\00E2\0301p t\00EAn ng\01B0\01A1\0300i du\0300ng va\0300 m\00E2\0323t kh\00E2\0309u \01A1\0309 b\00EAn d\01B0\01A1\0301i.')
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130885492311028072)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4ng cu\0323 hi\00EA\0309n thi\0323 kh\00F4ng th\00EA\0309 hi\00EA\0309u t\00E0i li\1EC7u WSDL na\0300y. Ha\0303y nh\1EA5p v\00E0o T\1EA1o tham chi\1EBFu d\1ECBch v\1EE5 web theo c\00E1ch th\1EE7 c\00F4ng \0111\1EC3 ti\1EBFp t\1EE5c t\1EA1o tham chi\1EBFu cho d\1ECBch v\1EE5 n\00E0y.')
,p_version_scn=>2693856
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130958215335028094)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng th\00EA\0309 x\01B0\0309 ly\0301 c\00E2\0323p nh\00E2\0323t.')
,p_version_scn=>2693878
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130984087438028101)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'vi'
,p_message_text=>unistr('C\00F4\0323t tra\0309 v\00EA\0300 va\0300 c\00F4\0323t hi\00EA\0309n thi\0323 Danh sa\0301ch gia\0301 tri\0323 gi\00F4\0301ng nhau!')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130983961711028101)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('Danh sa\0301ch gia\0301 tri\0323 kh\00F4ng co\0301 c\00F4\0323t tra\0309 v\00EA\0300.')
,p_version_scn=>2693887
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911677887028080)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi ti\0300m na\0323p gia\0301 tri\0323 c\00F4\0323t: %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936530310028087)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'vi'
,p_message_text=>unistr('D\1EEF li\1EC7u bi\1EC3u m\1EABu d\1EA1ng b\1EA3ng hi\1EC7n t\1EA1i qu\00E1 c\0169; d\1EEF li\1EC7u ngu\1ED3n \0111\00E3 \0111\01B0\1EE3c s\1EEDa \0111\1ED5i.<br/> Ha\0303y nh\1EA5p v\00E0o <strong><a href="%0">\0111\00E2y</a></strong> \0111\1EC3 lo\1EA1i b\1ECF c\00E1c thay \0111\1ED5i c\1EE7a b\1EA1n v\00E0 t\1EA3i l\1EA1i d\1EEF li\1EC7u t\1EEB c\01A1 s\1EDF d\1EEF li\1EC7u.')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891711965028074)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'vi'
,p_message_text=>unistr('L\1ED7i khi x\00E1c \0111\1ECBnh chu\1ED7i ph\00E2n trang')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891611995028074)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('kh\00F4ng th\00EA\0309 xa\0301c \0111i\0323nh ti\00EAu \0111\00EA\0300 truy v\00E2\0301n:'),
'%0'))
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891851794028074)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'vi'
,p_message_text=>unistr('l\1ED7i khi th\1EF1c hi\1EC7n thay th\1EBF ch\00E2n trang b\00E1o c\00E1o')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891905609028074)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('kh\00F4ng ph\00E2n ta\0301ch \0111\01B0\01A1\0323c truy v\00E2\0301n SQL:'),
'%0',
'%1'))
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898034329028076)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'vi'
,p_message_text=>unistr('S\00F4\0301 ha\0300ng t\00F4\0301i thi\00EA\0309u \0111a\0303 y\00EAu c\00E2\0300u: %0, s\00F4\0301 ha\0300ng \0111a\0303 ti\0300m th\00E2\0301y nh\01B0ng kh\00F4ng hi\00EA\0309n thi\0323: %1')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894496141028075)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'vi'
,p_message_text=>unistr('c\1ED9t truy v\1EA5n #%0 (%1) kh\00F4ng h\1EE3p l\1EC7, c\00E1c c\1ED9t s\1EED d\1EE5ng HTML c\1EA7n c\00F3 t\00EAn b\00ED danh')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130911555564028080)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'vi'
,p_message_text=>unistr('L\00F4\0303i khi l\00E2\0301y ti\00EAu \0111\00EA\0300 truy v\00E2\0301n: %0')
,p_version_scn=>2693866
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892089485028074)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('ba\0301o ca\0301o l\00F4\0303i:'),
'%0'))
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130932120094028086)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'vi'
,p_message_text=>unistr('S\0103\0301p x\00EA\0301p theo c\00F4\0323t na\0300y')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894579700028075)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'vi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Kh\00F4ng th\1EC3 ph\00E2n ta\0301ch truy v\1EA5n, ha\0303y ki\1EC3m tra c\00FA ph\00E1p truy v\1EA5n c\1EE7a b\1EA1n.'),
'(%0)',
'</p>'))
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936659493028087)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'vi'
,p_message_text=>unistr('Bi\1EC3u m\1EABu n\00E0y ch\1EE9a c\00E1c thay \0111\1ED5i ch\01B0a l\01B0u. Ha\0303y nh\1EA5n va\0300o "\0110\00F4\0300ng y\0301" \0111\1EC3 ti\1EBFp t\1EE5c m\00E0 kh\00F4ng l\01B0u c\00E1c thay \0111\1ED5i c\1EE7a b\1EA1n. ')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130941188054028089)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'vi'
,p_message_text=>unistr('Kh\00F4ng h\1ED7 tr\1EE3 gia\0309n \0111\1ED3 ph\00E2n trang b\00E1o c\00E1o (%0) v\1EDBi ngu\1ED3n d\1EEF li\1EC7u \0111\00E3 ch\1ECDn.')
,p_version_scn=>2693876
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130894302679028075)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'vi'
,p_message_text=>unistr('c\00F4\0323t truy v\00E2\0301n #%0 (%1) kh\00F4ng h\01A1\0323p l\00EA\0323, ha\0303y s\01B0\0309 du\0323ng b\00ED danh c\00F4\0323t')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130898102225028076)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'vi'
,p_message_text=>unistr('ha\0300ng %0 - %1 trong s\00F4\0301 h\01A1n %2')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130938628020028088)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'vi'
,p_message_text=>unistr('%0 - %1 trong s\00F4\0301 h\01A1n %2')
,p_version_scn=>2693874
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130897950741028076)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'vi'
,p_message_text=>unistr('ha\0300ng %0 - %1 trong s\00F4\0301 %2')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130878745170028070)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'vi'
,p_message_text=>'%0 - %1/%2'
,p_version_scn=>2693846
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130892136339028074)
,p_name=>'Y'
,p_message_language=>'vi'
,p_message_text=>'Y'
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130899464313028076)
,p_name=>'YEAR'
,p_message_language=>'vi'
,p_message_text=>unistr('n\0103m')
,p_version_scn=>2693865
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130891398747028074)
,p_name=>'YEARS'
,p_message_language=>'vi'
,p_message_text=>unistr('n\0103m')
,p_version_scn=>2693857
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(130936710088028087)
,p_name=>'YES'
,p_message_language=>'vi'
,p_message_text=>unistr('Co\0301')
,p_version_scn=>2693874
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
 p_id=>wwv_flow_imp.id(109678305570583962.4547)
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
 p_id=>1.4547
,p_name=>unistr('Th\00F4ng b\00E1o')
,p_alias=>'MESSAGES'
,p_step_title=>unistr('Th\00F4ng b\00E1o')
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
