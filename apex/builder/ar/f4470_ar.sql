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
,p_default_application_id=>4498
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4498 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4498
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131490933700028260')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'ar'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'Y'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4498)
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
 p_id=>wwv_flow_imp.id(4498)
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
 p_id=>wwv_flow_imp.id(728504220438374.4498)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4498)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4498)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4498)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4498)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4498)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4498)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4498)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4498)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4498)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4498)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4498)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4498)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4498)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4498)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4498)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4498)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.ar'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4498)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4498)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4498)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4498)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4498)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4498)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4498)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.ar'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4498)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4498)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4498)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4498)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4498)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4498)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.ar'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4498)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4498)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4498)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.ar'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4498)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4498)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4498)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4498)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4498)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4498)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4498)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4498)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4498)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4498)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4498)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4498)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4498)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4498)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4498)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4498)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4498)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.ar'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4498)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4498)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4498)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4498)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4498)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4498)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4498)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4498)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4498)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4498)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4498)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4498)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4498)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4498)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4498)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4498)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4498)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.ar'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4498)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4498)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4498)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4498)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4498)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4498)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4498)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4498)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4498)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4498)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4498)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4498)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4498)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4498)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4498)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.ar'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4498)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4498)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4498)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4498)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4498)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4498)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4498)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4498)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4498)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4498)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4498)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4498)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4498)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4498)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4498)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4498)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4498)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4498)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4498)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4498)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4498)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4498)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4498)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4498)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4498)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4498)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4498)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4498)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4498)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4498)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4498)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4498)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4498)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4498)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4498)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4498)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4498)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4498)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4498)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4498)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4498)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4498)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4498)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4498)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4498)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4498)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4498)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4498)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4498)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4498)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4498)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4498)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4498)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4498)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4498)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4498)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4498)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4498)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4498)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4498)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4498)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4498)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4498)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4498)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4498)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4498)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4498)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4498)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4498)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4498)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4498)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4498)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4498)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4498)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4498)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4498)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4498)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4498)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4498)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4498)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4498)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4498)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4498)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4498)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4498)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4498)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4498)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4498)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4498)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4498)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4498)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4498)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4498)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4498)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4498)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4498)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4498)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4498)
,p_page_name=>'winlov'
,p_page_title=>unistr('\0645\0631\0628\0639 \062D\0648\0627\0631 \0627\0644\0628\062D\062B')
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
,p_find_button_text=>unistr('\0628\062D\062B')
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>unistr('\0625\063A\0644\0627\0642')
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('\0627\0644\062A\0627\0644\064A &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; \0627\0644\0633\0627\0628\0642')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">\0627\0644\0635\0641 (\0627\0644\0635\0641\0648\0641) #FIRST_ROW# - #LAST_ROW#</div>')
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
 p_id=>wwv_flow_imp.id(649611609668764506.4498)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4498)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4498)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4498)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4498)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4498)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4498)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4498)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4498)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4498)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4498)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4498)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4498)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4498)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4498)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4498)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4498)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4498)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4498)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4498)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4498)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4498)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4498)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4498)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4498)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4498)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4498)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4498)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4498)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4498)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4498)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4498)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4498)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4498)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4498)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4498)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4498)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4498)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4498)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4498)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4498)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4498)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4498)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4498)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4498)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4498)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4498)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4498)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4498)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4498)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4498)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4498)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4498)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4498)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4498)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4498)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4498)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4498)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4498)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4498)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4498)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4498)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4498)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4498)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4498)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4498)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4498)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4498)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4498)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4498)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4498)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4498)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4498)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4498)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4498)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4498)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4498)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4498)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4498)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4498)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4498)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4498)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4498)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4498)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4498)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4498)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4498)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4498)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4498)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4498)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4498)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4498)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4498)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4498)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4498)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4498)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4498)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4498)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4498)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4498)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4498)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4498)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4498)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4498)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4498)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4498)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4498)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4498)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4498)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4498)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4498)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4498)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4498)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4498)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4498)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4498)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4498)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4498)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4498)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4498)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4498)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4498)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4498)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4498)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4498)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4498)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4498)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4498)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4498)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4498)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4498)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4498)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4498)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4498)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4498)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4498)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4498)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4498)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4498)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4498)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4498)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4498)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4498)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4498)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4498)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4498)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4498)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4498)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4498)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4498)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4498)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4498)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4498)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4498)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4498)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4498)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4498)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4498)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4498)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4498)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4498)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4498)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4498)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4498)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4498)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4498)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4498)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4498)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4498)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4498)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4498)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4498)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4498)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4498)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4498)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4498)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4498)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4498)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4498)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4498)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4498)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4498)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4498)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4498)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4498)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4498)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4498)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4498)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4498)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4498)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4498)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4498)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4498)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4498)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4498)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4498)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4498)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4498)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4498)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4498)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4498)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4498)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4498)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4498)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4498)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4498)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4498)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4498)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4498)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4498)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4498)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4498)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4498)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4498)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4498)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4498)
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
 p_id=>wwv_flow_imp.id(123877686621025820)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F %0')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862264131025815)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0633\0624\0648\0644')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862154114025815)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\0645\0633\062A\062E\062F\0645')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924823487025835)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0631\0641\0636 \0627\0644\0648\0635\0648\0644')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881734301025821)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0643\0648\064A\0646 \062D\0633\0627\0628 %0 \0627\0644\062E\0627\0635 \0628\0643.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864919799025816)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\0633\0627\0628 \0645\0642\0641\0644.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849468263025811)
,p_name=>'AM_PM'
,p_message_language=>'ar'
,p_message_text=>'AM / PM'
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832291641025806)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0631\062A\0628\0627\0637 \0627\0644\0625\062C\0631\0627\0621')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832176801025806)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0631\062A\0628\0627\0637 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996526466025858)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631/\0625\062E\0641\0627\0621 %0')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004383480025861)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'ar'
,p_message_text=>unistr('(\0646\0634\0637)')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809118732025798)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0645\0633\062D \0627\0644\0645\062D\0627\062F\062B\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809024842025798)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D \0627\0644\0645\062D\0627\062F\062B\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805624512025797)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0628\0648\0644')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805723209025797)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0641\0636')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805443182025797)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0627\0631\064A\062E \0627\0644\0645\062D\0627\062F\062B\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808834877025798)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0633\0648\062E')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808926054025798)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0646\0633\062E \0625\0644\0649 \0627\0644\062D\0627\0641\0638\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808656774025798)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\062E')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808761552025798)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\062E \0625\0644\0649 \0627\0644\062D\0627\0641\0638\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806145612025797)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\0627\0639\062F')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806541771025797)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0639\0637\064A\0644 \0627\0644\0630\0643\0627\0621 \0627\0644\0627\0635\0637\0646\0627\0639\064A \0639\0644\0649 \0645\0633\062A\0648\0649 \0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644 \0623\0648 \0627\0644\0645\062B\064A\0644.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845837775025810)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \062E\062F\0645\0629 \0627\0644\0630\0643\0627\0621 \0627\0644\0627\0635\0637\0646\0627\0639\064A \0627\0644\0645\0628\062A\0643\0631 \0628\0627\0644\0645\0639\0631\0641 \0627\0644\0645\062D\062F\062F \0623\0648 \0627\0644\0645\0639\0631\0641 \0627\0644\062B\0627\0628\062A.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844534760025810)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0627\0644\062A\0635\062F\064A\0642 \0623\0648 \0648\0635\0648\0644 \0645\062D\0638\0648\0631 (HTTP-%1) \0644\0639\0646\0648\0627\0646 URL %0. \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \062A\0643\0648\064A\0646 \062E\062F\0645\0629 \0627\0644\0630\0643\0627\0621 \0627\0644\0627\0635\0637\0646\0627\0639\064A \0627\0644\0645\0628\062A\0643\0631 %2.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824362595025803)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \0637\0644\0628 HTTP \0625\0644\0649 \062E\062F\0645\0629 Geneative AI Service \0639\0646\062F %0 \0628\0627\0633\062A\062E\062F\0627\0645 HTTP-%1: %2')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848769664025811)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0641\064A \0637\0644\0628 HTTP \0644\062E\062F\0645\0629 \0627\0644\0630\0643\0627\0621 \0627\0644\0627\0635\0637\0646\0627\0639\064A \0627\0644\0645\0628\062A\0643\0631 \0644\0644\0623\062F\0627\0629 \0627\0644\0625\0636\0627\0641\064A\0629 %0 \0641\064A \0627\0644\0648\0636\0639 %1. \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \062A\0643\0648\064A\0646 \062E\062F\0645\0629 \0627\0644\0630\0643\0627\0621 \0627\0644\0627\0635\0637\0646\0627\0639\064A \0627\0644\0645\0628\062A\0643\0631.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811575829025799)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0645\062B\0644\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809980997025798)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\0627\0639\062F')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811328198025799)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809842322025798)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0646\062A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840527944025808)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062F\0639\0645 \0627\0644\0630\0643\0627\0621 \0627\0644\0627\0635\0637\0646\0627\0639\064A \0627\0644\0645\062A\0628\0643\0631 \0644\0640 OCI \062D\0627\0644\064A\064B\0627 \062A\062C\0631\0628\0629 \0627\0644\062F\0631\062F\0634\0629 \0645\0639 \0631\0633\0627\0626\0644 \0645\062A\0639\062F\062F\0629.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820446058025802)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0627\0644\0645\0648\062C\0647 %0 \0644\0644\062A\0637\0628\064A\0642 %1. \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0645\0627 \0625\0630\0627 \0643\0627\0646 \0645\0646\0634\0626 \0627\0644\062A\0637\0628\064A\0642\0627\062A \0645\062A\0627\062D\064B\0627 \0641\064A \0647\0630\0647 \0627\0644\062D\0627\0644\0629.')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825579901025804)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062A\0639\0630\0631 \0645\0639\0627\0644\062C\0629 \0627\0644\0627\0633\062A\062C\0627\0628\0629 \0644\062E\062F\0645\0629 \0627\0644\0630\0643\0627\0621 \0627\0644\0627\0635\0637\0646\0627\0639\064A %0\060C \0627\0644\0627\0633\062A\062C\0627\0628\0629 %1')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831726539025806)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644 \0631\0633\0627\0644\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820037223025802)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623 \0641\064A \062E\062F\0645\0629 \0627\0644\0630\0643\0627\0621 \0627\0644\0627\0635\0637\0646\0627\0639\064A \0644\0644\0648\0627\062C\0647\0629 \0627\0644\062E\0644\0641\064A\0629 %0')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805812115025797)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0627\0644\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805940033025797)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0643\062A\0628 \0631\0633\0627\0644\062A\0643 \0647\0646\0627')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809297463025798)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0648\0631\0629 \0627\0644\0631\0645\0632\064A\0629 \0644\0644\0645\0633\062A\062E\062F\0645')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809360490025798)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\062E\062F\0627\0645 \0647\0630\0627')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806087911025797)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\062F\064A\0643 \0631\0633\0627\0644\0629 \0644\0645 \062A\064F\0631\0633\0644\0647\0627\060C \0647\0644 \0623\0646\062A \0645\062A\0623\0643\062F\061F')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975057234025851)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0631\062C\0639 \0627\0633\062A\062F\0639\0627\0621 Ajax \062E\0637\0623 \0627\0644\062E\0627\062F\0645 %0 \0641\064A %1.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902116316025827)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\0648\064A\0644 \0627\0644\0627\0633\0645 \0627\0644\0628\062F\064A\0644 \0644\0644\062A\0637\0628\064A\0642 "%0" \0625\0644\0649 \0645\0639\0631\0641 \062A\0637\0628\064A\0642 \0641\0631\064A\062F.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890977506025824)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1816 \062E\0637\0623 \063A\064A\0631 \0645\062A\0648\0642\0639 \0623\062B\0646\0627\0621 \062A\062D\0648\064A\0644 \0627\0644\0627\0633\0645 \0627\0644\0628\062F\064A\0644 \0644\0644\062A\0637\0628\064A\0642 p_flow_alias_or_id (%0).')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988347745025855)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\062B\0644 \0627\0644\0645\062C\0645\0648\0639 \0627\0644\0627\062E\062A\0628\0627\0631\064A \0641\064A \0627\0644\062A\0637\0628\064A\0642 \0648\0633\064A\0644\0629 \0628\0633\064A\0637\0629 \0644\062A\062D\062F\064A\062F \0645\0627 \0625\0630\0627 \0643\0627\0646 \0627\0644\062A\0637\0628\064A\0642 \0646\0641\0633\0647 \0645\0648\0632\0639\064B\0627 \0639\0644\0649 \0645\0633\062A\0648\0649 \0645\0633\0627\062D\0627\062A \0627\0644\0639\0645\0644. \0648\064A\0645\0643\0646 \0645\0642\0627\0631\0646\0629 \0647\0630\0627 \0627\0644\0645\062C\0645\0648\0639 \0627\0644\0627\062E\062A\0628\0627\0631\064A \0644\0645\0639\0631\0641\0629 \0645\0627 \0625\0630\0627 \0643\0627\0646 \0647\0646\0627\0643 \0645\062C\0645\0648\0639 \0645\0637\0627\0628\0642 \0644\0647. ')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874900663025819)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \062F\0627\0644\0629 \0627\0644\0645\0635\0627\062F\0642\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856965564025814)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \062F\0627\0644\0629 \0627\0644\0645\0635\0627\062F\0642\0629.')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028835470025868)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\0639\0645\064A\0644 %0 \0627\0644\0630\064A \0623\0631\062C\0639\0647 Oracle Cloud Identity Management \063A\064A\0631 \0645\0639\062A\0645\062F \0641\064A \0627\0644\0645\062C\0627\0644%1!<br/>\0627\0644\0631\062C\0627\0621 <a href="&LOGOUT_URL.">\0645\0639\0627\0648\062F\0629 \062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644</a> \0648\062A\062D\062F\064A\062F \0627\0633\0645 \0639\0645\064A\0644 \0645\0639\062A\0645\062F \0623\0648 \062A\063A\064A\064A\0631 \0639\0646\0648\0627\0646 URL.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853091577025813)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0634\062A\0645\0644 \062D\0633\0627\0628\0643 "%0" \0639\0644\0649 \0627\0645\062A\064A\0627\0632\0627\062A \0627\0644\062A\0637\0648\064A\0631 \0627\0644\0644\0627\0632\0645\0629 (DB_DEVELOPER \0623\0648 DB_ADMINISTRATOR)<br/>\0641\064A \0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644 "%1"! \0627\0644\0631\062C\0627\0621 <a href="&LOGOUT_URL.">\0645\0639\0627\0648\062F\0629 \062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644</a> \0628\0639\062F \0625\062A\0627\062D\0629 \0627\0644\0627\0645\062A\064A\0627\0632\0627\062A.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849683708025811)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\0639\0645\064A\0644 \0627\0644\0630\064A \0623\0631\062C\0639\0647 Oracle Cloud Identity Management \063A\064A\0631 \0645\0639\062A\0645\062F \0641\064A \0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644 \0627\0644\062D\0627\0644\064A\0629!<br/>\0627\0644\0631\062C\0627\0621 <a href="&LOGOUT_URL.">\0645\0639\0627\0648\062F\0629 \062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644</a> \0648\062A\062D\062F\064A\062F \0627\0633\0645 \0639\0645\064A\0644 \0645\0639\062A\0645\062F.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853123769025813)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0623\0633\0628\0627\0628 \0623\0645\0646\064A\0629\060C \0644\0627 \064A\064F\0633\0645\062D \0628\062A\0634\063A\064A\0644 \062A\0637\0628\064A\0642\0627\062A \0641\064A \0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644 \0647\0630\0647 \0639\0646 \0637\0631\064A\0642 \0627\0644\0645\062C\0627\0644 \0641\064A \0639\0646\0648\0627\0646 URL.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874622701025819)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \0645\0637\0627\0644\0628\0629 \0645\0633\0626\0648\0644 \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0628\062A\0634\063A\064A\0644 $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874558204025819)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0632\0645\0629 SYS.DBMS_LDAP \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0623\0648 \063A\064A\0631 \0635\0627\0644\062D\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874454158025819)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\062D\0631\064A\0631 \062F\0627\0644\0629 \0645\0633\062A\062E\062F\0645 LDAP.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874726681025819)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0645\0635\0627\062F\0642\0629 LDAP.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875560790025819)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0641\064A \0648\0633\064A\0637\0629 p_flow_page ar \0628\0625\062C\0631\0627\0621 login_page.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875165305025819)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'ar'
,p_message_text=>unistr('p_session \063A\064A\0631 \0635\0627\0644\062D \0641\064A wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926475633025835)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0633\064A\0637\0629 \063A\064A\0631 \0635\062D\064A\062D\0629 \0627\0644\0635\064A\0627\063A\0629 \0641\064A wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875211116025819)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0645\0631\064A\0631 \0627\0633\0645 \0645\0633\062A\062E\062F\0645 \062E\0627\0644\064D \0625\0644\0649 \0625\062C\0631\0627\0621 \062A\0633\062C\064A\0644 \062F\062E\0648\0644.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862004536025815)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \0627\0644\0627\0646\062A\0638\0627\0631 \0644\0645\062F\0629 <span id="apex_login_throttle_sec">%0</span> \062B\0627\0646\064A\0629 \0644\062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644 \0645\0631\0629 \0623\062E\0631\0649.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863314539025816)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0638\0631 \0645\062D\0627\0648\0644\0629 \062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924150257025834)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0635\0627\062F\0642\0629 "%0" \063A\064A\0631 \0645\0648\062C\0648\062F\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863860594025816)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0641 \0645\062C\0645\0648\0639\0629 \0627\0644\0623\0645\0627\0646 \062E\0627\0644\064D.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875098078025819)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\0646\0641\064A\0630 \0639\0645\0644\064A\0629 \0645\0627 \0628\0639\062F \0627\0644\0645\0635\0627\062F\0642\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874850885025819)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0639\0645\0644\064A\0629 \0645\0627 \0642\0628\0644 \0627\0644\0645\0635\0627\062F\0642\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876552550025820)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0627\0644\0631\062C\0627\0621 \0641\062A\062D \0639\0646\0648\0627\0646 URL \0641\064A \0627\0644\0645\062A\0635\0641\062D \0646\0641\0633\0647 \062D\064A\062B \0642\0645\062A \0628\0627\0644\0628\062F\0621 \0641\064A \0637\0644\0628 \0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0643\0644\0645\0629 \0627\0644\0633\0631.  \0625\0630\0627 \0642\0645\062A \0628\0627\0644\0646\0642\0631 \0639\0644\0649 \0639\0646\0648\0627\0646 URL \0644\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0643\0644\0645\0629 \0627\0644\0633\0631 \0648\062A\0645\062A \0625\0639\0627\062F\0629 \062A\0648\062C\064A\0647\0643 \0625\0644\0649'),
unistr('\0635\0641\062D\0629 \0627\0644\062F\062E\0648\0644\060C \0641\0627\0644\0631\062C\0627\0621 \0627\0644\0628\062F\0621 \0641\064A \0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0643\0644\0645\0629 \0627\0644\0633\0631 \0645\0631\0629 \0623\062E\0631\0649 \0645\0639 \062A\0631\0643'),
unistr('\0627\0644\0645\062A\0635\0641\062D \0645\0641\062A\0648\062D\064B\0627.')))
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026321040025868)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 URL \0644\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0643\0644\0645\0629 \0627\0644\0633\0631')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853336436025813)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062C\0645\0648\0639\0629 \0627\0644\0627\0633\062A\0647\0644\0627\0643 %0 \0641\064A \0645\062F\064A\0631 \0627\0644\0645\0648\0627\0631\062F \0644\0645 \064A\062A\0645 \0645\0646\062D\0647\0627 %1')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853422607025813)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \0627\0633\062A\062E\062F\0627\0645 DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP \0644\0645\0646\062D \0627\0644\0627\0645\062A\064A\0627\0632 \0627\0644\0645\0641\0642\0648\062F.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888095331025823)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \062F\0627\0644\0629 \0645\0631\0627\0642\0628\0629 \062C\0644\0633\0629 \0627\0644\0639\0645\0644.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888166881025823)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \062F\0627\0644\0629 \0627\0644\062A\062D\0642\0642 \0645\0646 \062C\0644\0633\0629 \0627\0644\0639\0645\0644.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888354704025823)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \0645\0637\0627\0644\0628\0629 \0645\0633\0626\0648\0644 %0 \0628\062A\0643\0648\064A\0646 \0645\062D\0631\0643 \0644\062F\062E\0648\0644 \0627\0644\0645\0648\062D\062F \0641\064A Oracle Application Server.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898714438025826)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0631\062C\0627\0639 %0 \063A\064A\0631 \0635\0627\0644\062D \0641\064A \0631\0645\0632 %1 \0627\0644\0641\0631\064A\062F \0628\0648\0627\0633\0637\0629 \0627\0644\062F\062E\0648\0644 \0627\0644\0645\0648\062D\062F.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875409387025819)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \062A\062D\0631\064A\0631 \0645\062E\0637\0637 \0627\0644\0645\0635\0627\062F\0642\0629 \0648\0625\0636\0627\0641\0629 \0627\0633\0645 \0627\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898449546025826)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062A\062F\0639\064A \0625\062C\0631\0627\0621 %0 \063A\064A\0631 \0645\0634\0631\0648\0639:')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898691834025826)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\0644\0633\0629 \0639\0645\0644 \0627\0644\062A\0637\0628\064A\0642 \063A\064A\0631 \0635\0627\0644\062D\0629 \0641\064A \0631\0645\0632 urlc \0627\0644\0641\0631\064A\062F: %0')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898226897025826)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \062E\0637\0623 \0641\064A portal_sso_redirect: \0645\0639\0644\0648\0645\0627\062A \062A\0633\062C\064A\0644 \0627\0644\062A\0637\0628\064A\0642 \063A\064A\0631 \0645\0648\062C\0648\062F\0629: %0')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888226875025823)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0632\0645\0629 WWSEC_SSO_ENABLER_PRIVATE \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0623\0648 \063A\064A\0631 \0635\0627\0644\062D\0629.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875312155025819)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0639\0630\0631 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0633\0645 \062A\0637\0628\064A\0642 \0634\0631\064A\0643 \0645\0633\062C\0644 \0641\064A \0645\062E\0637\0637 \0645\0635\0627\062F\0642\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898380533025826)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \062A\0633\062C\064A\0644 \0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642 \0643\0645\0627 \0647\0648 \0645\0628\064A\0646 \0641\064A \062F\0644\064A\0644 \0627\0644\062A\062B\0628\064A\062A.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888456968025823)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0645\0635\0627\062F\0642\0629 \0627\0644\062F\062E\0648\0644 \0627\0644\0645\0648\062D\062F.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001783047025860)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 URL \063A\064A\0631 \0645\0639\062A\0645\062F:  %0')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887818209025823)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0627\0644\0645\0635\0627\062F\0642\0629.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853299132025813)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644 "%0" \063A\064A\0631 \0646\0634\0637\0629. \0639\0644\064A\0643 \0628\0627\0644\0627\062A\0635\0627\0644 \0628\0627\0644\0645\0633\0626\0648\0644.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853965232025813)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'ar'
,p_message_text=>'%0'
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863051952025816)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0631\0641\0636 \0627\0644\0648\0635\0648\0644 \0628\0648\0627\0633\0637\0629 \0627\062E\062A\0628\0627\0631 \0627\0644\0623\0645\0627\0646 \0641\064A \0627\0644\062A\0637\0628\064A\0642')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863144257025816)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0631\0641\0636 \0627\0644\0648\0635\0648\0644 \0628\0648\0627\0633\0637\0629 \0627\062E\062A\0628\0627\0631 \0627\0644\0623\0645\0627\0646 \0641\064A \0627\0644\0635\0641\062D\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863257743025816)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0627\0644\0627\0639\062A\0645\0627\062F.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932309948025837)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\0646\0634\0627\0621 \0628\0648\0627\0633\0637\0629 %0 \0628\0627\0633\062A\062E\062F\0627\0645 %1')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932404536025837)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0647\062A\0645\0627\0645')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992290835025857)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0635\0641 \0627\0644\062D\062F\062B')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992038673025857)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0627\0631\064A\062E \0627\0644\0646\0647\0627\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992379510025857)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0641 \0627\0644\062D\062F\062B')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991919208025857)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0627\0631\064A\062E \0627\0644\0628\062F\0627\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992156178025857)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0627\0644\062D\062F\062B')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834797473025807)
,p_name=>'APEX.CARD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\0637\0627\0642\0629')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834904434025807)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0631\0627\0621 \0627\0644\0628\0637\0627\0642\0629')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875671817025819)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0628\0639 \062D\0648\0627\0631 \0645\062E\0641\064A \0645\0631\0626\064A\064B\0627')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877503568025820)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \062E\0637\0623 \0641\064A \0645\062D\062A\0648\0649 \0627\0644\0645\062C\0645\0648\0639 \0627\0644\0627\062E\062A\0628\0627\0631\064A')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877420461025820)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \062E\0637\0623 \0641\064A \062A\0646\0633\064A\0642 \0627\0644\0645\062C\0645\0648\0639 \0627\0644\0627\062E\062A\0628\0627\0631\064A')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947322709025842)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0646\0633\062E \0625\0644\0649 \0627\0644\062D\0627\0641\0638\0629.')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946885494025842)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062F\0639\0645 \0647\0630\0627 \0627\0644\0645\0633\062A\0639\0631\0636 \0627\0644\0646\0633\062E \0628\0627\0633\062A\062E\062F\0627\0645 \0632\0631 \0623\0648 \0642\0627\0626\0645\0629. \062D\0627\0648\0644 \0627\0633\062A\062E\062F\0627\0645 \0627\0644\0627\062E\062A\0635\0627\0631 Ctrl+C \0623\0648 Command+C.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933075057025837)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\063A\0644\0627\0642')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811440919025799)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\062C\0627\0648\0632 \0645\062D\062A\0648\0649 \0645\062D\0631\0631 \0627\0644\0631\0645\0632 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0637\0648\0644 \0627\0644\0639\0646\0635\0631 (%0 \0627\0644\0641\0639\0644\064A\060C %1 \0645\0646 \0627\0644\0623\062D\0631\0641 \0627\0644\0645\0633\0645\0648\062D \0628\0647\0627)')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991582899025856)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0628\0627\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986009568025854)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985915854025854)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0648\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990183620025856)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 #LABEL# \0644\0648\0646\064B\0627 \0635\0627\0644\062D\064B\0627. \0645\062B\0627\0644: %0')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852540940025812)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0632\064A\062F \0645\0646 \0627\0644\0623\0644\0648\0627\0646')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852666324025812)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0641\062A\062D \0645\0646\062A\0642\064A \0627\0644\0623\0644\0648\0627\0646')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809724019025798)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0631\064A\0637 \062A\0645\0631\064A\0631 \0623\0644\0641\0627\060C \0634\0631\064A\0637 \062A\0645\0631\064A\0631\0623\0641\0642\064A. \0627\0633\062A\062E\062F\0645 \0645\0641\0627\062A\064A\062D \0627\0644\0623\0633\0647\0645 \0644\0644\062A\0646\0642\0644.')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809409979025798)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\064A\0641 \0627\0644\0623\0644\0648\0627\0646\060C \0634\0631\064A\0637 \062A\0645\0631\064A\0631 \0631\0628\0627\0639\064A \0627\0644\0627\062A\062C\0627\0647\0627\062A. \0627\0633\062A\062E\062F\0645 \0645\0641\0627\062A\064A\062D \0627\0644\0623\0633\0647\0645 \0644\0644\062A\0646\0642\0644.')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809522940025798)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0631\064A\0637 \062A\0645\0631\064A\0631 \0644\062A\062F\0631\062C \0627\0644\0623\0644\0648\0627\0646\060C \0634\0631\064A\0637 \062A\0645\0631\064A\0631 \0639\0645\0648\062F\064A. \0627\0633\062A\062E\062F\0645 \0645\0641\0627\062A\064A\062D \0627\0644\0623\0633\0647\0645 \0644\0644\062A\0646\0642\0644.')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985826903025854)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0644\0648\0646')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986123261025854)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\063A\064A\064A\0631 \0635\064A\063A\0629 \0627\0644\0644\0648\0646')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024043690025867)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024164757025867)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\062A\062D \0642\0627\0626\0645\0629 \0644\0640: %0')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004498350025861)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'ar'
,p_message_text=>unistr('(\0645\0643\062A\0645\0644)')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893356664025824)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062A\0635\0644 \0628\0645\0633\0626\0648\0644 \0627\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908813954025830)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0627\062A\0635\0644 \0628\0645\0633\0626\0648\0644 \0627\0644\062A\0637\0628\064A\0642.'),
unistr('\062A\062A\0648\0641\0631 \062A\0641\0627\0635\064A\0644 \062D\0648\0644 \0647\0630\0627 \0627\0644\062D\0627\062F\062B \0628\0648\0627\0633\0637\0629 \0645\0639\0631\0641 \062A\0635\062D\064A\062D \0627\0644\0623\062E\0637\0627\0621 "%0".')))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990434307025856)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0635\062D\064A\062D \0627\0644\0623\062E\0637\0627\0621 \0642\0628\0644 \0627\0644\062D\0641\0638.')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835799112025807)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'ar'
,p_message_text=>unistr('%0. \0627\0636\063A\0637 \0639\0644\0649 \0645\0641\062A\0627\062D \0627\0644\062A\0631\0627\062C\0639 \0644\0644\062D\0630\0641.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933900813025837)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 %0 \0645\0646 \0627\0644\0639\0646\0627\0635\0631 \0627\0644\0645\0637\0627\0628\0642\0629')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815862314025800)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('1 \062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \062D\0627\0644\0629 \0645\0637\0627\0628\0642\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933891262025837)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0639\0646\0627\0635\0631 \0645\0637\0627\0628\0642\0629')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810211756025798)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0630\0644\0643')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810105695025798)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0642\064A\0645 \0627\0644\0645\062D\062F\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004938314025861)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\062F\0645 \0627\0644\062D\0627\0644\064A')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990845570025856)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0644\0641 \0627\0644\0645\062D\062F\062F \0641\064A \0639\0646\0635\0631 %0 \063A\064A\0631 \0645\0648\062C\0648\062F \0641\064A APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979343348025852)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\063A\064A\0631\062A \0646\0633\062E\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062D\0627\0644\064A\0629 \0641\064A \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0644\0623\0646 \0627\0644\0645\0633\062A\062E\062F\0645 \0628\062F\0623 \0639\0645\0644\064A\0629 \062A\062D\062F\064A\062B.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948476684025842)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\0645 \0627\0644\062A\062D\0645\064A\0644')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994722544025857)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623 \0645\0639\0627\0644\062C\0629 \0623\0648\0644\064A\0629')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994551875025857)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062F\0631\0627\062C \0635\0641')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008126553025862)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0633\0644\0633\0644: \0627\0644\0625\062C\0631\0627\0621')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994671040025857)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062B \0627\0644\0635\0641')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823169244025803)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\062C\0631\0627\0621\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850758965025812)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'ar'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836837774025807)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 %0 \0645\0646\062A\0642\064A \062A\0627\0631\064A\062E \0623\0648 \062A\0627\0631\064A\062E\064B\0627 \0635\0627\0644\062D\064B\0627\060C \0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644 %1.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946071000025841)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854243481025813)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865249807025816)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0634\062A\0645\0644 %0 \0639\0644\0649 \0623\062C\0632\0627\0621 \063A\064A\0631 \0645\062F\0639\0648\0645\0629 \0641\064A \0642\0646\0627\0639 \0627\0644\0635\064A\063A\0629: %1')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850409696025812)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0627\0639\0629')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934348644025838)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0648\064A\0645 \0627\0644\0645\0646\0628\062B\0642: %0')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850229211025812)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0628\0648\0639')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850353307025812)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0628\0648\0639')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850611140025812)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0642\0627\0626\0642')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850802335025812)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851245719025812)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820893507025802)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0627\0641\0630\0629 \0645\0646\0628\062B\0642\0629 \0644\0640 %0')
,p_is_js_message=>true
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851184072025812)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631 \0627\0644\0633\0627\0628\0642')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943695044025840)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\062A\0642\064A \062A\0627\0631\064A\062E \0644\0644\0642\0631\0627\0621\0629 \0641\0642\0637')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852054713025812)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\062A\0627\0631\064A\062E')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820974531025802)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062F \0627\0644\062A\0627\0631\064A\062E \0648\0627\0644\0648\0642\062A')
,p_is_js_message=>true
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818131349025801)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\064A\0648\0645')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821527401025802)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0634\0647\0631 \0648\0627\0644\0633\0646\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818392968025801)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0648\0642\062A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818809962025801)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\064A\0648\0645')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836452875025807)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 #LABEL# \062A\0627\0631\064A\062E\064B\0627 \0635\0627\0644\062D\064B\0627\060C \0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644 %0.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836144121025807)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\0643\0648\0646 \0642\064A\0645\0629 #LABEL# \0628\064A\0646 %0 \0648 %1.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836266620025807)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\0643\0648\0646 \0642\064A\0645\0629 #LABEL# \0641\064A %0 \0623\0648 \0628\0639\062F\0647.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836384535025807)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\0643\0648\0646 \0642\064A\0645\0629 #LABEL# \0641\064A %0 \0623\0648 \0642\0628\0644\0647.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827732415025804)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0645\062E\0641\064A \0645\0631\0626\064A\064B\0627')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851008874025812)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0646\0629')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938045906025839)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('#LABEL# \0623\0643\0628\0631 \0645\0646 (\0644\0627\062D\0642 \0644\0640) \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0627\0644\0645\062D\062F\062F \0644\0644\062A\0627\0631\064A\062E %0.')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938479579025839)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('#LABEL# \0644\0627 \064A\0637\0627\0628\0642 \0627\0644\0635\064A\063A\0629 %0.')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937949943025839)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('#LABEL# \0623\0642\0644 \0645\0646 (\0633\0627\0628\0642 \0639\0644\0649) \0627\0644\062D\062F \0627\0644\0623\062F\0646\0649 \0627\0644\0645\062D\062F\062F \0644\0644\062A\0627\0631\064A\062E %0.')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938167858025839)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'ar'
,p_message_text=>unistr('#LABEL# \0644\064A\0633 \0641\064A \0646\0637\0627\0642 \0635\0627\0644\062D \0645\0646 %0 \0625\0644\0649 %1.')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938364007025839)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'ar'
,p_message_text=>unistr('#LABEL# \0644\064A\0633 \0641\064A \0646\0637\0627\0642 \0633\0646\0648\0627\062A \0635\0627\0644\062D \0628\064A\0646 %0 \0648%1.')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830183529025805)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \062F\0627\062E\0644\064A \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0637\0644\0628 DBMS_CLOUD.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990701473025856)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\063A\0627\0621')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016656676025865)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\063A\0644\0627\0642')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877825683025820)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0623\0643\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018629284025865)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0639\0644\064A\0645\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990533975025856)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0648\0627\0641\0642')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990651265025856)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858376628025814)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898047777025826)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0645\0631\0628\0639 \062D\0648\0627\0631 \0645\062E\0641\064A \0645\0631\0626\064A\064B\0627')
,p_is_js_message=>true
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819174855025802)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0638\064A\0641\0629 Oracle Document Generator \0627\0644\0645\064F\0639\062F\0629 \0645\0633\0628\0642\064B\0627')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829984855025805)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0637\0628\0627\0639\0629 \0645\0633\062A\0646\062F.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807159534025798)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('%s \0644\0627 \064A\062F\0639\0645 %1 \0643\0625\062E\0631\0627\062C.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819075441025801)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623 "%0" \0623\062B\0646\0627\0621 \0627\0633\062A\062F\0639\0627\0621 \0648\0638\064A\0641\0629 Oracle Document Generator \0627\0644\0645\064F\0639\062F\0629 \0645\0633\0628\0642\064B\0627:')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810516600025799)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0637\0644\0648\0628 \0625\062F\062E\0627\0644 \0642\0627\0644\0628.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835987129025807)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\0646\0632\064A\0644 \0627\0644\0645\0644\0641.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835819083025807)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0628\064A\0627\0646\0627\062A \0642\0627\0628\0644\0629 \0644\0644\062A\0646\0632\064A\0644.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839402682025808)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0647\0630\0647 \0627\0644\0645\064A\0632\0629 \063A\064A\0631 \0645\062A\0627\062D\0629 \0641\064A \0628\064A\0626\0629 \0648\0642\062A \0627\0644\062A\0634\063A\064A\0644 \0641\0642\0637.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892258680025824)
,p_name=>'APEX.ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623')
,p_is_js_message=>true
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852143344025812)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \0627\0644\062E\0637\0623 \0627\0644\062A\0627\0644\064A \0623\062B\0646\0627\0621 \062A\0646\0641\064A\0630 \0645\0639\0627\0648\062F\0629 \0627\062A\0635\0627\0644 \0644\0625\0635\0644\0627\062D \062E\0637\0623: %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864719042025816)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0637\0628\0627\0639\0629 \0635\0641\062D\0629 \0627\0644\062E\0637\0623: %0')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853820627025813)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623 \062F\0627\062E\0644\064A')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003548093025861)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0639\0644\064A\0643 \0628\0627\0644\0627\062A\0635\0627\0644 \0628\0627\0644\0645\0633\0626\0648\0644.'),
unistr('\062A\062A\0648\0641\0631 \062A\0641\0627\0635\064A\0644 \062D\0648\0644 \0647\0630\0627 \0627\0644\062D\0627\062F\062B \0645\0646 \062E\0644\0627\0644 \0645\0639\0631\0641 \062A\0635\062D\064A\062D \0627\0644\0623\062E\0637\0627\0621 "%0".')))
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998167043025859)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0641\062A\062D \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0628\063A\0631\0636 \0627\0644\0642\0631\0627\0621\0629-\0641\0642\0637')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028236303025868)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'ar'
,p_message_text=>unistr('ORA-28353: \0641\0634\0644 \0641\062A\062D \0627\0644\062D\0627\0641\0638\0629. \0648\0645\0646 \062B\0645\060C \0644\0627 \064A\0645\0643\0646 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0628\064A\0627\0646\0627\062A \0627\0644\062A\0637\0628\064A\0642 \062D\0627\0644\064A\064B\0627.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998268032025859)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0630\0631\0629\060C \0647\0630\0647 \0627\0644\0635\0641\062D\0629 \063A\064A\0631 \0645\062A\0627\062D\0629.')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856819637025814)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0639\0644\0648\0645\0627\062A \0627\0644\0641\0646\064A\0629 (\0645\062A\0648\0641\0631 \0644\0644\0645\0637\0648\0631\064A\0646 \0641\0642\0637)')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962776607025847)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0633\0627\0644\0629 \062E\0637\0623')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976675611025851)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0646\0633\064A\0642 \0627\0644\0645\062A\0648\0642\0639: %0')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941521998025840)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0633\062A\062E\062F\0645 \0641\064A \0642\0627\0626\0645\0629 \0627\0644\062A\062D\0643\0645 \0628\0627\0644\0648\0635\0648\0644 \0628\0627\0644\0641\0639\0644')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941403266025840)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \062A\0623\0643\064A\062F \0625\0636\0627\0641\0629 \0627\0644\0645\0633\062A\062E\062F\0645 (\0627\0644\0645\0633\062A\062E\062F\0645\064A\0646) \0627\0644\062A\0627\0644\064A %0 \0625\0644\0649 \0642\0627\0626\0645\0629 \0627\0644\062A\062D\0643\0645 \0628\0627\0644\0648\0635\0648\0644 <strong>%1</strong>.')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941930799025840)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \0645\0633\062A\062E\062F\0645 \0645\0643\0631\0631.')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941643458025840)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0644\0627\0645\0629 (@) \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0641\064A \0639\0646\0648\0627\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941738896025840)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0642\0637\0629 (.) \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0641\064A \0639\0646\0648\0627\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941809161025840)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\0645\0633\062A\062E\062F\0645 \0637\0648\064A\0644 \0644\0644\063A\0627\064A\0629')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942162655025840)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646 \0644\0644\0645\0633\062A\062E\062F\0645\064A\0646 \0627\0644\0645\062D\062F\062F\064A\0646 \0641\064A \0642\0627\0626\0645\0629 \0627\0644\062A\062D\0643\0645 \0628\0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0627\0644\062A\0637\0628\064A\0642 \0641\0642\0637 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942289003025840)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0645\0629 \0625\0639\062F\0627\062F \0627\0644\062A\062D\0643\0645 \0641\064A \0627\0644\0648\0635\0648\0644 \063A\064A\0631 \0645\062A\0648\0642\0639\0629: %0')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942087571025840)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646 \0644\0643\0644 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646 \0627\0644\0645\0635\062F\0642 \0639\0644\064A\0647\0645 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986506436025855)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0637\0644')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986438289025855)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0645\0643\0646')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986749496025855)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('%0: \0645\0639\0637\0644')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986614505025855)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('%0: \0645\0645\0643\0646')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835295267025807)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\062F\0639\0648\0645')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896419671025825)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\064A\0642\0627\0641')
,p_is_js_message=>true
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896340189025825)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0634\063A\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986336221025854)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\0639\0631\0641')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826823036025804)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0628\0627\064A\062A')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827380168025804)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'ar'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827032532025804)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'ar'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827283759025804)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'ar'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979538885025852)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0646\0632\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832653527025806)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\064A\0627\0631\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832324059025806)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832565617025806)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062E\0641\0627\0621 \0627\0644\0645\0631\0634\062D \0627\0644\0625\0636\0627\0641\064A')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857268563025814)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \0645\0631\0634\062D')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933539521025837)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D \0627\0644\0645\0637\0628\0642 %0')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857945078025814)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0637\0628\064A\0642')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977194051025852)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0637\0628\064A\0642')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858018382025814)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\063A\0627\0621')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841892550025809)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\0634\0631\064A\0637\064A')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989806338025856)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0630\0644\0643')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841994140025809)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0633\0645 \0628\064A\0627\0646\064A \0642\0631\0635\064A')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988425066025855)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841657201025809)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\062F\062F')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977607194025852)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977710631025852)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D \0627\0644\0643\0644')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977814218025852)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D %0')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994392434025857)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F %1\060C \0627\0644\0645\0634\0627\0631 \0625\0644\064A\0647 \0641\064A \0627\0644\062C\0627\0646\0628 %0\060C \063A\064A\0631 \0645\062A\0627\062D \0623\0648 \063A\064A\0631 \0645\0639\062A\0645\062F.')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805035806025797)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0627\0644\0645\0631\0634\062D\0627\062A \0627\0644\0645\0637\0644\0648\0628 \0639\0631\0636\0647\0627')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931589724025837)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0646\062A\0627\0626\062C')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931678778025837)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062D\062F\064A\062F %0')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934479687025838)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D\0627\062A \0627\0644\062D\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810027512025798)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\062D\062B \0645\062A\0639\062F\062F \0627\0644\062C\0648\0627\0646\0628 \064A\062A\0637\0644\0628 \0645\0635\062F\0631 \0628\064A\0627\0646\0627\062A \0639\0644\0649 \0645\0633\062A\0648\0649 \0627\0644\0645\0646\0637\0642\0629.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813742949025800)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0645\0631\0634\062D\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992842104025857)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062C\0627\0648\0632 \062D\062F \0627\0644\0642\064A\0645\0629 \0627\0644\0641\0631\064A\062F\0629 (%0) \0641\064A \0627\0644\062C\0627\0646\0628 %1.')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979165069025852)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062C\0627\0646\0628 %0 \063A\064A\0631 \0645\062F\0639\0648\0645 \0641\064A \0627\0644\0623\0639\0645\062F\0629 \0645\0646 \0627\0644\0646\0648\0639 DATE \0623\0648 TIMESTAMP.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977273115025852)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D %0')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851840066025812)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 (\0627\0644\0645\064F\0631\0634\062D \0627\0644\0645\0637\0628\0642)')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977352996025852)
,p_name=>'APEX.FS.GO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0642\0627\0644 \0625\0644\0649')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847310570025811)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A \0639\0644\0649 %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978791592025852)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0633\0627\0648\064A %0')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847099955025810)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0643\0628\0631 \0645\0646 %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847158624025811)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0643\0628\0631 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846710430025810)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0642\0644 \0645\0646 %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846903363025810)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0635\063A\0631 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846232615025810)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A \0639\0644\0649 %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832016336025806)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0633\0627\0648\064A %0')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846349727025810)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0628\062F\0623 \0628\0640 %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847251336025811)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0628\062F\0623 \0628\0640 %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845375383025810)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0639\0627\0645\0644 \062A\0635\0641\064A\0629 \0625\0636\0627\0641\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821132268025802)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\0627\062F\0626\0629 \0627\0644\0645\0631\0634\062D "%0" \063A\064A\0631 \0635\0627\0644\062D\0629 \0644\0644\0645\0631\0634\062D \0627\0644\0625\0636\0627\0641\064A "%1".')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819530446025802)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\0627\062F\0626\0629 \0627\0644\0645\0631\0634\062D \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0644\0644\0645\0631\0634\062D \0627\0644\0625\0636\0627\0641\064A "%0".')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853786824025813)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0627\0645\0644')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835642009025807)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834695176025807)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0633\0627\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835340723025807)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0643\0628\0631 \0645\0646')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835485485025807)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0643\0628\0631 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835025791025807)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0642\0644 \0645\0646')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835105734025807)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0635\063A\0631 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846144850025810)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A \0639\0644\0649')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834826263025807)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0633\0627\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846057354025810)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0628\062F\0623 \0628\0640')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123835568837025807)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0628\062F\0623 \0628\0640')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854189556025813)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0628\064A\0627\0646\0627\062A %0 (%1) \063A\064A\0631 \0645\062F\0639\0648\0645 \0641\064A \062C\0627\0646\0628 "\062D\0642\0644 \0627\0644\0625\062F\062E\0627\0644".')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821098502025802)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D "%0" \063A\064A\0631 \0645\062F\0639\0648\0645 \0644\0644\0645\0631\0634\062D \0627\0644\0625\0636\0627\0641\064A "%1" (\0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A %2).')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853675643025813)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978995935025852)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\0642\062F\064A\0645 \0623\0639\0645\062F\0629 \0628\062D\062B \0641\064A \0627\0644\062C\0627\0646\0628 %0')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805162750025797)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0632\064A\062F \0645\0646 \0627\0644\0645\0631\0634\062D\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931769023025837)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062F\0627\064A\0629 \0627\0644\0646\0637\0627\0642')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978497879025852)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0625\0644\0649 %1')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978575310025852)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0639\0644\0649 %0')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978649628025852)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0642\0644 %0')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931868050025837)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0647\0627\064A\0629 \0627\0644\0646\0637\0627\0642')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996425670025858)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0635\0631 \0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645 #%2 ("%1") \0641\064A \062C\0627\0646\0628 \0627\0644\0646\0637\0627\0642 %0 \063A\064A\0631 \0635\0627\0644\062D (\0627\0644\0641\0627\0635\0644 "|" \063A\064A\0631 \0645\0648\062C\0648\062F).')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978807501025852)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\062F\062E\0627\0644 \0627\0644\064A\062F\0648\064A \0641\064A \062C\0627\0646\0628 \0627\0644\0646\0637\0627\0642 %0 \063A\064A\0631 \0645\062F\0639\0648\0645 \062D\0627\0644\064A\064B\0627\060C \0646\0638\0631\064B\0627 \0644\0623\0646 \0627\0644\0639\0645\0648\062F \0645\0646 \0627\0644\0646\0648\0639 DATE \0623\0648 TIMESTAMP.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978152818025852)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\0649')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841718648025809)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928162404025836)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977584484025852)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977481832025852)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B...')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978330962025852)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'ar'
,p_message_text=>unistr('- \062A\062D\062F\064A\062F -')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841555661025809)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977988868025852)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0623\0642\0644')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978064206025852)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0627\0644\0643\0644')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123978224531025852)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0646\062C\0648\0645 \0648\0623\0643\062B\0631')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933420848025837)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0642\062A\0631\0627\062D\0627\062A \0627\0644\062A\0631\0634\064A\062D')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979042340025852)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\0627\0646\0628 \0627\0644\062D\0642\0644 \0627\0644\0646\0635\064A %0 \0645\062F\0639\0648\0645 \0641\0642\0637 \062D\0627\0644\064A\064B\0627 \0641\064A \0623\0639\0645\062F\0629 NUMBER.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804510973025797)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0645\0627\0644\064A \0639\062F\062F \0627\0644\0635\0641\0648\0641')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994437814025857)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0628\064A\0627\0646\0627\062A %0 (%1) \063A\064A\0631 \0645\062F\0639\0648\0645 \0641\064A \0627\0644\0628\062D\062B \0645\062A\0639\062F\062F \0627\0644\062C\0648\0627\0646\0628.')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924697749025834)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0645\062E\0641\064A \0645\0631\0626\064A\064B\0627')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986959620025855)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0642\0627\0644 \0625\0644\0649 \0627\0644\062E\0637\0623')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942966359025840)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639.')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870829929025818)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0641\0627\0631\063A')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952207187025843)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\064A \0641\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943028193025840)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0648\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645.')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952104062025843)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\0633\064A\0639 \0641\0627\0635\0644 \0639\0646\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951912547025843)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0630\0641 %0 \0645\0646 \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021093541025866)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0647\0648\064A\0629 \0645\0643\0631\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813941360025800)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062F\062E\0648\0644 \0641\064A \0648\0636\0639 \0627\0644\062A\062D\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939857158025839)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0648\0644')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812792809025799)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062E\0641\0627\0621 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811712288025799)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062D\062A\0648\0649 \062E\0644\064A\0629 \0627\0644\062F\0641\0642 \0627\0644\0639\0627\0626\0645')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813060861025799)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0645\062D\062A\0648\0649 \062F\0641\0642 \0627\0644\0623\0639\0645\0627\0644')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887243703025823)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0630\064A\064A\0644 \0627\0644\0634\0628\0643\0629')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943233890025840)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0627\0644\0645\062C\0645\0648\0639\0629')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943109521025840)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0646\0648\0627\0646.')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939956398025839)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\062E\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814183928025800)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\063A\0627\062F\0631\0629 \0648\0636\0639 \0627\0644\062A\062D\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838895748025808)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0645\064A\0644 \0627\0644\0643\0644')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961793198025847)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0627\0644\0645\0632\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939634784025839)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943374085025840)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\0641\0648\0641 \0627\0644\0635\0641\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852469363025812)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641\062D\0629 %0')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940052350025839)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'ar'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940195188025839)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 - %1 \0645\0646 %2')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997021677025858)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0635\0641\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887580061025823)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0631\0642\064A\0645 \0627\0644\0635\0641\062D\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939753114025839)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0628\0642')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837751522025808)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\0645\062F\0649')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871145843025818)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020815010025866)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062A \0627\0644\0625\0636\0627\0641\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020988916025866)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062A\063A\064A\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029237086025869)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\0644\0633\0644 \0635\0641\0648\0641 \0627\0644\0634\0628\0643\0629 %0\060C \0627\0644\0639\0645\0648\062F %1.')
,p_is_js_message=>true
,p_version_scn=>2692407
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029375328025869)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\0644\0633\0644 \0635\0641\0648\0641 \0627\0644\0634\0628\0643\0629 %0.')
,p_is_js_message=>true
,p_version_scn=>2692407
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020718341025866)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062D\0630\0641')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943559032025840)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0627\0644\0635\0641')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871018858025818)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838949118025808)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062D\062F\064A\062F %0 %1')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939022042025839)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062D\062F\064A\062F %0 \0645\0646 \0627\0644\062E\0644\0627\064A\0627')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940261608025839)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062D\062F\064A\062F %0 \0645\0646 \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982389665025853)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0643\0644')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875896910025819)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0643\0644 \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952009458025843)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641\062D\0629 %0')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943410418025840)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0635\0641')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943760583025841)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0641\0631\0632 \062A\0635\0627\0639\062F\064A\064B\0627 %0')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943862204025841)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0641\0631\0632 \062A\0646\0627\0632\0644\064A\064B\0627 %0')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939123940025839)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \062A\0635\0627\0639\062F\064A')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939436564025839)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \062A\0635\0627\0639\062F\064A %0')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939294843025839)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \062A\0646\0627\0632\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939500132025839)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \062A\0646\0627\0632\0644\064A %0')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123939309983025839)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\0645 \0627\0644\0641\0631\0632')
,p_is_js_message=>true
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804978335025797)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\064A\0627\0631\0627\062A \0627\0644\0641\0631\0632')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887348110025823)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\064A\0642\0648\0646\0627\062A \0627\0644\062D\0627\0644\0629')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887495702025823)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0627\0644\0629 \0627\0644\0634\0628\0643\0629')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817293522025801)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'ar'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816909888025801)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'ar'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951853966025843)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0645\0627\0644\064A %0')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870631551025818)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \0637\0644\0628 HTTP \0625\0644\0649"%0".')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872272173025818)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F %0')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872489892025818)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F %0 \0648\0627\0644\0635\0641 %1')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872796331025818)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A \0627\0644\0639\0645\0648\062F \0627\0644\0623\0648\0644 \0628\0627\0644\0641\0639\0644. \0627\0644\0639\0645\0648\062F %0 \0648\0627\0644\0635\0641 %1')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872698196025818)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A \0627\0644\0635\0641 \0627\0644\0623\0648\0644 \0628\0627\0644\0641\0639\0644. \0627\0644\0639\0645\0648\062F %0 \0648\0627\0644\0635\0641 %1')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018282057025865)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0648\062C\0648\062F\0629 \0641\064A %0 \0645\0646 \0627\0644\0623\0639\0645\062F\0629 \0648%1 \0645\0646 \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872864521025818)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A \0627\0644\0639\0645\0648\062F \0627\0644\0623\062E\064A\0631 \0628\0627\0644\0641\0639\0644. \0627\0644\0639\0645\0648\062F %0 \0648\0627\0644\0635\0641 %1')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872597058025818)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A \0627\0644\0635\0641 \0627\0644\0623\062E\064A\0631 \0628\0627\0644\0641\0639\0644. \0627\0644\0639\0645\0648\062F %0 \0648\0627\0644\0635\0641 %1')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951793808025843)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0648\062C\0648\062F\0629 \0641\064A %0 \0645\0646 \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872371921025818)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641 %0')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029015246025868)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 %0')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936107217025838)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\062C\0631\0627\0621\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937178722025838)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937022066025838)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \0635\0641')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022601130025866)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008227655025862)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\062C\0645\064A\0639')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009916402025862)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0643\0644')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967585858025848)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0644 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0646\0635\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968763181025849)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\062F\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969851010025849)
,p_name=>'APEX.IG.AND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989273429025855)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\062F \0627\0644\0645\0645\064A\0632 \0627\0644\062A\0642\0631\064A\0628\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023644732025867)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\062F\062F \0627\0644\0625\062C\0645\0627\0644\064A \0627\0644\0645\0645\064A\0632 \0627\0644\062A\0642\0631\064A\0628\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006839354025862)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\0627\062D\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008791998025862)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0635\0627\0639\062F\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968827488025849)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0635\0627\062F\0642\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022728412025866)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0644\0642\0627\0626\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989688090025856)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062A\0648\0633\0637')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023306008025867)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062A\0648\0633\0637 \0627\0644\0625\062C\0645\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006337856025861)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0645\062D\0648\0631 \0627\0644\062A\0633\0645\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006530060025861)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0645\0627\0643\0646 \0627\0644\0639\0634\0631\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006453324025861)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0645\062D\0648\0631 \0627\0644\0642\064A\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012594571025863)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0648\0646 \0627\0644\062E\0644\0641\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006925296025862)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0631\064A\0637\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964125347025847)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013760110025864)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0644\0627\0647\0645\0627')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007003067025862)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0642\0627\0639\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937388301025839)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\063A\0627\0621')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969762586025849)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0633\0627\0633 \0644\062D\0627\0644\0629 \0627\0644\0623\062D\0631\0641')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024212172025867)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'ar'
,p_message_text=>unistr('(\062D\0633\0627\0633 \0644\062D\0627\0644\0629 \0627\0644\0623\062D\0631\0641)')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995517685025858)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0641\0638 \0627\0644\062A\063A\064A\064A\0631\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937793632025839)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\063A\064A\064A\0631 \0637\0631\064A\0642\0629 \0627\0644\0639\0631\0636')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970822203025849)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967375181025848)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\062C\0627\0648\0632 \0627\0633\062A\0639\0644\0627\0645\0643 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0646\0642\0627\0637 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\0628\0627\0644\063A %0 \0644\0643\0644 \0631\0633\0645 \0628\064A\0627\0646\064A. \0627\0644\0631\062C\0627\0621 \062A\0637\0628\064A\0642 \0645\0631\0634\062D \0644\062A\0642\0644\064A\0644 \0639\062F\062F \0627\0644\062A\0633\062C\064A\0644\0627\062A \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0623\0633\0627\0633\064A \0627\0644\062E\0627\0635 \0628\0643.')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936019880025838)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\0647\064A\0643\0644 \0627\0644\062A\0646\0638\064A\0645\064A')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944484863025841)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005878770025861)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\063A\0644\0627\0642')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012746391025863)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0644\0648\0627\0646')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990051783025856)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0627\064A\0646\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969135259025849)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936257890025838)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0639\0645\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898195196025826)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0631\0627\0621\0627\062A \0627\0644\0639\0645\0648\062F')
,p_is_js_message=>true
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897909699025826)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0631\0627\0621\0627\062A \0627\0644\0639\0645\0648\062F "%0"')
,p_is_js_message=>true
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014587370025864)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\0631\0636 \0627\0644\0639\0645\0648\062F')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969245452025849)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0643\0628')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936406742025838)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0633\0627\0628')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964730918025848)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971006901025850)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0648\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944266179025841)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\062E \0625\0644\0649 \0627\0644\062D\0627\0641\0638\0629')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944301135025841)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\062E \0644\0623\0633\0641\0644')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989017437025855)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\062F\062F')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989189975025855)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\062F \0627\0644\0645\0645\064A\0632')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023538342025867)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\062F\062F \0627\0644\0625\062C\0645\0627\0644\064A \0627\0644\0645\0645\064A\0632')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023409871025867)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\062F\062F \0627\0644\0625\062C\0645\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021120349025866)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0648\064A\0646 %0')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967768260025848)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\064A\0627\0646\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014387601025864)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013954713025864)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0631\064A\062E')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995369373025858)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0645\0629 \0627\0644\062A\0627\0631\064A\062E \063A\064A\0631 \0635\0627\0644\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965428053025848)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\064A\0627\0645')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968480083025849)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\0639\062F\0627\062F\0627\062A \0627\0644\0627\0641\062A\0631\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968286209025849)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0648\0639 \0627\0644\0627\0641\062A\0631\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937271910025838)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0630\0641')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015434384025864)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0647\0644 \062A\0631\064A\062F \0628\0627\0644\062A\0623\0643\064A\062F \062D\0630\0641 \0647\0630\0627 \0627\0644\062A\0642\0631\064A\0631\061F')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972821830025850)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0630\0641 \0635\0641')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971604651025850)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0630\0641 \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008885276025862)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0646\0627\0632\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970588191025849)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0641\0627\0635\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935764707025838)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\062A\0641\0627\0635\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997845440025859)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\062A\062C\0627\0647')
,p_is_js_message=>true
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970270654025849)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0637\0644')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964825015025848)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A \0639\0644\0649')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965008872025848)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0628\062F\0623 \0628\0640')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007109771025862)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0627\0626\0631\064A \0645\062C\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971297397025850)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0646\0632\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861597595025815)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\064A\0627\0646\0627\062A \0641\0642\0637')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016403404025864)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0635\064A\063A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876611681025820)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0646\0633\064A\0642 \0627\0644\062A\0646\0632\064A\0644 %0 \063A\064A\0631 \0645\0645\0643\0646.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009527864025862)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639 \0645\0643\0631\0631')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009680104025862)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0627\0635\0644 \0639\0646\0627\0635\0631 \062A\062D\0643\0645 \0645\0643\0631\0631')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972784238025850)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\0641 \0645\0643\0631\0631')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971586580025850)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641\0648\0641 \0627\0644\0645\0643\0631\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936839842025838)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008698293025862)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889153818025823)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 %0')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020091388025866)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0627\0644\0645\062C\0645\0648\0639\0629 \062D\0633\0628')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927279749025835)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0641\064A \0648\0636\0639 \0627\0644\062A\062D\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902884942025828)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0629 \0641\064A \0648\0636\0639 \0627\0644\062A\062D\0631\064A\0631\060C \062A\0648\0642\0641 \0639\0646 \0627\0644\0636\063A\0637 \0644\0644\062A\0628\062F\064A\0644 \0625\0644\0649 \0648\0636\0639 \0627\0644\0639\0631\0636')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016005138025864)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\062E\0629 \0645\062E\0641\064A\0629 (bcc)')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016238285025864)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0627\0644\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015906170025864)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\062E\0629 (\0646\0633\062E\0629 \0625\0644\0649)')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015691653025864)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0631\0633\0627\0644 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A.')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016145376025864)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0648\0636\0648\0639')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015832287025864)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0633\062A\0644\0645 (\0625\0644\0649)')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969943894025849)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0645\0643\0646')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963114030025847)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0633\0627\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970036022025849)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0639\0628\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015009846025864)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0648\0639')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982282854025853)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0639\062F\0627\062F \0627\0644\0645\0644\0641. \062C\0627\0631\064D \0628\062F\0621 \0627\0644\062A\0646\0632\064A\0644.')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944592539025841)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0628\0626\0629')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946790748025842)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\062A\0639\0628\0626\0629 \0645\0639')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946641846025842)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\062A\0639\0628\0626\0629')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936313091025838)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969346408025849)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023092201025867)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0634\062D...')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009078983025862)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0648\0644')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936596690025838)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\0627\0631\064A\062E\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967812528025849)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\064A\063A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013641335025864)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0646\0627\0639 \0627\0644\0635\064A\0627\063A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015390100025864)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'ar'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015279138025864)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'ar'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926330824025835)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'ar'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860219549025815)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'ar'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972410574025850)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970176375025849)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062F\0648\0627\0644 \0648\0627\0644\0639\0648\0627\0645\0644')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007282918025862)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0645\0639\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988908795025855)
,p_name=>'APEX.IG.GO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0642\0627\0644 \0625\0644\0649')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963796880025847)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0643\0628\0631 \0645\0646')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963896226025847)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0643\0628\0631 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970463400025849)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935563730025838)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\0634\0628\0643\0629')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009856358025862)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062C\0645\0648\0639\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970622660025849)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639 \062D\0633\0628')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935829974025838)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \062A\062C\0645\064A\0639 \062D\0633\0628')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014205823025864)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0634\0631\0637')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013187685025863)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0646\0648\0627\0646')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013310221025864)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062D\0627\0630\0627\0629 \0627\0644\0639\0646\0648\0627\0646')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022932522025866)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0639\0644\064A\0645\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018409817025865)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\064A\0645\0643\0646 \0625\062F\0631\0627\062C \0627\0644\0628\064A\0627\0646\0627\062A \0648\062A\062D\062F\064A\062B\0647\0627 \0648\062D\0630\0641\0647\0627 \0645\0628\0627\0634\0631\0629 \0636\0645\0646 \0647\0630\0647 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629.</p>'),
'',
unistr('<p>\0623\062F\0631\062C \0635\0641\064B\0627 \062C\062F\064A\062F\064B\0627 \0628\0627\0644\0646\0642\0631 \0639\0644\0649 \0632\0631 "\0625\0636\0627\0641\0629 \0635\0641".</p>'),
'',
unistr('<p>\0642\0645 \0628\062A\062D\0631\064A\0631 \0628\064A\0627\0646\0627\062A \0645\0648\062C\0648\062F\0629 \0628\0627\0644\0646\0642\0631 \0627\0644\0645\0632\062F\0648\062C \0639\0644\0649 \062E\0644\064A\0629 \0628\0639\064A\0646\0647\0627. \0648\0644\062A\062D\0631\064A\0631 \0643\0645\064A\0627\062A \0623\0643\0628\0631\060C \0627\0646\0642\0631 \0639\0644\0649 "\062A\062D\0631\064A\0631" \0644\0644\062F\062E\0648\0644 \0641\064A \0648\0636\0639 \0627\0644\062A\062D\0631\064A\0631. \0648\0641\064A \0647\0630\0627 \0627\0644\0648\0636\0639 \064A\0645\0643\0646\0643 \0627\0644\0646\0642\0631 \0627\0644\0645\0641\0631\062F \0623\0648 \0627\0633\062A\062E\062F\0627\0645 \0644\0648\062D\0629 \0627\0644\0645\0641\0627\062A\064A\062D \0644\062A\062D\0631\064A\0631 \062E\0644\0627\064A\0627 \0628\0639\064A\0646\0647\0627.</p>'),
'',
unistr('<p>\0627\0633\062A\062E\062F\0645 \0627\0644\0642\0627\0626\0645\0629 "\062A\063A\064A\064A\0631" \0644\062A\0643\0631\0627\0631 \0635\0641\0648\0641 \0648\062D\0630\0641\0647\0627. \0648\0644\062A\0645\0643\064A\0646 \0627\0644\0642\0627\0626\0645\0629 "\062A\063A\064A\064A\0631" \0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639\0627\062A \0627\0644\0627\062E\062A\064A\0627\0631 \0644\062A\062D\062F\064A\062F \0635\0641 \0623\0648 \0623\0643\062B\0631.</p>'),
'',
unistr('<p>\0642\0645 \0628\062A\0643\0631\0627\0631 \0635\0641 \0645\062D\062F\062F \0639\0646 \0637\0631\064A\0642 \0627\0644\0646\0642\0631 \0639\0644\0649 \0627\0644\0642\0627\0626\0645\0629 "\062A\063A\064A\064A\0631" \0648\062A\062D\062F\064A\062F "\062A\0643\0631\0627\0631 \0635\0641\0648\0641". \0648\0627\062D\0630\0641 \0635\0641\064B\0627 \0645\062D\062F\062F\064B\0627 \0639\0646 \0637\0631\064A\0642 \0627\0644\0646\0642\0631 \0639\0644\0649 \0627\0644\0642\0627\0626\0645\0629 "\062A\063A\064A\064A\0631" \0648\062A\062D\062F\064A\062F "\062D\0630\0641 \0635\0641".</p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020512099025866)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0645\0643\0627\0646\064A\0627\062A \0627\0644\062A\062D\0631\064A\0631')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020660932025866)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\062A\0642\062F\0645 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \0645\062C\0645\0648\0639\0629 \0645\0646 \0627\0644\0628\064A\0627\0646\0627\062A \0641\064A \062A\0642\0631\064A\0631 \0642\0627\0628\0644 \0644\0644\0628\062D\062B \0648\0627\0644\062A\062E\0635\064A\0635. \0648\064A\0645\0643\0646 \0625\062C\0631\0627\0621 \0627\0644\0639\062F\064A\062F \0645\0646 \0627\0644\0639\0645\0644\064A\0627\062A \0639\0644\064A\0647 \0644\062A\0642\0644\064A\0644 \0639\062F\062F \0627\0644\0633\062C\0644\0627\062A \0627\0644\0645\0631\062C\0639\0629\060C \0648\062A\063A\064A\064A\0631 \0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\0628\064A\0627\0646\0627\062A.</p>'),
'',
unistr('<p>\0627\0633\062A\062E\062F\0645 \0627\0644\062D\0642\0644 "\0628\062D\062B" \0641\064A \062A\0631\0634\064A\062D \0627\0644\0633\062C\0644\0627\062A \0627\0644\0645\0631\062C\0639\0629. \0648\0627\0646\0642\0631 \0639\0644\0649 "\0625\062C\0631\0627\0621\0627\062A" \0644\0644\0648\0635\0648\0644 \0625\0644\0649 \0627\0644\0639\062F\064A\062F \0645\0646 \062E\064A\0627\0631\0627\062A \062A\0639\062F\064A\0644 \0646\0633\0642 \0627\0644\062A\0642\0631\064A\0631\060C \0623\0648 \0627\0633\062A\062E\062F\0627\0645 \0642\0648\0627\0626\0645 "\0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F" \0641\064A \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629.</p>'),
'',
unistr('<p>\0627\0633\062A\062E\062F\0645 "\0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0642\0631\064A\0631" \0644\062D\0641\0638 \0639\0645\0644\064A\0627\062A \0627\0644\062A\062E\0635\064A\0635 \0627\0644\062A\064A \0623\062C\0631\064A\062A\0647\0627 \0641\064A \062A\0642\0631\064A\0631. \0643\0645\0627 \064A\0645\0643\0646\0643 \062A\0646\0632\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A \0645\0646 \0627\0644\062A\0642\0631\064A\0631 \0641\064A \0645\0644\0641 \062E\0627\0631\062C\064A\060C \0623\0648 \0625\0631\0633\0627\0644\0647\0627 \0641\064A \0631\0633\0627\0644\0629 \0625\0644\0643\062A\0631\0648\0646\064A\0629 \0625\0644\0649 \0646\0641\0633\0643 \0623\0648 \0627\0644\0622\062E\0631\064A\0646.</p>'),
'',
unistr('<p>\0644\0645\0639\0631\0641\0629 \0627\0644\0645\0632\064A\062F\060C \064A\064F\0631\062C\0649 \0627\0644\0627\0637\0644\0627\0639 \0639\0644\0649 "\0627\0633\062A\062E\062F\0627\0645 \0627\0644\0634\0628\0643\0627\062A \0627\0644\062A\0641\0627\0639\0644\064A\0629" \0641\064A <em>\062F\0644\064A\0644 \0645\0633\062A\062E\062F\0645 Oracle APEX</em>.')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020320600025866)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0638\0631\0629 \0639\0627\0645\0629')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018395322025865)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\064A\0645\0643\0646\0643 \062A\062E\0635\064A\0635 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \0628\062D\064A\062B \062A\0639\0631\0636 \0627\0644\0628\064A\0627\0646\0627\062A \0628\0637\0631\0642 \0645\062A\0646\0648\0639\0629 \0628\0627\0633\062A\062E\062F\0627\0645 \0627\0644\0625\0645\0643\0627\0646\064A\0627\062A \0627\0644\0645\0636\0645\0646\0629 \0641\064A\0647\0627.</p>'),
'',
unistr('<p>\0627\0633\062A\062E\062F\0645 \0642\0648\0627\0626\0645 "\0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F" \0623\0648 \0627\0644\0642\0627\0626\0645\0629 "\0625\062C\0631\0627\0621\0627\062A" \0644\062A\062D\062F\064A\062F \0623\064A \0627\0644\0623\0639\0645\062F\0629 \064A\062A\0645 \0639\0631\0636\0647\0627\060C \0648\0628\0623\064A \062A\0633\0644\0633\0644\060C \0648\062A\062C\0645\064A\062F \0623\0639\0645\062F\0629. \0643\0645\0627 \064A\0645\0643\0646\0643 \062A\0639\0631\064A\0641 \0645\062E\062A\0644\0641 \0645\0631\0634\062D\0627\062A \0627\0644\0628\064A\0627\0646\0627\062A \0648\0641\0631\0632 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\0645\0631\062C\0639\0629.</p>'),
'',
unistr('<p>\0627\0633\062A\062E\062F\0645 \0627\0644\0632\0631 "\0639\0631\0636" (\0627\0644\0645\062C\0627\0648\0631 \0644\0644\062D\0642\0644 "\0628\062D\062B") \0641\064A \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0637\0631\0642 \0639\0631\0636 \0628\064A\0627\0646\0627\062A \0623\062E\0631\0649 \0631\0628\0645\0627 \062A\0645 \062A\0639\0631\064A\0641\0647\0627 \0628\0648\0627\0633\0637\0629 \0645\0637\0648\0631 \0627\0644\062A\0637\0628\064A\0642. \0643\0645\0627 \064A\0645\0643\0646\0643 \062A\0643\0648\064A\0646 \0631\0633\0645 \0628\064A\0627\0646\064A \0623\0648 \0639\0631\0636 \0631\0633\0645 \0628\064A\0627\0646\064A \0645\0648\062C\0648\062F.</p>  '),
'',
unistr('<p><em>\0645\0644\0627\062D\0638\0629: \0627\0646\0642\0631 \0639\0644\0649 <strong>\062A\0639\0644\064A\0645\0627\062A</strong> \0641\064A \0645\0631\0628\0639\0627\062A \062D\0648\0627\0631 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \0644\0644\062D\0635\0648\0644 \0639\0644\0649 \0645\0632\064A\062F \0645\0646 \0627\0644\0645\0639\0644\0648\0645\0627\062A \0627\0644\062A\0641\0635\064A\0644\064A\0629 \062D\0648\0644 \0627\0644\062F\0627\0644\0629 \0627\0644\0645\062D\062F\062F\0629.</em></p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020461241025866)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0645\0643\0627\0646\064A\0627\062A \0625\0639\062F\0627\062F \0627\0644\062A\0642\0627\0631\064A\0631')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971411501025850)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017219308025865)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \062A\062C\0645\064A\0639 \0627\0644\0623\0639\0645\062F\0629. \064A\062A\0645 \0639\0631\0636 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\062C\0645\0639\0629 \0641\064A \0646\0647\0627\064A\0629 \0627\0644\0628\064A\0627\0646\0627\062A\060C \0623\0648 \0641\064A \062D\0627\0644\0629 \062A\0639\0631\064A\0641 "\0641\0648\0627\0635\0644 \062A\062D\0643\0645" \064A\062A\0645 \0639\0631\0636\0647\0627 \0641\064A \0623\0633\0641\0644 \0643\0644 \0641\0627\0635\0644.</p>'),
'',
unistr('<p><strong>\0642\0627\0626\0645\0629 \0627\0644\062A\062C\0645\064A\0639</strong><br>'),
unistr('\062A\0639\0631\0636 \0642\0627\0626\0645\0629 \0627\0644\062A\062C\0645\064A\0639 \0645\0627 \062A\0645 \062A\0639\0631\064A\0641\0647 \0645\0646 \062A\062C\0645\064A\0639\0627\062A. \0648\064A\0645\0643\0646 \062A\0639\0637\064A\0644 \062A\062C\0645\064A\0639 \0645\0648\062C\0648\062F \0639\0646 \0637\0631\064A\0642 \0625\0644\063A\0627\0621 \062A\062D\062F\064A\062F\0647.<br>'),
unistr('\0627\0646\0642\0631 \0639\0644\0649 "\0625\0636\0627\0641\0629" ( &plus; ) \0644\062A\0643\0648\064A\0646 \062A\062C\0645\064A\0639 \062C\062F\064A\062F\060C \0623\0648 \0639\0644\0649 "\062D\0630\0641" ( &minus; ) \0644\0625\0632\0627\0644\0629 \062A\062C\0645\064A\0639 \0645\0648\062C\0648\062F.</p>'),
'',
unistr('<p><strong>\0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\062C\0645\064A\0639</strong><br>'),
unistr('\0627\0633\062A\062E\062F\0645 \0627\0644\0646\0645\0648\0630\062C \0627\0644\0645\0648\062C\0648\062F \0639\0644\0649 \0627\0644\062C\0627\0646\0628 \0627\0644\0623\064A\0645\0646 \0641\064A \062A\0639\0631\064A\0641 \0627\0644\062A\062C\0645\064A\0639.<br>'),
unistr('\062D\062F\062F \0627\0633\0645 \0627\0644\0639\0645\0648\062F \0648\0646\0648\0639 \0627\0644\062A\062C\0645\064A\0639.<br>'),
unistr('\064A\0645\0643\0646 \0628\0634\0643\0644 \0627\062E\062A\064A\0627\0631\064A \0625\062F\062E\0627\0644 \062A\0644\0645\064A\062D \0628\0634\0623\0646 \0627\0644\062A\062C\0645\064A\0639.<br>'),
unistr('\0641\064A \062D\0627\0644\0629 \0648\062C\0648\062F \0641\0627\0635\0644 \062A\062D\0643\0645 \0645\0639\0631\0641\060C \0641\0625\0646 \062A\062D\062F\064A\062F <strong>\0625\0638\0647\0627\0631 \0627\0644\0642\064A\0645\0629 \0627\0644\0625\062C\0645\0627\0644\064A\0629</strong> \0627\0644\0645\062A\0648\0633\0637 \0627\0644\0625\062C\0645\0627\0644\064A \0623\0648 \0627\0644\0625\062C\0645\0627\0644\064A \0627\0644\0643\0644\064A \0623\0648 \0642\064A\0645\0629 \0645\0634\0627\0628\0647\0629 \0641\064A \0623\0633\0641\0644 \0627\0644\0628\064A\0627\0646\0627\062A.</p>'),
'',
unistr('<p><em>\0645\0644\0627\062D\0638\0629: \064A\0645\0643\0646 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 "\062A\062C\0645\064A\0639" \0639\0646 \0637\0631\064A\0642 \0627\0644\0642\0627\0626\0645\0629 "\0625\062C\0631\0627\0621\0627\062A" \0623\0648 \0628\0627\0644\0646\0642\0631 \0639\0644\0649 \0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F \0648\0627\0644\0645\062C\0645\0648\0639 ( &sum; ).</em></p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019486923025865)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\062A\062C\0645\064A\0639')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017981667025865)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0644\062A\0639\0631\064A\0641 \0631\0633\0645 \0628\064A\0627\0646\064A \064A\0638\0647\0631 \0643\0637\0631\064A\0642\0629 \0639\0631\0636 \0628\064A\0627\0646\0627\062A \0645\0646\0641\0635\0644\0629.<br>'),
unistr('\062D\062F\062F \0646\0648\0639 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0648\0633\0645\0627\062A\0647.</p>'),
unistr('<p><strong>\0633\0645\0627\062A \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A</strong><br>'),
unistr('\062A\062E\062A\0644\0641 \0633\0645\0627\062A \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\0645\062A\0627\062D\0629 \062A\0628\0639\064B\0627 \0644\0646\0648\0639 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A.</p>'),
'<p>',
'<ul>',
unistr('  <li>\062D\062F\062F \0627\0644\0639\0645\0648\062F \0627\0644\0630\064A \064A\062D\062A\0648\064A \0639\0644\0649 \0642\064A\0645\0629 \0627\0644\0633\0645\0629:'),
'    <ul>',
unistr('      <li>\0627\0644\062A\0633\0645\064A\0629 - \0646\0635 \0643\0644 \0646\0642\0637\0629 \0628\064A\0627\0646\0627\062A.</li>'),
unistr('      <li>\0627\0644\0642\064A\0645\0629 - \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\0645\0637\0644\0648\0628 \062A\062E\0637\064A\0637\0647\0627.</li>'),
unistr('      <li>\0627\0644\0633\0644\0633\0644\0629 - \0644\062A\0639\0631\064A\0641 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\062F\064A\0646\0627\0645\064A\0643\064A \0645\062A\0639\062F\062F \0627\0644\0633\0644\0627\0633\0644.</li>'),
unistr('      <li>\0641\062A\062D - \0633\0639\0631 \0627\0644\0641\062A\062D \0627\0644\064A\0648\0645\064A \0644\0644\0623\0633\0647\0645 (\0627\0644\0623\0633\0647\0645 \0641\0642\0637).</li>'),
unistr('      <li>\0625\0642\0641\0627\0644 - \0633\0639\0631 \0627\0644\0625\0642\0641\0627\0644 \0627\0644\064A\0648\0645\064A \0644\0644\0623\0633\0647\0645 (\0627\0644\0623\0633\0647\0645 \0641\0642\0637).</li>'),
unistr('      <li>\0645\0631\062A\0641\0639 - \0627\0644\0642\064A\0645\0629 \0627\0644\0645\0631\062A\0641\0639\0629 (\0627\0644\0646\0637\0627\0642 \0648\0627\0644\0623\0633\0647\0645 \0641\0642\0637).</li>'),
unistr('      <li>\0645\0646\062E\0641\0636 - \0627\0644\0642\064A\0645\0629 \0627\0644\0645\0646\062E\0641\0636\0629 (\0627\0644\0646\0637\0627\0642 \0648\0627\0644\0623\0633\0647\0645).</li>'),
unistr('      <li>\0627\0644\062D\062C\0645 - \062D\062C\0645 \0627\0644\062A\062F\0627\0648\0644 \0627\0644\064A\0648\0645\064A \0644\0644\0623\0633\0647\0645 (\0627\0644\0623\0633\0647\0645 \0641\0642\0637).</li>'),
unistr('      <li>\0627\0644\0647\062F\0641 - \0627\0644\0642\064A\0645\0629 \0627\0644\0647\062F\0641 (\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\0642\0645\0639\064A).</li>'),
unistr('      <li>\0633 - \0642\064A\0645\0629 \0627\0644\0645\062D\0648\0631 \0633 (\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\0641\0642\0627\0639\064A \0648\0627\0644\0645\0628\0639\062B\0631 \0641\0642\0637).</li>'),
unistr('      <li>\0635 - \0642\064A\0645\0629 \0627\0644\0645\062D\0648\0631 \0635 (\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\0641\0642\0627\0639\064A \0648\0627\0644\0645\0628\0639\062B\0631 \0641\0642\0637).</li>'),
unistr('      <li>\0639 - \0639\0631\0636 \0627\0644\0634\0631\064A\0637 \0623\0648 \0646\0635\0641 \0642\0637\0631 \0627\0644\0641\0642\0627\0639\0629 (\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\0641\0642\0627\0639\064A \0648\0627\0644\0645\0628\0639\062B\0631 \0641\0642\0637).</li>'),
'    </ul>',
'  </li>',
unistr('  <li>\0627\0644\0627\062A\062C\0627\0647 - \0627\0644\0639\0631\0636 \0631\0623\0633\064A\064B\0627 \0623\0648 \0623\0641\0642\064A\064B\0627.</li>'),
unistr('  <li>\0627\0644\062A\062C\0645\064A\0639 - \062A\062D\062F\064A\062F \0643\064A\0641\064A\0629 \062A\062C\0645\064A\0639 \0642\064A\0645 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A.</li>'),
unistr('  <li>\0627\0644\0645\0643\062F\0633 - \062A\062D\062F\064A\062F \0625\0630\0627 \0645\0627 \0643\0627\0646\062A \0639\0646\0627\0635\0631 \0627\0644\0628\064A\0627\0646\0627\062A \0645\0643\062F\0633\0629.</li>'),
unistr('  <li>\0641\0631\0632 \062D\0633\0628 - \0627\0644\0641\0631\0632 \062D\0633\0628 \0627\0644\062A\0633\0645\064A\0629 \0623\0648 \0627\0644\0642\064A\0645\0629 (\0627\0644\0642\064A\0645).'),
'    <ul>',
unistr('      <li>\0627\0644\0627\062A\062C\0627\0647 - \0641\0631\0632 \0627\0644\0642\064A\0645 \0628\062A\0631\062A\064A\0628 \062A\0635\0627\0639\062F\064A \0623\0648 \062A\0646\0627\0632\0644\064A.</li>'),
unistr('      <li>\0627\0644\0642\064A\0645 \0627\0644\0641\0627\0631\063A\0629 - \062A\062D\062F\064A\062F \0643\064A\0641\064A\0629 \0641\0631\0632 \0627\0644\0633\062C\0644\0627\062A \0630\0627\062A \0627\0644\0642\064A\0645 \0627\0644\0641\0627\0631\063A\0629 \0645\0642\0627\0631\0646\0629 \0628\0627\0644\0633\062C\0644\0627\062A \0630\0627\062A \0627\0644\0642\064A\0645 \063A\064A\0631 \0627\0644\0641\0627\0631\063A\0629.</li>'),
'    </ul>',
'  </li>',
unistr('  <li>\0627\0644\0645\0646\0627\0632\0644 \0627\0644\0639\0634\0631\064A\0629</li>'),
unistr('  <li>\0639\0646\0648\0627\0646 \0645\062D\0648\0631 \0627\0644\062A\0633\0645\064A\0629</li>'),
unistr('  <li>\0639\0646\0648\0627\0646 \0645\062D\0648\0631 \0627\0644\0642\064A\0645\0629</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019877639025866)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016930902025865)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0644\0627\062E\062A\064A\0627\0631 \0623\064A \0627\0644\0623\0639\0645\062F\0629 \0633\064A\062A\0645 \0639\0631\0636\0647\0627 \0648\0628\0623\064A \062A\0631\062A\064A\0628.</p>'),
'',
unistr('<p>\064A\0645\0643\0646 \0625\062E\0641\0627\0621 \0627\0644\0639\0645\0648\062F \0639\0646 \0637\0631\064A\0642 \0625\0644\063A\0627\0621 \062A\062D\062F\064A\062F\0647.<br>'),
unistr('\0643\0645\0627 \064A\0645\0643\0646 \0625\0639\0627\062F\0629 \062A\0631\062A\064A\0628 \0627\0644\0623\0639\0645\062F\0629 \0628\0627\0644\0646\0642\0631 \0639\0644\0649 \0646\0642\0644 \0644\0623\0639\0644\0649 ( &uarr; ) \0623\0648 \0646\0642\0644 \0644\0623\0633\0641\0644 ( &darr; ).<br>'),
unistr('\0627\0633\062A\062E\062F\0645 \0627\0644\0645\064F\062D\062F\0650\062F \0627\0644\0645\0646\0633\062F\0644 \0644\0639\0631\0636 "\0643\0644" \0627\0644\0623\0639\0645\062F\0629 \0623\0648 "\0627\0644\0645\0639\0631\0648\0636" \0623\0648 "\063A\064A\0631 \0627\0644\0645\0639\0631\0648\0636" \0645\0646 \0627\0644\0623\0639\0645\062F\0629.</p>'),
'',
unistr('<p>\0628\0634\0643\0644 \0627\062E\062A\064A\0627\0631\064A\060C \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645 \0627\0644\0646\0645\0648\0630\062C \0641\064A \062A\062D\062F\064A\062F \0627\0644\062D\062F \0627\0644\0623\062F\0646\0649 \0644\0639\0631\0636 \0639\0645\0648\062F \0628\0627\0644\0628\0643\0633\0644.</p>'),
'',
unistr('<p><em>\0645\0644\0627\062D\0638\0629: \064A\0645\0643\0646\0643 \0643\0630\0644\0643 \0625\0639\0627\062F\0629 \062A\0631\062A\064A\0628 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629 \0628\0627\0644\0646\0642\0631 \0639\0644\0649 \0645\0642\0628\0636 \0627\0644\0633\062D\0628 (\0641\064A \0628\062F\0627\064A\0629 \0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F) \0648\0633\062D\0628 \0627\0644\0639\0645\0648\062F \0625\0644\0649 \0627\0644\064A\0645\064A\0646 \0623\0648 \0625\0644\0649 \0627\0644\064A\0633\0627\0631. \0648\0628\0645\0642\062F\0648\0631\0643 \0623\064A\0636\064B\0627 \062A\063A\064A\064A\0631 \0639\0631\0636 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629 \0639\0646 \0637\0631\064A\0642 \062A\062D\062F\064A\062F \0641\0627\0635\0644 \0627\0644\0623\0639\0645\062F\0629\060C \0627\0644\0648\0627\0642\0639 \0628\064A\0646 \0627\0644\0639\0646\0627\0648\064A\0646\060C \0648\0646\0642\0644\0647 \0625\0644\0649 \0627\0644\064A\0645\064A\0646 \0623\0648 ')
||unistr('\0625\0644\0649 \0627\0644\064A\0633\0627\0631.</em></p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019702262025866)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\0623\0639\0645\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017359789025865)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \062A\0639\0631\064A\0641 \0623\0639\0645\062F\0629 \0625\0636\0627\0641\064A\0629 \0627\0633\062A\0646\0627\062F\064B\0627 \0625\0644\0649 \062D\0633\0627\0628\0627\062A \062A\0642\0648\0645 \0639\0644\0649 \0627\0644\0631\064A\0627\0636\064A\0627\062A \0648\0627\0644\062F\0648\0627\0644 \064A\062A\0645 \0625\062C\0631\0627\0624\0647\0627 \0639\0644\0649 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0648\062C\0648\062F\0629.</p>'),
'',
unistr('<p><strong>\0642\0627\0626\0645\0629 \0627\0644\062D\0633\0627\0628</strong><br>'),
unistr('\062A\0639\0631\0636 \0642\0627\0626\0645\0629 "\0627\0644\062D\0633\0627\0628" \0645\0627 \062A\0645 \062A\0639\0631\064A\0641\0647 \0645\0646 \062D\0633\0627\0628\0627\062A. \0648\064A\0645\0643\0646 \062A\0639\0637\064A\0644 \062D\0633\0627\0628 \0645\0648\062C\0648\062F \0639\0646 \0637\0631\064A\0642 \0625\0644\063A\0627\0621 \062A\062D\062F\064A\062F\0647.<br>'),
unistr('\0627\0646\0642\0631 \0639\0644\0649 "\0625\0636\0627\0641\0629" ( &plus; ) \0644\0625\0636\0627\0641\0629 \062D\0633\0627\0628 \062C\062F\064A\062F\060C \0627\0648 \0639\0644\0649 "\062D\0630\0641" ( &minus; ) \0644\0625\0632\0627\0644\0629 \062D\0633\0627\0628 \0645\0648\062C\0648\062F.</p>'),
'',
unistr('<p><strong>\0625\0639\062F\0627\062F\0627\062A \0627\0644\062D\0633\0627\0628</strong><br>'),
unistr('\0627\0633\062A\062E\062F\0645 \0627\0644\0646\0645\0648\0630\062C \0641\064A \062A\0639\0631\064A\0641 \0627\0644\062D\0633\0627\0628.<br>'),
unistr('\0623\062F\062E\0644 \062A\0641\0627\0635\064A\0644 \0627\0644\0639\0645\0648\062F\060C \0645\062B\0644 \0627\0644\0639\0646\0648\0627\0646 \0648\0627\0644\062A\0633\0645\064A\0629 \0648\062D\062F\062F \0625\0639\062F\0627\062F\0627\062A \0627\0644\0645\062D\0627\0630\0627\0629.<br> '),
unistr('\0627\0633\062A\062E\062F\0645 \0645\0633\0627\062D\0629 \0646\0635 "\0627\0644\062A\0639\0628\064A\0631" \0641\064A \0625\062F\062E\0627\0644 \0627\0644\0639\0645\0648\062F/\0627\0644\0623\0639\0645\062F\0629 \0648\0645\0627 \064A\0642\062A\0631\0646 \0628\0647\0627 \0645\0646 \062F\0648\0627\0644 \0644\0625\062C\0631\0627\0621 \0627\0644\062D\0633\0627\0628.<br>'),
unistr('\062D\062F\062F \0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\0645\0644\0627\0626\0645\060C \0645\0639 \0642\0646\0627\0639 \062A\0646\0633\064A\0642 \0627\062E\062A\064A\0627\0631\064A\060C \0644\0644\0639\0645\0648\062F \0627\0644\062C\062F\064A\062F.</p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019375550025865)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\062D\0633\0627\0628')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017677737025865)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \062A\0639\0631\064A\0641 \0641\0627\0635\0644 \062A\062D\0643\0645 \0641\064A \0639\0645\0648\062F \0623\0648 \0623\0643\062B\0631.</p>'),
'',
unistr('<p><strong>\0642\0627\0626\0645\0629 \0641\0627\0635\0644 \0627\0644\062A\062D\0643\0645</strong><br>'),
unistr('\062A\0639\0631\0636 \0642\0627\0626\0645\0629 "\0641\0627\0635\0644 \0627\0644\062A\062D\0643\0645" \0645\0627 \062A\0645 \062A\0639\0631\064A\0641\0647 \0645\0646 \0641\0648\0627\0635\0644 \0627\0644\062A\062D\0643\0645. \0648\064A\0645\0643\0646 \062A\0639\0637\064A\0644 \0639\0645\0648\062F \0641\0627\0635\0644 \062A\062D\0643\0645 \0645\0648\062C\0648\062F \0639\0646 \0637\0631\064A\0642 \0625\0644\063A\0627\0621 \062A\062D\062F\064A\062F\0647.<br>'),
unistr('\0627\0646\0642\0631 \0639\0644\0649 "\0625\0636\0627\0641\0629" ( &plus; ) \0644\062A\0636\0645\064A\0646 \0639\0645\0648\062F \062C\062F\064A\062F \0641\064A \0641\0627\0635\0644 \0627\0644\062A\062D\0643\0645\060C \0623\0648 \0627\0646\0642\0631 \0639\0644\0649 "\062D\0630\0641" ( &minus; ) \0644\0625\0632\0627\0644\0629 \0639\0645\0648\062F \0645\0648\062C\0648\062F \0645\0646 \0641\0627\0635\0644 \0627\0644\062A\062D\0643\0645.<br>'),
unistr('\0644\0625\0639\0627\062F\0629 \062A\0631\062A\064A\0628 \0627\0644\0623\0639\0645\062F\0629\060C \0627\0646\0642\0631 \0639\0644\0649 "\0646\0642\0631 \0644\0623\0639\0644\0649" ( &uarr; ) \0623\0648 "\0646\0642\0644 \0644\0623\0633\0641\0644" ( &darr; ) \0644\0646\0642\0644 \0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\062F\062F \0623\0639\0644\0649 \0623\0648 \0623\0633\0641\0644 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0623\062E\0631\0649.</p>'),
'',
unistr('<p><strong>\0625\0639\062F\0627\062F\0627\062A \0641\0627\0635\0644 \0627\0644\062A\062D\0643\0645</strong><br>'),
unistr('\0627\0633\062A\062E\062F\0645 \0627\0644\0646\0645\0648\0630\062C \0641\064A \062A\0639\0631\064A\0641 \0639\0645\0648\062F \0641\0627\0635\0644 \0627\0644\062A\062D\0643\0645.<br>'),
unistr('\062A\062A\0639\0644\0642 \0627\0644\0625\0639\062F\0627\062F\0627\062A \0628\062A\062D\062F\064A\062F \0639\0645\0648\062F \0641\0627\0635\0644 \0627\0644\062A\062D\0643\0645\060C \0648\0627\062A\062C\0627\0647 \0627\0644\0641\0631\0632\060C \0648\0643\064A\0641\064A\0629 \062A\0631\062A\064A\0628 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0641\0627\0631\063A\0629 (\0623\064A \0627\0644\0623\0639\0645\062F\0629 \063A\064A\0631 \0627\0644\0645\0634\062A\0645\0644\0629 \0639\0644\0649 \0642\064A\0645).</p>'),
'',
unistr('<p><em>\0645\0644\0627\062D\0638\0629: \0639\0646\062F \0639\0631\0636 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629\060C \064A\0645\0643\0646 \062A\0639\0631\064A\0641 \0641\0627\0635\0644 \062A\062D\0643\0645 \0628\0627\0644\0646\0642\0631 \0639\0644\0649 "\0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F" \0648\062A\062D\062F\064A\062F \0623\064A\0642\0648\0646\0629 \0641\0627\0635\0644 \0627\0644\062A\062D\0643\0645.</em></p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019035341025865)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0641\0648\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017874334025865)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \062A\0646\0632\064A\0644 \0643\0644 \0627\0644\0635\0641\0648\0641 \0627\0644\062D\0627\0644\064A\0629 \0641\064A \0645\0644\0641 \062E\0627\0631\062C\064A. \0648\0633\0648\0641 \064A\0634\062A\0645\0644 \0627\0644\0645\0644\0641 \0641\0642\0637 \0639\0644\0649 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629 \062D\0627\0644\064A\064B\0627\060C \0628\0627\0633\062A\062E\062F\0627\0645 \0623\064A\0629 \0645\0631\0634\062D\0627\062A \0648\0639\0645\0644\064A\0627\062A \0641\0631\0632 \0645\0637\0628\0642\0629 \0639\0644\0649 \0627\0644\0628\064A\0627\0646\0627\062A.</p>'),
'',
unistr('<p>\062D\062F\062F \062A\0646\0633\064A\0642 \0627\0644\0645\0644\0641 \0648\0627\0636\063A\0637 \0639\0644\0649 "\062A\0646\0632\064A\0644".<br>'),
unistr('\0645\0644\0627\062D\0638\0629: \0644\0646 \064A\0634\062A\0645\0644 \0645\0644\0641 CSV \0639\0644\0649 \062A\0646\0633\064A\0642 \0646\0635\064A \0645\062B\0644 \0627\0644\062A\062C\0645\064A\0639\0627\062A \0648\0641\0648\0627\0635\0644 \0627\0644\062A\062D\0643\0645.</p>'),
'',
unistr('<p>\0644\0625\0631\0633\0627\0644 \0627\0644\0645\0644\0641 \0639\0628\0631 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A\060C \062D\062F\062F "\0625\0631\0633\0627\0644 \0643\0631\0633\0627\0644\0629 \0625\0644\0643\062A\0631\0648\0646\064A\0629" \0648\0623\062F\062E\0644 \062A\0641\0627\0635\064A\0644 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A (\0627\0644\0645\062A\0644\0642\064A\060C \0627\0644\0645\0648\0636\0648\0639\060C \0627\0644\0631\0633\0627\0644\0629).</p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018846210025865)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\062A\0646\0632\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017002473025865)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \062A\0643\0648\064A\0646 \0645\0631\0634\062D\0627\062A \0627\0644\0628\064A\0627\0646\0627\062A \0648\0627\0644\062A\064A \062A\0642\0644\0644 \0645\0646 \0639\062F\062F \0627\0644\0635\0641\0648\0641 \0627\0644\0631\0627\062C\0639\0629.</p>'),
'',
unistr('<p><strong>\0642\0627\0626\0645\0629 \0627\0644\0645\0631\0634\062D\0627\062A</strong><br>'),
unistr('\062A\0639\0631\0636 \0642\0627\0626\0645\0629 \0627\0644\0645\0631\0634\062D\0627\062A \0645\0627 \062A\0645 \062A\0639\0631\064A\0641\0647 \0645\0646 \0645\0631\0634\062D\0627\062A. \0648\064A\0645\0643\0646 \062A\0639\0637\064A\0644 \0645\0631\0634\062D \0645\0648\062C\0648\062F \0639\0646 \0637\0631\064A\0642 \0625\0644\063A\0627\0621 \062A\062D\062F\064A\062F\0647.<br>'),
unistr('\0627\0646\0642\0631 \0639\0644\0649 "\0625\0636\0627\0641\0629" ( &plus; ) \0644\0645\0633\062D \0645\0631\0634\062D \062C\062F\064A\062F\060C \0623\0648 \0639\0644\0649 "\062D\0630\0641" ( &minus; ) \0644\0625\0632\0627\0644\0629 \0645\0631\0634\062D \0645\0648\062C\0648\062F.</p>'),
'',
unistr('<p><strong>\0625\0639\062F\0627\062F\0627\062A \0627\0644\0645\0631\0634\062D</strong><br>'),
unistr('\0627\0633\062A\062E\062F\0645 \0627\0644\0646\0645\0648\0630\062C \0641\064A \062A\0639\0631\064A\0641 \062E\0635\0627\0626\0635 \0627\0644\0645\0631\0634\062D.<br>'),
unistr('\062A\062D\062F\064A\062F \0646\0648\0639 \0627\0644\0645\0631\0634\062D \0627\0644\0645\0644\0627\0626\0645:<br>'),
unistr('&nbsp;&nbsp;&nbsp;\0635\0641 - \0645\0631\0634\062D \0644\0644\0628\062D\062B \0639\0646 \0645\0635\0637\0644\062D \0641\064A \0623\064A \0639\0645\0648\062F \0642\0627\0628\0644 \0644\0644\062A\0631\0634\064A\062D.<br>'),
unistr('&nbsp;&nbsp;&nbsp;\0639\0645\0648\062F - \062A\0631\0634\064A\062D \0639\0645\0648\062F \0628\0639\064A\0646\0647 \0628\0627\0633\062A\062E\062F\0627\0645 \0639\0627\0645\0644 \0648\0642\064A\0645\0629 \0628\0639\064A\0646\0647\0645\0627.</p>'),
'',
unistr('<p><em>\0645\0644\0627\062D\0638\0629: \0639\0646\062F \0639\0631\0636 \0634\0628\0643\0629 \062A\0641\0627\0639\0644\064A\0629\060C \064A\0645\0643\0646 \062A\0639\0631\064A\0641 \0645\0631\0634\062D\0627\062A \0635\0641 \0639\0646 \0637\0631\064A\0642 \0627\0644\0643\062A\0627\0628\0629 \0641\064A \0627\0644\062D\0642\0644 "\0628\062D\062B". \0648\0627\0644\0646\0642\0631 \0639\0644\0649 "\062A\062D\062F\064A\062F \0623\0639\0645\062F\0629 \0644\0644\0628\062D\062B" \0628\063A\0631\0636 \0642\0635\0631 \0627\0644\0628\062D\062B \0639\0644\0649 \0623\0639\0645\062F\0629 \0645\0639\064A\0646\0629. \0648\064A\0645\0643\0646 \0643\0625\062C\0631\0627\0621 \0628\062F\064A\0644\060C \0641\062A\062D \0642\0627\0626\0645\0629 "\0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F" \0648\062A\062D\062F\064A\062F \0642\064A\0645\0629 \0644\062A\0643\0648\064A\0646 \0645\0631\0634\062D \0639\0645\0648\062F.</em></p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019679925025865)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\0645\0631\0634\062D')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017459818025865)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \0639\0631\0636 \0627\0644\0628\064A\0627\0646\0627\062A \0643\0645\0627 \0643\0627\0646\062A \0641\064A \0646\0642\0637\0629 \0633\0627\0628\0642\0629 \0641\064A \0627\0644\0645\0627\0636\064A.</p>'),
unistr('<p>\0623\062F\062E\0644 \0639\062F\062F \0627\0644\062F\0642\0627\0626\0642 \0641\064A \0627\0644\0645\0627\0636\064A \0644\0625\062C\0631\0627\0621 \0627\0633\062A\0639\0644\0627\0645 \0639\0646 \0628\064A\0627\0646\0627\062A \062A\0627\0631\064A\062E\064A\0629.</p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019296653025865)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\0627\0631\064A\062E\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019976764025866)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017564514025865)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \062A\0645\064A\064A\0632 \0635\0641\0648\0641 \0623\0648 \0623\0639\0645\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \062A\0628\0639\064B\0627 \0644\0634\0631\0637 \062A\0645 \0625\062F\062E\0627\0644\0647.</p>'),
'',
unistr('<p><strong>\0642\0627\0626\0645\0629 \0627\0644\062A\0645\064A\064A\0632</strong><br>'),
unistr('\062A\0639\0631\0636 \0642\0627\0626\0645\0629 "\0627\0644\062A\0645\064A\064A\0632" \0645\0627 \062A\0645 \062A\0639\0631\064A\0641\0647 \0645\0646 \062A\0645\064A\064A\0632\0627\062A. \0648\064A\0645\0643\0646 \062A\0639\0637\064A\0644 \062A\0645\064A\064A\0632 \0645\0648\062C\0648\062F \0639\0646 \0637\0631\064A\0642 \0625\0644\063A\0627\0621 \062A\062D\062F\064A\062F\0647.<br>'),
unistr('\0627\0646\0642\0631 \0639\0644\0649 "\0625\0636\0627\0641\0629" ( &plus; ) \0644\062A\0643\0648\064A\0646 \062A\0645\064A\064A\0632 \062C\062F\064A\062F\060C \0623\0648 \0627\0646\0642\0631 \0639\0644\0649 "\062D\0630\0641" ( &minus; ) \0644\0625\0632\0627\0644\0629 \062A\0645\064A\064A\0632 \0645\0648\062C\0648\062F.</p>'),
unistr('<p><strong>\0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0645\064A\064A\0632</strong><br>'),
unistr('\0627\0633\062A\062E\062F\0645 \0627\0644\0646\0645\0648\0630\062C \0641\064A \062A\0639\0631\064A\0641 \062E\0635\0627\0626\0635 \0627\0644\062A\0645\064A\064A\0632.<br>'),
unistr('\0623\062F\062E\0644 \0627\0644\0627\0633\0645\060C \0648\062D\062F\062F "\0635\0641" \0623\0648 "\0639\0645\0648\062F" \062B\0645 \062D\062F\062F \0631\0645\0648\0632 \0623\0644\0648\0627\0646 HTML\0644\0644\062E\0644\0641\064A\0629 \0648\0627\0644\0646\0635.<br>'),
unistr('\062D\062F\062F <strong>\0646\0648\0639 \0627\0644\0634\0631\0637</strong> \0627\0644\0645\0644\0627\0626\0645 \0644\062A\0645\064A\064A\0632 \0628\064A\0627\0646\0627\062A \0645\062D\062F\062F\0629:<br>'),
unistr('&nbsp;&nbsp;&nbsp;\0635\0641 - \062A\0645\064A\064A\0632 \0627\0644\0645\0635\0637\0644\062D \0641\064A \0623\064A \0639\0645\0648\062F.<br>'),
unistr('&nbsp;&nbsp;&nbsp;\0639\0645\0648\062F - \0627\0644\062A\0645\064A\064A\0632 \0641\064A \0639\0645\0648\062F \0645\062D\062F\062F \062A\0628\0639\064B\0627 \0644\0639\0627\0645\0644 \0648\0642\064A\0645\0629 \0628\0639\064A\0646\0647\0645\0627.</p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019175366025865)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\062A\0645\064A\064A\0632')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017766095025865)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \062D\0641\0638 \0627\0644\062A\063A\064A\064A\0631\0627\062A \0627\0644\062A\064A \0623\062C\0631\064A\062A\0647\0627 \0639\0644\0649 \0646\0633\0642 \0627\0644\0634\0628\0643\0629 \0627\0644\062D\0627\0644\064A\0629 \0648\0639\0644\0649 \0627\0644\062A\0643\0648\064A\0646.<br>'),
unistr('\0628\0648\0633\0639 \0645\0637\0648\0631\064A \0627\0644\062A\0637\0628\064A\0642\0627\062A \062A\0639\0631\064A\0641 \0627\0644\0639\062F\064A\062F \0645\0646 \0646\064F\0633\0642 \0627\0644\062A\0642\0627\0631\064A\0631 \0627\0644\0628\062F\064A\0644\0629. \0648\0645\062A\0649 \0623\0645\0643\0646\060C \064A\0645\0643\0646\0643 \0623\0646\062A \0648\0633\0648\0627\0643 \0645\0646 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646 \062D\0641\0638 \062A\0642\0631\064A\0631 \0628\0648\0635\0641\0647 "\0639\0627\0645"\060C \0645\0645\0627 \064A\062C\0639\0644\0647 \0645\062A\0627\062D\064B\0627 \0644\0643\0644 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646 \0639\0644\0649 \0627\0644\0634\0628\0643\0629. \064A\0645\0643\0646\0643 \0643\0630\0644\0643 \062D\0641\0638 \062A\0642\0631\064A\0631 \0628\0648\0635\0641\0647 \062A\0642\0631\064A\0631\064B\0627 "\062E\0627\0635" \0644\0627 \064A\064F\0633\0645\062D \0644\0623\062D\062F \0633\0648\0627\0643 \0628\0627\0644\0627\0637\0644\0627\0639 \0639\0644\064A\0647.</p>'),
unistr('<p>\0627\062E\062A\0631 \0645\0646 \0628\064A\0646 \0627\0644\0623\0646\0648\0627\0639 \0627\0644\0645\062A\0627\062D\0629 \0648\0623\062F\062E\0644 \0627\0633\0645\064B\0627 \0644\0644\062A\0642\0631\064A\0631 \0627\0644\0645\062D\0641\0648\0638.</p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018988480025865)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\062A\0642\0631\064A\0631'),
''))
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124017112360025865)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062A\062E\062F\0645 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0641\064A \062A\0639\064A\064A\0646 \062A\0631\062A\064A\0628 \0627\0644\0623\0639\0645\062F\0629.</p>'),
'',
unistr('<p><strong>\0642\0627\0626\0645\0629 \0627\0644\0641\0631\0632</strong><br>'),
unistr('\064A\0639\0631\0636 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 "\0641\0631\0632" \0642\0627\0626\0645\0629 \0628\0642\0648\0627\0639\062F \0627\0644\0641\0631\0632 \0627\0644\0645\0643\0648\0646\0629.<br>'),
unistr('\0627\0646\0642\0631 \0639\0644\0649 "\0625\0636\0627\0641\0629" ( &plus; ) \0644\062A\0643\0648\064A\0646 \0639\0645\0648\062F \0641\0631\0632\060C \0623\0648 \0639\0644\0649 "\062D\0630\0641" ( &minus; ) \0644\0625\0632\0627\0644\0629 \0639\0645\0648\062F \0641\0631\0632.<br>'),
unistr('\0627\0646\0642\0631 \0639\0644\0649 "\0646\0642\0644 \0644\0623\0639\0644\0649" ( &uarr; ) \0648"\0646\0642\0644 \0644\0623\0633\0641\0644" ( &darr; ) \0644\0646\0642\0644 \0639\0645\0648\062F \0627\0644\0641\0631\0632 \0627\0644\0645\062D\062F\062F \0623\0639\0644\0649 \0623\0648 \0623\0633\0641\0644 \0623\0639\0645\062F\0629 \0627\0644\0641\0631\0632 \0627\0644\0623\062E\0631\0649.</p>'),
'',
unistr('<p><strong>\0625\0639\062F\0627\062F\0627\062A \0627\0644\0641\0631\0632</strong><br>'),
unistr('\062A\062D\062F\064A\062F \0639\0645\0648\062F \0627\0644\0641\0631\0632 \0648\0627\062A\062C\0627\0647 \0627\0644\0641\0631\0632 \0648\0643\064A\0641\064A\0629 \062A\0631\062A\064A\0628 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0641\0627\0631\063A\0629 (\0623\064A \0627\0644\0623\0639\0645\062F\0629 \063A\064A\0631 \0627\0644\0645\0634\062A\0645\0644\0629 \0639\0644\0649 \0642\064A\0645\0629).</p>'),
'',
unistr('<p><em>\0645\0644\0627\062D\0638\0629: \064A\0645\0643\0646 \0641\0631\0632 \0627\0644\0628\064A\0627\0646\0627\062A \062D\0633\0628 \0627\0644\0623\0639\0645\062F\0629 \063A\064A\0631 \0627\0644\0645\0639\0631\0648\0636\0629\061B \0639\0644\0645\064B\0627 \0628\0623\0646\0647 \0644\064A\0633\062A \062C\0645\064A\0639 \0627\0644\0623\0639\0645\062F\0629 \0642\0627\0628\0644\0629 \0644\0644\0641\0631\0632.</em><br>'),
unistr('<em>\064A\0645\0643\0646 \0641\0631\0632 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629 \0628\0627\0644\0636\063A\0637 \0639\0644\0649 \0633\0647\0645 \0644\0623\0639\0644\0649 (\062A\0635\0627\0639\062F\064A) \0623\0648 \0633\0647\0645 \0644\0623\0633\0641\0644 (\062A\0646\0627\0632\0644\064A) \0627\0644\0645\0648\062C\0648\062F\0629 \0641\064A \0646\0647\0627\064A\0629 \0639\0646\0627\0648\064A\0646 \0627\0644\0623\0639\0645\062F\0629. \0648\0644\0625\0636\0627\0641\0629 \0639\0645\0648\062F \062A\0627\0644\064D \0625\0644\0649 \0641\0631\0632 \0645\0648\062C\0648\062F\060C \064A\0644\0632\0645 \0627\0644\0636\063A\0637 \0628\0627\0633\062A\0645\0631\0627\0631 \0639\0644\0649 \0627\0644\0645\0641\062A\0627\062D Shift \0645\0639 \0627\0644\0646\0642\0631 \0639\0644\0649 \0633\0647\0645 \0644\0623\0639\0644\0649 \0623\0648 \0644\0623\0633\0641\0644.</em></p>')))
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124019596738025865)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\0641\0631\0632')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018766724025865)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\0627\0634\062A\0631\0627\0643')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972350346025850)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062E\0641\0627\0621')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936726159025838)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\064A\064A\0632')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005987176025861)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\062A\0641\0639')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006772210025861)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0641\0642\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965374976025848)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0627\0639\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970370757025849)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\064A\0642\0648\0646\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935617864025838)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\0623\064A\0642\0648\0646\0629')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963554104025847)
,p_name=>'APEX.IG.IN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971962299025850)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F \063A\064A\0631 \0646\0634\0637')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972060774025850)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F\0627\062A \063A\064A\0631 \0646\0634\0637\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979626036025852)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \062F\0627\062E\0644\064A \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0637\0644\0628 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867501441025817)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0645\0631\0634\062D \0627\0644\0639\0645\0648\062F "%0" \063A\064A\0631 \0645\062F\0639\0648\0645 \0644\0644\0639\0645\0648\062F "%1".')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018511582025865)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\064A\063A\0629 \062A\0627\0631\064A\062E \063A\064A\0631 \0635\0627\0644\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993306302025857)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \062A\062F\0639\0645 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \062A\0639\0631\064A\0641 \0645\0631\0634\062D \0641\064A \0627\0644\0639\0645\0648\062F %0.')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993236246025857)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0646\0648\0639 \0645\0639\0631\0641 \064A\0635\0644\062D \0644\0644\062A\0639\0631\064A\0641 \0641\064A \0634\0628\0643\0629 \062A\0641\0627\0639\0644\064A\0629.')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874134511025819)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\064A\063A\0629 \0631\0642\0645 \063A\064A\0631 \0635\0627\0644\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021278007025866)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F \063A\064A\0631 \0635\0627\0644\062D')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021380830025866)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F\0627\062A \063A\064A\0631 \0635\0627\0644\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012487420025863)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0639\064A\064A\0646 \0627\0644\0641\0631\0632 \062D\0633\0628 \0639\0644\0649 %0\060C \0644\0643\0646 \0644\0645 \064A\062A\0645 \062A\062D\062F\064A\062F \0639\0645\0648\062F \0644\0640 %0.')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009760185025862)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0645\0629 \063A\064A\0631 \0635\0627\0644\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004805338025861)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\0631\0636')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964395777025847)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A \0622\062E\0631')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964535732025847)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963479260025847)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0641\0627\0631\063A\064B\0627')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963345401025847)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0627\0631\063A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013275494025863)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0633\0645\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005218021025861)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0633\0645\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009152334025862)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\062E\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953687100025844)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\064A\0648\0645 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953889566025844)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 \0633\0627\0639\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954358692025844)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062F\0642\064A\0642\0629 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953337288025844)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953461872025844)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0633\0628\0648\0639 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953531106025844)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 %0 \0645\0646 \0627\0644\0623\064A\0627\0645')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953779435025844)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 %0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954453164025844)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954260887025844)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0634\0647\0648\0631 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954181194025844)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953170536025844)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 %0 \0645\0646 \0627\0644\0633\0646\0648\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953284079025844)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0646\0629 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013492953025864)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062D\0627\0630\0627\0629 \0627\0644\062E\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013570201025864)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\062E\062F\0627\0645 \0645\062C\0645\0648\0639\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963955211025847)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0642\0644 \0645\0646')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964090320025847)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0642\0644 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007317811025862)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007479204025862)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\064A \0645\0639 \0645\0633\0627\062D\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013845948025864)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'ar'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006081433025861)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\062E\0641\0636')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016391530025864)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0645 \0628\0641\0635\0644 \0627\0644\0639\0646\0627\0648\064A\0646 \0627\0644\0645\062A\0639\062F\062F\0629 \0628\0641\0627\0635\0644\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965150105025848)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0637\0627\0628\0642 \0627\0644\062A\0639\0628\064A\0631 \0627\0644\0639\0627\062F\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989565520025856)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\0642\0635\0649')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023895767025867)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0627\0644\0625\062C\0645\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989772569025856)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0633\064A\0637')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023938134025867)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0633\064A\0637 \0627\0644\0625\062C\0645\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989423866025856)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\062F\0646\0649')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965270346025848)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0642\0627\0626\0642')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990258296025856)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 \062F\0642\0627\0626\0642')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023729019025867)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\062F\0646\0649 \0627\0644\0625\062C\0645\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965607196025848)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0647\0648\0631')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972231063025850)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062A\0648\064A \0627\0644\0628\064A\0627\0646\0627\062A \0639\0644\0649 \0645\0627 \064A\0632\064A\062F \0639\0646 %0 \0645\0646 \0627\0644\0635\0641\0648\0641 \0648\0647\0630\0627 \064A\062A\062C\0627\0648\0632 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0627\0644\0645\0633\0645\0648\062D \0628\0647. \0627\0644\0631\062C\0627\0621 \062A\0637\0628\064A\0642 \0645\0631\0634\062D\0627\062A \0625\0636\0627\0641\064A\0629 \0644\0639\0631\0636 \0627\0644\0646\062A\0627\0626\062C.')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998018971025859)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0627\0644\0645\0639\0631\0641 \0627\0644\062B\0627\0628\062A \0644\0644\0645\0646\0637\0642\0629 \0644\0623\0646 \0627\0644\0635\0641\062D\0629 \062A\062D\062A\0648\064A \0639\0644\0649 \0639\062F\0629 \0634\0628\0643\0627\062A \062A\0641\0627\0639\0644\064A\0629.')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968321742025849)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0633\0645')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968512616025849)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0645\0633\0645\0649')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952595003025844)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\064A\0648\0645 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952387674025843)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0639\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954534667025844)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062F\0642\064A\0642\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952809139025844)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952753147025844)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0633\0628\0648\0639 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952646959025844)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\064A\0627\0645 \0627\0644\0642\0627\062F\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952432574025844)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A \0627\0644\0642\0627\062F\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954641860025844)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953946921025844)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\0634\0647\0631 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954005122025844)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123953027642025844)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0633\0646\0648\0627\062A \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123952907675025844)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0646\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964210094025847)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633\062A \0628\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963208229025847)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0633\0627\0648\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028098090025868)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0646\0637\0642\0629 \0630\0627\062A \0627\0644\0645\0639\0631\0641 %0 \0644\064A\0633\062A \0645\0646\0637\0642\0629 \0634\0628\0643\0629 \062A\0641\0627\0639\0644\064A\0629 \0623\0648 \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0641\064A \0627\0644\062A\0637\0628\064A\0642 %1.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963682034025847)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0641\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964405604025847)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0641\064A \0622\062E\0631')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964619989025847)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0641\064A \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972175563025850)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0628\064A\0627\0646\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008911839025862)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0645 \062E\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014031295025864)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0642\0645\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009258891025862)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\064A\0642\0627\0641')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009353795025862)
,p_name=>'APEX.IG.ON'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0634\063A\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962471917025847)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 \062F\0642\064A\0642\0629 \0648\0627\062D\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016849177025865)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\062A\062D \0645\0646\062A\0642\064A \0627\0644\0623\0644\0648\0627\0646: %0')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005749680025861)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\062A\062D')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969485871025849)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0627\0645\0644')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005131763025861)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\062A\062C\0627\0647')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007585098025862)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0631\0635\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970790598025849)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\062F\0648\0644 \0645\062D\0648\0631\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935909262025838)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \062C\062F\0648\0644 \0645\062D\0648\0631\064A')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016765442025865)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0635\0644 \0627\0644\0642\064A\0645 \0628\0627\0633\062A\062E\062F\0627\0645 "%0"')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007631192025862)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0637\0628\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012957270025863)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0646\062A\0635\0641')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124013068251025863)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0647\0627\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012840480025863)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\062F\0627\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968609041025849)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0627\0633\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968922194025849)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0641\062A\0631\0627\0636\064A \0627\0644\0623\0633\0627\0633\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985486698025854)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0623\0633\0627\0633\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859087275025814)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0636\0645\064A\0646 \0639\0644\0627\0645\0627\062A \0625\0645\0643\0627\0646\064A\0629 \0627\0644\0648\0635\0648\0644')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856421714025814)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0641\0642\064A')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856575174025814)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0623\0633\064A')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856383678025814)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062A\062C\0627\0647 \0627\0644\0635\0641\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856245541025814)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'ar'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856195989025814)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'ar'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859215309025814)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062E\0635\0635')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855992908025813)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'ar'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855830249025813)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'ar'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856010588025813)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'ar'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855793793025813)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062C\0645 \0627\0644\0635\0641\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821324833025802)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0635 \0627\0644\0645\0646\0633\0642 \0644\0644\0634\0631\064A\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007747852025862)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0627\0626\0631\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007854315025862)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0637\0627\0642')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018084425025865)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\062F\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972982456025850)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\062F\064A\062F \0635\0641')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971785719025850)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\062F\064A\062F \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976916647025852)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0637\0642\0629 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0641\064A \0627\0644\0635\0641\062D\0629 %1 \0648\0627\0644\0645\0646\0637\0642\0629 %2 \0636\0645\0646 \0627\0644\062A\0637\0628\064A\0642 %0.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937436016025839)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 %0')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968052535025849)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027223870025868)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0630\0641 \0627\0644\062A\0642\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026991990025868)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0641\0638 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0628\062F\064A\0644 \0644\0643\0644 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026855325025868)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0641\0638 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0627\0641\062A\0631\0627\0636\064A \0644\0643\0644 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027150037025868)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0641\0638 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\062E\0627\0635')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027026256025868)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0641\0638 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0639\0627\0645 \0644\0643\0644 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123977042645025852)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \0627\0644\0645\062D\0641\0648\0638\0629 \0630\0627\062A \0627\0644\0627\0633\0645 %0 \063A\064A\0631 \0645\0648\062C\0648\062F\0629.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962332213025847)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\064A\0627\0646\0627\062A \0627\0644\0634\0628\0643\0629 \0627\0639\062A\0628\0627\0631\064B\0627 \0645\0646 %0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642 \0645\0636\062A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962283544025847)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\064A\0627\0646\0627\062A \0627\0644\0634\0628\0643\0629 \0627\0639\062A\0628\0627\0631\064B\0627 \0645\0646 \062F\0642\064A\0642\0629 \0648\0627\062D\062F\0629 \0645\0636\062A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897765631025826)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0642\0631\064A\0631 \0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \063A\064A\0631 \0645\0648\062C\0648\062F')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020231506025866)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 - \062A\062D\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976806539025851)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \0627\0644\0645\062D\0641\0648\0638\0629 \0630\0627\062A \0627\0644\0645\0639\0631\0641 %0 \063A\064A\0631 \0645\0648\062C\0648\062F\0629.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124020161455025866)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 - \062D\0641\0638 \0643\0640')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937537472025839)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F\0627\062A \0627\0644\0634\0628\0643\0629')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028102172025868)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0629 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \0627\0644\0645\062D\0641\0648\0638\0629 \0630\0627\062A \0627\0644\0645\0639\0631\0641 \0627\0644\062B\0627\0628\062A %0 \063A\064A\0631 \0645\0648\062C\0648\062F\0629.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023197230025867)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\062A\0642\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936698346025838)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973014925025850)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0631\0627\062C\0639 \0639\0646 \0627\0644\062A\063A\064A\064A\0631\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971880890025850)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0643\0633 \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969045959025849)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967928867025849)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\0641\0648\0641 \0644\0643\0644 \0635\0641\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027753898025868)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0631\0627\0621\0627\062A \0627\0644\0635\0641')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028972335025868)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0631\0627\0621\0627\062A \0627\0644\0635\0641 %0')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123936937589025838)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982070226025853)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062D\0641\0638')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886654027025823)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0645\062D\0641\0648\0638: %0')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935142973025838)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0627\0631\064A\0631 \0627\0644\0645\062D\0641\0648\0638\0629')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935257050025838)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0641\062A\0631\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908729891025830)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \062A\0637\0628\064A\0642 \0645\062D\0641\0648\0638 \0628\0627\0644\0627\0633\0645 %0 \0645\0648\062C\0648\062F \0628\0627\0644\0641\0639\0644. \0623\062F\062E\0644 \0627\0633\0645\064B\0627 \062C\062F\064A\062F\064B\0627.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935383797025838)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0627\0635')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935408864025838)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0627\0645')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022800639025866)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638 \0628\0627\0633\0645')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971106583025850)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638 \0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0642\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124007967233025862)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0628\0639\062B\0631')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123935024251025838)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015108287025864)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\062D\062B: \0643\0644 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0646\0635\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934990503025838)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B: %0')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014408886025864)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\062D\062B: \0627\0644\0646\0635 \0627\0644\0643\0627\0645\0644')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962152939025847)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B \0639\0646 ''%0''')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004553088025861)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'ar'
,p_message_text=>unistr('- \062A\062D\062F\064A\062F -')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944651023025841)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\062D\062F\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997785084025859)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062F \0635\0641\064B\0627 \0648\0627\062D\062F\064B\0627 \0641\064A \0627\0644\0645\0646\0637\0642\0629 \0627\0644\0623\0635\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934864407025838)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0623\0639\0645\062F\0629 \0644\0644\0628\062D\062B')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027435804025868)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0631\0627\0621\0627\062A \0627\0644\062A\062D\062F\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944814493025841)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\062E\0644\0627\064A\0627')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944751171025841)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0635\0641\0648\0641')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015778761025864)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644 \0643\0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008300122025862)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0644\0633\0644\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932516608025837)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987722857025855)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0627\0644\0642\064A\0645\0629 \0627\0644\0625\062C\0645\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972695297025850)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0635\0641 \0648\0627\062D\062F')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123970930313025849)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008488595025862)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \062D\0633\0628')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027828490025868)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646\0643 \062A\0639\0631\064A\0641 \0641\0631\0632 \0648\0627\062D\062F \0641\0642\0637 \0644\0643\0644 \0639\0645\0648\062F.')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027624719025868)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\063A\064A\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124009481502025862)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0648\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123964949377025848)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0628\062F\0623 \0628\0640')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008095417025862)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\0648\0631\0635\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927334200025835)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062F\064A\062F \0639\0631\0636 \0627\0644\0639\0645\0648\062F')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123971341058025850)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0634\062A\0631\0627\0643')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989322432025855)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062C\0645\0648\0639')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029182121025868)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0628\0643\0629 \062A\0641\0627\0639\0644\064A\0629. \0627\0644\062A\0642\0631\064A\0631: %0\060C \0637\0631\064A\0642\0629 \0627\0644\0639\0631\0636: %1.')
,p_is_js_message=>true
,p_version_scn=>2692407
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124023208877025867)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062C\0645\0648\0639 \0627\0644\0625\062C\0645\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006266761025861)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0647\062F\0641')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012632169025863)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0648\0646 \0627\0644\0646\0635')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937677369025839)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0628\062F\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819772996025802)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0629')
,p_is_js_message=>true
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987663925025855)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0644\0645\064A\062D \0627\0644\0623\062F\0627\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123968195355025849)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0648\0639')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123972502141025850)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\063A\0627\0621 \0627\0644\062A\062C\0645\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969668084025849)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\062D\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124015574575025864)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\062C\062F \062A\063A\064A\064A\0631\0627\062A \0644\0645 \064A\062A\0645 \062D\0641\0638\0647\0627. \0647\0644 \062A\0631\064A\062F \0627\0644\0645\062A\0627\0628\0639\0629\061F')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123969594244025849)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005340327025861)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010217180025863)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0625\062F\062E\0627\0644 \0642\064A\0645\0629.')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995498420025858)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629 (\0644\0627 \064A\0645\0643\0646 \062A\063A\064A\064A\0631 \0627\0644\0645\0646\0637\0642\0629 \0627\0644\0632\0645\0646\064A\0629)')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014196846025864)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0635')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006612891025861)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0623\0633\064A')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967687703025848)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902772450025828)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0629 \0641\064A \0648\0636\0639 \0627\0644\0639\0631\0636\060C \0627\0646\0642\0631 \0644\0644\062A\062D\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004682444025861)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0648\0636')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124006189012025861)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062C\0645')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965551140025848)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0627\0628\064A\0639')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004721392025861)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\062F\0646\0649 \0644\0639\0631\0636 \0627\0644\0639\0645\0648\062F (\0628\0627\0644\0628\0643\0633\0644)')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956709716025845)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0628\064A\0646 %1 \0648%2')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956496370025845)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \064A\062D\062A\0648\064A \0639\0644\0649 %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956538602025845)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A %0 \0639\0644\0649 %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931933289025837)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\0627 \064A\0628\062F\0623 \0628\0640 %1')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955226761025844)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \064A\0633\0627\0648\064A %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955403022025844)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0623\0643\0628\0631 \0645\0646 %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955537720025844)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0623\0643\0628\0631 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956253733025845)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0641\064A %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957464504025845)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0623\064A\0627\0645 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957221710025845)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0633\0627\0639\0627\062A \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957065884025845)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\062F\0642\0627\0626\0642 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957819880025845)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0634\0647\0648\0631 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957624591025845)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958059631025845)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0633\0646\0648\0627\062A \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957344739025845)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\064A\0648\0645 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957136939025845)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\0633\0627\0639\0629 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956986682025845)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\062F\0642\064A\0642\0629 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957780137025845)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\0634\0647\0631 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957515767025845)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\0623\0633\0628\0648\0639 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123957959972025845)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\0633\0646\0629 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959827038025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0623\064A\0627\0645 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959695161025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0633\0627\0639\0627\062A \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959466095025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\062F\0642\0627\0626\0642 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960237020025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0634\0647\0648\0631 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960054037025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960430624025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0633\0646\0648\0627\062A \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959771434025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\064A\0648\0645 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959515512025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\0633\0627\0639\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959315830025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\062F\0642\064A\0642\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960126916025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\0634\0647\0631 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959988483025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\0623\0633\0628\0648\0639 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960389170025846)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \062E\0644\0627\0644 \0627\0644\0633\0646\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955983448025845)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0641\0627\0631\063A\064B\0627')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955867463025845)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0641\0627\0631\063A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955697363025845)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0623\0642\0644 \0645\0646 %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955796096025845)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0623\0642\0644 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956025939025845)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\062B\0644 %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956674485025845)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \064A\0637\0627\0628\0642 \0627\0644\062A\0639\0628\064A\0631 \0627\0644\0639\0627\062F\064A %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962513145025847)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956827570025845)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0628\064A\0646 %1 \0648%2')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955367872025844)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\0627 \064A\0633\0627\0648\064A %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956392585025845)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0641\064A %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958639187025845)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0623\064A\0627\0645 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958438838025845)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0633\0627\0639\0627\062A \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958246806025845)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\062F\0642\0627\0626\0642 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959007695025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0634\0647\0648\0631 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958895423025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959217838025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0633\0646\0648\0627\062A \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958548046025845)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\064A\0648\0645 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958323827025845)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\0633\0627\0639\0629 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958136081025845)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\062F\0642\064A\0642\0629 \0627\0644\0645\0627\0636\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958947236025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\0634\0647\0631 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123958740834025845)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\0623\0633\0628\0648\0639 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123959189973025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\0639\0627\0645 \0627\0644\0645\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961028677025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0623\064A\0627\0645 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960893496025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0633\0627\0639\0627\062A \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960623950025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\062F\0642\0627\0626\0642 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961459616025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0634\0647\0648\0631 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961235575025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961658200025847)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 %1 \0645\0646 \0627\0644\0633\0646\0648\0627\062A \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960903628025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\064A\0648\0645 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960722032025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\0633\0627\0639\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123960534545025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\062F\0642\064A\0642\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961378994025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\0634\0647\0631 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961180051025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\0623\0633\0628\0648\0639 \0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961561108025846)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \062E\0644\0627\0644 \0627\0644\0633\0646\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123956182129025845)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0645\062B\0644 %1')
,p_is_js_message=>true
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123963058021025847)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \064A\0628\062F\0623 \0628\0640 %1')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005427858025861)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965726048025848)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0646\0648\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005503970025861)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005668786025861)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639')
,p_is_js_message=>true
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014644198025864)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\062B\0646\064A\0646\060C 12 \064A\0646\0627\064A\0631 2016')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014780617025864)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0646\0627\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014843411025864)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 16 \0633\0627\0639\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124014976570025864)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0644\0627\0644 16 \0633\0627\0639\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832937059025806)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0637\0628\064A\0642')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824933461025803)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062D\0628 \0635\0648\0631\062A\0643 \0648\0627\0633\062A\062E\062F\0645 \0634\0631\064A\0637 \062A\0645\0631\064A\0631 \0627\0644\062A\0643\0628\064A\0631/\0627\0644\062A\0635\063A\064A\0631 \0644\062A\063A\064A\064A\0631 \0648\0636\0639\0647\0627 \0641\064A \0627\0644\0625\0637\0627\0631.</p>'),
'',
unistr('<p>\0639\0646\062F \0627\0644\062A\0631\0643\064A\0632 \0639\0644\0649 \0623\062F\0627\0629 \0642\0635 \0627\0644\0635\0648\0631\0629\060C \062A\062A\0648\0641\0631 \0627\062E\062A\0635\0627\0631\0627\062A \0627\0644\0645\0641\0627\062A\064A\062D \0627\0644\062A\0627\0644\064A\0629:</p>'),
'<ul>',
unistr('    <li>\0644\0633\0647\0645 \0644\0644\064A\0633\0627\0631: \0646\0642\0644 \0627\0644\0635\0648\0631\0629 \0644\0644\064A\0633\0627\0631*</li>'),
unistr('    <li>\0627\0644\0633\0647\0645 \0644\0623\0639\0644\0649: \0646\0642\0644 \0627\0644\0635\0648\0631\0629 \0644\0623\0639\0644\0649*</li>'),
unistr('    <li>\0627\0644\0633\0647\0645 \0644\0644\064A\0645\064A\0646: \0646\0642\0644 \0627\0644\0635\0648\0631\0629 \0644\0644\064A\0645\064A\0646*</li>'),
unistr('    <li>\0627\0644\0633\0647\0645 \0644\0623\0633\0641\0644: \0646\0642\0644 \0627\0644\0635\0648\0631\0629 \0644\0623\0633\0641\0644*</li>'),
unistr('    <li>I: \062A\0643\0628\064A\0631</li>'),
unistr('    <li>O: \062A\0635\063A\064A\0631</li>'),
unistr('    <li>L: \062A\062F\0648\064A\0631 \0644\0644\064A\0633\0627\0631</li>'),
unistr('    <li>R: \062A\062F\0648\064A\0631 \0644\0644\064A\0645\064A\0646</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*\0627\0636\063A\0637 \0628\0627\0633\062A\0645\0631\0627\0631 \0639\0644\0649 Shift \0644\0644\062A\062D\0631\0643 \0628\0633\0631\0639\0629 \0623\0643\0628\0631</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825154677025804)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0642\0635 \0627\0644\0635\0648\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833063606025806)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825439195025804)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0635 \0627\0644\0635\0648\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833136918025806)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644 \0634\0631\064A\0637 \0627\0644\062A\0645\0631\064A\0631 \0644\062A\0639\062F\064A\0644 \0645\0633\062A\0648\0649 \0627\0644\062A\0642\0631\064A\0628/\0627\0644\0625\0628\0639\0627\062F')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862706157025815)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0645\0644\0641 \063A\064A\0631 \0635\0627\0644\062D. \0623\0646\0648\0627\0639 \0627\0644\0645\0644\0641\0627\062A \0627\0644\0645\062F\0639\0648\0645\0629 %0.')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997128042025858)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\0639\0631\0627\0636')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996828305025858)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0645\0644\0641')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996930075025858)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0645\0644\0641\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862508611025815)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\062D\0628 \0648\0625\0633\0642\0627\0637')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862957831025816)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\062D\0628 \0627\0644\0645\0644\0641\0627\062A \0648\0625\0641\0644\0627\062A\0647\0627')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864356911025816)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0645\0644\0641 \0623\0648 \0625\0633\0642\0627\0637 \0648\0627\062D\062F \0647\0646\0627.')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864484257025816)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0645\0644\0641\0627\062A \0623\0648 \0625\0633\0642\0627\0637\0647\0627 \0647\0646\0627.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864581666025816)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0645\0644\0641 \0623\0648 \0625\0633\0642\0627\0637 \0648\0627\062D\062F \0647\0646\0627.')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864669226025816)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0645\0644\0641\0627\062A \0623\0648 \0625\0633\0642\0627\0637\0647\0627 \0647\0646\0627.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862876457025816)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0645\0644\0641\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862637168025815)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0644\0641 \0643\0628\064A\0631 \0644\0644\063A\0627\064A\0629. \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\062D\062C\0645 \0627\0644\0645\0644\0641 \0647\0648 %0.')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843157757025809)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062A\0645 \062F\0639\0645 \062A\062D\0645\064A\0644 \0645\0644\0641\0627\062A \0645\062A\0639\062F\062F\0629.')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826042798025804)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831501337025806)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0646\0648\0627\0646 \0645\0637\0644\0648\0628.')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830413294025805)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062F\064A\0646\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830871031025805)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0645\0632 \0627\0644\062F\0648\0644\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830543645025805)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0642\0645 \0627\0644\0645\0646\0632\0644')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831462970025806)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0627\0626\0631\0629 \0627\0644\0639\0631\0636')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831315458025806)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637 \0627\0644\0637\0648\0644')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831271643025805)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0639\0644\0649 \0627\0644\062E\0631\064A\0637\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830993418025805)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062C\0645\0648\0639 \0627\0644\0646\0642\0627\0637')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830648816025805)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0645\0632 \0627\0644\0628\0631\064A\062F\064A')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830713730025805)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0644\0627\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830352816025805)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0627\0631\0639')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830255039025805)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\062A\0627\0626\062C \0627\0644\062A\0631\0645\064A\0632 \0627\0644\062C\063A\0631\0627\0641\064A')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861760068025815)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0633\062A\062E\062F\0645 \0627\0644\0631\0645\0648\0632 \0627\0644\062C\063A\0631\0627\0641\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861898628025815)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0633\062A\062E\062F\0645 \0627\0644\0631\0645\0648\0632 \0627\0644\062C\063A\0631\0627\0641\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831118938025805)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0631\064A\0637\0629')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831087179025805)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0639\0646\0627\0648\064A\0646.')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831660673025806)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0637\0644\0648\0628.')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123937874409025839)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0623\0648 %1 \0645\0637\0644\0648\0628.')
,p_is_js_message=>true
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027351683025868)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0646\0635 \062A\0639\0644\064A\0645\0627\062A %0.')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833364618025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0635\0648\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833477835025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0635\0648\0631')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833284463025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0646\0632\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833599772025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\062D\0628 \0648\0625\0633\0642\0627\0637')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833622527025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\062D\0628 \0627\0644\0635\0648\0631 \0648\0625\0641\0644\0627\062A\0647\0627')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833721818025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0635\0648\0631 \0623\0648 \0625\0641\0644\0627\062A \0648\0627\062D\062F\0629 \0647\0646\0627.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833829010025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0635\0648\0631 \0623\0648 \0625\0641\0644\0627\062A\0647\0627 \0647\0646\0627.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123833946507025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0635\0648\0631 \0623\0648 \0625\0641\0644\0627\062A \0648\0627\062D\062F\0629 \0647\0646\0627.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834047042025806)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0635\0648\0631 \0623\0648 \0625\0641\0644\0627\062A\0647\0627 \0647\0646\0627.')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918723039025833)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062D\062F\062F')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918843397025833)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\062D\062F\062F')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946356932025841)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0628\0639 \0642\0627\0628\0644 \0644\0644\062A\062D\0631\064A\0631 \0644\0644\0642\0631\0627\0621\0629 \0641\0642\0637 \0641\0627\0631\063A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944152293025841)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0628\0639 \0642\0627\0626\0645\0629 \0644\0644\0642\0631\0627\0621\0629 \0641\0642\0637 \0641\0627\0631\063A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123943973677025841)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0628\0639 \0642\0627\0628\0644 \0644\0644\062A\062D\0631\064A\0631 \0644\0644\0642\0631\0627\0621\0629 \0641\0642\0637')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944085208025841)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0628\0639 \0642\0627\0626\0645\0629 \0644\0644\062A\062D\0631\064A\0631 \0641\0642\0637')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859720077025815)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'ar'
,p_message_text=>unistr('#LABEL# \0644\064A\0633 \0641\064A \0646\0637\0627\0642 \0635\0627\0644\062D \0645\0646 %0 \0625\0644\0649 %1.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859856950025815)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'ar'
,p_message_text=>unistr('#LABEL# \0644\064A\0633 \0645\0636\0627\0639\0641 \0627\0644\0631\0642\0645 %0.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947129919025842)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0641\062A\0627\062D \062A\0628\062F\064A\0644 \0644\0644\0642\0631\0627\0621\0629 \0641\0642\0637')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887728607025823)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0644\0644\0642\0631\0627\0621\0629 \0641\0642\0637 \0628\0631\0627\0628\0637')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859396573025814)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 #LABEL# \0645\0637\0627\0628\0642\064B\0627 \0644\0644\0642\064A\0645\062A\064A\0646 %0 \0648%1.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859510824025815)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945812921025841)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\064A\0642\0627\0641')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945983242025841)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0634\063A\064A\0644')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859406554025815)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0639\0645')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867327617025817)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062D\062F\062F \0627\0644\0644\063A\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123803768006025796)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \0625\062F\062E\0627\0644')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980561272025853)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980629946025853)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123803892958025796)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\062F\062E\0627\0644\0627\062A \0627\0644\0645\062D\062F\062F\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984335174025854)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062A\0642\062F\0645')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984653282025854)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\063A\0627\0621')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984426681025854)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0627\0645')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984756633025854)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\064A\0627\0631\0627\062A \0627\0644\0646\0645\0648\0630\062C \0627\0644\0645\0628\0627\0634\0631')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985363507025854)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\064A\0627\0631\0627\062A \0627\0644\0642\0627\0644\0628 \063A\064A\0631 \0645\062A\0648\0641\0631\0629 \0644\0623\0646 \0647\0630\0627 \0627\0644\0645\0643\0648\0646 \063A\064A\0631 \0645\0639\0631\0648\0636 \0641\064A \0627\0644\0635\0641\062D\0629.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984256025025854)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \062E\064A\0627\0631\0627\062A \0642\0627\0644\0628.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984521514025854)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838344241025808)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D \062F\0627\0626\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840775161025808)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0646\0645\0627\0637 \0627\0644\0645\062E\0635\0635\0629 \063A\064A\0631 \0635\0627\0644\062D\0629 \0641\064A JSON.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838629305025808)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\062F\0627\0629 \0627\0644\0645\0633\0627\0641\0629')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838455823025808)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0633\0645 \062F\0627\0626\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818210947025801)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0648\0642\0639 \0627\0644\062D\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824649089025803)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062D\062F\0627\062B\064A\0627\062A \0627\0644\0645\0648\0636\0639 \0627\0644\0645\0628\062F\0626\064A \063A\064A\0631 \0635\0627\0644\062D\0629.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813679444025800)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0627\0644\0645\0648\0636\0639 \0627\0644\0645\0628\062F\0626\064A \0646\0642\0637\0629 \0641\064A \0634\0643\0644 \0647\0646\062F\0633\064A.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822283168025803)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0645')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817494594025801)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0637\0628\0642\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987885307025855)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0637\0628\0642\0629: %0')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836620638025807)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0631\064A\0637\0629')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806317987025797)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0627\0626\0644')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822402996025803)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0645\064A\0627\0644')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986843696025855)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062A\0648\064A \0627\0644\0628\064A\0627\0646\0627\062A \0639\0644\0649 \0645\0627 \064A\0632\064A\062F \0639\0646 %0 \0645\0646 \0627\0644\0635\0641\0648\0641 \0648\0647\0630\0627 \064A\062A\062C\0627\0648\0632 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0627\0644\0645\0633\0645\0648\062D \0628\0647.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816787531025801)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0642\0648\0642 \0627\0644\0646\0634\0631 &copy; \0644\0639\0627\0645 2022 \0645\062D\0641\0648\0638\0629 \0644\0634\0631\0643\0629 \0623\0648\0631\0627\0643\0644 &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">\0627\0644\0628\0646\0648\062F</a> \0648\0628\064A\0627\0646\0627\062A \0627\0644\062E\0631\064A\0637\0629 &copy; 2021 \0647\0646\0627')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813376837025800)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A SDO_GEOMETRY \063A\064A\0631 \0645\062A\0627\062D \0641\064A \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0647\0630\0647.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816821217025801)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; \0645\0633\0627\0647\0645\0648 OpenStreetMap </a>')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841408690025809)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; \0645\0633\0627\0647\0645\0648 OpenStreetMap </a>')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817638573025801)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0642\0627\0637')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987902493025855)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0646\0642\0627\0637')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838503335025808)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0628\064A\0631/\062A\0635\063A\064A\0631 \0627\0644\0645\0633\062A\0637\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838233393025808)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818079209025801)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0627\0644\0645\062D\0645\0644 \0625\0644\0649 \0627\0644\0634\0645\0627\0644')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932872616025837)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0628\062F\064A\0644 \0625\0644\0649 \0648\0636\0639 \062B\0646\0627\0626\064A \0627\0644\0623\0628\0639\0627\062F')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932909087025837)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0628\062F\064A\0644 \0625\0644\0649 \0648\0636\0639 \062B\0644\0627\062B\064A \0627\0644\0623\0628\0639\0627\062F')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838117928025808)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0634\0639\0627\0631 \062D\0642\0648\0642 \0627\0644\0646\0634\0631')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838740173025808)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0633\0627\0641\0629 \0627\0644\0625\062C\0645\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817733094025801)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0628\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817935952025801)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0635\063A\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982454800025853)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\064A\0636')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983392796025854)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\0648\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982956345025853)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0645\0632 \0627\0644\0645\0636\0645\0646')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995631536025858)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062F\0631\0627\062C \0635\0648\0631\0629')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995748168025858)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062F\0631\0627\062C \0627\0631\062A\0628\0627\0637')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982502220025853)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0627\0626\0644')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996336679025858)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0631\062A\0628\0627\0637')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983265476025854)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983138525025853)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0645\0631\062A\0628\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982698220025853)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0627\064A\0646\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982709907025853)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0648\062C\062F \0645\0627 \064A\0645\0643\0646 \0645\0639\0627\064A\0646\062A\0647')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982874577025853)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0648\0633\0637\0647 \062E\0637')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983045675025853)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \063A\064A\0631 \0645\0631\062A\0628\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961952444025847)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124018195019025865)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0632\064A\062F...')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123961837182025847)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\0627\0631\064D \0627\0644\062A\062D\0645\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876094232025819)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'ar'
,p_message_text=>unistr('\0632\0631 \062A\0642\0633\064A\0645')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875903373025819)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0645\0642\0633\0645\0629')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992952816025857)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0633\0627\0644\0629 \0627\0644\0625\0634\0639\0627\0631')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817009144025801)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 %0')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966998986025848)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 #LABEL# \0631\0642\0645\064B\0627 \0623\0642\0644 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A %0.')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967090315025848)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 #LABEL# \0631\0642\0645\064B\0627 \0635\0627\0644\062D\064B\0627.')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967184604025848)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'ar'
,p_message_text=>unistr('#LABEL# \063A\064A\0631 \0645\0637\0627\0628\0642 \0644\062A\0646\0633\064A\0642 \0627\0644\0631\0642\0645 %0 (\0645\062B\0627\0644: %1).')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966832898025848)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 #LABEL# \0631\0642\0645\064B\0627 \0623\0643\0628\0631 \0645\0646 \0623\0648 \064A\0633\0627\0648\064A %0.')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966760977025848)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 #LABEL# \0631\0642\0645\064B\0627 \0628\064A\0646 %0 \0648%1.')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962003537025847)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\062A\062D \0641\064A \0646\0627\0641\0630\0629 \062C\062F\064A\062F\0629')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911870186025830)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0642\062F\064A\0645 \0647\0630\0647 \0627\0644\0635\0641\062D\0629 \0628\0627\0644\0641\0639\0644 \0648\0644\0627 \064A\0645\0643\0646 \0625\0639\0627\062F\0629 \062A\0642\062F\064A\0645\0647\0627.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893218528025824)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641\062D\0629 "%1" \0636\0645\0646 \0627\0644\062A\0637\0628\064A\0642 "%0" \063A\064A\0631 \0645\0648\062C\0648\062F\0629.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928790816025836)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\0648\062C\062F \0642\064A\0645\0629 \0644\0640 #LABEL#.')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819435043025802)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062E\0641\0627\0621 \0643\0644\0645\0629 \0627\0644\0633\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819388002025802)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0643\0644\0645\0629 \0627\0644\0633\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866920723025817)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980959380025853)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\063A\0644\0627\0642')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980899998025853)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B \0639\0646 %0')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981173779025853)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981095787025853)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0628\0642')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857744818025814)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\062F\062E\0644 \0645\0635\0637\0644\062D \0628\062D\062B \064A\062A\0643\0648\0646 \0645\0646 %0 \0645\0646 \0627\0644\062D\0631\0648\0641 \0639\0644\0649 \0627\0644\0623\0642\0644.')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934016617025837)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645 \0627\0644\0645\0646\0628\062B\0642\0629: %0')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857855918025814)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\062F\062E\0644 \0645\0635\0637\0644\062D \0628\062D\062B.')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804814442025797)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857692134025814)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0646\062A\0627\0626\062C.')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857518230025814)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 %0')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954716090025844)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0635\0637\0644\062D \0627\0644\0628\062D\062B')
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980751257025853)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806933157025797)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0637\0644\0628 %0.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819224901025802)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0637\0628\0627\0639\0629 \0627\0644\062A\0642\0631\064A\0631.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123830009481025805)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062A\0639\0630\0631 \0637\0628\0627\0639\0629 \0627\0644\0645\0633\062A\0646\062F \0628\0627\0633\062A\062E\062F\0627\0645 \062E\0627\062F\0645 \0627\0644\0637\0628\0627\0639\0629 \0627\0644\0630\064A \062A\0645 \062A\0643\0648\064A\0646\0647.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852793866025812)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\0642\064A\064A\0645 \0627\0644\0645\0639\0644\0645\0629 %0 \0639\0646\062F \0627\0633\062A\062F\0639\0627\0621 %1. \0627\0637\0644\0639 \0639\0644\0649 \0633\062C\0644 \0627\0644\062E\0637\0623 \0644\0645\0639\0631\0641\0629 \0627\0644\062A\0641\0627\0635\064A\0644.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991448383025856)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\0627\0631\064D \0627\0644\0645\0639\0627\0644\062C\0629')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850549017025812)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0644\062E\0644\0641')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851698068025812)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0647\0630\0627 \0627\0644\0645\0648\0642\0639 \0644\0647 \0648\0638\064A\0641\0629 \062A\0637\0628\064A\0642. \0642\0645 \0628\062A\062B\0628\064A\062A\0647 \0639\0644\0649 \062C\0647\0627\0632\0643 \0644\0644\062D\0635\0648\0644 \0639\0644\0649 \0623\0641\0636\0644 \062A\062C\0631\0628\0629.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852974077025812)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854538174025813)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062B\0628\064A\062A \0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839393951025808)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0628\062F\0648 \0623\0646 \062C\0647\0627\0632\0643 \0623\0648 \0645\0633\062A\0639\0631\0636\0643 \064A\062F\0639\0645 \062A\062B\0628\064A\062A \062A\0637\0628\064A\0642\0627\062A \0627\0644\0648\064A\0628 \0627\0644\062A\0642\062F\0645\064A\0629 \062D\0627\0644\064A\064B\0627.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834468825025806)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'ar'
,p_message_text=>unistr('1- \0627\0646\0642\0631 \0639\0644\0649 \0623\064A\0642\0648\0646\0629 <strong>\0645\0634\0627\0631\0643\0629</strong>')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834570331025807)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'ar'
,p_message_text=>unistr('2- \0645\0631\0631 \0644\0623\0633\0641\0644 \0648\0627\0646\0642\0631 \0639\0644\0649 <strong>\0625\0636\0627\0641\0629 \0625\0644\0649 \0627\0644\0634\0627\0634\0629 \0627\0644\0631\0626\064A\0633\064A\0629</strong>')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850948883025812)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'ar'
,p_message_text=>unistr('3- \0627\0646\0642\0631 \0639\0644\0649 <strong style="color:#007AE1;">\0625\0636\0627\0641\0629</strong> \0644\0644\062A\0623\0643\064A\062F')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850083024025812)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'ar'
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
unistr('    <h1>\0644\0627 \064A\0645\0643\0646 \0627\0644\0627\062A\0635\0627\0644</h1>'),
unistr('    <p>\064A\0628\062F\0648 \0623\0646 \0647\0646\0627\0643 \0645\0634\0643\0644\0629 \0641\064A \0627\0644\0634\0628\0643\0629. \062A\062D\0642\0642 \0645\0646 \0627\062A\0635\0627\0644\0643 \0648\062D\0627\0648\0644 \0645\0631\0629 \0623\062E\0631\0649.</p>'),
unistr('    <button type="button">\0625\0639\0627\062F\0629 \0627\0644\0645\062D\0627\0648\0644\0629</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849985999025811)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0627\0644\0627\062A\0635\0627\0644')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896590599025825)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \0647\0630\0627 \0627\0644\062C\0647\0627\0632 \0641\064A \062A\0645\0643\064A\0646 \0627\0644\0625\0634\0639\0627\0631\0627\062A \0627\0644\062A\0644\0642\0627\0626\064A\0629.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902089928025827)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631\0627\062A \0633\0631\064A\0639\0629 \0644\0640 %0')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901990714025827)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0631\062A\0628\0627\0637 \0627\062E\062A\064A\0627\0631 \0633\0631\064A\0639')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123875719837025819)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0632\0631 \0627\062E\062A\064A\0627\0631 \0645\062E\0641\064A \0645\0631\0626\064A\064B\0627')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819884220025802)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0635\0641 \0648\0627\062D\062F')
,p_is_js_message=>true
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002513777025860)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947867527025842)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0648\0627\0644 \0627\0644\064A\0648\0645')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025436500025867)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644 \062F\0639\0648\0629')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025205910025867)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\064A\0627\0631\0627\062A')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949600728025843)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \064A\0648\0645\064A\0629 \0644\0643\0644 \0627\0644\064A\0648\0645')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949465996025842)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \064A\0648\0645\064A\0629 \0644\0644\0628\064A\0627\0646\0627\062A \0645\0639 \0627\0644\0648\0642\062A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993688407025857)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\0645')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988635571025855)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0635\0641')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872147214025818)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'ar'
,p_message_text=>'CSV'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871968132025818)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'ar'
,p_message_text=>'iCal'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871897387025818)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'ar'
,p_message_text=>'PDF'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872091018025818)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'ar'
,p_message_text=>'XML'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871574140025818)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0627\0631\064A\062E \0627\0644\0646\0647\0627\064A\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871717679025818)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\062D\062F\062B')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025300984025867)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0639\0648\0629')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993789590025857)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993451204025857)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996099366025858)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010090486025862)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \062A\0648\062C\062F \0623\062D\062F\0627\062B')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025696360025867)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \062D\062F\062B \0645\0648\062C\0648\062F.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025507481025867)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644 \062F\0639\0648\0629 \0628\0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996170941025858)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0628\0642')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003887126025861)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644 \0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003679810025861)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644 \0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026241180025868)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\0645\064A\0639 \0627\0644\062D\0642\0648\0644 \0645\0637\0644\0648\0628\0629.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026198751025867)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644 \062F\0639\0648\0629')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025179479025867)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0648\0636\0648\0639')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003784444025861)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\0649')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871612912025818)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0627\0631\064A\062E \0627\0644\0628\062F\0627\064A\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001809642025860)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0645\0648\0630\062C \0641\064A %0')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949206986025842)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0642\062A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996275167025858)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\064A\0648\0645')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994235469025857)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993544842025857)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0628\0648\0639')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949517828025843)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0623\0633\0628\0648\0639\064A\0629 \0644\0643\0644 \0627\0644\064A\0648\0645')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949392153025842)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0623\0633\0628\0648\0639\064A\0629 \0644\0644\0628\064A\0627\0646\0627\062A \0645\0639 \0627\0644\0648\0642\062A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994148654025857)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0646\0629')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993835581025857)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0639\0645\062F\0629...')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993919947025857)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0645\064A\0644 \0627\0644\0645\0632\064A\062F...')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923354864025834)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0644\062E\0644\0641')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864894177025816)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0645\064A\0644 \0627\0644\0645\0632\064A\062F...')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867158614025817)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B...')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994088155025857)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0645\064A\0644 \0627\0644\0645\0632\064A\062F...')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995907953025858)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0641 \0627\0644\0645\0646\0637\0642\0629 %0 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867005602025817)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0628\064A\0627\0646\0627\062A')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894529378025825)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062A\0639\0630\0631 \0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0641\0635\0644 \0635\0641\062D\0627\062A \0627\0644\0645\0646\0637\0642\0629.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858261378025814)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0625\0639\062F\0627\062F \0641\0635\0644 \0635\0641\062D\0627\062A \0627\0644\0645\0646\0637\0642\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988072054025855)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0639\0645\062F\0629...')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842520192025809)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\062D\0645\064A\0644 \0627\0644\0628\0637\064A\0621 \063A\064A\0631 \0645\062A\0648\0627\0641\0642 \0645\0639 \0627\0644\0641\062A\062D\0627\062A \0627\0644\0645\0648\062C\0648\062F\0629 \0641\064A %0\060C \0648\0647\064A \0645\0646\0637\0642\0629 \0648\0627\062D\062F\0629 (\062C\0632\0626\064A\0629). \064A\062C\0628 \0639\0644\064A\0643 \0625\0645\0627 \062A\0639\0637\064A\0644 \0627\0644\062A\062D\0645\064A\0644 \0627\0644\0628\0637\064A\0621 \0644\0647\0630\0647 \0627\0644\0645\0646\0637\0642\0629\060C \0623\0648 \0646\0642\0644 \0645\0643\0648\0646\0627\062A \0627\0644\0641\062A\062D\0629 \0625\0644\0649 \0645\0646\0637\0642\0629 \0645\062E\062A\0644\0641\0629.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837805121025808)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0644\0628 \0627\0644\0645\062C\0645\0648\0639\0629 \063A\064A\0631 \0645\0648\062C\0648\062F \0641\064A \0645\0643\0648\0646 \0627\0644\0642\0627\0644\0628 \0627\0644\062E\0627\0635 \0628\0640 %0.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832876191025806)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0647\064A \0645\0646\0637\0642\0629 \0648\0627\062D\062F\0629 (\062C\0632\0626\064A\0629) \0648\0642\062F \0623\0631\062C\0639\062A \0635\0641\0648\0641\064B\0627 \0645\062A\0639\062F\062F\0629.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995825919025858)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0645\0646\0637\0642\0629 %0 \063A\064A\0631 \0645\062F\0639\0648\0645.')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858196470025814)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0639\0631\0636 \0627\0644\0645\0646\0637\0642\0629 "#COMPONENT_NAME#".')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928823642025836)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\0648\062C\062F \0642\064A\0645\0629 \0644\0640 #COLUMN_HEADER#.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810437441025799)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0639\0644\064A\0643 \062A\062D\062F\064A\062F \062A\062E\0637\064A\0637 \062A\0642\0631\064A\0631.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024794706025867)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('%0\061C\060C \0645\062D\0631\0631 \0646\0635 \0645\0646\0633\0642')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930932256025837)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\062C\0627\0648\0632 \062A\0631\0645\064A\0632 HTML \0644\0644\0646\0635 \0627\0644\0645\0646\0633\0642 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0637\0648\0644 \0627\0644\0639\0646\0635\0631 (\0627\0644\0623\062D\0631\0641 \0627\0644\0641\0639\0644\064A\0629 %0\060C \0627\0644\0645\0633\0645\0648\062D \0628\0647\0627 %1)')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840364378025808)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062D\0631\0631 \0646\0635 \0645\0646\0633\0642 \0644\0644\0642\0631\0627\0621\0629 \0641\0642\0637')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840258352025808)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\0631\0646\0627\0645\062C \062A\062D\0631\064A\0631 \0646\0635 \0645\0646\0633\0642')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840068282025808)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062D\0627\0630\0627\0629')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840161686025808)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0627\0635\0631 \0625\0636\0627\0641\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839852698025808)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\0646\0637')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839727809025808)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0646\0633\064A\0642')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839906299025808)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\0648\0627\0626\0645')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993016539025857)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0630\0641')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985573381025854)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0631\0627\0631')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983873166025854)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983727077025854)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\062B\0646\0627\0621 \0627\0644\0642\064A\0645 \0627\0644\062E\0627\0644\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123993126769025857)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629')
,p_is_js_message=>true
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947420556025842)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644 \0644\0623\0633\0641\0644')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947596209025842)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644 \0644\0623\0639\0644\0649')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983594619025854)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984191659025854)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0639\0645\062F\0629 \0627\0644\0623\062E\0631\0649')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983681308025854)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0628\0642')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983991976025854)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641 %0')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984029621025854)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641 %0 \0645\0646 %1')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985604002025854)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\062F\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985713871025854)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0631\0627\062C\0639 \0639\0646 \0627\0644\062A\063A\064A\064A\0631\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123983422081025854)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\0639\062F\0627\062F\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942606729025840)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644\060C %0')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946976193025842)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062B\0627\0644: %0')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859614761025815)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\062A\064A\062C\0629 \0648\0627\062D\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856793124025814)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0646\062A\0627\0626\062C')
,p_is_js_message=>true
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908539832025829)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0631\0642\064A\0645 \0627\0644\0635\0641\062D\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908654736025830)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\062A\0627\0626\062C\060C %0 \0625\0644\0649 %1')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804330008025797)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644 \0645\0631\0629 \0623\062E\0631\0649')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804277570025797)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\062A \062C\0644\0633\062A\0643')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804468874025797)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062F\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804017721025796)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\062A\0646\062A\0647\064A \062C\0644\0633\062A\0643 \062E\0644\0627\0644 %0. \0647\0644 \062A\0631\064A\062F \062A\0645\062F\064A\062F\0647\0627\061F')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804184080025796)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\062A\0646\062A\0647\064A \062C\0644\0633\062A\0643 \0641\064A %0 \0648\0644\0627 \064A\0645\0643\0646 \062A\0645\062F\064A\062F\0647\0627. \0627\0644\0631\062C\0627\0621 \062D\0641\0638 \0623\064A \0639\0645\0644 \0627\0644\0622\0646 \0644\062A\062C\0646\0628 \0641\0642\062F\0627\0646 \0623\064A \0628\064A\0627\0646\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003489533025860)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0631\0645\0632 \062A\0646\0638\064A\0641 \062C\0644\0633\0629 \0639\0645\0644 \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A.')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893168145025824)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0631\0645\0632 \0625\0639\062F\0627\062F \062C\0644\0633\0629 \0627\0644\0639\0645\0644.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863514647025816)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\062A \062C\0644\0633\062A\0643.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002646774025860)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \0625\063A\0644\0627\0642 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0648\0627\0644\0636\063A\0637 \0639\0644\0649 \0632\0631 \0625\0639\0627\062F\0629 \0627\0644\062A\062D\0645\064A\0644 \0641\064A \0627\0644\0645\062A\0635\0641\062D \0644\0628\062F\0621 \062C\0644\0633\0629 \0639\0645\0644 \062C\062F\064A\062F\0629.')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021595378025866)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('<a href="%0">\062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644</a> \0645\0631\0629 \0623\062E\0631\0649 \0644\0625\0646\0634\0627\0621 \062C\0644\0633\0629 \062C\062F\064A\062F\0629.')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905831722025829)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062C\0644\0633\0629 \063A\064A\0631 \0635\0627\0644\062D\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948975135025842)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \062A\0645\0643\064A\0646 \0623\064A\0629 \0623\062F\0648\0627\0631 \062F\064A\0646\0627\0645\064A\0643\064A\0629 \0641\064A \062C\0644\0633\0629 \0639\0645\0644 Real Application Security \0644\0644\0645\0633\062A\062E\062F\0645 "%0".')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891017088025824)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-99900 \062A\0639\0630\0631 \062A\0643\0648\064A\0646 \0645\0639\0631\0641 \062C\0644\0633\0629 \0627\0644\0639\0645\0644 \0627\0644\0641\0631\064A\062F: %0')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820199731025802)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\0633\0645\0648\062D \0628\0646\0648\0639 \0628\064A\0627\0646\0627\062A \062D\0627\0644\0629 CLOB \0644\0644\0635\0646\0641 %0.')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839557275025808)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0628\062F\064A\0644 \0639\0646\0627\0635\0631 \0646\0648\0639 \062D\0627\0644\0629 \062C\0644\0633\0629 CLOB \063A\064A\0631 \0645\062F\0639\0648\0645.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908364826025829)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \0627\0646\062A\0647\0627\0643 \0644\062D\0645\0627\064A\0629 \062C\0644\0633\0629 \0627\0644\0639\0645\0644: \0642\062F \064A\0643\0648\0646 \0647\0630\0627 \0628\0633\0628\0628 \062A\0639\062F\064A\0644 \064A\062F\0648\064A \0644\0639\0646\0635\0631 \0635\0641\062D \0645\062D\0645\064A %0. \0641\0625\0646 \0644\0645 \062A\0643\0646 \0639\0644\0649 \062F\0631\0627\064A\0629 \0628\0633\0628\0628 \062D\062F\0648\062B \0647\0630\0627 \0627\0644\062E\0637\0623\060C \0641\0627\0644\0631\062C\0627\0621 \0627\0644\0627\062A\0635\0627\0644 \0628\0645\0633\0626\0648\0644 \0627\0644\062A\0637\0628\064A\0642 \0637\0644\0628\064B\0627 \0644\0644\0645\0633\0627\0639\062F\0629.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029518851025869)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0627\0643 \062D\0645\0627\064A\0629 \0627\0644\0635\0641\062D\0629: \0642\062F \064A\0643\0648\0646 \0627\0644\0633\0628\0628 \0641\064A \0647\0630\0627 \062A\0642\062F\064A\0645 \0635\0641\062D\0629 \0644\0645 \064A\062A\0645 \0627\0644\0627\0646\062A\0647\0627\0621 \0645\0646 \062A\062D\0645\064A\0644\0647\0627 \0623\0648 \0625\062C\0631\0627\0621 \062A\0639\062F\064A\0644 \064A\062F\0648\064A \0639\0644\0649 \0639\0646\0627\0635\0631 \0645\062D\0645\064A\0629 \0641\064A \0627\0644\0635\0641\062D\0629. \0644\0644\062D\0635\0648\0644 \0639\0644\0649 \0645\0632\064A\062F \0645\0646 \0627\0644\0645\0633\0627\0639\062F\0629\060C \0627\0644\0631\062C\0627\0621 \0627\0644\0627\062A\0635\0627\0644 \0628\0645\0633\0626\0648\0644 \0627\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692407
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028639576025868)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0634\062A\0645\0644 %0 \0639\0644\0649 \0623\062D\062F \0627\0644\0623\062D\0631\0641 \063A\064A\0631 \0627\0644\0635\0627\0644\062D\0629 \0627\0644\062A\0627\0644\064A\0629 & \0623\0648 < \0623\0648 > \0623\0648 " \0623\0648 / \0623\0648 ; \0623\0648 , \0623\0648 * \0623\0648 | \0623\0648 = \0623\0648 % \0623\0648 --')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028740001025868)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0634\062A\0645\0644 %0 \0639\0644\0649 \0623\062D\062F \0627\0644\0623\062D\0631\0641 \063A\064A\0631 \0627\0644\0635\0627\0644\062D\0629 \0627\0644\062A\0627\0644\064A\0629 & \0623\0648 <\0623\0648 >\0623\0648 "\0623\0648 /\0623\0648 ;\0623\0648 ,\0623\0648 *\0623\0648 |\0623\0648 =\0623\0648 % \0623\0648 -- \0623\0648 \0633\0637\0631 \062C\062F\064A\062F.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028479565025868)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0634\062A\0645\0644 %0 \0639\0644\0649 \0623\062D\0631\0641 \062E\0627\0635\0629. \0648\0644\0643\0646 \0644\0627 \064A\064F\0633\0645\062D \0633\0648\0649 \0628\0627\0644\0623\062D\0631\0641 a-Z \06480-9 \0648\0627\0644\0645\0633\0627\0641\0627\062A.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028508304025868)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0634\062A\0645\0644 %0 \0639\0644\0649 < \0623\0648 > \0623\0648 " \0648\0647\064A \0623\062D\0631\0641 \063A\064A\0631 \0635\0627\0644\062D\0629.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865904828025816)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0625\062F\062E\0627\0644 \0645\062C\0645\0648\0639 \0627\062E\062A\0628\0627\0631\064A \0644\0625\0638\0647\0627\0631 \0645\0639\0627\0644\062C\0629 \0635\0641\062D\0629 \062A\062A\0637\0644\0628 \0645\062C\0645\0648\0639\064B\0627 \0627\062E\062A\0628\0627\0631\064A\064B\0627 \0641\064A \062D\0627\0644\0629 \0648\062C\0648\062F \0637\0644\0628 \0623\0648 \0623\0643\062B\0631\060C \0623\0648 \0645\0633\062D \0627\0644\0630\0627\0643\0631\0629 \0627\0644\0645\062E\0628\0626\064A\0629\060C \0623\0648 \062A\0645\0631\064A\0631 \0642\064A\0645 \0627\0644\0648\0633\0627\0626\0637 \0643\0645\0639\0644\0645\0627\062A.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903281429025828)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \0627\0646\062A\0647\0627\0643 \0644\062D\0645\0627\064A\0629 \062C\0644\0633\0629 \0627\0644\0639\0645\0644: \0642\062F \064A\0643\0648\0646 \0647\0630\0627 \0628\0633\0628\0628 \062A\0639\062F\064A\0644 \064A\062F\0648\064A \0644\0639\0646\0648\0627\0646 URL \064A\0634\062A\0645\0644 \0639\0644\0649 \0645\062C\0645\0648\0639 \0627\062E\062A\0628\0627\0631\064A \0623\0648 \0628\0627\0633\062A\062E\062F\0627\0645 \0627\0631\062A\0628\0627\0637 \064A\0634\062A\0645\0644 \0639\0644\0649 \0645\062C\0645\0648\0639 \0627\062E\062A\0628\0627\0631\064A \063A\064A\0631 \0635\062D\064A\062D \0623\0648 \063A\064A\0631 \0645\0648\062C\0648\062F. \0641\0625\0646 \0644\0645 \062A\0643\0646 \0639\0644\0649 \062F\0631\0627\064A\0629 \0628\0633\0628\0628 \062D\062F\0648\062B \0647\0630\0627 \0627\0644\062E\0637\0623\060C \0641\0627\0644\0631\062C\0627\0621 \0627\0644\0627\062A\0635\0627\0644 \0628\0645\0633\0626\0648\0644 \0627\0644\062A\0637\0628\064A\0642 \0637\0644\0628\064B\0627 \0644\0644\0645\0633\0627\0639\062F\0629.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984828024025854)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\064A\064A\0646 \0648\0636\0639 \0627\0644\062A\0628\0627\064A\0646 \0627\0644\0639\0627\0644\064A \0625\0644\0649 \0625\064A\0642\0627\0641')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123984920575025854)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\064A\064A\0646 \0648\0636\0639 \0627\0644\062A\0628\0627\064A\0646 \0627\0644\0639\0627\0644\064A \0625\0644\0649 \062A\0634\063A\064A\0644')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849360769025811)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\062F\064A\062B \0625\0639\062F\0627\062F \0627\0644\062A\0637\0628\064A\0642 %0 \0644\0623\0646\0647 \062A\0645 \0627\0644\0627\0634\062A\0631\0627\0643 \0628\0647 \0645\0646 \062A\0637\0628\064A\0642 \0622\062E\0631.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899691561025826)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0641\0644')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899803574025826)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0623\0633\0641\0644')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899948254025827)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900023084025827)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644 \0627\0644\0643\0644')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900127438025827)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900298380025827)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\0643\0644')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900334764025827)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899522339025826)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0639\0644\0649')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899717418025826)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0623\0639\0644\0649')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011320545025863)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'ar'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012051595025863)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0644\0627\0644 %0 \0645\0646 \0627\0644\0623\064A\0627\0645')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011271801025863)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'ar'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012148649025863)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0644\0627\0644 %0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011010339025863)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'ar'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012242463025863)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0644\0627\0644 %0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011667283025863)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0634\0647\0648\0631')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011804401025863)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0644\0627\0644 %0 \0645\0646 \0627\0644\0634\0647\0648\0631')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011186663025863)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'ar'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011959483025863)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0644\0627\0644 %0 \0645\0646 \0627\0644\062B\0648\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011441671025863)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'ar'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124012318008025863)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0644\0627\0644 %0 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011537532025863)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'ar'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124011752018025863)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0644\0627\0644 %0 \0645\0646 \0627\0644\0633\0646\0648\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812661801025799)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'ar'
,p_message_text=>unistr('[\062E\0637]')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813221443025800)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'ar'
,p_message_text=>unistr('[\062E\0637\0648\0637 \0645\062A\0639\062F\062F\0629]')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812915300025799)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'ar'
,p_message_text=>unistr('[\0646\0642\0627\0637 \0645\062A\0639\062F\062F\0629]')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813481304025800)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'ar'
,p_message_text=>unistr('[\0645\0636\0644\0639\0627\062A \0645\062A\0639\062F\062F\0629]')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813590638025800)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'ar'
,p_message_text=>unistr('[\0643\0627\0626\0646 \0647\0646\062F\0633\064A]')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812503174025799)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'ar'
,p_message_text=>unistr('[\0627\0644\0646\0642\0637\0629 (%0,%1)]')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812868373025799)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'ar'
,p_message_text=>unistr('[\0645\0636\0644\0639]')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812048727025799)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0646\0637\0642\0629 \0627\0644\0645\0637\0648\064A\0629: %0')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927152696025835)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\064A')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811087136025799)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0646\0642\0644 \0627\0644\0641\0627\0635\0644 \0627\0644\0645\0648\062C\0647 \0623\0641\0642\064A\064B\0627 \0625\0644\0649 \0627\0644\064A\0633\0627\0631 \0623\0648 \0625\0644\0649 \0627\0644\064A\0645\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811231107025799)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0644\062D\062C\0645 \0648\0647\0648 %0px')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812272484025799)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0627\0644\062D\062F \0627\0644\0623\062F\0646\0649 \0644\0644\062D\062C\0645 \0648\0647\0648 %0px')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812120206025799)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0637\064A \0627\0644\0645\0646\0637\0642\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811988988025799)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062A \0627\0633\062A\0639\0627\062F\0629 \0627\0644\0645\0646\0637\0642\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811656682025799)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\063A\064A\064A\0631 \0627\0644\062D\062C\0645 \0625\0644\0649 %0px')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811872870025799)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0646\0637\0642\0629 \0627\0644\0645\0633\062A\0639\0627\062F\0629: %0')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927097656025835)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\0639\0627\062F\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123811171106025799)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\0631\064A\0643 \0627\0644\0641\0627\0635\0644 \0627\0644\0645\0648\062C\0647 \0639\0645\0648\062F\064A\064B\0627 \0644\0623\0639\0644\0649 \0623\0648 \0644\0623\0633\0641\0644')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976594786025851)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D \0627\0644\062A\0642\064A\064A\0645')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966448695025848)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0641\064A \0646\0637\0627\0642 \062A\0642\064A\064A\0645 \0635\0627\0644\062D \0645\0646 1 - %1')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966531211025848)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \063A\064A\0631 \0631\0642\0645\064A')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962631178025847)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0633\0627\0644\0629 \0646\062C\0627\062D')
,p_is_js_message=>true
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024481035025867)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024311391025867)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0628\0642')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934506466025838)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0646\0638\0627\0645 \0627\0644\0633\062C\0644 (\0627\0644\0633\062C\0644\0627\062A) \0628\0637\0628\0639\0629 \0627\0644\0645\0647\0645\0629 \0647\0630\0647')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942818312025840)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \062A\0646\0641\064A\0630 \0625\062C\0631\0627\0621 \0627\0644\0645\0647\0645\0629 %0 - \062A\0645 \062A\0639\064A\064A\0646 \0627\0644\0645\0647\0645\0629 \0639\0644\0649 \0627\0644\062D\0627\0644\0629 \062E\0637\0623\060C \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \0631\0645\0632 \0625\062C\0631\0627\0621 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823096573025803)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \062A\0639\0644\064A\0642: \063A\064A\0631 \0645\0635\062F\0642 \0639\0644\064A\0647')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822355281025803)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0639\064A\064A\0646 \0627\0644\0645\0647\0645\0629 \0628\0627\0644\0641\0639\0644')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815751325025800)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062A\062E\0635\064A\0635 \0625\0644\0649 %0')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822001097025803)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\063A\0627\0621 \0627\0644\0645\0647\0645\0629: \063A\064A\0631 \0645\0635\062F\0642 \0639\0644\064A\0647')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837629866025807)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0625\0632\0627\0644\0629 \0627\0644\0645\0627\0644\0643 \0627\0644\0641\0639\0644\064A \0644\0647\0630\0647 \0627\0644\0645\0647\0645\0629. \0627\0644\0631\062C\0627\0621 \062A\0641\0648\064A\0636 \0627\0644\0645\0647\0645\0629 \0625\0644\0649 \0645\0634\0627\0631\0643 \0622\062E\0631 \0642\0628\0644 \0625\0639\0627\062F\0629 \0645\062D\0627\0648\0644\0629 \062A\0634\063A\064A\0644 \0647\0630\0647 \0627\0644\0639\0645\0644\064A\0629.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821615158025802)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0637\0627\0644\0628\0629 \0628\0627\0644\0645\0647\0645\0629: \063A\064A\0631 \0645\0635\062F\0642 \0639\0644\064A\0647')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821736396025802)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0643\0645\0627\0644 \0627\0644\0645\0647\0645\0629: \063A\064A\0631 \0645\0635\062F\0642 \0639\0644\064A\0647')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821890565025802)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0641\0648\064A\0636 \0627\0644\0645\0647\0645\0629: \063A\064A\0631 \0645\0635\062F\0642 \0639\0644\064A\0647')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820250970025802)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0623\0646 \064A\0643\0648\0646 \062A\0627\0631\064A\062E \0627\0633\062A\062D\0642\0627\0642 \0627\0644\0645\0647\0645\0629 \0641\064A \0627\0644\0645\0627\0636\064A.')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815503912025800)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0633\062A\062D\0642\0627\0642 %0')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815971195025800)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \0625\062C\0631\0627\0621 \0627\0644\0645\0647\0645\0629 %1. \0631\0633\0627\0644\0629 \0627\0644\062E\0637\0623 - %0')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815668927025800)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815227080025800)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\062C\0627\062D')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815423138025800)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\062C\062D \0627\0644\0625\062C\0631\0627\0621 %1 \0645\0639 \0638\0647\0648\0631 \0627\0644\0631\0633\0627\0644\0629 %0')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818794153025801)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0628\0644 \0627\0646\062A\0647\0627\0621 \0627\0644\0635\0644\0627\062D\064A\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844308146025810)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\063A\0627\0621')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843820905025809)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0644\063A\0627\0621 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844446909025810)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\0633\0645\0648\062D \0644\0644\0645\0634\0627\0631\0643 \0628\0625\0644\063A\0627\0621 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843789979025809)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0637\0627\0644\0628\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844190369025810)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062A \0627\0644\0645\0637\0627\0644\0628\0629 \0628\0627\0644\0645\0647\0645\0629 \0628\0627\0644\0641\0639\0644 \0628\0648\0627\0633\0637\0629 \0645\0633\062A\062E\062F\0645 \0623\0648 \0645\0634\0627\0631\0643 \0622\062E\0631 \0644\0627 \064A\062D\0642 \0644\0647 \0627\0644\0645\0637\0627\0644\0628\0629 \0628\0647\0630\0647 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843933863025809)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0645 %0 \0628\0627\0644\0645\0637\0627\0644\0628\0629 \0628\0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945023169025841)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0643\0645\0627\0644')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843561115025809)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0643\062A\0645\0644\062A \0627\0644\0645\0647\0645\0629 \0628\0627\0644\0646\062A\064A\062C\0629 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844868870025810)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0647\0645\0629 \063A\064A\0631 \0645\0639\064A\0646\0629 \0623\0648 \0627\0644\0645\0634\0627\0631\0643 \063A\064A\0631 \0645\0633\0645\0648\062D \0644\0647 \0628\0625\062A\0645\0627\0645 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805244861025797)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0643\062A\0645\0644\062A \0627\0644\0645\0647\0645\0629 \0628\062F\0648\0646 \0646\062A\064A\062C\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945107254025841)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0648\064A\0646')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123838024364025808)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0643\0648\064A\0646 \0627\0644\0645\0647\0645\0629 \0628\0627\0644\0645\0639\0631\0641 %0')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945240870025841)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0641\0648\064A\0636')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843639594025809)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0641\0648\064A\0636 \0627\0644\0645\0647\0645\0629 \0625\0644\0649 \0627\0644\0645\0627\0644\0643 \0627\0644\0645\062D\062A\0645\0644 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844282422025810)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0634\0627\0631\0643 \0623\0648 \0627\0644\0645\0634\0627\0631\0643 \0627\0644\062C\062F\064A\062F \0644\064A\0633 \0627\0644\0645\0627\0644\0643 \0627\0644\0645\062D\062A\0645\0644 \0644\0647\0630\0647 \0627\0644\0645\0647\0645\0629 \0623\0648 \0644\0627 \064A\0645\0644\0643 \0627\0644\062D\0642\0648\0642')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817372797025801)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0627\0621 \0627\0644\0635\0644\0627\062D\064A\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818463901025801)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\062A \0635\0644\0627\062D\064A\0629 \0627\0644\0645\0647\0645\0629.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945318751025841)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814043862025800)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0647\0645\0629 \063A\064A\0631 \0645\0639\064A\0646\0629 \0623\0648 \0627\0644\0645\0634\0627\0631\0643 \063A\064A\0631 \0645\0633\0645\0648\062D \0644\0647 \0628\0637\0644\0628 \0645\0639\0644\0648\0645\0627\062A \062D\0648\0644 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814262040025800)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0637\0644\0628 \0645\0639\0644\0648\0645\0627\062A \0644\0644\0645\0647\0645\0629 \0623\0648 \0627\0644\0645\0634\0627\0631\0643 \063A\064A\0631 \0645\0633\0645\0648\062D \0644\0647 \0628\0625\0631\0633\0627\0644 \0645\0639\0644\0648\0645\0627\062A \062D\0648\0644 \0627\0644\0645\0647\0645\0629.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817873926025801)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0646\0647\0627\0621 \0635\0644\0627\062D\064A\0629 \0627\0644\0645\0647\0645\0629 \0644\0623\0646\0647 \062A\0645 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0645\0631\0627\062A \0627\0644\062A\062C\062F\064A\062F %0.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845158048025810)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0647\0645\0629 \0644\064A\0633\062A \0628\0627\0644\062D\0627\0644\0629 \0627\0644\0635\062D\064A\062D\0629 \0623\0648 \0627\0644\0645\0634\0627\0631\0643 \0644\064A\0633 \0645\0633\0624\0648\0644 \0623\0639\0645\0627\0644 \0644\0647\0630\0647 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845274356025810)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0644\064A\0629 %0 \063A\064A\0631 \0645\0639\0631\0648\0641\0629 \0623\0648 \0644\0627 \062A\0646\0637\0628\0642 \0639\0644\0649 \0647\0630\0647 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945405078025841)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0635\062F\0627\0631')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931197391025837)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0635\062F\0627\0631 \0627\0644\0645\0647\0645\0629\060C \064A\0645\0643\0646 \0627\0644\0622\0646 \0644\0644\0622\062E\0631\064A\0646 \0627\0644\0645\0637\0627\0644\0628\0629 \0628\0647\0627.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824006524025803)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\0633\0645\0648\062D \0628\0625\0635\062F\0627\0631 \0627\0644\0645\0647\0645\0629 - \0627\0644\0645\0633\062A\062E\062F\0645 \0647\0648 \0645\0627\0644\0643 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841034131025809)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\0645\0627\0644\0643')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841207153025809)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062A \0625\0632\0627\0644\0629 \0627\0644\0645\0634\0627\0631\0643 %0 \0645\0646 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818672922025801)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\062F\064A\062F')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817535213025801)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062C\062F\064A\062F \0627\0644\0645\0647\0645\0629 \0628\0627\0644\0645\0639\0631\0641 %0\060C \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0645\0631\0627\062A \0627\0644\062A\062C\062F\064A\062F \0627\0644\0645\062A\0628\0642\064A\0629 \0642\0628\0644 \0627\0646\062A\0647\0627\0621 \0627\0644\0635\0644\0627\062D\064A\0629 \0647\0648 %1.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818575221025801)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062C\062F\064A\062F \0645\0639\0631\0641 \0627\0644\0645\0647\0645\0629 %0 \0628\0645\0639\0631\0641 \0627\0644\0645\0647\0645\0629 %1')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814545033025800)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0644\0628 \0645\0639\0644\0648\0645\0627\062A')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814464397025800)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0637\0644\0628 %0 \0644\0645\0632\064A\062F \0645\0646 \0627\0644\0645\0639\0644\0648\0645\0627\062A: %1')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812309556025799)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0645 \0628\062A\0639\064A\064A\0646 \062C\0647\0629 \0627\0644\0628\0627\062F\0626 \0625\0645\0643\0627\0646\064A\0629 \0627\0644\0625\0643\0645\0627\0644 \0625\0644\0649 %0')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814633104025800)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0642\062F\064A\0645 \0645\0639\0644\0648\0645\0627\062A')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814307111025800)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0631\0633\0627\0644 \0627\0644\0645\0639\0644\0648\0645\0627\062A \0627\0644\0645\0637\0644\0648\0628\0629 \0625\0644\0649 %0: %1')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945505239025841)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062B \0627\0644\062A\0639\0644\064A\0642')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842068941025809)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \062A\0639\0644\064A\0642: %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844970306025810)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \062A\0633\0645\062D \062D\0627\0644\0629 \0627\0644\0645\0647\0645\0629 \0628\0623\064A \062A\0639\0644\064A\0642\0627\062A')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852202741025812)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\064A\064A\0646 \062A\0627\0631\064A\062E \0627\0633\062A\062D\0642\0627\0642 \0627\0644\0645\0647\0645\0629 \0625\0644\0649 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810388008025799)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\062D\062F\064A\062B \0645\0633\062A\062D\0642 \0641\064A')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945687857025841)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062B \0627\0644\0645\0627\0644\0643')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843393822025809)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \0645\0627\0644\0643 \0645\062D\062A\0645\0644 %0 \0625\0644\0649 \0645\0634\0627\0631\0643\064A \0627\0644\0645\0647\0645\0629.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842460003025809)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062B \0627\0644\0645\0639\0644\0645\0627\062A')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123945700180025841)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0648\0644\0648\064A\0629 \0627\0644\062A\062D\062F\064A\062B')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844068092025809)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\064A\064A\0646 \0623\0648\0644\0648\064A\0629 \0627\0644\0645\0647\0645\0629 \0639\0644\0649 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841340374025809)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062D\062F\064A\062B \0627\0644\0645\0639\0644\0645\0629 "%0" \0645\0646 "%1" \0625\0644\0649 "%2".')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824823136025803)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0644\063A\0627\0621 \0627\0644\0645\0647\0645\0629 \0628\0633\0628\0628 \0625\0646\0647\0627\0621 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 \0627\0644\0645\0642\0627\0628\0644.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821909362025803)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0648\062C\064A\0647 \0645\0647\0645\0629: \063A\064A\0631 \0645\0635\062F\0642 \0639\0644\064A\0647')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815327856025800)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0628\062F\0621 \0628\0648\0627\0633\0637\0629: %0 %1')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824216112025803)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \062F\0627\062E\0644\064A \063A\064A\0631 \0645\062A\0648\0642\0639')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822581966025803)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0634\063A\064A\0644 \0627\0644\0645\0647\0645\0629 \063A\064A\0631 \0642\0627\0628\0644 \0644\0644\062A\0637\0628\064A\0642')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848122771025811)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0647\0630\0627 \0627\0644\0645\0627\0644\0643 \0627\0644\0645\062D\062A\0645\0644 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823836875025803)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\064F\0639\062A\0645\062F')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823909344025803)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0641\0648\0636')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805349722025797)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0637\0644\0628 \0627\0643\062A\0645\0627\0644 \0627\0644\0645\0647\0645\0629 \0648\062C\0648\062F \0646\062A\064A\062C\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123805533805025797)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\0633\0645\0648\062D \0628\0623\0646 \064A\0643\0648\0646 \0644\0644\0645\0647\0645\0629 \0646\062A\064A\062C\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123841146764025809)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\062F\064A\062B \0627\0644\0645\0639\0644\0645\0629 %0.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837490371025807)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0634\0627\0631\0643 \0645\0648\062C\0648\062F \0628\0627\0644\0641\0639\0644 \0644\0645\062B\064A\0644 \0627\0644\0645\0647\0645\0629 \0647\0630\0627.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938951752025839)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0627\062C\0644')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816061426025800)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0627\062C\0644')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938822898025839)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\062A\0641\0639')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816136678025800)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0648\0644\0648\064A\0629 \0642\0635\0648\0649')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938739848025839)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062A\0648\0633\0637')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816256559025801)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0648\0644\0648\064A\0629 \0645\062A\0648\0633\0637\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938601049025839)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\062E\0641\0636')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816308748025801)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0648\0644\0648\064A\0629 \0645\0646\062E\0641\0636\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938504956025839)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0643\062B\0631 \0627\0646\062E\0641\0627\0636\064B\0627')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816434797025801)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\062F\0646\0649 \0623\0648\0644\0648\064A\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822158378025803)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\064A\064A\0646 \0623\0648\0644\0648\064A\0629 \0627\0644\0645\0647\0645\0629: \063A\064A\0631 \0645\0635\062F\0642 \0639\0644\064A\0647')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823359440025803)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\064F\0639\064A\0651\0646')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823787096025803)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0625\0644\063A\0627\0621')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823402069025803)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0643\062A\0645\0644')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823654040025803)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123817122837025801)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\062A\0647\064A \0627\0644\0635\0644\0627\062D\064A\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823568897025803)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813877696025800)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0639\0644\0648\0645\0627\062A \0645\0637\0644\0648\0628\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123823211432025803)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\064F\0639\064A\0651\0646')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845638256025810)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0641\0634\0644 \062A\0643\0648\064A\0646 \0645\0647\0645\0629 \062C\062F\064A\062F\0629 \0644\062A\0639\0631\064A\0641 \0627\0644\0645\0647\0645\0629 %0 \0641\064A \0627\0644\062A\0637\0628\064A\0642 %1.'),
'SQLCODE: %2'))
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845523467025810)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644\062A \0645\062D\0627\0648\0644\0629 \062A\0643\0648\064A\0646 \0645\0647\0645\0629 \0644\062A\0639\0631\064A\0641 \0627\0644\0645\0647\0645\0629 %0 \0641\064A \0627\0644\062A\0637\0628\064A\0642 %1 \0644\0623\0646 \062A\0639\0631\064A\0641 \0627\0644\0645\0647\0645\0629 \0644\0627 \064A\062A\0636\0645\0646 \0623\064A \0645\0627\0644\0643\064A\0646 \0645\062D\062A\0645\0644\064A\0646 - \0627\0644\0631\062C\0627\0621 \062A\062D\0631\064A\0631 \062A\0639\0631\064A\0641 \0627\0644\0645\0647\0645\0629 \0648\0625\0636\0627\0641\0629 \0645\0634\0627\0631\0643 \0648\0627\062D\062F \0639\0644\0649 \0627\0644\0623\0642\0644 \0645\0646 \0627\0644\0646\0648\0639 "\0645\0627\0644\0643 \0645\062D\062A\0645\0644"')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822881272025803)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \062A\0639\0631\064A\0641 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822743004025803)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0645\0634\0627\0631\0643\064A\0646 \0644\0647\0630\0647 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824137493025803)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0643\062B\0631 \0645\0646 \0645\0647\0645\0629 \0648\0627\062D\062F\0629 \0644\0645\0639\0631\0641 \0627\0644\0645\0647\0645\0629 \0627\0644\0645\062D\062F\062F\0629. \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0639 \0645\0633\0624\0648\0644 \0642\0627\0639\062F\0629 \0628\064A\0627\0646\0627\062A\0643')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822991255025803)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123822618016025803)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0645\0639\0644\0645\0629 \0627\0644\0645\0647\0645\0629')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858922932025814)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\062C\0631\0627\0621')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858819446025814)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0639\062A\0645\0627\062F')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806217218025797)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \0625\062C\0631\0627\0621 \0642\0627\0639\062F\0629 \0627\0644\0627\0633\062A\062C\0627\0628\0629 %2 \0641\064A \062A\0646\0641\064A\0630 \062A\0639\0631\064A\0641 \0627\0644\0645\0647\0645\0629 %0 \0641\064A \0627\0644\062A\0637\0628\064A\0642 %1.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806462893025797)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062A \0625\0636\0627\0641\0629 \0627\0644\0645\0634\0627\0631\0643 %1 \0643\0628\062F\064A\0644 \0644\0644\0645\0634\0627\0631\0643 %0 . \0627\0644\0633\0628\0628 - %2 .')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010128719025863)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0631\064A\0637 \0627\0644\0623\062F\0648\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863690271025816)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0637\0628\064A\0642')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024823439025867)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\0633\064A\0639 / \0637\064A \0645\0646\0637\0642\0629 \0627\0633\062A\0643\0634\0627\0641')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024904908025867)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\0633\064A\0639 / \0637\064A \0639\0645\0648\062F \062C\0627\0646\0628\064A')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933350652025837)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\0632\0621 \0627\0644\0627\0633\062A\0643\0634\0627\0641 \0627\0644\0631\0626\064A\0633\064A')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834188118025806)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'ar'
,p_message_text=>unistr('"%0" \0627\0633\0645 \0639\0646\0635\0631 \0646\0627\0626\0628 \063A\064A\0631 \0635\0627\0644\062D.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941026376025840)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\0645 \0648\0627\062D\062F')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940812606025840)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0627\0639\0629 \0648\0627\062D\062F\0629')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941173112025840)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\064A\0627\0645')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940948883025840)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940774996025840)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941341077025840)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123941263853025840)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0628\0648\0639 \0648\0627\062D\062F')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839044177025808)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062D\062F\064A\062F %0 \0645\0646 \0627\0644\0639\0646\0627\0635\0631')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839209518025808)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0639\0646\0635\0631')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839147455025808)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062D\062F\064A\062F %0')
,p_is_js_message=>true
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027982428025868)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062F\0627\064A\0629 \0627\0644\0635\0641\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885546138025822)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0645\0643\0646')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854016938025813)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0627\0644\0637\0644\0628.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123839675520025808)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\062F\064A\062B \0627\0644\0631\0633\0627\0644\0629 \0627\0644\0646\0635\064A\0629 %0 \0644\0623\0646\0647 \062A\0645 \0627\0644\0627\0634\062A\0631\0627\0643 \0641\064A\0647\0627 \0645\0646 \062A\0637\0628\064A\0642 \0622\062E\0631.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942712466025840)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629 \0645\0637\0644\0648\0628\0629')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859151032025814)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062A\0648\0649 \0627\0644\0639\0646\0648\0627\0646 %0\060C \0645\062E\0641\064A')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987564696025855)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\062C\062F \062A\063A\064A\064A\0631\0627\062A \063A\064A\0631 \0645\062D\0641\0648\0638\0629 \0641\064A \0647\0630\0647 \0627\0644\0635\0641\062D\0629.')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849183037025811)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062A\0643\0634\0641')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848842492025811)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0642\0631\064A\0628')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849862974025811)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062A\0648\0649 \0627\0644\062A\0642\0631\064A\0628/\0627\0644\0625\0628\0639\0627\062F {0}%')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848940588025811)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0628\0639\0627\0621')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849073883025811)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0627\0644\062A\0642\0631\064A\0628/\0627\0644\0625\0628\0639\0627\062F')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824512165025803)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0645\062E\0637\0637 \0633\064A\0631 \0627\0644\0639\0645\0644 \0641\064A \0627\0644\0648\0642\062A \0627\0644\062D\0627\0644\064A.')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824477525025803)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062E\0637\0637 \0633\064A\0631 \0627\0644\0639\0645\0644')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826325207025804)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0645\0648\062C\0648\062F \062D\0627\0644\064A\064B\0627 \0641\064A \0627\0644\062D\0627\0644\0629 %1. \0648\0628\0627\0644\062A\0627\0644\064A \0644\0627 \064A\064F\0633\0645\062D \0628\0627\0644\062A\0634\063A\064A\0644')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828945003025805)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0643\062A\0645\0627\0644 \0627\0644\0645\062B\064A\0644 %1 \0644\0644\0646\0634\0627\0637 %2 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828761629025805)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0646\0634\0627\0621 \0645\062B\064A\0644 \062C\062F\064A\062F %1 \0644\0644\0646\0634\0627\0637 %2 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820565191025802)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0635\0641 \0628\064A\0627\0646\0627\062A \0625\0636\0627\0641\064A \0645\0642\062A\0631\0646 \0628\0645\062B\064A\0644 \0646\0634\0627\0637 \0633\064A\0631 \0627\0644\0639\0645\0644 \0647\0630\0627')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828829274025805)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062A \0625\0639\0627\062F\0629 \0645\062D\0627\0648\0644\0629 \062A\0634\063A\064A\0644 \0627\0644\0645\062B\064A\0644 \0627\0644\0641\0627\0634\0644 %1 \0644\0644\0646\0634\0627\0637 %2 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810885897025799)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0646\0647\0627\0621 \0645\062B\064A\0644 \0627\0644\0646\0634\0627\0637 %1 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844695149025810)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\062A \0645\0647\0644\0629 \0646\0634\0627\0637 \0627\0644\0645\062B\064A\0644 %1 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0648\062A\0645 \0625\0646\0647\0627\0624\0647.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829049583025805)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062B\064A\0644 %1 \0644\0644\0646\0634\0627\0637 %2 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0641\064A \062D\0627\0644\0629 \0627\0646\062A\0638\0627\0631')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810696782025799)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0639\062F\064A\0644 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0648\0627\0633\062A\0626\0646\0627\0641\0647 \0639\0646\062F \0627\0644\0646\0634\0627\0637 %1')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828022900025804)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0643\062A\0645\0627\0644 \0645\062B\064A\0644 \0627\0644\0627\0646\062A\0638\0627\0631 %1 \0644\0644\0646\0634\0627\0637 %2 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0628\0646\062C\0627\062D')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827857150025804)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0648\0636\0639 \0646\0634\0627\0637 \0627\0644\0627\0646\062A\0638\0627\0631 %1 \0641\064A \0627\0644\062D\0627\0644\0629 \0641\0634\0644 \0644\0623\0646 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0643\0627\0646 \0628\0627\0644\0641\0639\0644 \0641\064A \062D\0627\0644\0629 \0641\0634\0644 \0642\0628\0644 \0627\0643\062A\0645\0627\0644 \0627\0644\0646\0634\0627\0637')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827966975025804)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0646\0647\0627\0621 \0646\0634\0627\0637 \0627\0644\0627\0646\062A\0638\0627\0631 %1 \0644\0623\0646 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0643\0627\0646 \0628\0627\0644\0641\0639\0644 \0641\064A \0627\0644\062D\0627\0644\0629 "\062A\0645 \0627\0644\0627\0646\062A\0647\0627\0621" \0642\0628\0644 \0627\0643\062A\0645\0627\0644 \0627\0644\0646\0634\0627\0637')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810984956025799)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \0625\0646\0647\0627\0621 \0627\0644\0646\0634\0627\0637 %1 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0628\0633\0628\0628 \0627\0644\0627\0633\062A\062B\0646\0627\0621 - %2')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826544957025804)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\064A\0631 \0627\0644\0639\0645\0644 \0645\0634\063A\0648\0644 \062D\0627\0644\064A\064B\0627 \0628\0625\0643\0645\0627\0644 \0639\0645\0644\064A\0629 \0633\0627\0628\0642\0629. \0627\0644\0631\062C\0627\0621 \0627\0644\0645\062D\0627\0648\0644\0629 \0644\0627\062D\0642\064B\0627')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842652275025809)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0643\062A\0645\0644 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825616379025804)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0645\062A\0627\0628\0639\0629 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0644\0623\0646\0647 \062D\0627\0644\064A\064B\0627 \0641\064A \0627\0644\0646\0634\0627\0637 %1 \0648\0627\0644\0630\064A \0644\0627 \064A\0639\062A\0628\0631 \062D\0627\0644\0629 \0627\0646\062A\0638\0627\0631')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837506095025807)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0633\064A\0627\0642 \0627\0631\062A\0628\0627\0637 \0635\0627\0644\062D\064B\0627 \0644\0633\064A\0631 \0627\0644\0639\0645\0644 \0644\0644\0639\0645\0644\064A\0629 \0627\0644\062A\064A \064A\062C\0631\064A \062A\0646\0641\064A\0630\0647\0627 \0628\0648\0627\0633\0637\0629 \0646\0634\0627\0637 \0633\064A\0631 \0627\0644\0639\0645\0644. \064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0633\064A\0627\0642 \0627\0644\0627\0631\062A\0628\0627\0637 \0646\0635\064B\0627 \0645\062D\062F\062F\064B\0627 \0628\0641\0648\0627\0635\0644 \062A\062D\062A\0648\064A \0639\0644\0649 APEX_APPL_WORKFLOW \0645\062A\0628\0648\0639\064B\0627 \0628\0645\0639\0631\0641 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 \0648\0645\0639\0631\0641 \0645\062B\064A\0644 \0627\0644\0646\0634\0627\0637.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828279183025805)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0643\0648\064A\0646 \0645\062B\064A\0644 \062C\062F\064A\062F %0 \0644\0633\064A\0631 \0627\0644\0639\0645\0644 %1\060C \0627\0644\0646\0633\062E\0629 %2')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820306536025802)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0635\0641 \0628\064A\0627\0646\0627\062A \0625\0636\0627\0641\064A \0645\0642\062A\0631\0646 \0628\0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 \0647\0630\0627')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842827735025809)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0633\062A\062D\0642\0627\0642 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828131749025804)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0649 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0628\0627\0644\062D\0627\0644\0629 %1')
,p_version_scn=>2692374
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825344443025804)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A %1 \0644\0644\0634\0631\0648\0637 \0627\0644\062A\064A \062A\062E\0636\0639 \0644\0644\0645\0642\0627\0631\0646\0629 \0641\064A \0646\0634\0627\0637 \0627\0644\062A\0628\062F\064A\0644 \0644\0633\064A\0631 \0627\0644\0639\0645\0644 %0 \063A\064A\0631 \0645\062A\0648\0627\0641\0642 \0645\0639 \0645\064F\0634\063A\0644 \0627\0644\0634\0631\0637')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815159926025800)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0628\062F\0621 \0628\0648\0627\0633\0637\0629: %0 %1')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837955431025808)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0643\0648\064A\0646 \0645\062B\064A\0644 %0 \062C\062F\064A\062F \0645\0646 \0633\064A\0631 \0627\0644\0639\0645\0644 %1\060C \0627\0644\0625\0635\062F\0627\0631 %2 - \062A\0645 \0627\0633\062A\062F\0639\0627\0624\0647 \0645\0646 \0645\062B\064A\0644 \0627\0644\0646\0634\0627\0637 %4 \0644\0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %3')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123810756020025799)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0634\0627\0637 \0630\0648 \0627\0644\0645\0639\0631\0641 \0627\0644\062B\0627\0628\062A %1 \0644\064A\0633 \0646\0634\0627\0637\064B\0627 \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644 %0. \062A\062D\0642\0642 \0645\0646 \0645\0639\0631\0641\0627\062A \0627\0644\0646\0634\0627\0637 \0627\0644\062B\0627\0628\062A\0629 \0644\0625\0635\062F\0627\0631 \0633\064A\0631 \0627\0644\0639\0645\0644 \0627\0644\0645\0642\0627\0628\0644.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836042278025807)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0647\0648 \0645\0639\0644\0645\0629 \0645\0637\0644\0648\0628\0629 \0644\0633\064A\0631 \0627\0644\0639\0645\0644 \0647\0630\0627 \0648\0644\0627 \064A\062C\0628 \0623\0646 \062A\0643\0648\0646 NULL.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828684992025805)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0633\062A\0626\0646\0627\0641 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828559849025805)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\062A \0625\0639\0627\062F\0629 \0645\062D\0627\0648\0644\0629 \062A\0634\063A\064A\0644 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842950049025809)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0625\0639\0627\062F\0629 \0645\062D\0627\0648\0644\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843002153025809)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0625\0639\0627\062F\0627\062A \0627\0644\0645\062D\0627\0648\0644\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842769502025809)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\062F\0621 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836971136025807)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0634\0637')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837101442025807)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0643\062A\0645\0644')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837256021025807)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837315395025807)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0644\0642')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123837049632025807)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0646\0647\0627\0624\0647')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852384414025812)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0638\0627\0631')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828378571025805)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\0639\0644\064A\0642 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834263387025806)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\062F\064A\062F \0627\0644\0646\0634\0627\0637 \0627\0644\062A\0627\0644\064A \0644\0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0. \062A\062D\0642\0642 \0645\0646 \0627\0644\0634\0631\0648\0637 \0627\0644\0645\062D\062F\062F\0629 \0644\0646\0634\0627\0637 \0627\0644\062A\0628\062F\064A\0644 \0627\0644\062D\0627\0644\064A \0648\0642\0645 \0628\062A\0635\062D\064A\062D\0647\0627 \0642\0628\0644 \0625\0639\0627\062F\0629 \0645\062D\0627\0648\0644\0629 \0633\064A\0631 \0627\0644\0639\0645\0644.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123828487862025805)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0646\0647\0627\0621 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827596848025804)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0633\062A\0626\0646\0627\0641 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0625\0644\0627 \0628\0648\0627\0633\0637\0629 \0645\0633\0624\0648\0644 \0627\0644\0623\0639\0645\0627\0644')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827607281025804)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0625\0639\0627\062F\0629 \0645\062D\0627\0648\0644\0629 \062A\0634\063A\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0625\0644\0627 \0628\0648\0627\0633\0637\0629 \0645\0627\0644\0643 \0623\0648 \0645\0633\0624\0648\0644 \0623\0639\0645\0627\0644 \0623\0648 \0643\0644\0627\0647\0645\0627.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827199784025804)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\0639\0644\064A\0642 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0625\0644\0627 \0628\0648\0627\0633\0637\0629 \0645\0633\0624\0648\0644 \0623\0639\0645\0627\0644 \0644\0633\064A\0631 \0627\0644\0639\0645\0644')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123827475071025804)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0643\0645\0646 \0625\0644\0627 \0644\0645\0644\0627\0643 \0648\0645\0633\0624\0648\0644\064A \0623\0639\0645\0627\0644 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0625\0646\0647\0627\0621 \0633\064A\0631 \0627\0644\0639\0645\0644')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825801772025804)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\062F\064A\062B \0645\062A\063A\064A\0631\0627\062A \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0625\0644\0627 \0628\0648\0627\0633\0637\0629 \0645\0633\0624\0648\0644 \0623\0639\0645\0627\0644 \0645\062D\062F\062F \0641\064A \0633\064A\0631 \0627\0644\0639\0645\0644')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840443230025808)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0641\064A \062D\0627\0644\0629 \0645\0639\0637\0644\0629 \0623\0648 \0645\0639\0644\0642\0629 \0642\0628\0644 \0623\0646 \062A\062A\0645\0643\0646 \0645\0646 \062A\062D\062F\064A\062B \0645\062A\063A\064A\0631\0627\062A\0647.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831943562025806)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062D\062F\064A\062B \0642\064A\0645\0629 \0645\062A\063A\064A\0631 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0625\0644\0649 %1')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842163224025809)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0634\062A\0645\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0639\0644\0649 \0646\0633\062E\0629 \0646\0634\0637\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842248856025809)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0634\062A\0645\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0639\0644\0649 \0646\0633\062E\0629 \0642\064A\062F \0627\0644\062A\0637\0648\064A\0631')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123842346025025809)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0634\062A\0645\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0 \0639\0644\0649 \0646\0633\062E\0629 \0646\0634\0637\0629 \0623\0648 \0642\064A\062F \0627\0644\062A\0637\0648\064A\0631')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825209129025804)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0645\062B\064A\0644 \0627\0644\0646\0634\0627\0637 %1 \0644\0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825054023025803)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0645\062B\064A\0644 \0633\064A\0631 \0627\0644\0639\0645\0644 %0')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860184641025815)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0634\062A\0645\0644 \0627\0644\0645\0635\0646\0641 \0639\0644\0649 \0648\0631\0642\0629 \0646\0634\0637\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860042015025815)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \062A\062A\0645 \062A\0647\064A\0626\0629 \0627\0644\0645\0635\0646\0641.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123859920560025815)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \062F\0627\062E\0644\064A \0623\062B\0646\0627\0621 \062A\0643\0648\064A\0646 \0645\0644\0641 XLSX.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862440128025815)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0631\0642\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873041709025819)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0648\0631\0642\0629 \0627\0644\0639\0645\0644 "%0" \0645\064F\0633\062A\062E\062F\0645 \0628\0627\0644\0641\0639\0644. \062D\0627\0648\0644 \0627\0633\062A\062E\062F\0627\0645 \0627\0633\0645 \0645\062E\062A\0644\0641.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001644268025860)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\062C\0631\0627\0621\0627\062A')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916640078025832)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0625\062C\0631\0627\0621\0627\062A')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912354218025831)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \062F\0627\0644\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912254587025831)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \0639\0645\0648\062F \062A\062C\0645\064A\0639 \062D\0633\0628')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949894062025843)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \0639\0645\0648\062F \062C\062F\0648\0644 \0645\062D\0648\0631\064A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949967198025843)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0636\0627\0641\0629 \0639\0645\0648\062F \0635\0641')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884337534025822)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922846308025834)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\062C\0645\064A\0639')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903753989025828)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062A\0648\0633\0637')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908097162025829)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\062F\062F')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903875433025828)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\0642\0635\0649')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904074831025828)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0633\064A\0637')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903990147025828)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\062F\0646\0649')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903603937025828)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062C\0645\0648\0639 %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904770330025828)
,p_name=>'APEXIR_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0643\0644')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883619693025822)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0627\0641\0629 \0627\0644\0623\0639\0645\062F\0629')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863794743025816)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0644 \0627\0644\0635\0641\0648\0641')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998647287025859)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\062F\064A\0644')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000272137025859)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0641\062A\0631\0627\0636\064A \0627\0644\0628\062F\064A\0644: %0 ')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897891860025826)
,p_name=>'APEXIR_AND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932693747025837)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0639\0630\0631 \0627\0633\062A\064A\0631\0627\062F \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0645\062D\0641\0648\0638. \0627\0644\0645\062D\062A\0648\0649 \062A\0627\0644\0641.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932753180025837)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0639\0630\0631 \0627\0633\062A\064A\0631\0627\062F \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0645\062D\0641\0648\0638. \0627\0644\0645\062D\062A\0648\0649 \0641\0627\0631\063A.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885882348025822)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0637\0628\064A\0642')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879404662025820)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0635\0627\0639\062F\064A')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900956636025827)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0639\062A\0628\0627\0631\064B\0627 \0645\0646 %0')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000813268025860)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062A\0648\0633\0637 %0')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992429223025857)
,p_name=>'APEXIR_BAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0631\064A\0637\064A')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885141030025822)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\064A\0646')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878218546025820)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0648\0646 \0627\0644\062E\0644\0641\064A\0629')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880106542025821)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0632\0631\0642')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914295243025831)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0641\0644')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845085559025810)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0632\0631\0627\0631 \0628\062C\0627\0646\0628 \0634\0631\064A\0637 \0628\062D\062B %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880780544025821)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\063A\0627\0621')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887015830025823)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0641\0626\0629')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878174147025820)
,p_name=>'APEXIR_CELL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062E\0644\064A\0629')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904665132025828)
,p_name=>'APEXIR_CHART'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915140061025832)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\0627\0631\064D \0627\0644\0628\062F\0621...')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954864640025844)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \062A\0633\0645\064A\0629 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A.')
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967274588025848)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\062C\0627\0648\0632 \0627\0633\062A\0639\0644\0627\0645\0643 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0646\0642\0627\0637 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\0628\0627\0644\063A %0 \0644\0643\0644 \0631\0633\0645 \0628\064A\0627\0646\064A. \0627\0644\0631\062C\0627\0621 \062A\0637\0628\064A\0642 \0645\0631\0634\062D \0644\062A\0642\0644\064A\0644 \0639\062F\062F \0627\0644\062A\0633\062C\064A\0644\0627\062A \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0623\0633\0627\0633\064A \0627\0644\062E\0627\0635 \0628\0643.')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966102541025848)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0642\0644\0644 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0627\0644\0635\0641\0648\0641 \0641\064A \0627\0633\062A\0639\0644\0627\0645 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0645\0646 \0639\062F\062F \0627\0644\0635\0641\0648\0641 \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0623\0633\0627\0633\064A\060C \0648\0644\064A\0633 \0645\0646 \0639\062F\062F \0627\0644\0635\0641\0648\0641 \0627\0644\0645\0639\0631\0648\0636\0629. \064A\062A\062C\0627\0648\0632 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0631\0626\064A\0633\064A \0644\062F\064A\0643 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0627\0644\0635\0641\0648\0641 %0. \0627\0644\0631\062C\0627\0621 \062A\0637\0628\064A\0642 \0645\0631\0634\062D \0644\062A\0642\0644\064A\0644 \0639\062F\062F \0627\0644\0633\062C\0644\0627\062A \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0623\0633\0627\0633\064A \0627\0644\062E\0627\0635 \0628\0643.')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883722318025822)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847667262025811)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962826816025847)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\0643\0644')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901385222025827)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0635\064A\063A\0629 \0627\0644\062A\0642\0631\064A\0631')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909141075025830)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880681130025821)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920478090025833)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0639\0645\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887630032025823)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0633\0645\0627\0621 \0627\0644\0628\062F\064A\0644\0629 \0644\0644\0623\0639\0645\062F\0629')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995207104025858)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0634\062D...')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855403067025813)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0623\0633 \0627\0644\0639\0645\0648\062F')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869585545025818)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0631\0627\0621\0627\062A \0627\0644\0639\0645\0648\062F')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869850365025818)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0631\0627\0621\0627\062A \0627\0644\0639\0645\0648\062F "%0"')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911248347025830)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914968044025831)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0644\0648\0645\0627\062A \0627\0644\0623\0639\0645\062F\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997546068025858)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\0645\064A\0629 \0627\0644\0639\0645\0648\062F')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912614939025831)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895518790025825)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896843533025826)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A \0639\0644\0649')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879183035025820)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897030693025826)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0641\064A \0622\062E\0631')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906160596025829)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0641\064A \0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896900472025826)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A \0622\062E\0631')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906038843025829)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\064A \0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879055660025820)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \062E\0627\0644\064A\064B\0627')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878905384025820)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0627\0644\064D')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878789951025820)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062B\0644')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879229614025820)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0641\064A')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878810801025820)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0645\062B\0644')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895893715025825)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0637\0627\0628\0642 \0627\0644\062A\0639\0628\064A\0631 \0627\0644\0639\0627\062F\064A')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901214202025827)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\062D\062A\0633\0627\0628')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965841628025848)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0628\064A\0631 \062D\0633\0627\0628\064A')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920724164025833)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0648\064A\0646 \0627\062D\062A\0633\0627\0628 \0628\0627\0633\062A\062E\062F\0627\0645 \0627\0644\0623\0633\0645\0627\0621 \0627\0644\0645\0633\062A\0639\0627\0631\0629 \0644\0644\0623\0639\0645\062F\0629.')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920839804025833)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'ar'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920925230025833)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'ar'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921090283025833)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'ar'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861997307025815)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'ar'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905493724025828)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0633\0627\0628')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913204106025831)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0648\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916296508025832)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0648\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002846522025860)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0639\0645\062F\0629 \0641\0648\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858683857025814)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\062F \0627\0644\0645\0645\064A\0632')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001346353025860)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\062F \0627\0644\0645\0645\064A\0632')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001209791025860)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\062F %0')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974266599025851)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\0645\064A')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124027518571025868)
,p_name=>'APEXIR_DATA'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\064A\0627\0646\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915000248025831)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\064A\0627\0646\0627\062A \0627\0644\062A\0642\0631\064A\0631 \0645\0646\0630 %0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848016966025811)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0628\064A\0627\0646\0627\062A %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884465802025822)
,p_name=>'APEXIR_DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0631\064A\062E')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918909318025833)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0641\062A\0631\0627\0636\064A')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998485746025859)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0627\0641\062A\0631\0627\0636\064A')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880872206025821)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0630\0641')
,p_is_js_message=>true
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884730005025822)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0647\0644 \062A\0631\064A\062F \062D\0630\0641 \0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0642\0631\064A\0631 \0647\0630\0647\061F')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985247533025854)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0630\0641 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0627\0641\062A\0631\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912952628025831)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0630\0641 \0627\0644\062A\0642\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879579232025820)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0646\0627\0632\0644\064A')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887108642025823)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0635\0641')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911121477025830)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0635\0641 \0648\0627\062D\062F')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919447644025833)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\062A\062C\0627\0647 %0')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920302048025833)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0637\0644')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880319653025821)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0648\0636')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883529851025822)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919354081025833)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0641\064A \0627\0644\062A\0642\0631\064A\0631')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914195683025831)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0623\0633\0641\0644')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905515754025828)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0646\0632\064A\0644')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919242160025833)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\0645 \0627\0644\0639\0631\0636')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988504636025855)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \062A\0645\064A\064A\0632 \0628\0627\0644\0634\0631\0637 \0630\0627\062A\0647 \0628\0627\0644\0641\0639\0644.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003001344025860)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\0648\0631\064A \0645\0643\0631\0631. \064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\0648\0631\064A \0641\0631\064A\062F\064B\0627.')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003296871025860)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915238104025832)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0625\0639\062F\0627\062F\0627\062A \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921878073025834)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885723142025822)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0641\0648\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922215114025834)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0645\0631\0634\062D')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888797735025823)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0627\0633\062A\0639\0644\0627\0645 \0639\0646 \0628\064A\0627\0646\0627\062A \062A\0627\0631\064A\062E\064A\0629')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980096106025853)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0627\0644\0645\062C\0645\0648\0639\0629 \062D\0633\0628')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922186744025834)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0627\0644\062A\0645\064A\064A\0632')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950185905025843)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \0627\0644\062C\062F\0648\0644 \0627\0644\0645\062D\0648\0631\064A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909592137025830)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631 \062A\0642\0631\064A\0631')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998708448025859)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870949630025818)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999003406025859)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\062E\0629 \0645\062E\0641\064A\0629')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999253675025859)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0635')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998980076025859)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\062E\0629 \0625\0644\0649')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999784745025859)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\062F\0644 \0627\0644\062A\0643\0631\0627\0631')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876155260025819)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\0643\0648\064A\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A \0644\0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642. \0627\0644\0631\062C\0627\0621 \0627\0644\0627\062A\0635\0627\0644 \0628\0627\0644\0645\0633\0624\0648\0644 \0644\062F\064A\0643.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973592120025850)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0639\0646\0648\0627\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999355760025859)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0637\0644\0627\0639 \0639\0644\0649 \0627\0644\0645\0631\0641\0642')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999195645025859)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0648\0636\0648\0639')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974550483025851)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0645\0648\0636\0648\0639 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998848586025859)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\0649')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877968031025820)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0645\0643\0646')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922031465025834)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\0643\064A\0646/\062A\0639\0637\064A\0644')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921556119025834)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623! %0')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921130869025833)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0645\062B\0644\0629')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921921455025834)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0645\062B\0644\0629:')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883454295025822)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\062B\0646\0627\0621 \0627\0644\0642\064A\0645 \0627\0644\062E\0627\0644\064A\0629')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922598548025834)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\0633\064A\0639/\0637\064A')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920165769025833)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0639\0628\064A\0631')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905009745025828)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0631\0634\064A\062D')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916160488025832)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D\0627\062A')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926875390025835)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0628\064A\0631 \0627\0644\0645\0631\0634\062D')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025041427025867)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0628\064A\0631 \0627\0644\0645\0631\0634\062D \0637\0648\064A\0644 \0644\0644\063A\0627\064A\0629.')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869730666025818)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0642\062A\0631\0627\062D\0627\062A \0627\0644\062A\0631\0634\064A\062D')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926720513025835)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0645\0631\0634\062D')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922730782025834)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0623\0639\0645\062F\0629 \0644\0644\0628\062D\062B')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905360922025828)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\0627\0631\064A\062E\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919995429025833)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\064A\062D \0644\0643 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0639\0646 \0628\064A\0627\0646\0627\062A \062A\0627\0631\064A\062E\064A\0629 \0639\0631\0636 \0627\0644\0628\064A\0627\0646\0627\062A \0643\0645\0627 \0643\0627\0646\062A \0645\0648\062C\0648\062F\0629 \0633\0627\0628\0642\064B\0627.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973920820025850)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\0627\0631\064A\062E\064A\0629')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975387839025851)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\064A\063A\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901116015025827)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0646\0627\0639 \0627\0644\0635\064A\063A\0629 %0')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912860876025831)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062F\0627\0644\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920691874025833)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062F\0648\0627\0644 %0')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998383197025859)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062F\0648\0627\0644/\0627\0644\0639\0648\0627\0645\0644')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912502884025831)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062F\0627\0644\0629 %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904858710025828)
,p_name=>'APEXIR_GO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0642\0627\0644 \0625\0644\0649')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878467768025820)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\062E\0636\0631')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923424942025834)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639 \062D\0633\0628 \0627\0644\0623\0639\0645\062F\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923521457025834)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639 \062D\0633\0628 \0627\0644\0648\0638\0627\0626\0641')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858785647025814)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639 \062D\0633\0628')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999453674025859)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639 \062D\0633\0628 \0627\0644\0639\0645\0648\062F %0')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123954923835025844)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0639\0645\0648\062F \062A\062C\0645\064A\0639 \062D\0633\0628.')
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966019021025848)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0642\0644\0644 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0627\0644\0635\0641\0648\0641 \0641\064A \0627\0633\062A\0639\0644\0627\0645 \062A\062C\0645\064A\0639 \062D\0633\0628 \0645\0646 \0639\062F\062F \0627\0644\0635\0641\0648\0641 \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0623\0633\0627\0633\064A\060C \0648\0644\064A\0633 \0645\0646 \0639\062F\062F \0627\0644\0635\0641\0648\0641 \0627\0644\0645\0639\0631\0648\0636\0629. \064A\062A\062C\0627\0648\0632 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0631\0626\064A\0633\064A \0644\062F\064A\0643 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0627\0644\0635\0641\0648\0641 %0. \0627\0644\0631\062C\0627\0621 \062A\0637\0628\064A\0642 \0645\0631\0634\062D \0644\062A\0642\0644\064A\0644 \0639\062F\062F \0627\0644\0633\062C\0644\0627\062A \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0623\0633\0627\0633\064A \0627\0644\062E\0627\0635 \0628\0643.')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946245008025841)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0632\0631 \062A\062C\0645\064A\0639 \062D\0633\0628')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002965918025860)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0631\062A\064A\0628 \0641\0631\0632 \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847806465025811)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0645\064A\0639 \062D\0633\0628 \0637\0631\064A\0642\0629 \0639\0631\0636 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883897134025822)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0623\0641\0642\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917893348025832)
,p_name=>'APEXIR_HELP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0639\0644\064A\0645\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909695966025830)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\062A\062A\064A\062D \0627\0644\062A\0642\0627\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \0644\0644\0645\0633\062A\062E\062F\0645\064A\0646 \062A\062E\0635\064A\0635 \0627\0644\062A\0642\0627\0631\064A\0631. \064A\0645\0643\0646 \0644\0644\0645\0633\062A\062E\062F\0645\064A\0646 \062A\0639\062F\064A\0644 \0627\0644\0625\0637\0627\0631 \0627\0644\0639\0627\0645 \0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\0642\0631\064A\0631 \0639\0628\0631 \062A\062D\062F\064A\062F \0627\0644\0623\0639\0645\062F\0629 \0648\062A\0637\0628\064A\0642 \0627\0644\0645\0631\0634\062D\0627\062A \0648\0627\0644\062A\0645\064A\064A\0632 \0648\0627\0644\0641\0631\0632. \064A\0645\0643\0646 \0644\0644\0645\0633\062A\062E\062F\0645\064A\0646 \0643\0630\0644\0643 \062A\062D\062F\064A\062F \0641\0648\0627\0635\0644 \0648\062A\062C\0645\064A\0639\0627\062A \0648\0631\0633\0648\0645 \0628\064A\0627\0646\064A\0629 \0648\0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628 \0648\0625\0636\0627\0641\0629 \0627\0644\0639\0645\0644\064A\0627\062A \0627\0644\062D\0633\0627\0628\064A\0629 \0627\0644\062E\0627')
||unistr('\0635\0629 \0628\0647\0645. \0643\0645\0627 \064A\0645\0643\0646 \0644\0644\0645\0633\062A\062E\062F\0645\064A\0646 \0625\0639\062F\0627\062F \0627\0634\062A\0631\0627\0643 \0644\064A\062A\0645 \0625\0631\0633\0627\0644 \0646\0633\062E\0629 HTML \0645\0646 \0627\0644\062A\0642\0631\064A\0631 \0625\0644\064A\0647\0645 \0641\064A \0641\062A\0631\0627\062A \0645\062D\062F\062F\0629. \064A\0645\0643\0646 \0644\0644\0645\0633\062A\062E\062F\0645\064A\0646 \062A\0643\0648\064A\0646 \0639\062F\0629 \0645\062A\063A\064A\0631\0627\062A \0645\0646 \062A\0642\0631\064A\0631 \0648\062D\0641\0638\0647\0627 \0643\062A\0642\0627\0631\064A\0631 \0645\0639\064A\0646\0629 \0644\0639\0631\0636\0647\0627 \0628\0634\0643\0644 \0639\0627\0645 \0623\0648 \062E\0627\0635. '),
'<p/>',
unistr('\062A\0644\062E\0635 \0627\0644\0623\0642\0633\0627\0645 \0627\0644\062A\0627\0644\064A\0629 \0627\0644\0637\0631\0642 \0627\0644\062A\064A \064A\0645\0643\0646\0643 \0628\0647\0627 \062A\062E\0635\064A\0635 \062A\0642\0631\064A\0631 \062A\0641\0627\0639\0644\064A. \0644\0645\0639\0631\0641\0629 \0627\0644\0645\0632\064A\062F\060C \0627\0637\0644\0639 \0639\0644\0649 "\0627\0633\062A\062E\062F\0627\0645 \0627\0644\062A\0642\0627\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A\0629" \0641\064A <i>\062F\0644\064A\0644 \0645\0633\062A\062E\062F\0645 Oracle APEX</i>.')))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916726641025832)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0638\0647\0631 \0642\0627\0626\0645\0629 \0627\0644\0625\062C\0631\0627\0621\0627\062A \0639\0644\0649 \064A\0645\064A\0646 \0632\0631 "\0627\0646\062A\0642\0627\0644" \0641\064A \0634\0631\064A\0637 \0627\0644\0628\062D\062B. \0627\0633\062A\062E\062F\0645 \0647\0630\0647 \0627\0644\0642\0627\0626\0645\0629 \0644\062A\062E\0635\064A\0635 \062A\0642\0631\064A\0631 \062A\0641\0627\0639\0644\064A.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910486798025830)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0627\0644\062A\062C\0645\064A\0639\0627\062A \0647\064A \0639\0645\0644\064A\0627\062A \062D\0633\0627\0628\064A\0629 \0631\064A\0627\0636\064A\0629 \062A\062A\0645 \0639\0644\0649 \0639\0645\0648\062F. \062A\0638\0647\0631 \0627\0644\062A\062C\0645\064A\0639\0627\062A \0628\0639\062F \0643\0644 \0641\0627\0635\0644 \0639\0646\0627\0635\0631 \062A\062D\0643\0645 \0648\0641\064A \0646\0647\0627\064A\0629 \0627\0644\062A\0642\0631\064A\0631 \0641\064A \0627\0644\0639\0645\0648\062F \062D\064A\062B \062A\0645 \062A\0639\0631\064A\0641\0647\0627. \062A\062A\0636\0645\0646 \0627\0644\062E\064A\0627\0631\0627\062A:'),
'<p>',
'</p><ul>',
unistr('<li><strong>\0627\0644\062A\062C\0645\064A\0639</strong> \064A\062A\064A\062D \062A\062D\062F\064A\062F \062A\062C\0645\064A\0639 \0645\0639\0631\0641 \0645\0633\0628\0642\064B\0627'),
unistr('\0644\062A\062D\0631\064A\0631\0647.</li>'),
unistr('<li><strong>\0627\0644\062F\0627\0644\0629</strong> \0647\064A \0627\0644\062F\0627\0644\0629 \0627\0644\0645\0637\0644\0648\0628 \062A\0646\0641\064A\0630\0647\0627 (\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644\060C SUM\060C MIN).</li>'),
unistr('<li><strong>\0627\0644\0639\0645\0648\062F</strong> \064A\064F\0633\062A\062E\062F\0645 \0644\062A\062D\062F\064A\062F \0627\0644\0639\0645\0648\062F \0627\0644\0630\064A \064A\062A\0645 \062A\0637\0628\064A\0642 \0627\0644\062F\0627\0644\0629 \0627\0644\0631\064A\0627\0636\064A\0629 \0639\0644\064A\0647. \064A\062A\0645 \0639\0631\0636 \0627\0644\0623\0639\0645\062F\0629'),
unistr('\0627\0644\0631\0642\0645\064A\0629 \0641\0642\0637.</li>'),
'</ul>'))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910527060025830)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\064A\0645\0643\0646\0643 \062A\0639\0631\064A\0641 \0631\0633\0645 \0628\064A\0627\0646\064A \0648\0627\062D\062F \0644\0643\0644 \062A\0642\0631\064A\0631 \0645\062D\0641\0648\0638. \0628\0645\062C\0631\062F'),
unistr('\062A\0639\0631\064A\0641\0647\060C \064A\0645\0643\0646\0643 \0627\0644\062A\0628\062F\064A\0644 \0628\064A\0646 \0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0648\0627\0644\062A\0642\0631\064A\0631 \0628\0627\0633\062A\062E\062F\0627\0645 \0623\064A\0642\0648\0646\0627\062A \0637\0631\0642 \0627\0644\0639\0631\0636 \0641\064A \0634\0631\064A\0637 \0627\0644\0628\062D\062B.'),
unistr('\062A\062A\0636\0645\0646 \0627\0644\062E\064A\0627\0631\0627\062A:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>\0646\0648\0639 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A</strong> \064A\062D\062F\062F \0646\0648\0639 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\0645\0637\0644\0648\0628 \062A\0636\0645\064A\0646\0647.'),
unistr('\0648\064A\0645\0643\0646 \0627\0644\0627\062E\062A\064A\0627\0631 \0645\0646 \0628\064A\0646 \0634\0631\064A\0637\064A \0623\0641\0642\064A \0623\0648 \0634\0631\064A\0637\064A \0631\0623\0633\064A \0623\0648 \062F\0627\0626\0631\064A \0623\0648 \062E\0637\064A.</li>'),
unistr('<li><strong>\0627\0644\062A\0633\0645\064A\0629</strong> \062A\062A\064A\062D \0644\0643 \062A\062D\062F\064A\062F \0627\0644\0639\0645\0648\062F \0627\0644\0630\064A \0633\064A\062A\0645 \0627\0633\062A\062E\062F\0627\0645\0647 \0643\062A\0633\0645\064A\0629.</li>'),
unistr('<li><strong>\0639\0646\0648\0627\0646 \0627\0644\0645\062D\0648\0631 \0644\0644\062A\0633\0645\064A\0629</strong> \0627\0644\0639\0646\0648\0627\0646 \0627\0644\0645\0639\0631\0648\0636 \0639\0644\0649 \0627\0644\0645\062D\0648\0631 \0627\0644\0645\0631\062A\0628\0637 \0628\0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\062F\062F \0644\0644\062A\0633\0645\064A\0629.'),
unistr('\0644\0627 \064A\062A\0648\0641\0631 \0647\0630\0627 \0644\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\062F\0627\0626\0631\064A.</li>'),
unistr('<li><strong>\0627\0644\0642\064A\0645\0629</strong> \062A\062A\064A\062D \0644\0643 \062A\062D\062F\064A\062F \0627\0644\0639\0645\0648\062F \0627\0644\0630\064A \0633\064A\062A\0645 \0627\0633\062A\062E\062F\0627\0645\0647 \0643\0642\064A\0645\0629.  \0625\0630\0627 \0643\0627\0646\062A \0627\0644\062F\0627\0644\0629 \0627\0644\0645\064F\0633\062A\062E\062F\0645\0629 COUNT\060C \0641\0644\0633\062A \0628\062D\0627\062C\0629 \0644\062A\062D\062F\064A\062F \0642\064A\0645\0629.</li>'),
unistr('<li><strong>\0639\0646\0648\0627\0646 \0627\0644\0645\062D\0648\0631 \0644\0644\0642\064A\0645\0629</strong> \0627\0644\0639\0646\0648\0627\0646 \0627\0644\0645\0639\0631\0648\0636 \0639\0644\0649 \0627\0644\0645\062D\0648\0631 \0627\0644\0645\0631\062A\0628\0637 \0628\0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\062F\062F \0644\0644\0642\064A\0645\0629.'),
unistr('\0644\0627 \064A\062A\0648\0641\0631 \0647\0630\0627 \0644\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0627\0644\062F\0627\0626\0631\064A.</li>'),
unistr('<li><strong>\0627\0644\062F\0627\0644\0629</strong> \062F\0627\0644\0629 \0627\062E\062A\064A\0627\0631\064A\0629 \064A\062A\0645 \062A\0637\0628\064A\0642\0647\0627 \0639\0644\0649 \0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\062F\062F \0644\0644\0642\064A\0645\0629.</li>'),
unistr('<li><strong>\0627\0644\0641\0631\0632</strong> \0641\0631\0632 \0645\062C\0645\0648\0639\0629 \0627\0644\0646\062A\0627\0626\062C \0627\0644\062E\0627\0635\0629 \0628\0643.</li></ul>')))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909835778025830)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\064A\0624\062F\064A \0627\0644\0646\0642\0631 \0639\0644\0649 \0623\064A \0639\0646\0648\0627\0646 \0639\0645\0648\062F \0625\0644\0649 \0639\0631\0636 \0642\0627\0626\0645\0629 \0639\0646\0648\0627\0646 \0639\0645\0648\062F. \0648\062A\062A\0636\0645\0646 \0627\0644\062E\064A\0627\0631\0627\062A:'),
'<p></p>',
'<ul>',
unistr('<li>\0623\064A\0642\0648\0646\0629 <strong>\0641\0631\0632 \062A\0635\0627\0639\062F\064A</strong> \0641\0631\0632 \0627\0644\062A\0642\0631\064A\0631 \062D\0633\0628 \0627\0644\0639\0645\0648\062F \0628\062A\0631\062A\064A\0628 \062A\0635\0627\0639\062F\064A.</li>'),
unistr('<li>\0623\064A\0642\0648\0646\0629 <strong>\0641\0631\0632 \062A\0646\0627\0632\0644\064A</strong> \0641\0631\0632 \0627\0644\062A\0642\0631\064A\0631 \062D\0633\0628 \0627\0644\0639\0645\0648\062F \0628\062A\0631\062A\064A\0628 \062A\0646\0627\0632\0644\064A.</li>'),
unistr('<li><strong>\0625\062E\0641\0627\0621 \0627\0644\0639\0645\0648\062F</strong> \0625\062E\0641\0627\0621 \0627\0644\0639\0645\0648\062F. \0644\0627 \064A\0645\0643\0646 \0625\062E\0641\0627\0621 \0643\0644 \0627\0644\0623\0639\0645\062F\0629. \0625\0630\0627 \0644\0645 \064A\0643\0646 \0645\0646 \0627\0644\0645\0645\0643\0646 \0625\062E\0641\0627\0621 \0627\0644\0639\0645\0648\062F\060C \0641\0644\0646 \062A\0638\0647\0631 \0623\064A\0642\0648\0646\0629 \0625\062E\0641\0627\0621 \0627\0644\0639\0645\0648\062F.</li>'),
unistr('<li><strong>\062A\0642\0633\064A\0645 \0627\0644\0639\0645\0648\062F</strong> \062A\0643\0648\064A\0646 \0645\062C\0645\0648\0639\0629 \0645\0642\0633\0645\0629 \0641\064A \0627\0644\0639\0645\0648\062F. \064A\0624\062F\064A \0647\0630\0627 \0625\0644\0649 \0633\062D\0628 \0627\0644\0639\0645\0648\062F \0645\0646 \0627\0644\062A\0642\0631\064A\0631 \0643\0633\062C\0644 \0631\0626\064A\0633\064A.</li>'),
unistr('<li><strong>\0645\0639\0644\0648\0645\0627\062A \0627\0644\0639\0645\0648\062F</strong> \0639\0631\0636 \0646\0635 \062A\0639\0644\064A\0645\0627\062A \0627\0644\0639\0645\0648\062F\060C \0625\0646 \0648\062C\062F.</li>'),
unistr('<li><strong>\0645\0646\0637\0642\0629 \0627\0644\0646\0635</strong> \0645\0633\062A\062E\062F\0645\0629 \0644\0625\062F\062E\0627\0644 \0645\0639\0627\064A\064A\0631 \0627\0644\0628\062D\062B \0627\0644\062D\0633\0627\0633\0629 \0644\062D\0627\0644\0629 \0627\0644\0623\062D\0631\0641'),
unistr('(\0644\0627 \062D\0627\062C\0629 \0644\0623\062D\0631\0641 \0627\0644\0628\062F\0644). \064A\0642\0644\0644 \0625\062F\062E\0627\0644 \0642\064A\0645\0629 \0645\0646 \0642\0627\0626\0645\0629'),
unistr('\0627\0644\0642\064A\0645 \0623\0633\0641\0644 \0627\0644\0642\0627\0626\0645\0629. \062B\0645 \064A\0645\0643\0646\0643 \062A\062D\062F\064A\062F \0642\064A\0645\0629 \0645\0646'),
unistr('\0627\0644\0623\0633\0641\0644 \0648\0633\064A\062A\0645 \062A\0643\0648\064A\0646 \0627\0644\0642\064A\0645\0629 \0627\0644\0645\062D\062F\062F\0629 \0643\0645\0631\0634\062D \0628\0627\0633\062A\062E\062F\0627\0645 ''='''),
unistr('(\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644 <code>column = ''ABC''</code>). \0628\062F\0644\0627\064B \0645\0646 \0630\0644\0643\060C \064A\0645\0643\0646\0643 \0627\0644\0646\0642\0631 \0639\0644\0649 \0623\064A\0642\0648\0646\0629 \0627\0644\0628\062D\062B \0648\0625\062F\062E\0627\0644 \0642\064A\0645\0629 \0644\064A\062A\0645 \062A\0643\0648\064A\0646\0647\0627 \0643\0645\0631\0634\062D \0628\0627\0633\062A\062E\062F\0627\0645 \062A\0639\062F\064A\0644\0627\062A ''LIKE'''),
unistr('(\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644\060C <code>column LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>\0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645 \0627\0644\0641\0631\064A\062F\0629</strong> \062A\062D\062A\0648\064A \0639\0644\0649 \0623\0648\0644 500 \0642\064A\0645\0629 \0641\0631\064A\062F\0629 \062A\0644\0628\064A \0645\0639\0627\064A\064A\0631 \0627\0644\0645\0631\0634\062D \0627\0644\062E\0627\0635\0629 \0628\0643. \0625\0630\0627 \0643\0627\0646 \0627\0644\0639\0645\0648\062F \062A\0627\0631\064A\062E\064B\0627\060C \0641\0633\062A\0638\0647\0631'),
unistr('\0642\0627\0626\0645\0629 \0646\0637\0627\0642\0627\062A \0627\0644\062A\0648\0627\0631\064A\062E \0628\062F\0644\0627\064B \0645\0646 \0630\0644\0643. \0648\0625\0630\0627 \062D\062F\062F\062A \0642\064A\0645\0629\060C \0641\0633\064A\062A\0645'),
unistr('\062A\0643\0648\064A\0646 \0645\0631\0634\062D \0628\0627\0633\062A\062E\062F\0627\0645 ''='' (\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644\060C <code>column = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910333433025830)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\064A\062A\064A\062D \0644\0643 \0625\0636\0627\0641\0629 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\062D\0633\0648\0628\0629 \0625\0644\0649 \062A\0642\0631\064A\0631\0643. \064A\0645\0643\0646 \0623\0646 \062A\0643\0648\0646 \0639\0645\0644\064A\0627\062A \062D\0633\0627\0628\064A\0629 \0631\064A\0627\0636\064A\0629 (\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644\060C <code>NBR_HOURS/24</code>) \0623\0648 \062F\0648\0627\0644 Oracle'),
unistr('\0627\0644\0642\064A\0627\0633\064A\0629 \0645\0637\0628\0642\0629 \0639\0644\0649 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\062D\0627\0644\064A\0629. \062A\0638\0647\0631 \0628\0639\0636\0647\0627 \0643\0623\0645\062B\0644\0629 \0648\0627\0644\0623\062E\0631\0649 (\0645\062B\0644 <code>TO_DATE)</code> \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645\0647\0627 \0643\0630\0644\0643). \062A\062A\0636\0645\0646 \0627\0644\062E\064A\0627\0631\0627\062A:'),
'<p></p>',
'<ul>',
unistr('<li><strong>\0627\0644\0627\062D\062A\0633\0627\0628</strong> \064A\062A\064A\062D \0644\0643 \062A\062D\062F\064A\062F \0639\0645\0644\064A\0629 \0627\062D\062A\0633\0627\0628 \0645\0639\0631\0641\0629 \0633\0627\0628\0642\064B\0627 \0644\062A\062D\0631\064A\0631\0647\0627.</li>'),
unistr('<li><strong>\0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F</strong> \0647\0648 \0639\0646\0648\0627\0646 \0627\0644\0639\0645\0648\062F \0627\0644\062C\062F\064A\062F.</li>'),
unistr('<li><strong>\0642\0646\0627\0639 \0627\0644\0635\064A\063A\0629</strong> \0647\0648 \0642\0646\0627\0639 \0635\064A\063A\0629 \0645\0646 Oracle \064A\062A\0645 \062A\0637\0628\064A\0642\0647 \0639\0644\0649 \0627\0644\0639\0645\0648\062F (\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644\060C S9999).</li>'),
unistr('<li><strong>\0627\0644\0627\062D\062A\0633\0627\0628</strong> \0647\0648 \0627\0644\0627\062D\062A\0633\0627\0628 \0627\0644\0645\0637\0644\0648\0628 \062A\0646\0641\064A\0630\0647. \0641\064A \0627\0644\0627\062D\062A\0633\0627\0628\060C \062A\062A\0645 \0627\0644\0625\0634\0627\0631\0629 \0625\0644\0649 \0627\0644\0623\0639\0645\062F\0629 \0628\0627\0633\062A\062E\062F\0627\0645 \0627\0644\0623\0633\0645\0627\0621 \0627\0644\0645\0633\062A\0639\0627\0631\0629 \0627\0644\0645\0639\0631\0648\0636\0629.</li>'),
'</ul>',
unistr('<p>\0623\0633\0641\0644 \0627\0644\0627\062D\062A\0633\0627\0628\060C \062A\0638\0647\0631 \0627\0644\0623\0639\0645\062F\0629 \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\062E\0627\0635 \0628\0643'),
unistr('\0628\0627\0644\0623\0633\0645\0627\0621 \0627\0644\0645\0633\062A\0639\0627\0631\0629 \0627\0644\062E\0627\0635\0629 \0628\0647\0627. \0648\064A\0624\062F\064A \0627\0644\0646\0642\0631 \0639\0644\0649 \0627\0633\0645 \0627\0644\0639\0645\0648\062F \0623\0648 \0627\0644\0627\0633\0645 \0627\0644\0645\0633\062A\0639\0627\0631 \0625\0644\0649 \062A\0636\0645\064A\0646\0647\0627'),
unistr('\0641\064A \0627\0644\0627\062D\062A\0633\0627\0628. \062A\0648\062C\062F \0628\062C\0627\0646\0628 \0627\0644\0623\0639\0645\062F\0629 \0644\0648\062D\0629 \0645\0641\0627\062A\064A\062D. \062A\0639\0645\0644 \0644\0648\062D\0629 \0627\0644\0645\0641\0627\062A\064A\062D \0647\0630\0647'),
unistr('\0643\0627\062E\062A\0635\0627\0631 \0644\0644\0645\0641\0627\062A\064A\062D \0634\0627\0626\0639\0629 \0627\0644\0627\0633\062A\062E\062F\0627\0645. \0641\064A \0623\0642\0635\0649 \0627\0644\064A\0645\064A\0646 \062A\0648\062C\062F \0627\0644\062F\0648\0627\0644.</p>'),
unistr('<p>\064A\0648\0636\062D \0645\062B\0627\0644 \0627\0644\0627\062D\062A\0633\0627\0628 \0627\0644\062A\0627\0644\064A \0643\064A\0641\064A\0629 \0639\0631\0636 \0625\062C\0645\0627\0644\064A \0627\0644\062A\0639\0648\064A\0636:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(\062D\064A\062BA \0647\0648 ORGANIZATION \0648B \0647\0648 SALARY \0648C \0647\0648 COMMISSION)'),
''))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916880060025832)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\064F\0633\062A\062E\062F\0645 \0644\062A\0643\0648\064A\0646 \0641\0635\0644 \0627\0644\0645\062C\0645\0648\0639\0629 \0641\064A \0639\0645\0648\062F \0648\0627\062D\062F \0623\0648 \0623\0643\062B\0631. \064A\0624\062F\064A \0647\0630\0627 \0625\0644\0649 \0633\062D\0628 \0627\0644\0623\0639\0645\062F\0629 \0645\0646 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A \0648\0639\0631\0636\0647\0627 \0643\0633\062C\0644 \0631\0626\064A\0633\064A.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911094877025830)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0639\0631\0636 \062A\0641\0627\0635\064A\0644 \0635\0641 \0648\0627\062D\062F \0641\064A \0643\0644 \0645\0631\0629\060C \0627\0646\0642\0631 \0639\0644\0649 \0623\064A\0642\0648\0646\0629 \0637\0631\064A\0642\0629 \0639\0631\0636 \0635\0641 \0648\0627\062D\062F \0641\064A \0627\0644\0635\0641 \0627\0644\0630\064A \062A\0631\064A\062F \0639\0631\0636\0647. \0633\062A\0643\0648\0646 \062F\0627\0626\0645\064B\0627 \0637\0631\064A\0642\0629 \0639\0631\0636 \0635\0641 \0648\0627\062D\062F \0627\0644\0639\0645\0648\062F \0627\0644\0623\0648\0644. \062A\0628\0639\064B\0627 \0644\062A\062E\0635\064A\0635 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A\060C \0642\062F \062A\0643\0648\0646 \0637\0631\064A\0642\0629 \0639\0631\0636 \0635\0641 \0648\0627\062D\062F \0647\064A \0637\0631\064A\0642\0629 \0627\0644\0639\0631\0636 \0627\0644\0642\064A\0627\0633\064A\0629 \0623\0648 \0635\0641\062D\0629 \0645\062E\0635\0635\0629 \062A\0633\0645\062D \0628\0627\0644\062A\062D\062F\064A\062B.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910920369025830)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\0643\064A\0646 \062A\0646\0632\064A\0644 \0645\062C\0645\0648\0639\0629 \0627\0644\0646\062A\0627\0626\062C \0627\0644\062D\0627\0644\064A\0629. \062A\062A\0636\0645\0646 \062A\0646\0633\064A\0642\0627\062A \0627\0644\062A\0646\0632\064A\0644 PDF \0648Excel \0648HTML \0648CSV. \062A\062E\062A\0644\0641 \062E\064A\0627\0631\0627\062A \0627\0644\062A\0646\0632\064A\0644 \062A\0628\0639\064B\0627 \0644\0644\062A\0646\0633\064A\0642 \0627\0644\0645\062D\062F\062F. \064A\0645\0643\0646 \0623\064A\0636\064B\0627 \0625\0631\0633\0627\0644 \0643\0644 \0627\0644\062A\0646\0633\064A\0642\0627\062A \0643\0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910008927025830)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0642\0645 \0628\062A\0631\0643\064A\0632 \0627\0644\062A\0642\0631\064A\0631 \0639\0628\0631 \0625\0636\0627\0641\0629 \0639\0628\0627\0631\0629 <code>WHERE</code> \0623\0648 \062A\0639\062F\064A\0644\0647\0627 \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645. \0648\064A\0645\0643\0646\0643 \0627\0644\062A\0631\0634\064A\062D \062D\0633\0628 \0639\0645\0648\062F \0623\0648 \0635\0641.  '),
unistr('<p>\0625\0630\0627 \0642\0645\062A \0628\0627\0644\062A\0631\0634\064A\062D \062D\0633\0628 \0639\0645\0648\062F\060C \0641\062D\062F\062F \0639\0645\0648\062F\064B\0627 (\0644\0627 \064A\0646\0628\063A\064A \0623\0646 \064A\0643\0648\0646'),
unistr('\0639\0645\0648\062F\064B\0627 \0645\0639\0631\0648\0636\064B\0627)\060C \062D\062F\062F \0645\0639\0627\0645\0644 Oracle \0642\064A\0627\0633\064A\064B\0627  (=\060C !=\060C \0644\064A\0633 \0641\064A\060C \0628\064A\0646)\060C \0648\0623\062F\062E\0644 \062A\0639\0628\064A\0631\064B\0627 \0644\0644\0645\0642\0627\0631\0646\0629 \0628\0647. \0627\0644\062A\0639\0628\064A\0631\0627\062A \062D\0633\0627\0633\0629 \0644\062D\0627\0644\0629 \0627\0644\0623\062D\0631\0641. \0627\0633\062A\062E\062F\0645 % \0643\062D\0631\0641 \0628\062F\0644 (\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644\060C <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>\0625\0630\0627 \0642\0645\062A \0628\0627\0644\062A\0631\0634\064A\062D \062D\0633\0628 \0635\0641\060C \064A\0645\0643\0646\0643 \062A\0643\0648\064A\0646 \0639\0628\0627\0631\0627\062A <code>WHERE</code> \0645\0639\0642\062F\0629 \0628\0627\0633\062A\062E\062F\0627\0645'),
unistr('\0627\0644\0623\0633\0645\0627\0621 \0627\0644\0645\0633\062A\0639\0627\0631\0629 \0644\0644\0623\0639\0645\062F\0629 \0648\0623\064A \062F\0648\0627\0644 \0623\0648 \0645\0639\0627\0645\0644\0627\062A Oracle (\0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644\060C <code>G = ''VA'' or G = ''CT''</code>\060C \062D\064A\062B \064A\0643\0648\0646'),
unistr('<code>G</code> \0627\0644\0627\0633\0645 \0627\0644\0645\0633\062A\0639\0627\0631 \0644\0640 <code>CUSTOMER_STATE</code>).</p>'),
''))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910626077025830)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\064A\062A\064A\062D \0644\0643 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0639\0646 \0628\064A\0627\0646\0627\062A \062A\0627\0631\064A\062E\064A\0629 \0639\0631\0636 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\064A \0643\0627\0646\062A \0645\0648\062C\0648\062F\0629 \0633\0627\0628\0642\064B\0627.'),
unistr('\0627\0644\0641\062A\0631\0629 \0627\0644\0627\0641\062A\0631\0627\0636\064A\0629 \0627\0644\062A\064A \064A\0645\0643\0646\0643 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0639\0646 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\0627\0631\064A\062E\064A\0629 \0628\0647\0627 \0647\0648 3 \0633\0627\0639\0627\062A (\0623\0648 180'),
unistr('\062F\0642\064A\0642\0629) \0644\0643\0646 \062A\062E\062A\0644\0641 \0627\0644\0641\062A\0631\0629 \0627\0644\0641\0639\0644\064A\0629 \0644\0643\0644 \0642\0627\0639\062F\0629 \0628\064A\0627\0646\0627\062A.')))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975246240025851)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\062A\062A\064A\062D \0644\0643 \0627\0644\0635\064A\063A\0629 \062A\062E\0635\064A\0635 \0639\0631\0636 \0627\0644\062A\0642\0631\064A\0631.'),
unistr('\062A\062A\0636\0645\0646 \0627\0644\0635\064A\063A\0629 \0627\0644\0642\0627\0626\0645\0629 \0627\0644\0641\0631\0639\064A\0629 \0627\0644\062A\0627\0644\064A\0629:</p>'),
unistr('<ul><li>\0641\0631\0632</li>'),
unistr('<li>\062A\0642\0633\064A\0645 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645</li>'),
unistr('<li>\062A\0645\064A\064A\0632</li>'),
unistr('<li>\062D\0633\0627\0628</li>'),
unistr('<li>\062A\062C\0645\064A\0639</li>'),
unistr('<li>\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A</li>'),
unistr('<li>\062A\062C\0645\064A\0639 \062D\0633\0628</li>'),
unistr('<li>\062C\062F\0648\0644 \0645\062D\0648\0631\064A</li>'),
'</ul>',
''))
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973491409025850)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\064A\0645\0643\0646\0643 \062A\0639\0631\064A\0641 \0637\0631\064A\0642\0629 \062A\062C\0645\064A\0639 \062D\0633\0628 \0648\0627\062D\062F\0629 \0644\0643\0644 \062A\0642\0631\064A\0631'),
unistr('\0645\062D\0641\0648\0638. \0628\0645\062C\0631\062F \062A\0639\0631\064A\0641\0647\0627\060C \064A\0645\0643\0646\0643 \0627\0644\062A\0628\062F\064A\0644 \0628\064A\0646 \0637\0631\064A\0642\062A\064A \0627\0644\0639\0631\0636 \062A\062C\0645\064A\0639 \062D\0633\0628 \0648\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\062A\0642\0631\064A\0631'),
unistr('\0628\0627\0633\062A\062E\062F\0627\0645 \0623\064A\0642\0648\0646\0627\062A \0637\0631\0642 \0627\0644\0639\0631\0636 \0641\064A \0634\0631\064A\0637 \0627\0644\0628\062D\062B. \0644\062A\0643\0648\064A\0646 \0637\0631\064A\0642\0629 \0639\0631\0636 \062A\062C\0645\064A\0639 \062D\0633\0628\060C'),
unistr(' \062D\062F\062F: '),
'<p></p><ul>',
unistr('<li>\0627\0644\0623\0639\0645\062F\0629 \0627\0644\062A\064A \0633\064A\062A\0645 \062A\0643\0648\064A\0646 \0645\062C\0645\0648\0639\0627\062A \062D\0633\0628\0647\0627</li>'),
unistr('<li>\0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0637\0644\0648\0628 \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628\0647\0627 \0645\0639 \0627\0644\062F\0627\0644\0629 \0627\0644\0645\0637\0644\0648\0628 \062A\0646\0641\064A\0630\0647\0627 (\0627\0644\0645\062A\0648\0633\0637\060C \0627\0644\0645\062C\0645\0648\0639\060C \0627\0644\0639\062F\062F\060C \0648\063A\064A\0631 \0630\0644\0643.)</li>'),
'</ul>'))
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910243455025830)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\064A\062A\064A\062D \0644\0643 \062A\0639\0631\064A\0641 \0645\0631\0634\062D. \064A\062A\0645 \062A\0645\064A\064A\0632 \0627\0644\0635\0641\0648\0641 \0627\0644\062A\064A \062A\0644\0628\064A \0645\0639\0627\064A\064A\0631 \0627\0644\0645\0631\0634\062D \0628\0627\0633\062A\062E\062F\0627\0645 \0627\0644\062E\0635\0627\0626\0635 \0627\0644\0645\0631\062A\0628\0637\0629 \0628\0627\0644\0645\0631\0634\062D. \062A\062A\0636\0645\0646 \0627\0644\062E\064A\0627\0631\0627\062A:</p>'),
'<ul>',
unistr('<li><strong>\0627\0644\0627\0633\0645</strong> \064A\064F\0633\062A\062E\062F\0645 \0644\0644\0639\0631\0636 \0641\0642\0637.</li>'),
unistr('<li><strong>\0627\0644\062A\0633\0644\0633\0644</strong> \064A\062D\062F\062F \062A\0633\0644\0633\0644 \062A\0642\064A\064A\0645 \0627\0644\0642\0648\0627\0639\062F.</li>'),
unistr('<li><strong>\0645\0645\0643\0646</strong> \064A\062D\062F\062F \0625\0630\0627 \0645\0627 \0643\0627\0646\062A \0627\0644\0642\0627\0639\062F\0629 \0645\0645\0643\0646\0629 \0623\0648 \0645\0639\0637\0644\0629.</li>'),
unistr('<li><strong>\0646\0648\0639 \0627\0644\062A\0645\064A\064A\0632</strong> \064A\062D\062F\062F \0625\0630\0627 \0645\0627 \0643\0627\0646 \064A\0646\0628\063A\064A'),
unistr('\062A\0645\064A\064A\0632 \0627\0644\0635\0641 \0623\0648 \0627\0644\062E\0644\064A\0629. \0641\064A \062D\0627\0644\0629 \062A\062D\062F\064A\062F \062E\0644\064A\0629\060C \064A\062A\0645 \062A\0645\064A\064A\0632 \0627\0644\0639\0645\0648\062F \0627\0644\0645\0634\0627\0631 \0625\0644\064A\0647 \0641\064A'),
unistr('\0634\0631\0637 \0627\0644\062A\0645\064A\064A\0632.</li>'),
unistr('<li><strong>\0644\0648\0646 \0627\0644\062E\0644\0641\064A\0629</strong> \0644\0648\0646 \0627\0644\062E\0644\0641\064A\0629 \0627\0644\062C\062F\064A\062F \0641\064A \0627\0644\0645\0646\0637\0642\0629 \0627\0644\0645\0645\064A\0632\0629.</li>'),
unistr('<li><strong>\0644\0648\0646 \0627\0644\0646\0635</strong> \0647\0648 \0644\0648\0646 \0627\0644\0646\0635 \0627\0644\062C\062F\064A\062F \0641\064A \0627\0644\0645\0646\0637\0642\0629 \0627\0644\0645\0645\064A\0632\0629.</li>'),
unistr('<li><strong>\0634\0631\0637 \0627\0644\062A\0645\064A\064A\0632</strong>  \064A\062D\062F\062F \0634\0631\0637 \0627\0644\062A\0645\064A\064A\0632 \0627\0644\062E\0627\0635 \0628\0643.</li>'),
'</ul>',
''))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123803664835025796)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\064A\0645\0643\0646\0643 \062A\0639\0631\064A\0641 \0637\0631\064A\0642\0629 \0639\0631\0636 \0645\062D\0648\0631\064A \0648\0627\062D\062F\0629 \0644\0643\0644 \062A\0642\0631\064A\0631 \0645\062D\0641\0648\0638. \0628\0645\062C\0631\062F \062A\0639\0631\064A\0641\0647\0627\060C \064A\0645\0643\0646\0643 \0627\0644\062A\0628\062F\064A\0644 \0628\064A\0646 \0637\0631\064A\0642\062A\064A \0627\0644\0639\0631\0636 \0627\0644\0645\062D\0648\0631\064A \0648\0639\0631\0636 \0627\0644\062A\0642\0631\064A\0631 \0628\0627\0633\062A\062E\062F\0627\0645 \0623\064A\0642\0648\0646\0627\062A \0637\0631\0642 \0627\0644\0639\0631\0636 \0641\064A \0634\0631\064A\0637 \0627\0644\0628\062D\062B. \0644\062A\0643\0648\064A\0646 \0637\0631\064A\0642\0629 \0639\0631\0636 \0645\062D\0648\0631\064A\060C \062D\062F\062F: '),
'<p></p>',
'<ul>',
unistr('<li>\0627\0644\0623\0639\0645\062F\0629 \0627\0644\062A\064A \0633\062A\0643\0648\0646 \0627\0644\0645\062D\0648\0631</li>'),
unistr('<li>\0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0637\0644\0648\0628 \0639\0631\0636\0647\0627 \0643\0635\0641\0648\0641</li>'),
unistr('<li>\0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0637\0644\0648\0628 \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628\0647\0627 \0645\0639 \0627\0644\0648\0638\064A\0641\0629 \0627\0644\0645\0637\0644\0648\0628 \0623\062F\0627\0624\0647\0627 (\0627\0644\0645\062A\0648\0633\0637\060C \0627\0644\0645\062C\0645\0648\0639\060C \0627\0644\0639\062F\062F\060C \0648\063A\064A\0631 \0630\0644\0643.)</li>'),
'</ul>'))
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921375383025833)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0625\0630\0627 \0642\0645\062A \0628\062A\062E\0635\064A\0635 \062A\0642\0631\064A\0631 \062A\0641\0627\0639\0644\064A\060C \0641\0633\062A\0638\0647\0631 \0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0642\0631\064A\0631'),
unistr('\0623\0633\0641\0644 \0634\0631\064A\0637 \0627\0644\0628\062D\062B \0648\0623\0639\0644\0649 \0627\0644\062A\0642\0631\064A\0631. \064A\0645\0643\0646 \0637\064A \0647\0630\0647 \0627\0644\0645\0646\0637\0642\0629 \0648\062A\0648\0633\064A\0639\0647\0627 \0628\0627\0633\062A\062E\062F\0627\0645 \0627\0644\0623\064A\0642\0648\0646\0629 \0639\0644\0649 \0627\0644\064A\0633\0627\0631.'),
'<p>',
unistr('\0644\0643\0644 \0625\0639\062F\0627\062F \062A\0642\0631\064A\0631\060C \064A\0645\0643\0646\0643:'),
'</p><ul>',
unistr('<li>\062A\062D\0631\064A\0631 \0625\0639\062F\0627\062F \0628\0627\0644\0646\0642\0631 \0639\0644\0649 \0627\0644\0627\0633\0645.</li>'),
unistr('<li>\062A\0639\0637\064A\0644/\062A\0645\0643\064A\0646 \0625\0639\062F\0627\062F \0645\0646 \062E\0644\0627\0644 \062A\062D\062F\064A\062F \0645\0631\0628\0639 \0627\062E\062A\064A\0627\0631 \062A\0645\0643\064A\0646/\062A\0639\0637\064A\0644 \0623\0648 \0625\0644\063A\0627\0621 \062A\062D\062F\064A\062F\0647. \0627\0633\062A\062E\062F\0645 \0639\0646\0635\0631 \0627\0644\062A\062D\0643\0645 \0647\0630\0627 \0644\062A\0634\063A\064A\0644 \0625\0639\062F\0627\062F \0623\0648 \0625\064A\0642\0627\0641 \062A\0634\063A\064A\0644\0647 \0645\0624\0642\062A\064B\0627.</li>'),
unistr('<li>\0625\0632\0627\0644\0629 \0625\0639\062F\0627\062F \0628\0627\0644\0646\0642\0631 \0639\0644\0649 \0623\064A\0642\0648\0646\0629 \0625\0632\0627\0644\0629.</li>'),
'</ul>',
unistr('<p>\0625\0630\0627 \0642\0645\062A \0628\062A\0643\0648\064A\0646 \0631\0633\0645 \0628\064A\0627\0646\064A \0623\0648 \062A\062C\0645\064A\0639 \062D\0633\0628 \0623\0648 \062C\062F\0648\0644 \0645\062D\0648\0631\064A\060C \064A\0645\0643\0646\0643 \0627\0644\062A\0628\062F\064A\0644 \0628\064A\0646\0647\0627'),
unistr('\0648\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0623\0633\0627\0633\064A \0628\0627\0633\062A\062E\062F\0627\0645 \0631\0648\0627\0628\0637 \0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\062A\0642\0631\064A\0631 \0648\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0648\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628 \0648\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\062C\062F\0648\0644 \0627\0644\0645\062D\0648\0631\064A'),
unistr('\0627\0644\0645\0639\0631\0648\0636\0629 \0639\0644\0649 \0627\0644\064A\0645\064A\0646. \0625\0630\0627 \0643\0646\062A \062A\0639\0631\0636 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0623\0648 \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628 \0623\0648 \0627\0644\062C\062F\0648\0644 \0627\0644\0645\062D\0648\0631\064A\060C \064A\0645\0643\0646\0643'),
unistr('\0623\064A\0636\064B\0627 \0627\0633\062A\062E\062F\0627\0645 \0631\0627\0628\0637 "\062A\062D\0631\064A\0631" \0644\062A\062D\0631\064A\0631 \0627\0644\0625\0639\062F\0627\062F\0627\062A.</p>'),
''))
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910821586025830)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0627\0644\062A\0642\0631\064A\0631 \0625\0644\0649 \0627\0644\0625\0639\062F\0627\062F\0627\062A \0627\0644\0627\0641\062A\0631\0627\0636\064A\0629\060C \0648\0625\0632\0627\0644\0629 \0623\064A \0645\0646 \0627\0644\062A\062E\0635\064A\0635\0627\062A \0627\0644\062A\064A \0642\0645\062A \0628\0647\0627.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975532186025851)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\064A\064A\0646 \0639\062F\062F \0627\0644\0633\062C\0644\0627\062A \0627\0644\062A\064A \064A\062A\0645 \0639\0631\0636\0647\0627 \0641\064A \0627\0644\0635\0641\062D\0629.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910790132025830)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\062D\0641\0638 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0645\062E\0635\0635 \0644\0644\0627\0633\062A\062E\062F\0627\0645 \0627\0644\0645\0633\062A\0642\0628\0644\064A. \0623\062F\062E\0644 \0627\0644\0627\0633\0645 \0648\0627\0644\0648\0635\0641 \0627\0644\0627\062E\062A\064A\0627\0631\064A \0648\064A\0645\0643\0646\0643 \0625\062A\0627\062D\0629 \0627\0644\0648\0635\0648\0644 \0627\0644\0639\0627\0645 \0644\0644\062A\0642\0631\064A\0631 (\0623\064A\060C \0643\0644 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646 \0627\0644\0630\064A\0646 \064A\0645\0643\0646\0647\0645 \0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0623\0633\0627\0633\064A \0627\0644\0627\0641\062A\0631\0627\0636\064A). \064A\0645\0643\0646\0643 \062D\0641\0638 \0623\0631\0628\0639\0629 \0623\0646\0648\0627\0639 \0645\0646 \0627\0644\062A\0642\0627\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A\0629:</p>'),
'<ul>',
unistr('<li><strong>\0627\0644\0627\0641\062A\0631\0627\0636\064A \0627\0644\0623\0633\0627\0633\064A</strong> (\0627\0644\0645\0637\0648\0631 \0641\0642\0637). \0627\0644\0627\0641\062A\0631\0627\0636\064A \0627\0644\0623\0633\0627\0633\064A \0647\0648 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0630\064A \064A\0638\0647\0631 \0641\064A \0627\0644\0628\062F\0627\064A\0629. \0644\0627 \064A\0645\0643\0646 \0625\0639\0627\062F\0629 \062A\0633\0645\064A\0629 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0627\0641\062A\0631\0627\0636\064A \0627\0644\0623\0633\0627\0633\064A \0623\0648 \062D\0630\0641\0647.</li>'),
unistr('<li><strong>\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0628\062F\064A\0644</strong> (\0627\0644\0645\0637\0648\0631 \0641\0642\0637). \064A\062A\064A\062D \0644\0644\0645\0637\0648\0631\064A\0646 \062A\0643\0648\064A\0646 \0639\062F\0629 \062A\062E\0637\064A\0637\0627\062A \062A\0642\0627\0631\064A\0631. \064A\0645\0643\0646 \0644\0644\0645\0637\0648\0631\064A\0646 \0641\0642\0637 \062D\0641\0638 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0628\062F\064A\0644 \0623\0648 \0625\0639\0627\062F\0629 \062A\0633\0645\064A\062A\0647 \0623\0648 \062D\0630\0641\0647.</li>'),
unistr('<li><strong>\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0639\0627\0645</strong> (\0627\0644\0645\0633\062A\062E\062F\0645). \064A\0645\0643\0646 \0644\0644\0645\0633\062A\062E\062F\0645 \0627\0644\0630\064A \0642\0627\0645 \0628\0625\0646\0634\0627\0626\0647 \062D\0641\0638\0647 \0623\0648 \0625\0639\0627\062F\0629 \062A\0633\0645\064A\062A\0647 \0623\0648 \062D\0630\0641\0647. \064A\0645\0643\0646 \0644\0645\0633\062A\062E\062F\0645\064A\0646 \0622\062E\0631\064A\0646 \0639\0631\0636 \0627\0644\062A\062E\0637\064A\0637 \0648\062D\0641\0638\0647 \0643\062A\0642\0631\064A\0631 \0622\062E\0631.</li>'),
unistr('<li><strong>\0627\0644\062A\0642\0631\064A\0631 \0627\0644\062E\0627\0635</strong> (\0627\0644\0645\0633\062A\062E\062F\0645). \064A\0645\0643\0646 \0644\0644\0645\0633\062A\062E\062F\0645 \0627\0644\0630\064A \0623\0646\0634\0623 \0627\0644\062A\0642\0631\064A\0631 \0641\0642\0637 \0639\0631\0636 \0627\0644\062A\0642\0631\064A\0631 \0623\0648 \062D\0641\0638\0647 \0623\0648 \0625\0639\0627\062F\0629 \062A\0633\0645\064A\062A\0647 \0623\0648 \062D\0630\0641\0647.</li>'),
'</ul>',
unistr('<p>\0625\0630 \062D\0641\0638\062A \0627\0644\062A\0642\0627\0631\064A\0631 \0627\0644\0645\062E\0635\0635\0629\060C \064A\0638\0647\0631 \0645\062D\062F\062F \0627\0644\062A\0642\0627\0631\064A\0631 \0641\064A \0634\0631\064A\0637 \0627\0644\0628\062D\062B \0639\0644\0649 \064A\0633\0627\0631 \0645\062D\062F\062F \0627\0644\0635\0641\0648\0641 (\0641\064A \062D\0627\0644\0629 \062A\0645\0643\064A\0646 \0647\0630\0647 \0627\0644\0645\064A\0632\0629).</p>'),
''))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909792600025830)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\062C\062F \0641\064A \0623\0639\0644\0649 \0643\0644 \0635\0641\062D\0629 \062A\0642\0631\064A\0631 \0645\0646\0637\0642\0629 \0628\062D\062B. \062A\0642\062F\0645 \0647\0630\0647 \0627\0644\0645\0646\0637\0642\0629 (\0623\0648 \0634\0631\064A\0637 \0627\0644\0628\062D\062B) \0627\0644\0645\064A\0632\0627\062A \0627\0644\062A\0627\0644\064A\0629:')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976180724025851)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'ar'
,p_message_text=>unistr('<li><strong>\0642\0627\0626\0645\0629 \0627\0644\0625\062C\0631\0627\0621\0627\062A</strong> \062A\062A\064A\062D \0644\0643 \062A\062E\0635\064A\0635 \062A\0642\0631\064A\0631. \0627\0637\0644\0639 \0639\0644\0649 \0627\0644\0623\0642\0633\0627\0645 \0627\0644\062A\0627\0644\064A\0629.</li>')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975645890025851)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'ar'
,p_message_text=>unistr('<li><strong>\0623\064A\0642\0648\0646\0629 \062A\062D\062F\064A\062F \0623\0639\0645\062F\0629</strong> \062A\062A\064A\062D \0644\0643 \062A\0639\0631\064A\0641 \0627\0644\0639\0645\0648\062F \0627\0644\0630\064A \062A\0628\062D\062B \0639\0646\0647 (\0623\0648 \0627\0644\0643\0644).</li>')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975902487025851)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'ar'
,p_message_text=>unistr('<li><strong>\0627\0644\062A\0642\0627\0631\064A\0631</strong> \062A\0639\0631\0636 \0627\0644\062A\0642\0627\0631\064A\0631 \0627\0644\0627\0641\062A\0631\0627\0636\064A\0629 \0627\0644\0628\062F\064A\0644\0629 \0648\0627\0644\0645\062D\0641\0648\0638\0629 \0627\0644\0639\0627\0645\0629 \0623\0648 \0627\0644\062E\0627\0635\0629.</li>')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975820530025851)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('<li><strong>\0627\0644\0635\0641\0648\0641</strong> \064A\062A\0645 \0645\0646 \062E\0644\0627\0644\0647\0627 \062A\0639\064A\064A\0646 \0639\062F\062F \0627\0644\0633\062C\0644\0627\062A \0627\0644\062A\064A \064A\062A\0645 \0639\0631\0636\0647\0627 \0644\0643\0644 \0635\0641\062D\0629.</li>')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975723845025851)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>\0645\0646\0637\0642\0629 \0627\0644\0646\0635</strong> \062A\062A\064A\062D \0644\0643 \0625\062F\062E\0627\0644 \0645\0639\0627\064A\064A\0631 \0628\062D\062B \062D\0633\0627\0633\0629 \0644\062D\0627\0644\0629 \0627\0644\0623\062D\0631\0641 (\064A\062A\0645 \062A\0636\0645\064A\0646 \0623\062D\0631\0641 \0627\0644\0628\062F\0644).</li>'),
unistr('<li><strong>\0632\0631 \0627\0644\0627\0646\062A\0642\0627\0644</strong> \064A\0646\0641\0630 \0627\0644\0628\062D\062B. \0648\0633\064A\0624\062F\064A \0627\0644\0636\063A\0637 \0639\0644\0649 \0645\0641\062A\0627\062D \0627\0644\0625\062F\062E\0627\0644 Enter \0625\0644\0649 \062A\0646\0641\064A\0630 \0627\0644\0628\062D\062B \0643\0630\0644\0643 \0639\0646\062F\0645\0627 \064A\0643\0648\0646 \0627\0644\0645\0624\0634\0631 \0641\064A \0645\0646\0637\0642\0629 \0646\0635 \0627\0644\0628\062D\062B.</li>')))
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976081263025851)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('<li><strong>\0623\064A\0642\0648\0646\0627\062A \0637\0631\0642 \0627\0644\0639\0631\0636</strong> \0627\0644\062A\0628\062F\064A\0644 \0628\064A\0646 \0637\0631\0642 \0639\0631\0636 \0627\0644\0623\064A\0642\0648\0646\0627\062A \0648\0627\0644\062A\0642\0631\064A\0631 \0648\0627\0644\062A\0641\0627\0635\064A\0644 \0648\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0648\062A\062C\0645\064A\0639 \062D\0633\0628 \0648\062C\062F\0648\0644 \0645\062D\0648\0631\064A \0644\0644\062A\0642\0631\064A\0631 \0625\0630\0627 \0643\0627\0646\062A \0645\0639\0631\0641\0629 .</li>')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909969334025830)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\064F\0633\062A\062E\062F\0645 \0644\062A\0639\062F\064A\0644 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629. \062A\0638\0647\0631 \0627\0644\0623\0639\0645\062F\0629 \0639\0644\0649 \0627\0644\064A\0645\064A\0646\060C \0648\064A\062A\0645 \0625\062E\0641\0627\0621 \0627\0644\0623\0639\0645\062F\0629 \0639\0644\0649 \0627\0644\064A\0633\0627\0631. \064A\0645\0643\0646\0643 \0625\0639\0627\062F\0629 \062A\0631\062A\064A\0628 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0639\0631\0648\0636\0629 \0628\0627\0633\062A\062E\062F\0627\0645 \0627\0644\0623\0633\0647\0645 \0641\064A \0623\0642\0635\0649 \0627\0644\064A\0645\064A\0646. \062A\062A\0636\0645\0646 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\062D\0633\0648\0628\0629 \0627\0644\0628\0627\062F\0626\0629 <strong>**</strong>.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123910142136025830)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\064A\064F\0633\062A\062E\062F\0645 \0644\062A\063A\064A\064A\0631 \0627\0644\0623\0639\0645\062F\0629 \0644\0644\0641\0631\0632 \062D\0633\0628\0647\0627 \0648\062A\062D\062F\064A\062F \0625\0630\0627 \0645\0627 \0643\0627\0646'),
unistr('\0633\064A\062A\0645 \0627\0644\0641\0631\0632 \0628\062A\0631\062A\064A\0628 \062A\0635\0627\0639\062F\064A \0623\0645 \062A\0646\0627\0632\0644\064A. \0643\0645\0627 \064A\0645\0643\0646\0643 \062A\062D\062F\064A\062F \0643\064A\0641\064A\0629 \0627\0644\062A\0639\0627\0645\0644 \0645\0639'),
unistr('<code>\0627\0644\0642\064A\0645 \0627\0644\062E\0627\0644\064A\0629</code>. \0627\0644\0625\0639\062F\0627\062F \0627\0644\0627\0641\062A\0631\0627\0636\064A \064A\0639\0631\0636 <code>\0627\0644\0642\064A\0645 \0627\0644\062E\0627\0644\064A\0629</code> \062F\0627\0626\0645\064B\0627 \0641\064A \0627\0644\0646\0647\0627\064A\0629 \0623\0648 \0639\0631\0636\0647\0627 \062F\0627\0626\0645\064B\0627 \0641\064A \0627\0644\0628\062F\0627\064A\0629. \064A\0638\0647\0631 \0627\0644\0641\0631\0632 \0627\0644\0646\0627\062A\062C \0639\0644\0649 \064A\0645\064A\0646'),
unistr('\0639\0646\0627\0648\064A\0646 \0627\0644\0623\0639\0645\062F\0629 \0641\064A \0627\0644\062A\0642\0631\064A\0631.</p>')))
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973227198025850)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\062F \0625\0636\0627\0641\0629 \0627\0634\062A\0631\0627\0643\060C \062A\0642\0648\0645 \0628\0625\062F\062E\0627\0644 \0639\0646\0648\0627\0646 \0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A (\0623\0648 \0639\062F\0629 \0639\0646\0627\0648\064A\0646 \0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A\060C \0645\0641\0635\0648\0644\0629 \0628\0641\0627\0635\0644\0629)\060C \0648\0645\0648\0636\0648\0639 \0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A \0648\0645\0639\062F\0644 \0627\0644\062A\0643\0631\0627\0631 \0648\062A\0648\0627\0631\064A\062E \0627\0644\0628\062F\0627\064A\0629 \0648\0627\0644\0646\0647\0627\064A\0629. \062A\062A\0636\0645\0646 \0631\0633\0627\0626\0644 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A \0627\0644\0646\0627\062A\062C\0629 \0646\0633\062E\0629 \062A\0645 \062A\0635\062F\064A\0631\0647\0627 (PDF \0623\0648 Excel \0623\0648 HTML \0623\0648 CSV) \0645\0646 \0627\0644\062A\0642\0631\064A')
||unistr('\0631 \0627\0644\062A\0641\0627\0639\0644\064A \062A\062D\062A\0648\064A \0639\0644\0649 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062D\0627\0644\064A\0629 \0628\0627\0633\062A\062E\062F\0627\0645 \0625\0639\062F\0627\062F \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0630\064A \0643\0627\0646 \0645\0648\062C\0648\062F\064B\0627 \0639\0646\062F \0625\0636\0627\0641\0629 \0627\0644\0627\0634\062A\0631\0627\0643.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914841028025831)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062E\0641\0627\0621 \0627\0644\0639\0645\0648\062F')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905253624025828)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\064A\064A\0632')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916361703025832)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0645\064A\064A\0632\0627\062A')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886551545025822)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\064A\064A\0632 \0627\0644\062E\0644\064A\0629\060C %0 \0641\064A %1')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921404398025833)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0631\0637 \0627\0644\062A\0645\064A\064A\0632')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886470282025822)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\064A\064A\0632 \0627\0644\0635\0641\060C %0 \0641\064A %1')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973864417025850)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0644\0648\0628 \0627\0644\062A\0645\064A\064A\0632')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878092946025820)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\062A\0645\064A\064A\0632')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992698615025857)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0641\0642\064A')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021694374025866)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F \0648\0627\062D\062F \063A\064A\0631 \0646\0634\0637')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021786572025866)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0625\0639\062F\0627\062F\0627\062A \063A\064A\0631 \0627\0644\0646\0634\0637\0629')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911400977025830)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\062A\0642\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922450909025834)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0635\0627\0644\062D')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915832235025832)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0628\064A\0631 \0627\062D\062A\0633\0627\0628 \063A\064A\0631 \0635\0627\0644\062D. %0')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871479798025818)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \062A\0627\0631\064A\062E \0627\0644\0646\0647\0627\064A\0629 \0623\0643\0628\0631 \0645\0646 \062A\0627\0631\064A\062E \0627\0644\0628\062F\0627\064A\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930616139025836)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0628\064A\0631 \0645\0631\0634\062D \063A\064A\0631 \0635\0627\0644\062D. %0')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000408225025860)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\0639\0644\0627\0645 \0645\0631\0634\062D \063A\064A\0631 \0635\0627\0644\062D')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021810666025866)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F \0648\0627\062D\062F \063A\064A\0631 \0635\0627\0644\062D')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021984187025866)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0625\0639\062F\0627\062F\0627\062A \063A\064A\0631 \0627\0644\0635\0627\0644\062D\0629')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974030906025851)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('(\0628\0627\0644\062F\0642\0627\0626\0642)')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991061014025856)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0641\064A \0622\062E\0631 %1')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991256659025856)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0641\064A %1 \0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991195540025856)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0641\064A \0622\062E\0631 %1')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991390982025856)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\064A\0633 \0641\064A %1 \0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920547385025833)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0648\062D\0629 \0627\0644\0645\0641\0627\062A\064A\062D')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884240126025822)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0633\0645\064A\0629 %0')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914414372025831)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0627\0644\0645\062D\0648\0631 \0644\0644\062A\0633\0645\064A\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906722235025829)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\064A\0648\0645 \0627\0644\0645\0627\0636\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906982518025829)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 \0633\0627\0639\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906493928025829)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631 \0627\0644\0645\0627\0636\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906580460025829)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0633\0628\0648\0639 \0627\0644\0645\0627\0636\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906636068025829)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 %0 \0645\0646 \0627\0644\0623\064A\0627\0645')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906826425025829)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 %0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906261201025829)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 %0 \0645\0646 \0627\0644\0633\0646\0648\0627\062A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123906392326025829)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0646\0629 \0627\0644\0645\0627\0636\064A\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884155172025822)
,p_name=>'APEXIR_LINE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880955479025821)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\064A \0645\0639 \0645\0633\0627\062D\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000303502025859)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062E\0637\064A\0637')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915308271025832)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646 \0627\0644\0645\0642\062F\0631 \0623\0646 \064A\062A\062C\0627\0648\0632 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0627\0644\0645\0633\0645\0648\062D \0628\0647 \0645\0646 \0627\0644\0645\0648\0627\0631\062F. \0627\0644\0631\062C\0627\0621 \062A\0639\062F\064A\0644 \0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0642\0631\064A\0631 \0648\0625\0639\0627\062F\0629 \0627\0644\0645\062D\0627\0648\0644\0629.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896749702025826)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0635\0641\0648\0641 \0647\0630\0627 \0627\0644\062A\0642\0631\064A\0631 \0647\0648 %0 \0645\0646 \0627\0644\0635\0641\0648\0641. \0627\0644\0631\062C\0627\0621 \062A\0637\0628\064A\0642 \0645\0631\0634\062D \0644\062A\0642\0644\064A\0644 \0639\062F\062F \0627\0644\0633\062C\0644\0627\062A \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\062E\0627\0635 \0628\0643.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000901065025860)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F \0623\0642\0635\0649 %0')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001173972025860)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0633\064A\0637 %0')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843483380025809)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0627\0644\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901075772025827)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001077464025860)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F \0623\062F\0646\0649 %0')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000011299025859)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974400161025851)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0647\0631\064A')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913652049025831)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913534693025831)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644 \0627\0644\0643\0644')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026700462025868)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0627\0644\0645\0639\0631\0641 \0627\0644\062B\0627\0628\062A \0644\0644\0645\0646\0637\0642\0629 \0644\0623\0646 \0627\0644\0635\0641\062D\0629 \062A\062D\062A\0648\064A \0639\0644\0649 \0639\062F\0629 \062A\0642\0627\0631\064A\0631 \062A\0641\0627\0639\0644\064A\0629.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879621118025820)
,p_name=>'APEXIR_NAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0633\0645')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909327677025830)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\062C\0645\064A\0639 \0627\0644\062C\062F\064A\062F')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022594402025866)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0626\0629 \062C\062F\064A\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909462184025830)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\062D\062A\0633\0627\0628 \0627\0644\062C\062F\064A\062F')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904106566025828)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907257522025829)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\064A\0648\0645 \0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907085334025829)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0639\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907579161025829)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631 \0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907405222025829)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0633\0628\0648\0639 \0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907324914025829)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\064A\0627\0645 \0627\0644\062A\0627\0644\064A\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907185862025829)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0622\062E\0631 %0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907714030025829)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0633\0646\0648\0627\062A \0627\0644\062A\0627\0644\064A\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907646754025829)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0646\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879954697025821)
,p_name=>'APEXIR_NO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922696215025834)
,p_name=>'APEXIR_NONE'
,p_message_language=>'ar'
,p_message_text=>unistr('- \0628\0644\0627 -')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973678131025850)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 \0639\0646\0648\0627\0646 \0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A \0635\0627\0644\062D\064B\0627.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845727190025810)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\062D\062F\064A\062F \0623\0639\0645\062F\0629 \0644\0639\0631\0636\0647\0627. \0627\0633\062A\062E\062F\0645 <strong>\0627\0644\0623\0639\0645\062F\0629</strong> \0641\064A \0642\0627\0626\0645\0629 \0627\0644\0625\062C\0631\0627\0621\0627\062A \0644\062C\0639\0644 \0627\0644\0623\0639\0645\062F\0629 \0645\0631\0626\064A\0629.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919110067025833)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645 \0627\0644\062E\0627\0644\064A\0629 \062F\0627\0626\0645\064B\0627 \0641\064A \0627\0644\0628\062F\0627\064A\0629')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919096398025833)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645 \0627\0644\062E\0627\0644\064A\0629 \062F\0627\0626\0645\064B\0627 \0641\064A \0627\0644\0646\0647\0627\064A\0629')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919502364025833)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \0627\0644\0642\064A\0645 \0627\0644\0641\0627\0631\063A\0629 %0')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915930321025832)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0648\0642\062A \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\0627\0631\064A\062E\064A\0629 \0631\0642\0645\064A\064B\0627.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915546471025832)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0627\0644\062A\0633\0644\0633\0644 \0631\0642\0645\064A\064B\0627.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920018732025833)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0627\0645\0644')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878508680025820)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\0631\062A\0642\0627\0644\064A')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992538357025857)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\062A\062C\0627\0647')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880413667025821)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0630\0644\0643')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846617022025810)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0642\0633\064A\0645 \0635\0641\062D\0627\062A %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860611395025815)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062A\062C\0627\0647 \0627\0644\0635\0641\062D\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861307931025815)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0641\0642\064A')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861437415025815)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0623\0633\064A')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860572390025815)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062C\0645 \0627\0644\0635\0641\062D\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861191034025815)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'ar'
,p_message_text=>'A3'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861000321025815)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'ar'
,p_message_text=>'A4'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861260311025815)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062E\0635\0635')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860833642025815)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'ar'
,p_message_text=>'Legal'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860746335025815)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'ar'
,p_message_text=>'Letter'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860920306025815)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'ar'
,p_message_text=>'Tabloid'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001421992025860)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\0628\0629 \0627\0644\0639\062F\062F \0627\0644\0625\062C\0645\0627\0644\064A %0 (%)')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000648198025860)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\0628\0629 \0627\0644\0645\062C\0645\0648\0639 \0627\0644\0625\062C\0645\0627\0644\064A %0 (%)')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999649782025859)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\0628\0629 \0627\0644\0639\062F\062F \0627\0644\0625\062C\0645\0627\0644\064A')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999500642025859)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0633\0628\0629 \0627\0644\0645\062C\0645\0648\0639 \0627\0644\0625\062C\0645\0627\0644\064A')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884064515025822)
,p_name=>'APEXIR_PIE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0631\0635\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949737761025843)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062C\062F\0648\0644 \0627\0644\0645\062D\0648\0631\064A')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951218364025843)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0627\0644\062A\062C\0645\064A\0639.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951455495025843)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646\0643 \0627\0644\062A\062C\0645\064A\0639 \0641\064A \0639\0645\0648\062F \0645\062D\062F\062F \0643\0639\0645\0648\062F \0635\0641.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950610083025843)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\062D\0648\0631\064A\0629')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950446235025843)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0645\062D\0648\0631\064A %0')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951037560025843)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\0648\0631\064A.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123803572064025796)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0642\0644\0644 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0627\0644\0635\0641\0648\0641 \0641\064A \0627\0633\062A\0639\0644\0627\0645 \0645\062D\0648\0631\064A \0645\0646 \0639\062F\062F \0627\0644\0635\0641\0648\0641 \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0623\0633\0627\0633\064A\060C \0648\0644\064A\0633 \0645\0646 \0639\062F\062F \0627\0644\0635\0641\0648\0641 \0627\0644\0645\0639\0631\0648\0636\0629. \064A\062A\062C\0627\0648\0632 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0631\0626\064A\0633\064A \0644\062F\064A\0643 \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0644\0639\062F\062F \0627\0644\0635\0641\0648\0641 %0. \0627\0644\0631\062C\0627\0621 \062A\0637\0628\064A\0642 \0645\0631\0634\062D \0644\062A\0642\0644\064A\0644 \0639\062F\062F \0627\0644\0633\062C\0644\0627\062A \0641\064A \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0623\0633\0627\0633\064A \0627\0644\062E\0627\0635 \0628\0643.')
,p_version_scn=>2692370
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950931469025843)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \0645\062D\0648\0631\064A')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916966968025832)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A \0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\0648\0631\064A \0639\0644\0649 \0627\0644\0643\062B\064A\0631 \0645\0646 \0627\0644\0642\064A\0645 \0627\0644\0641\0631\064A\062F\0629 - \0644\0627 \064A\0645\0643\0646 \062A\0643\0648\064A\0646 SQL \0645\062D\0648\0631\064A.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847945386025811)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 %0 \0627\0644\0645\062D\0648\0631\064A\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973799731025850)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0627\064A\0646\0629')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904298925025828)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0628\0642')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123998545237025859)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0633\0627\0633\064A')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974782587025851)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0623\0633\0627\0633\064A')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860411805025815)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0636\0645\064A\0646 \0639\0644\0627\0645\0627\062A \0625\0645\0643\0627\0646\064A\0629 \0627\0644\0648\0635\0648\0644')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821225708025802)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0635 \0627\0644\0645\0646\0633\0642 \0644\0644\0634\0631\064A\062D\0629')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929605182025836)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0627\0635')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884692006025822)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0627\0645')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880278938025821)
,p_name=>'APEXIR_RED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\062D\0645\0631')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026625969025868)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0639\0631\0641 \0627\0644\062B\0627\0628\062A \0644\0644\0645\0646\0637\0642\0629 %0 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913765069025831)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913857889025831)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\0643\0644')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022044849025866)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913369574025831)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0641\0648\0627\0635\0644 \0639\0646\0627\0635\0631 \0627\0644\062A\062D\0643\0645')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913016127025831)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0645\0631\0634\062D')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913148368025831)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062A\0627\0631\064A\062E\064A\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022116275025866)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913403786025831)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\062A\0645\064A\064A\0632')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022224872025866)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \0627\0644\062C\062F\0648\0644 \0627\0644\0645\062D\0648\0631\064A')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003305282025860)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0632\0627\0644\0629 \062A\0642\0631\064A\0631')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985107909025854)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0633\0645\064A\0629 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0627\0641\062A\0631\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922962594025834)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0633\0645\064A\0629 \0627\0644\062A\0642\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904501103025828)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001512796025860)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0627\0631\064A\0631')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876785822025820)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A \0627\0644\0645\062D\0641\0648\0638 \0628\0627\0644\0627\0633\0645 \0627\0644\0645\0633\062A\0639\0627\0631 %0 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929974451025836)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876817153025820)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0641 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A \0627\0644\0645\062D\0641\0648\0638 %0 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921252211025833)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0642\0627\0631\064A\0631')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845416030025810)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F\0627\062A \062A\0642\0631\064A\0631 %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901555432025827)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\064A\0642\0629 \0639\0631\0636 \0627\0644\062A\0642\0631\064A\0631')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905775201025829)
,p_name=>'APEXIR_RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884836757025822)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\0639\0627\062F\0629 \0627\0644\062A\0642\0631\064A\0631 \0625\0644\0649 \0627\0644\0625\0639\062F\0627\062F\0627\062A \0627\0644\0627\0641\062A\0631\0627\0636\064A\0629.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880088451025821)
,p_name=>'APEXIR_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997661439025859)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645 ROWID \0643\0639\0645\0648\062F \0645\0641\062A\0627\062D \0623\0633\0627\0633\064A \0644\0645\0635\062F\0631 \0628\064A\0627\0646\0627\062A REST.')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912415203025831)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641\0648\0641')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975428470025851)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\0641\0648\0641 \0644\0643\0644 \0635\0641\062D\0629')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950774195025843)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0639\0645\062F\0629 \0627\0644\0635\0641\0648\0641')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950514689025843)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0627\0644\0635\0641 %0')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951119349025843)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0639\0645\0648\062F \0627\0644\0635\0641.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951326590025843)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0639\0645\0648\062F \0627\0644\0635\0641 \0645\062E\062A\0644\0641\064B\0627 \0639\0646 \0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\0648\0631\064A.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926902573025835)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0634\062D \0627\0644\0635\0641')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901639444025827)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641 %0 \0645\0646 %1')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905976168025829)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0635 \0627\0644\0635\0641 \064A\062D\062A\0648\064A \0639\0644\0649')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879333159025820)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916539009025832)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0645\062D\0641\0648\0638')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916416589025832)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631 \0627\0644\0645\062D\0641\0648\0638 = "%0"')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918696288025833)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\064A\062A\0645 \0627\0633\062A\062E\062F\0627\0645 \0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0642\0631\064A\0631 \0627\0644\062D\0627\0644\064A \0643\0625\0639\062F\0627\062F\0627\062A \0627\0641\062A\0631\0627\0636\064A\0629 \0644\0643\0644 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123985081540025854)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0627\0641\062A\0631\0627\0636\064A')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905654660025828)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638 \062A\0642\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022437643025866)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638 \0627\0644\062A\0642\0631\064A\0631*')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976467270025851)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911335733025830)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0631\064A\0637 \0627\0644\0628\062D\062B')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123844706397025810)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0631\064A\0637 \0628\062D\062B %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124022390332025866)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B: %0')
,p_is_js_message=>true
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981902775025853)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0642\0631\064A\0631 \0627\0644\0628\062D\062B')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123965980122025848)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\062D\062F\062F\0629')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881053915025821)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('- \062A\062D\062F\064A\062F \0639\0645\0648\062F -')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904981327025828)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0623\0639\0645\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884570460025822)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('- \062A\062D\062F\064A\062F \0648\0638\064A\0641\0629 -')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912128447025831)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('- \062A\062D\062F\064A\062F \0639\0645\0648\062F \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628 -')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950280944025843)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('- \062A\062D\062F\064A\062F \0639\0645\0648\062F \0645\062D\0648\0631\064A -')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000542688025860)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0635\0641')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950317070025843)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('- \062A\062D\062F\064A\062F \0639\0645\0648\062F \0635\0641 -')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123831843369025806)
,p_name=>'APEXIR_SEND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854309773025813)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0631\0633\0627\0644 \0643\0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879712703025821)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0633\0644\0633\0644')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123905170297025828)
,p_name=>'APEXIR_SORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914668772025831)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \062A\0635\0627\0639\062F\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914767577025831)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \062A\0646\0627\0632\0644\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002741230025860)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0631\062A\064A\0628 \0627\0644\0641\0631\0632')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909022509025830)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\0627\0641\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123920249126025833)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0627\0644\0629 %0')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974173384025851)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0634\062A\0631\0627\0643')
,p_is_js_message=>true
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999938575025859)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0647\0627\064A\0629')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123818937755025801)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\062E\0637\064A \0641\064A \062D\0627\0644\0629 \0639\062F\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0644\0628\064A\0627\0646\0627\062A')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123999850308025859)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062F\0627\064A\0629 \0645\0646')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000726757025860)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062C\0645\0648\0639 %0')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991657859025856)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'ar'
,p_message_text=>unistr('%0\060C \0627\0644\062A\0642\0631\064A\0631 = %1\060C \0637\0631\064A\0642\0629 \0627\0644\0639\0631\0636 = %2')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878600146025820)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0648\0646 \0627\0644\0646\0635')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897364582025826)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\064A\0627\0645')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897299920025826)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0627\0639\0627\062A')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897154415025826)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0642\0627\0626\0642')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897546367025826)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0647\0648\0631')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897415860025826)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0627\0628\064A\0639')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123897685801025826)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0646\0648\0627\062A')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003107532025860)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631/\0625\062E\0641\0627\0621')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123913939699025831)
,p_name=>'APEXIR_TOP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0639\0644\0649')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996671311025858)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \063A\064A\0631 \0645\062C\0645\0639')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915425038025832)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0627\0633\0645 \0627\0644\062A\0645\064A\064A\0632 \0641\0631\064A\062F\064B\0627.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883374568025822)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A \063A\064A\0631 \0645\062F\0639\0648\0645')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914008576025831)
,p_name=>'APEXIR_UP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0623\0639\0644\0649')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915672968025832)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \0625\062F\062E\0627\0644 \0644\0648\0646 \0635\0627\0644\062D.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123915744567025832)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \0625\062F\062E\0627\0644 \0642\0646\0627\0639 \0635\064A\063A\0629 \0635\0627\0644\062D.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123880569701025821)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914512335025831)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0627\0644\0645\062D\0648\0631 \0644\0644\0642\064A\0645\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123922309081025834)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629 \0645\0637\0644\0648\0628\0629')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883969755025822)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0631\0623\0633\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123992795756025857)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0623\0633\064A')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921684998025834)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980219823025853)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\062A\0641\0627\0635\064A\0644')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024580408025867)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A \0627\0644\062A\0642\0631\064A\0631 \0639\0644\0649 \0637\0631\064A\0642\0629 \0639\0631\0636 %0 \0645\0639\0631\0641\0629.')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980325699025853)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\062A\062C\0645\064A\0639 \062D\0633\0628')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980120091025853)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\0623\064A\0642\0648\0646\0627\062A')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950021072025843)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\062C\062F\0648\0644 \0627\0644\0645\062D\0648\0631\064A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123921752174025834)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\062A\0642\0631\064A\0631')
,p_version_scn=>2692389
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974347943025851)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0628\0648\0639\064A')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904418844025828)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0642\0631\064A\0631 \0627\0644\0639\0645\0644')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002150086025860)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\064A\0627\0645')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002023953025860)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124001952823025860)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002342688025860)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0634\0647\0648\0631')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002268869025860)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124002434934025860)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 \0627\0644\0633\0646\0648\0627\062A')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124000186259025859)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0646\0629')
,p_version_scn=>2692401
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123878353771025820)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0635\0641\0631')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123879859860025821)
,p_name=>'APEXIR_YES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0639\0645')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123914371374025831)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A %0 \0639\0644\0649 < or > \0648\0647\0648 \062D\0631\0641 \063A\064A\0631 \0635\0627\0644\062D.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123938293904025839)
,p_name=>'APEX_REGION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0637\0642\0629')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829371431025805)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0627\0633\062A\062E\0631\0627\062C \0645\0644\0641 ZIP.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829241824025805)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \062A\0648\0642\064A\0639 \062F\0644\064A\0644 \0646\0647\0627\064A\0629 \0627\0644\0645\0631\0643\0632\064A. \0647\0630\0627 \0627\0644\0645\0644\0641 \0644\064A\0633 \0645\0644\0641 ZIP.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123860309921025815)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062E\0631\0642 \0627\0644\0634\0631\0648\0637 \0627\0644\0645\0633\0628\0642\0629 \0644\0648\0627\062C\0647\0629 \0628\0631\0645\062C\0629 \0627\0644\062A\0637\0628\064A\0642\0627\062A')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882441359025821)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0644\062D\0635\0648\0644 \0639\0644\0649 \0642\064A\0645\0629 \0625\0639\062F\0627\062F \0627\0644\062A\0637\0628\064A\0642 %0 \0644\0623\0646 \062E\064A\0627\0631 \0627\0644\062A\0643\0648\064A\0646 \0627\0644\0645\0631\062A\0628\0637 \0645\0639\0637\0644.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882346689025821)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\0639\064A\064A\0646 \0642\064A\0645\0629 \0625\0639\062F\0627\062F \0627\0644\062A\0637\0628\064A\0642 %0 \0644\0623\0646 \062E\064A\0627\0631 \0627\0644\062A\0643\0648\064A\0646 \0627\0644\0645\0631\062A\0628\0637 \0645\0639\0637\0644.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994984722025858)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0645\0629 \0625\0639\062F\0627\062F \0627\0644\062A\0637\0628\064A\0642 %0 \063A\064A\0631 \0635\0627\0644\062D\0629')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123994858730025858)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\062F\0627\062F \0627\0644\062A\0637\0628\064A\0642 \0627\0644\0645\0637\0644\0648\0628 %0 \063A\064A\0631 \0645\0639\0631\0641')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995038870025858)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\0639\064A\064A\0646 \0625\0639\062F\0627\062F \0627\0644\062A\0637\0628\064A\0642 %0 \0639\0644\0649 \0642\064A\0645\0629 \0641\0627\0631\063A\0629')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868941527025817)
,p_name=>'BACK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0644\062E\0644\0641')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851355150025812)
,p_name=>'BUILDER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0646\0634\0626')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924925300025835)
,p_name=>'BUTTON LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\0645\064A\0629 \0627\0644\0632\0631')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848203472025811)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0632\0631 \0641\0626\0627\062A CSS')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886709603025823)
,p_name=>'BUTTON_ID'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0643\0648\0646 \0645\0639\0631\0641 \0627\0644\0632\0631 \0627\0644\0630\064A \062A\0645 \062A\0643\0648\064A\0646\0647 \0627\0644\0645\0639\0631\0641 \0627\0644\062B\0627\0628\062A \0644\0644\0632\0631 \0641\064A \062D\0627\0644\0629 \062A\0639\0631\064A\0641\0647\060C \0623\0648 \0641\064A \062D\0627\0644\0629 \0639\062F\0645 \062A\0639\0631\064A\0641\0647\060C \064A\0643\0648\0646 \0645\0639\0631\0641 \062A\0645 \062A\0643\0648\064A\0646\0647 \062F\0627\062E\0644\064A\064B\0627 \0628\0627\0644\0635\064A\063A\0629 ''B'' || [\0645\0639\0631\0641 \0627\0644\0632\0631 \0627\0644\062F\0627\062E\0644\064A]')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820757455025802)
,p_name=>'CANDLESTICK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0645\0648\0639 \0627\0644\064A\0627\0628\0627\0646\064A\0629')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934729931025838)
,p_name=>'CENTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0633\0637')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881337224025821)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0644\0628 %0')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871393882025818)
,p_name=>'CHECK$'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062D\062F\062F \0627\0644\0635\0641')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123996785127025858)
,p_name=>'CHECKED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062D\062F\062F')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973194060025850)
,p_name=>'COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930754252025836)
,p_name=>'COMMENTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0639\0644\064A\0642\0627\062A')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911717166025830)
,p_name=>'CONTINUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062A\0627\0628\0639\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869221775025817)
,p_name=>'COPYRIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0642\0648\0642 \0627\0644\0646\0634\0631 &copy; \0644\0639\0627\0645 1999\060C %0\060C \0645\062D\0641\0648\0638\0629 \0644\0634\0631\0643\0629 \0623\0648\0631\0627\0643\0644 \0648/\0623\0648 \0627\0644\0634\0631\0643\0627\062A \0627\0644\062A\0627\0628\0639\0629 \0644\0647\0627.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917426743025832)
,p_name=>'COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\062F\062F')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924455605025834)
,p_name=>'CREATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0648\064A\0646')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979800491025852)
,p_name=>'CREATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062A\0643\0648\064A\0646')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979979082025852)
,p_name=>'CREATED_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062A\0643\0648\064A\0646 \0628\0648\0627\0633\0637\0629')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900855771025827)
,p_name=>'CREATED_ON'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062A\0643\0648\064A\0646 \0641\064A')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911944243025831)
,p_name=>'CUSTOM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062E\0635\0635')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923176961025834)
,p_name=>'CUSTOMIZE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062E\0635\064A\0635')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925159538025835)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \062A\0641\0636\064A\0644\0627\062A \0627\0644\0635\0641\062D\0629 \0644\0644\0645\0633\062A\062E\062F\0645 %0.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925260434025835)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\063A\064A\064A\0631 \0627\0644\062A\0641\0636\064A\0644\0627\062A \0644\0644\0645\0633\062A\062E\062F\0645 %0.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925040292025835)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \062A\0641\0636\064A\0644\0627\062A \0627\0644\0635\0641\062D\0629 \0644\0644\0645\0633\062A\062E\062F\0645 %0.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886120351025822)
,p_name=>'DAILY'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\0645\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849547131025811)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0644\0641 \0627\0644\0630\064A \062A\0645 \062A\062D\0645\064A\0644\0647 \063A\064A\0631 \0635\0627\0644\062D \0623\0648 \0644\0647 \0627\0645\062A\062F\0627\062F \062E\0637\0623.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881527959025821)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0633\062A\062E\062F\0627\0645 \0645\062D\062F\062F XML \0623\0648JSON \063A\064A\0631 \0635\0627\0644\062D.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826672371025804)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A \0645\0644\0641 \062A\0639\0631\064A\0641 \0627\0644\0628\064A\0627\0646\0627\062A \0648\0627\0644\0645\0644\0641 \0627\0644\0630\064A \062A\0645 \062A\062D\0645\064A\0644\0647 \0639\0644\0649 \0623\064A \0639\0645\0648\062F \062C\062F\0648\0644 \0647\062F\0641.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940583708025840)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0628\064A\0627\0646\0627\062A \0641\064A \0627\0644\0645\0644\0641 \0627\0644\0630\064A \062A\0645 \062A\062D\0645\064A\0644\0647.')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940637079025840)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0628\064A\0627\0646\0627\062A \0641\064A \0648\0631\0642\0629 \0627\0644\0639\0645\0644 "%0".')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846426640025810)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0644\0641 \0627\0644\0645\062D\062F\062F \0644\064A\0633 \0645\0644\0641 XLSX.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123812479471025799)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0649 \062A\062D\0645\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A: \062A\0645\062A \0645\0639\0627\0644\062C\0629 %0 \0645\0646 \0627\0644\0635\0641\0648\0641.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814799101025800)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0649 \062A\062D\0645\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A: \062A\0645\062A \0645\0639\0627\0644\062C\0629 %0 \0645\0646 \0627\0644\0635\0641\0648\0641 \0648\064A\0648\062C\062F \062E\0637\0623 \0648\0627\062D\062F.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123815050338025800)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0649 \062A\062D\0645\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A: \062A\0645\062A \0645\0639\0627\0644\062C\0629 %0 \0645\0646 \0627\0644\0635\0641\0648\0641 \0648\064A\0648\062C\062F %1 \0645\0646 \0627\0644\0623\062E\0637\0627\0621.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814825462025800)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0649 \062A\062D\0645\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A: \062A\0645\062A \0645\0639\0627\0644\062C\0629 \0635\0641 \0648\0627\062D\062F.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829145858025805)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0649 \062A\062D\0645\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A: \062A\0645\062A \0645\0639\0627\0644\062C\0629 \0635\0641 \0648\0627\062D\062F \0628\0648\062C\0648\062F \0623\062E\0637\0627\0621.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123814933439025800)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\0649 \062A\062D\0645\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A: \062A\0645\062A \0645\0639\0627\0644\062C\0629 \0635\0641 \0648\0627\062D\062F \0628\062F\0648\0646 \0623\062E\0637\0627\0621.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947649438025842)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0627\0644\0647\062F\0641')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854852402025813)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\0645 \0627\0644\062A\062D\0645\064A\0644')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854906028025813)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623 \0645\0639\0627\0644\062C\0629 \0623\0648\0644\064A\0629')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947707394025842)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0627\0644\0645\0635\062F\0631')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948519754025842)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\064A\063A\0629 \0627\0644\0631\0642\0645/\0627\0644\062A\0627\0631\064A\062E')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854657398025813)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062F\0631\0627\062C \0635\0641')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010777479025863)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644\062A \0627\0633\062A\0639\0627\062F\0629 \0642\064A\0645\0629 \0627\0644\0628\062D\062B.')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123980425649025853)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062E\0637\064A\0637 \0627\0644\0628\064A\0627\0646\0627\062A/\0627\0644\062C\062F\0648\0644')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948670442025842)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855045263025813)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0633\0644\0633\0644: \0627\0644\0625\062C\0631\0627\0621')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942382063025840)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644\062A \0642\0627\0639\062F\0629 \0627\0644\062A\062D\0648\064A\0644')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854790498025813)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062B \0627\0644\0635\0641')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917023970025832)
,p_name=>'DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0631\064A\062E')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889933521025824)
,p_name=>'DAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\0645')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890095065025824)
,p_name=>'DAYS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\064A\0627\0645')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930491533025836)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0635\062D\064A\062D \0627\0644\0623\062E\0637\0627\0621 \063A\064A\0631 \0645\0645\0643\0646 \0641\064A \0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123982160990025853)
,p_name=>'DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0641\062A\0631\0627\0636\064A')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890712801025824)
,p_name=>'DELETE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0630\0641')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866339729025817)
,p_name=>'DELETE_MSG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0647\0644 \062A\0631\064A\062F \062A\0646\0641\064A\0630 \0625\062C\0631\0627\0621 \0627\0644\062D\0630\0641 \0647\0630\0627\061F')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123845974218025810)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062C\0627\0648\0632\0627\062A \0627\0644\062C\0644\0633\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846803976025810)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645\0643\064A\0646 \062A\062C\0627\0648\0632\0627\062A \0627\0644\062C\0644\0633\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847734055025811)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\062D\0645\064A\0644 \062A\062C\0627\0648\0632\0627\062A \0627\0644\062C\0644\0633\0629.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847549011025811)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062D\0641\0638 \062A\062C\0627\0648\0632\0627\062A \0627\0644\062C\0644\0633\0629.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123847482028025811)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0641\0638 \062A\062C\0627\0648\0632\0627\062A \0627\0644\062C\0644\0633\0629. \0623\063A\0644\0642 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 \0647\0630\0627 \0644\0639\0631\0636 \0627\0644\062A\063A\064A\064A\0631\0627\062A.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123820642938025802)
,p_name=>'DIAL_PCT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\0631\0635 (\0627\0644\0646\0633\0628\0629 \0627\0644\0645\0626\0648\064A\0629)')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123861683990025815)
,p_name=>'DOWNLOAD'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0646\0632\064A\0644')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981292422025853)
,p_name=>'DUP_USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0645\0633\062A\062E\062F\0645 \0645\062A\0643\0631\0631 \0641\064A \0627\0644\0642\0627\0626\0645\0629.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870044801025818)
,p_name=>'EDIT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881228933025821)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0639\0646\0648\0627\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A "%0".')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863906951025816)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\0631\0633\0627\0644 \0647\0630\0627 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A \0628\0648\0627\0633\0637\0629 %0.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981478485025853)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0646\0648\0627\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A \0637\0648\064A\0644 \0644\0644\063A\0627\064A\0629. \0627\0644\062D\062F \0647\0648 240 \062D\0631\0641\064B\0627.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911656787025830)
,p_name=>'ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942499331025840)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \062A\0639\064A\064A\0646 \0642\064A\0645\0629 \0645\0635\062F\0631 \0639\0646\0635\0631 \0627\0644\0635\0641\062D\0629 \0644\0645\0646\0637\0642\0629 \0627\0644\062A\062C\062F\064A\062F \0627\0644\062C\0632\0626\064A \0644\0644\0635\0641\062D\0629')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902905612025828)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062A\0643\0648\064A\0646 \0628\0648\0627\0633\0637\0629')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864253614025816)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0647\062A \0635\0644\0627\062D\064A\0629 \0643\0644\0645\0629 \0627\0644\0633\0631')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123856640943025814)
,p_name=>'FILE_EMPTY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0644\0641 \0641\0627\0631\063A.')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946481608025842)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0632\0627\062F \062D\062C\0645 \0627\0644\0645\0644\0641 \0627\0644\0630\064A \062A\0645 \062A\062D\0645\064A\0644\0647 \0639\0646 %0 \0645\064A\063A\0627\0628\0627\064A\062A. \0627\0644\0631\062C\0627\0621 \062A\062D\0645\064A\0644 \0645\0644\0641 \0623\0635\063A\0631.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866539941025817)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \0627\0644\062A\0635\062F\064A\0642 \0639\0644\0649 \0627\0644\0645\0633\062A\062E\062F\0645 \0648\0644\0645 \064A\062A\0645 \062A\062D\0645\064A\0644 \0645\0644\0641 \0623\0648 \0623\0643\062B\0631.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866642665025817)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062A\064A\062D \0647\0630\0627 \0627\0644\0645\062B\064A\0644 \0644\0644\0645\0633\062A\062E\062F\0645\064A\0646 \063A\064A\0631 \0627\0644\0645\0635\062F\0642\064A\0646 \0628\062A\062D\0645\064A\0644 \0627\0644\0645\0644\0641\0627\062A.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946573951025842)
,p_name=>'FILTERS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0631\0634\062D\0627\062A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924518853025834)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0648\0627\062D\062F')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923785911025834)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B\062A %0 \0645\0646 \0627\0644\0623\062E\0637\0627\0621')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869113201025817)
,p_name=>'FORM_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0645\0646 %1')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908195010025829)
,p_name=>'GO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0642\0627\0644 \0625\0644\0649')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010310677025863)
,p_name=>'HELP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0639\0644\064A\0645\0627\062A')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851416305025812)
,p_name=>'HOME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641\062D\0629 \0627\0644\0631\0626\064A\0633\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889768070025823)
,p_name=>'HOUR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0627\0639\0629')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889890428025823)
,p_name=>'HOURS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0627\0639\0627\062A')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123871275087025818)
,p_name=>'ICON'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0623\064A\0642\0648\0646\0629 %0')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848544100025811)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0644\064A\0645\0627\062A \0627\0644\0623\064A\0642\0648\0646\0629 "\0642\0635"')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849722141025811)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\0627\0633\062D\0628 \0623\064A\0642\0648\0646\062A\0643 \0648\0627\0633\062A\062E\062F\0645 \0634\0631\064A\0637 \062A\0645\0631\064A\0631 \0627\0644\062A\0642\0631\064A\0628/\0627\0644\0625\0628\0639\0627\062F \0644\062A\063A\064A\064A\0631 \0648\0636\0639\0647\0627 \0641\064A \0627\0644\0625\0637\0627\0631.</p>'),
'',
unistr('<p>\0639\0646\062F \062A\062D\0645\064A\0644 \0623\064A\0642\0648\0646\0629 \062C\062F\064A\062F\0629\060C \064A\062A\0645 \062A\063A\064A\064A\0631 \062D\062C\0645\0647\0627 \0644\062A\0646\0627\0633\0628 \062B\0644\0627\062B\0629 \062A\0646\0633\064A\0642\0627\062A: \0623\064A\0642\0648\0646\0629 \0645\0641\0636\0644\0629 \0648\0623\064A\0642\0648\0646\0629 \0635\063A\064A\0631\0629 \0648\0623\064A\0642\0648\0646\0629 \0643\0628\064A\0631\0629.</p>'),
'',
unistr('<p>\0639\0646\062F \0627\0644\062A\0631\0643\064A\0632 \0639\0644\0649 \0623\062F\0627\0629 \0642\0635 \0627\0644\0623\064A\0642\0648\0646\0629\060C \062A\062A\0648\0641\0631 \0627\062E\062A\0635\0627\0631\0627\062A \0627\0644\0645\0641\0627\062A\064A\062D \0627\0644\062A\0627\0644\064A\0629:</p>'),
'<ul>',
unistr('    <li>\0627\0644\0633\0647\0645 \0644\0644\064A\0633\0627\0631: \0646\0642\0644 \0627\0644\0635\0648\0631\0629 \0644\0644\064A\0633\0627\0631*</li>'),
unistr('    <li>\0627\0644\0633\0647\0645 \0644\0623\0639\0644\0649: \0646\0642\0644 \0627\0644\0635\0648\0631\0629 \0644\0623\0639\0644\0649*</li>'),
unistr('    <li>\0627\0644\0633\0647\0645 \0644\0644\064A\0645\064A\0646: \0646\0642\0644 \0627\0644\0635\0648\0631\0629 \0644\0644\064A\0645\064A\0646*</li>'),
unistr('    <li>\0627\0644\0633\0647\0645 \0644\0623\0633\0641\0644: \0646\0642\0644 \0627\0644\0635\0648\0631\0629 \0644\0623\0633\0641\0644*</li>'),
unistr('    <li>I: \062A\0642\0631\064A\0628</li>'),
unistr('    <li>O: \0625\0628\0639\0627\062F</li>'),
unistr('    <li>L: \062A\062F\0648\064A\0631 \0644\0644\064A\0633\0627\0631</li>'),
unistr('    <li>R: \062A\062F\0648\064A\0631 \0644\0644\064A\0645\064A\0646</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*\0627\0636\063A\0637 \0628\0627\0633\062A\0645\0631\0627\0631 \0639\0644\0649 Shift \0644\0644\062A\062D\0631\0643 \0628\0633\0631\0639\0629 \0623\0643\0628\0631</em></p>')))
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855211645025813)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062D\0628 \0644\062A\063A\064A\064A\0631 \0648\0636\0639 \0627\0644\0623\064A\0642\0648\0646\0629')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855310508025813)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644 \0634\0631\064A\0637 \0627\0644\062A\0645\0631\064A\0631 \0644\062A\0639\062F\064A\0644 \0645\0633\062A\0648\0649 \0627\0644\062A\0642\0631\064A\0628/\0627\0644\0625\0628\0639\0627\062F')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848345344025811)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\064A\0642\0648\0646\0629 \062A\062D\0631\064A\0631 \0627\0644\062A\0637\0628\064A\0642\0627\062A')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848677053025811)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\064A\0642\0648\0646\0629 "\062E\0637\0623 \0641\064A \0627\0644\062D\0641\0638"')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931084683025837)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'ar'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> \064A\0633\062A\062E\062F\0645 \0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642 \0623\064A\0642\0648\0646\0627\062A \0642\062F\064A\0645\0629. \0633\064A\0624\062F\064A \062A\062D\0645\064A\0644 \0623\064A\0642\0648\0646\0629 \062C\062F\064A\062F\0629 \0625\0644\0649 \0627\0633\062A\0628\062F\0627\0644 \0643\0644 \0627\0644\0623\064A\0642\0648\0646\0627\062A \0627\0644\0642\062F\064A\0645\0629.</p>')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123849286709025811)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0645\064A\0644 \0623\064A\0642\0648\0646\0629 \062C\062F\064A\062F\0629')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925415383025835)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\064A\0627\0646\0627\062A \0635\0644\0627\062D\064A\0629 \062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644 \063A\064A\0631 \0635\0627\0644\062D\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026566863025868)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0645\0629 \063A\064A\0631 \0635\0627\0644\062D\0629 \0644\0644\0645\0639\0644\0645\0629: %0')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919751032025833)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0625\0639\062F\0627\062F\0627\062A \0627\0644\062A\0642\0631\064A\0631 \0627\0644\0627\0641\062A\0631\0627\0636\064A\0629')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919852553025833)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\062A\0642\0631\064A\0631 \0645\0639\064A\0646')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901773067025827)
,p_name=>'IR_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623 %0. %1')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901471785025827)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \062D\0633\0627\0628 \062A\0646\0642\0644 \0627\0644\0646\0645\0648\0630\062C. %0')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877081875025820)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0644\062A\0642\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876409797025820)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0637\0642\0629 \0627\0644\062A\0642\0631\064A\0631 \063A\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A \0644\064A\0633\062A \0645\0648\062C\0648\062F\0629 \0641\064A \0627\0644\062A\0637\0628\064A\0642 %0 \0648\0627\0644\0635\0641\062D\0629 %1 \0648\0627\0644\0645\0646\0637\0642\0629 %2.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123919622567025833)
,p_name=>'IR_STAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0638\0647\0631 \0644\0644\0645\0637\0648\0631\064A\0646 \0641\0642\0637')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907890615025829)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0627\062C \0627\0633\062A\0639\0644\0627\0645 \0627\0644\062A\0642\0631\064A\0631 \0625\0644\0649 \0645\0641\062A\0627\062D \0641\0631\064A\062F \0644\062A\0639\0631\064A\0641 \0643\0644 \0635\0641. \0644\0627 \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645 \0627\0644\0645\0641\062A\0627\062D \0627\0644\0645\0642\062F\0645 \0628\0647\0630\0627 \0627\0644\0627\0633\062A\0639\0644\0627\0645. \0627\0644\0631\062C\0627\0621 \062A\0639\0631\064A\0641 \0639\0645\0648\062F \0645\0641\062A\0627\062D \0641\0631\064A\062F. %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123907971389025829)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0627\062C \0627\0633\062A\0639\0644\0627\0645 \0627\0644\062A\0642\0631\064A\0631 \0625\0644\0649 \0645\0641\062A\0627\062D \0641\0631\064A\062F \0644\062A\0639\0631\064A\0641 \0643\0644 \0635\0641. \0644\0627 \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645 \0627\0644\0645\0641\062A\0627\062D \0627\0644\0645\0642\062F\0645 \0628\0647\0630\0627 \0627\0644\0627\0633\062A\0639\0644\0627\0645. \0627\0644\0631\062C\0627\0621 \062A\062D\0631\064A\0631 \0633\0645\0627\062A \0627\0644\062A\0642\0631\064A\0631 \0644\062A\0639\0631\064A\0641 \0639\0645\0648\062F \0645\0641\062A\0627\062D \0641\0631\064A\062F. %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948809126025842)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\062E\062A\064A\0627\0631 \0645\0644\0641')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948792704025842)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\062D\0628 \0627\0644\0645\0644\0641\0627\062A \0648\0625\0641\0644\0627\062A\0647\0627 \0647\0646\0627 \0623\0648')
,p_is_js_message=>true
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869474864025818)
,p_name=>'ITEMS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0646\0627\0635\0631')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903110774025828)
,p_name=>'ITEM_VALUE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0645\0629 \0627\0644\0639\0646\0635\0631')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917748162025832)
,p_name=>'LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0633\0645\064A\0629')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930308154025836)
,p_name=>'LANGUAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0644\063A\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890435232025824)
,p_name=>'LAST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\062E\064A\0631')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866459933025817)
,p_name=>'LENGTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0637\0648\0644')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924707416025835)
,p_name=>'LOGIN'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966329003025848)
,p_name=>'MANAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062F\0627\0631\0629')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029452523025869)
,p_name=>'MAXIMIZE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0628\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692407
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889562086025823)
,p_name=>'MINUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0642\064A\0642\0629')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889646726025823)
,p_name=>'MINUTES'
,p_message_language=>'ar'
,p_message_text=>unistr('\062F\0642\0627\0626\0642')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981630976025853)
,p_name=>'MISSING_AT'
,p_message_language=>'ar'
,p_message_text=>unistr('"@" \063A\064A\0631 \0645\0648\062C\0648\062F \0641\064A \0639\0646\0648\0627\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981803055025853)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0630\064A\0631: \0644\0645 \064A\062A\0645 \062A\0639\0631\064A\0641 \0642\0627\0644\0628 \0635\0641\062D\0629 \0645\0631\0628\0639 \062D\0648\0627\0631 \0644\0635\0641\062D\0629 \0645\0631\0628\0639 \0627\0644\062D\0648\0627\0631 %0 \0641\064A \0627\0644\062A\0637\0628\064A\0642 %1.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981567583025853)
,p_name=>'MISSING_DOT'
,p_message_language=>'ar'
,p_message_text=>unistr('"." \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0641\064A \0645\062C\0627\0644 \0639\0646\0648\0627\0646 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927885407025835)
,p_name=>'MODULE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\062D\062F\0629 \0627\0644\0646\0645\0637\064A\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882098765025821)
,p_name=>'MONTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0631')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885901293025822)
,p_name=>'MONTHLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0634\0647\0631\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882148966025821)
,p_name=>'MONTHS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0647\0648\0631')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917388933025832)
,p_name=>'MOVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988112109025855)
,p_name=>'MOVE_FROM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644 \0645\0646')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988207616025855)
,p_name=>'MOVE_TO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0642\0644 \0625\0644\0649')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123904313561025828)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0641\064A \0639\0645\0644\064A\0629 \062D\0630\0641 \0639\062F\0629 \0635\0641\0648\0641: \0627\0644\0635\0641= %0\060C %1\060C %2')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903338149025828)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0644\0627 \064A\0643\0648\0646 \0645\0633\062A\062E\062F\0645 \0639\0627\0645')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851920481025812)
,p_name=>'NAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0633\0645')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917581215025832)
,p_name=>'NEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\062F\064A\062F')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881816259025821)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646\0643 \062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644 \0625\0644\0649 %0 \0645\0646 \062E\0644\0627\0644 \0627\0644\0627\0646\062A\0642\0627\0644 \0625\0644\0649:')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881970586025821)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062E\0637\0627\0631 \062D\0633\0627\0628 %0 \062C\062F\064A\062F')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010555465025863)
,p_name=>'NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927772993025835)
,p_name=>'NO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124024685751025867)
,p_name=>'NOBODY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \0623\062D\062F')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890812214025824)
,p_name=>'NOT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933772774025837)
,p_name=>'NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \062E\0627\0644\064D')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903441345025828)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\064A\0633 %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923254084025834)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0628\064A\0627\0646\0627\062A')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933265381025837)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \062A\0642\0631\064A\0631 \0642\0627\0628\0644 \0644\0644\062A\062D\062F\064A\062B. \062A\0645 \062A\062D\062F\064A\062B \0639\062F\0629 \0635\0641\0648\0641 \0648\0644\0627 \064A\0645\0643\0646 \062A\0646\0641\064A\0630 \0639\0645\0644\064A\0627\062A \0627\0644\062D\0630\0641 \0625\0644\0627 \0639\0644\0649 \0627\0644\0646\0645\0627\0630\062C \0627\0644\062C\062F\0648\0644\064A\0629 \0645\0646 \0627\0644\0646\0648\0639 "\062A\0642\0631\064A\0631 \0642\0627\0628\0644 \0644\0644\062A\062D\062F\064A\062B".')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934184738025838)
,p_name=>'OK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0648\0627\0641\0642')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929421538025836)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'ar'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124028360708025868)
,p_name=>'ORA_06550'
,p_message_language=>'ar'
,p_message_text=>unistr('ORA-06550: \0627\0644\0633\0637\0631 %0\060C \0627\0644\0639\0645\0648\062F %1')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979257710025852)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0646\062A \062A\0633\062A\062E\062F\0645 \0645\0633\062A\0639\0631\0636 \0648\064A\0628 \0642\062F\064A\0645\064B\0627. \0644\0644\062D\0635\0648\0644 \0639\0644\0649 \0642\0627\0626\0645\0629 \0628\0627\0644\0645\0633\062A\0639\0631\0636\0627\062A \0627\0644\0645\062F\0639\0648\0645\0629\060C \0627\0637\0644\0639 \0639\0644\0649 \062F\0644\064A\0644 \062A\062B\0628\064A\062A Oracle APEX.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874277553025819)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0637\0644\0628 \0645\062C\0645\0648\0639\0629 \063A\064A\0631 \0635\0627\0644\062D\0629 \0645\0646 \0627\0644\0635\0641\0648\0641\060C \062A\0645 \062A\0639\062F\064A\0644 \0628\064A\0627\0646\0627\062A \0645\0635\062F\0631 \0627\0644\062A\0642\0631\064A\0631.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896270205025825)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0631\0642\0645 \0635\0641\062D\0629 \0635\0627\0644\062D\060C \0639\0644\0649 \0633\0628\064A\0644 \0627\0644\0645\062B\0627\0644 p?n=1234.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900490404025827)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0627\0644\064A')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900564735025827)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062C\0645\0648\0639\0629 \0627\0644\062A\0627\0644\064A\0629')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900602075025827)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0628\0642')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123900752131025827)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\062C\0645\0648\0639\0629 \0627\0644\0633\0627\0628\0642\0629')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010422947025863)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0627\0644\062A\0642\0633\064A\0645 \0625\0644\0649 \0635\0641\062D\0627\062A')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940443486025839)
,p_name=>'PASSWORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881132456025821)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\063A\064A\064A\0631 \0643\0644\0645\0629 \0645\0631\0648\0631 %0 \0627\0644\062E\0627\0635\0629 \0628\0643.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868880533025817)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \062A\062A\0648\0627\0641\0642 \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0645\0639 \0642\0648\0627\0639\062F \0627\0644\062A\0631\0643\064A\0628 \0641\064A \0647\0630\0627 \0627\0644\0645\0648\0642\0639.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867920778025817)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\062E\062A\0644\0641 \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0627\0644\062C\062F\064A\062F\0629 \0639\0646 \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0627\0644\0642\062F\064A\0645\0629 \0628\0640 %0 \0645\0646 \0627\0644\062D\0631\0648\0641 \0639\0644\0649 \0627\0644\0623\0642\0644.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868512520025817)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0644\0627 \062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 \0627\0633\0645 \0627\0644\0645\0633\062A\062E\062F\0645.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868770112025817)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 \0643\0644\0645\0629 \0628\0633\064A\0637\0629 \0645\062D\0638\0648\0631\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868610481025817)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0644\0627 \062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 \0627\0633\0645 \0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867894041025817)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 %0 \0645\0646 \0627\0644\062D\0631\0648\0641 \0639\0644\0649 \0627\0644\0623\0642\0644.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868092706025817)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 \062D\0631\0641 \0623\0628\062C\062F\064A \0648\0627\062D\062F \0639\0644\0649 \0627\0644\0623\0642\0644 (%0).')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868428487025817)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 \062D\0631\0641 \0635\063A\064A\0631 \0648\0627\062D\062F \0639\0644\0649 \0627\0644\0623\0642\0644.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868191603025817)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 \062D\0631\0641 \0631\0642\0645\064A \0648\0627\062D\062F \0639\0644\0649 \0627\0644\0623\0642\0644 (0123456789).')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868256199025817)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 \062D\0631\0641 \062A\0631\0642\064A\0645 \0648\0627\062D\062F \0639\0644\0649 \0627\0644\0623\0642\0644 (%0).')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123868379763025817)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\062D\062A\0648\064A \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0639\0644\0649 \062D\0631\0641 \0643\0628\064A\0631 \0648\0627\062D\062F \0639\0644\0649 \0627\0644\0623\0642\0644.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881694624025821)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062E\0637\0627\0631 \0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866745275025817)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645 \0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0644\0623\0646\0647 \062A\0645 \0627\0633\062A\062E\062F\0627\0645\0647\0627 \062E\0644\0627\0644 %0 \0645\0646 \0627\0644\0623\064A\0627\0645 \0627\0644\0633\0627\0628\0642\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123863415067025816)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A \0644\0644\0646\0633\0628 \0627\0644\0645\0626\0648\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955015998025844)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0646\0627\0635\0631')
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123955195635025844)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0646\0635\0631')
,p_version_scn=>2692394
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929237521025836)
,p_name=>'PERCENT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\0633\0628\0629 \0627\0644\0645\0626\0648\064A\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898508091025826)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0631\062C\0627\0621 \0627\0644\0627\062A\0635\0627\0644 \0628\0627\0644\0645\0633\0624\0648\0644.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010674897025863)
,p_name=>'PREVIOUS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0627\0628\0642')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947284949025842)
,p_name=>'PRINT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0628\0627\0639\0629')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928051989025836)
,p_name=>'PRIVILEGES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0645\062A\064A\0627\0632\0627\062A')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896644641025826)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\062C\0639 \0627\0644\0645\0646\0637\0642\0629')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917628119025832)
,p_name=>'REPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927955775025836)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\062A\0631\0629 \0627\0644\062A\0642\0631\064A\0631')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010821825025863)
,p_name=>'REPORT_LABEL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0642\0631\064A\0631: %0')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928647566025836)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062C\0645\0627\0644\064A \0627\0644\062A\0642\0631\064A\0631')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874340683025819)
,p_name=>'RESET'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0627\0644\062A\0642\0633\064A\0645 \0625\0644\0649 \0635\0641\062D\0627\062A')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903048354025828)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0627\0644\062A\0642\0633\064A\0645 \0625\0644\0649 \0635\0641\062D\0627\062A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933183494025837)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0639\0627\062F\0629 \062A\0639\064A\064A\0646 \0643\0644\0645\0629 \0627\0644\0633\0631')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908983612025830)
,p_name=>'RESTORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\0639\0627\062F\0629')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123942565335025840)
,p_name=>'RESULTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0646\062A\0627\0626\062C')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934205818025838)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\062C\0648\0639 \0644\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123934689628025838)
,p_name=>'RIGHT'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\064A\0646')
,p_version_scn=>2692391
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966639292025848)
,p_name=>'ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641 %0')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917218251025832)
,p_name=>'ROW_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\062F \0627\0644\0635\0641\0648\0641')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807076598025797)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0623\0644 Oracle')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807353932025798)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\063A\0644\0627\0642 \0627\0633\0623\0644 Oracle')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807663173025798)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0625\0639\0644\0627\0645\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807293491025798)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\062A\062D \0625\0633\0623\0644 Oracle')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807540064025798)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062E\0637\064A\0637 \0627\0644\0645\0646\062A\062C\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807470677025798)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0627\0642\062A\0631\0627\062D\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808345226025798)
,p_name=>'RW_CLEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\062D')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808241193025798)
,p_name=>'RW_CLOSE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\063A\0644\0627\0642')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808097064025798)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\0645\0632\064A\062F')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808469375025798)
,p_name=>'RW_GO_TO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0646\062A\0642\0627\0644 \0625\0644\0649')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807835151025798)
,p_name=>'RW_GP_STEP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062E\0637\0648\0629')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807972666025798)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123807700665025798)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0628\062F\064A\0644 \0639\0631\0636 \0627\0644\062E\0637\0648\0627\062A')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806846454025797)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\062E\0641\0627\0621 \0643\0644\0645\0629 \0627\0644\0633\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808131817025798)
,p_name=>'RW_OPEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\062A\062D')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806686964025797)
,p_name=>'RW_ORACLE'
,p_message_language=>'ar'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123806747770025797)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0643\0644\0645\0629 \0627\0644\0633\0631')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123808555017025798)
,p_name=>'RW_START'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\062F\0627\064A\0629')
,p_is_js_message=>true
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123933690983025837)
,p_name=>'SAVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\0641\0638')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929899278025836)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0641\062A\0631\0627\0636\064A \0627\0644\0628\062F\064A\0644')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930220776025836)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0635\0641')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929775399025836)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0641\062A\0631\0627\0636\064A \0627\0644\0623\0633\0627\0633\064A')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930525082025836)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0648\0641\0631 \0623\0643\062B\0631 \0645\0646 %0 \0645\0646 \0627\0644\0635\0641\0648\0641. \0642\0645 \0628\0632\064A\0627\062F\0629 \0645\062D\062F\062F \0627\0644\0635\0641\0648\0641 \0644\0639\0631\0636 \0627\0644\0645\0632\064A\062F \0645\0646 \0627\0644\0635\0641\0648\0641.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997951113025859)
,p_name=>'SEARCH'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\062D\062B')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889413376025823)
,p_name=>'SECONDS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062B\0648\0627\0646\064D')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929333193025836)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0637\0644\0627\0639 \0639\0644\0649 \0627\0644\0645\0631\0641\0642')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123989933883025856)
,p_name=>'SELECT_ROW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062F \0635\0641')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929019128025836)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\064A\064A\0646 \0648\0636\0639 \0642\0627\0631\0626 \0627\0644\0634\0627\0634\0629 \0639\0644\0649 \0625\064A\0642\0627\0641')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929111743025836)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\064A\064A\0646 \0648\0636\0639 \0642\0627\0631\0626 \0627\0644\0634\0627\0634\0629 \0639\0644\0649 \062A\0634\063A\064A\0644')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925345418025835)
,p_name=>'SHOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991770501025856)
,p_name=>'SHOW_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0638\0647\0627\0631 \0627\0644\0643\0644')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124016564279025864)
,p_name=>'SIGN_IN'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\062C\064A\0644 \0627\0644\062F\062E\0648\0644')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123967437000025848)
,p_name=>'SIGN_OUT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\062C\064A\0644 \0627\0644\062E\0631\0648\062C')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918269028025832)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0623\064A\0627\0645')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925835106025835)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0623\064A\0627\0645')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918116649025832)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925729273025835)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0633\0627\0639\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918034289025832)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925616554025835)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\062F\0642\0627\0626\0642')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918455029025833)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0634\0647\0648\0631')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926049207025835)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0634\0647\0648\0631')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926224445025835)
,p_name=>'SINCE_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0622\0646')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917997184025832)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\062B\0648\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925523661025835)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\062B\0648\0627\0646\064A')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918314490025833)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123925923849025835)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0623\0633\0627\0628\064A\0639')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123918531645025833)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0633\0646\0648\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926126788025835)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0646\0630 %0 \0645\0646 \0627\0644\0633\0646\0648\0627\062A')
,p_is_js_message=>true
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912037018025831)
,p_name=>'STANDARD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0627\0633\064A')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928973584025836)
,p_name=>'START_DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0627\0631\064A\062E \0627\0644\0628\062F\0627\064A\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864111293025816)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062A\0644\0642\0649 \0631\0633\0627\0644\0629 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A \0647\0630\0647 \0645\0646 \0627\0634\062A\0631\0627\0643 \0627\0644\062A\0642\0627\0631\064A\0631 \0627\0644\062A\0641\0627\0639\0644\064A\0629 \0627\0644\0630\064A \062A\0645 \0625\0646\0634\0627\0624\0647 \0628\0648\0627\0633\0637\0629 %0.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025778708025867)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0634\062A\0631\0627\0643\0627\062A')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123975119169025851)
,p_name=>'TAB'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0644\0627\0645\0629 \0627\0644\062A\0628\0648\064A\0628')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889336252025823)
,p_name=>'TITLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0646\0648\0627\0646')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869068290025817)
,p_name=>'TODAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\064A\0648\0645')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928582133025836)
,p_name=>'TOTAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0625\062C\0645\0627\0644\064A')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870326371025818)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646 \062A\062D\062F\064A\062F %0 \0645\0646 \0627\0644\0623\0639\0645\062F\0629 \0628\062D\062F \0623\0642\0635\0649.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826106068025804)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\064A \0627\0644\0643\0644')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826776688025804)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\064A \0627\0644\0643\0644 \0623\062F\0646\0627\0647')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825760803025804)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\0633\064A\0639 \0627\0644\0643\0644')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826491748025804)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0648\0633\064A\0639 \0627\0644\0643\0644 \0623\062F\0646\0627\0647')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826937416025804)
,p_name=>'TREE.REPARENT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0639\0648\064A\0636')
,p_is_js_message=>true
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949081001025842)
,p_name=>'TREES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0634\0628\0643\0627\062A')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123991815847025856)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0637\0644\0648\0628')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123912773646025831)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\0635\062F\0642')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123962946463025847)
,p_name=>'UNAVAILABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\062A\0627\062D')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926654130025835)
,p_name=>'UNKNOWN'
,p_message_language=>'ar'
,p_message_text=>unistr('\063A\064A\0631 \0645\0639\0631\0648\0641')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865072420025816)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0645\0635\0627\062F\0642\0629 \063A\064A\0631 \0645\0639\0631\0648\0641.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867282537025817)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0630\0627 \0644\0645 \062A\0639\062F \062A\0631\064A\062F \0627\0633\062A\0644\0627\0645 \0631\0633\0627\0626\0644 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A\060C \0641\0627\0644\0631\062C\0627\0621 \0627\0644\0646\0642\0631 \0639\0644\0649 <a href="%0">\0625\0644\063A\0627\0621 \0627\0644\0627\0634\062A\0631\0627\0643</a> \0644\0625\062F\0627\0631\0629 \0627\0634\062A\0631\0627\0643\0643.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123864084734025816)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0630\0627 \0644\0645 \062A\0639\062F \062A\0631\064A\062F \0627\0633\062A\0644\0627\0645 \0631\0633\0627\0626\0644 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A\060C \0641\0627\0644\0631\062C\0627\0621 \0627\0644\0630\0647\0627\0628 \0625\0644\0649 \0631\0627\0628\0637 URL \0627\0644\062A\0627\0644\064A \0644\0625\062F\0627\0631\0629 \0627\0634\062A\0631\0627\0643\0643:')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123903505767025828)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A \063A\064A\0631 \0645\062F\0639\0648\0645')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890645442025824)
,p_name=>'UPDATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062B')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889262884025823)
,p_name=>'UPDATED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\062A\062D\062F\064A\062B')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832403116025806)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0631\0642\064A\0629 \0642\064A\062F \0627\0644\062A\0642\062F\0645')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123832718116025806)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062A\0645 \062A\0631\0642\064A\0629 Oracle APEX \0625\0644\0649 \0625\0635\062F\0627\0631 \0623\062D\062F\062B. \0633\062A\0633\062A\063A\0631\0642 \0647\0630\0647 \0627\0644\0639\0645\0644\064A\0629 \0639\0645\0648\0645\064B\0627 \0645\0627 \064A\0635\0644 \0625\0644\0649 3 \062F\0642\0627\0626\0642.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896022463025825)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062D\0638\0631 \0631\0627\0628\0637 URL \0627\0644\0645\0637\0644\0648\0628. \0627\062A\0635\0644 \0628\0627\0644\0645\0633\0624\0648\0644 \0644\062F\064A\0643.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123917186298025832)
,p_name=>'USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0633\062A\062E\062F\0645')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123940337096025839)
,p_name=>'USERNAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\0645\0633\062A\062E\062F\0645')
,p_version_scn=>2692392
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981755616025853)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\0645\0633\062A\062E\062F\0645 \0637\0648\064A\0644 \0644\0644\063A\0627\064A\0629. \0627\0644\062D\062F \0647\0648 %0 \0645\0646 \0627\0644\062D\0631\0648\0641.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924239256025834)
,p_name=>'USERS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0633\062A\062E\062F\0645\0648\0646')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123981308122025853)
,p_name=>'USER_EXISTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\0645\0633\062A\062E\062F\0645 \0645\0648\062C\0648\062F \0628\0627\0644\0641\0639\0644.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123995161420025858)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\0648\0631\0629 \0645\0644\0641 \062A\0639\0631\064A\0641 \0627\0644\0645\0633\062A\062E\062F\0645 %0')
,p_version_scn=>2692398
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857006571025814)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0634\063A\064A\0644 \0627\0644\062A\0644\0642\0627\0626\064A - %0')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855585326025813)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\0641\062D\0629 %0 - %1 ')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858446420025814)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'ar'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123858596967025814)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'ar'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857489267025814)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0643\0648\064A\0646 \0627\0644\0628\062D\062B - %0')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857373655025814)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645 \0627\0644\062F\064A\0646\0627\0645\064A\0643\064A\0629 \0627\0644\0645\0634\062A\0631\0643\0629 - %0')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123857133048025814)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0631\064A\0641 \0627\0644\0645\0647\0645\0629 - %0')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855666505025813)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\064A\0631 \0627\0644\0639\0645\0644 - %0 ')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877755895025820)
,p_name=>'VALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\0627\0644\062D')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869303785025817)
,p_name=>'VALIDATIONS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0644\064A\0627\062A \0627\0644\062A\062F\0642\064A\0642')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930049317025836)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0627\0644\0642\064A\0645\0629')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976324630025851)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0642\064A\0645\0629 %0')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898997954025826)
,p_name=>'VERTICAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0623\0633\064A')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890514874025824)
,p_name=>'VIEW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924317231025834)
,p_name=>'VIEWS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0637\0631\0642 \0627\0644\0639\0631\0636')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930850115025836)
,p_name=>'VIEW_ALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\0643\0644')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870790616025818)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0631\062A\0628\0627\0637 \0645\062E\0641\064A \0645\0631\0626\064A\064B\0627')
,p_is_js_message=>true
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123911550383025830)
,p_name=>'WARNING'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0630\064A\0631')
,p_is_js_message=>true
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890153980025824)
,p_name=>'WEEK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0628\0648\0639')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886048528025822)
,p_name=>'WEEKLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0628\0648\0639\064A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890243691025824)
,p_name=>'WEEKS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0633\0627\0628\064A\0639')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123930174821025836)
,p_name=>'WELCOME_USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\062D\0628\064B\0627: %0')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928371585025836)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0642\064A\0645\0629 \063A\064A\0631 \0635\0627\0644\062D\0629\060C \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\0645\0642\062F\0645\0629.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928463251025836)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0642\064A\0645\0629 \063A\064A\0631 \0635\0627\0644\062D\0629\060C \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\0645\0642\062F\0645\0629.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866232949025817)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0642\064A\0645\0629 \0628\064A\0627\0646\0627\062A \063A\064A\0631 \0635\0627\0644\062D\0629\060C \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \0635\064A\063A\0629 \0627\0644\062A\0627\0631\064A\062E.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123928264219025836)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0642\064A\0645\0629 \0631\0642\0645\064A\0629 \063A\064A\0631 \0635\0627\0644\062D\0629\060C \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \0627\0644\0635\064A\063A\0629 \0627\0644\0631\0642\0645\064A\0629.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877317504025820)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0642\064A\0645\0629 \0637\0627\0628\0639 \0632\0645\0646\064A \063A\064A\0631 \0635\0627\0644\062D\0629\060C \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \0635\064A\063A\0629 \0627\0644\0637\0627\0628\0639 \0627\0644\0632\0645\0646\064A.')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123901882873025827)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0631\0628\0637 "%0". \0627\0633\062A\062E\062F\0645 \0639\0644\0627\0645\0627\062A \0627\0644\0627\0642\062A\0628\0627\0633 \0627\0644\0645\0632\062F\0648\062C\0629 \0644\0644\0639\0646\0627\0635\0631 \0648\062D\062F\0627\062A \0628\0627\064A\062A \0645\062A\0639\062F\062F\0629\060C \0623\0648 \062A\062D\0642\0642 \0645\0646 \0623\0646 \0637\0648\0644 \0627\0644\0639\0646\0635\0631 30 \0628\0627\064A\062A \0623\0648 \0623\0642\0644. \0627\0633\062A\062E\062F\0645 \0635\064A\0627\063A\0629 v() \0644\0644\0625\0634\0627\0631\0629 \0625\0644\0649 \0627\0644\0639\0646\0627\0635\0631 \0627\0644\0623\0637\0648\0644 \0645\0646 30 \0628\0627\064A\062A.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891617848025824)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0631\0641\0636 \0627\0644\0648\0635\0648\0644 \0628\0648\0627\0633\0637\0629 \0627\0644\0641\062D\0635 \0627\0644\0623\0645\0646\064A %0')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894173484025825)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0637\0628\064A\0642 \063A\064A\0631 \0645\062A\0648\0641\0631')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892573847025824)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892675401025824)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062A\0637\0628\064A\0642=%0 \0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644=%1')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893007674025824)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642 \0645\062D\0638\0648\0631\060C \0627\0644\0631\062C\0627\0621 \0625\0639\0627\062F\0629 \0627\0644\0645\062D\0627\0648\0644\0629 \0644\0627\062D\0642\064B\0627.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892981246025824)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0648\0635\0648\0644 \0625\0644\0649 \0647\0630\0627 \0627\0644\062A\0637\0628\064A\0642 \0645\062D\0638\0648\0631 \0644\0645\0637\0648\0631\064A \0627\0644\062A\0637\0628\064A\0642\060C \0627\0644\0631\062C\0627\0621 \0625\0639\0627\062F\0629 \0627\0644\0645\062D\0627\0648\0644\0629 \0644\0627\062D\0642\064B\0627.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892134190025824)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-7744 \062A\0639\0630\0631\062A \0645\0639\0627\0644\062C\0629 \0631\0627\0628\0637 URL \0639\0648\062F\0629 \0627\0644\0641\0631\0639 \0625\0644\0649 \0627\0644\0648\0638\064A\0641\0629.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892001507025824)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-7744 \062A\0639\0630\0631\062A \0645\0639\0627\0644\062C\0629 \0635\0641\062D\0629 \0639\0648\062F\0629 \0627\0644\0641\0631\0639 \0625\0644\0649 \0627\0644\0648\0638\064A\0641\0629.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892343747025824)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1430 \0639\0645\0644\064A\0629 \0627\0644\0627\0633\062A\062F\0639\0627\0621 \0644\0644\0639\0631\0636 \0645\0646 \0627\0644\0635\0641\062D\0629 \063A\064A\0631 \0645\062F\0639\0648\0645\0629: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893412368025825)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1018 \062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0645\0633\062D \0630\0627\0643\0631\0629 \0627\0644\062A\062E\0632\064A\0646 \0627\0644\0645\0624\0642\062A \0644\0644\062E\0637\0648\0629.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891890622025824)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1005 \0646\0648\0639 \0627\0644\062D\0633\0627\0628 \063A\064A\0631 \0645\0639\0631\0648\0641.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892740789025824)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1201 \0644\0645 \064A\062A\0645 \062A\0639\064A\064A\0646 \0645\0639\0631\0641 \0627\0644\062C\0644\0633\0629 \0641\064A \0627\0644\0645\0635\0627\062F\0642\0629 \0627\0644\0645\062E\0635\0635\0629.-')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892848341025824)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641\062D\0629=%0')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123892474553025824)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-7620 \062A\0639\0630\0631 \062A\062D\062F\064A\062F \0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644 \0644\0644\062A\0637\0628\064A\0642 (%0).')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123872974458025819)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0631\064A\0631')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891531039025824)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1802 \062A\0639\0630\0631 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0645\0639\0631\0641 \0627\0644\0639\0646\0635\0631 "%0"')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891289327025824)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1002 \062A\0639\0630\0631 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0645\0639\0631\0641 \0627\0644\0639\0646\0635\0631 \0627\0644\062E\0627\0635 \0628\0627\0644\0639\0646\0635\0631"%0" \0641\064A \0627\0644\062A\0637\0628\064A\0642 "%1".')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891315887025824)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \063A\064A\0631 \0645\062A\0648\0642\0639\060C \062A\0639\0630\0631 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0633\0645 \0627\0644\0639\0646\0635\0631 \0639\0644\0649 \0645\0633\062A\0648\0649 \0627\0644\0635\0641\062D\0629 \0623\0648 \0627\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891771033025824)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\0646\062A \0628\0627\0644\0641\0639\0644 \0641\064A \0627\0644\0635\0641\062D\0629 \0627\0644\0623\0648\0644\0649 \0645\0646 \0627\0644\0628\064A\0627\0646\0627\062A.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908262726025829)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0641 \0627\0644\0639\0646\0635\0631 (%0) \0644\064A\0633 \0639\0646\0635\0631\064B\0627 \0645\0639\0631\0641\064B\0627 \0641\064A \0627\0644\0635\0641\062D\0629 \0627\0644\062D\0627\0644\064A\0629.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865863507025816)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\0639\064A\064A\0646 \0627\0644\0639\0646\0635\0631 \0628\0648\0627\0633\0637\0629 \062A\0645\0631\064A\0631 \0627\0644\0648\0633\064A\0637\0627\062A \0625\0644\0649 \0627\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866137589025817)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'ar'
,p_message_text=>unistr('(\0644\0645 \064A\062A\0645 \062A\0648\0641\064A\0631 \062A\062F\0642\064A\0642 \0627\0644\0645\062C\0645\0648\0639)')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865687214025816)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646 \062A\0639\064A\064A\0646 \0627\0644\0639\0646\0635\0631 \0639\0646\062F\0645\0627 \064A\0643\0648\0646 \0645\0635\062D\0648\0628\064B\0627 \0628\062A\062F\0642\064A\0642 \0627\0644\0645\062C\0645\0648\0639 "\0639\0644\0627\0645\0629 \0645\0633\062A\0648\0649 \0627\0644\062A\0637\0628\064A\0642".')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865525980025816)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646 \062A\0639\064A\064A\0646 \0627\0644\0639\0646\0635\0631 \0639\0646\062F\0645\0627 \064A\0643\0648\0646 \0645\0635\062D\0648\0628\064B\0627 \0628\062A\062F\0642\064A\0642 \0627\0644\0645\062C\0645\0648\0639 "\0639\0644\0627\0645\0629 \0645\0633\062A\0648\0649 \0627\0644\062A\0637\0628\064A\0642".')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865776885025816)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646 \062A\0639\064A\064A\0646 \0627\0644\0639\0646\0635\0631 \0639\0646\062F\0645\0627 \064A\0643\0648\0646 \0645\0635\062D\0648\0628\064B\0627 \0628\062A\062F\0642\064A\0642 \0627\0644\0645\062C\0645\0648\0639 "\062C\0644\0633\0629".')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865435380025816)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0646\0635\0631 \0628\0644\0627 \062D\0645\0627\064A\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893591518025825)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \062A\062A\0648\0641\0631 \0635\0641\062D\0629 \062A\0639\0644\064A\0645\0627\062A.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123881469555025821)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644 %0 \0644\064A\0633 \0644\062F\064A\0647\0627 \0623\064A \0627\0645\062A\064A\0627\0632\0627\062A \0644\062A\062D\0644\064A\0644 \0627\0644\0645\062E\0637\0637 %1 \0644\063A\0648\064A\064B\0627.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891913181025824)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1010 \062A\0645 \062A\062C\0627\0648\0632 \062D\062F \062A\0643\0631\0627\0631 \0645\0639\0627\0644\062C\0629 \0642\0628\0648\0644 \0627\0644\0641\0631\0639 \0625\0644\0649 \0627\0644\0635\0641\062D\0629. %0')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123848492214025811)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641\062D\0629 \063A\064A\0631 \0645\062A\0627\062D\0629\060C \0644\0627 \064A\0645\0643\0646\0643 \062A\0634\063A\064A\0644 \0646\0645\0637 \0627\0644\0635\0641\062D\0629.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866087990025816)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0633\062A\062F\0639\0627\0621 \0647\0630\0647 \0627\0644\0635\0641\062D\0629 \0628\0627\0633\062A\062E\062F\0627\0645 \0631\0627\0628\0637 URL \0623\0648 \0628\0627\0633\062A\062E\062F\0627\0645 GET \0623\0648 POST \0625\0644\0649 \0625\062C\0631\0627\0621 \0627\0644\0639\0631\0636\060C \064A\062C\0628 \0627\0633\062A\062F\0639\0627\0621 \0646\0648\0639 \0627\0644\0641\0631\0639 "\0627\0644\0641\0631\0639 \0625\0644\0649 \0627\0644\0635\0641\062D\0629".')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123950821062025843)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0639\0646\062F \0645\062D\0627\0648\0644\0629 \062D\0641\0638 \0642\064A\0645\0629 \063A\064A\0631 \0631\0642\0645\064A\0629 \0641\064A \0627\0644\0639\0646\0635\0631 %0. ')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883183398025822)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062E\0637\0637 \0627\0644\062A\062D\0644\064A\0644 \0627\0644\0644\063A\0648\064A \0644\0644\062A\0637\0628\064A\0642 "%0" \063A\064A\0631 \0645\0648\062C\0648\062F \0641\064A \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883270118025822)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645 \0627\0644\062D\0633\0627\0628\0627\062A \0641\064A \0645\0633\0627\062D\0629 \0639\0645\0644 INTERNAL \0625\0644\0627 \0644\0645\0639\0627\0644\062C\0629 &PRODUCT_NAME. <a href="%0">\0627\0644\062E\062F\0645\0627\062A \0627\0644\0625\062F\0627\0631\064A\0629</a>.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891135759025824)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-1029 \062A\0639\0630\0631 \062A\062E\0632\064A\0646 \0645\0639\0644\0648\0645\0627\062A \0627\0644\062C\0644\0633\0629.  \0627\0644\062C\0644\0633\0629=%0 \0627\0644\0639\0646\0635\0631=%1')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894202718025825)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0625\064A\0642\0627\0641 \0627\0644\062A\062A\0628\0639: %0')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123891444510025824)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623 \063A\064A\0631 \0645\062A\0648\0642\0639')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902209076025827)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \062E\0637\0623 \0641\064A update_substitution_cache: %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894391019025825)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0625\062F\062E\0627\0644 \0627\0644\062A\0637\0628\064A\0642 \0648\0627\0644\0635\0641\062D\0629 \0644\0639\0631\0636 \0627\0644\062A\0639\0644\064A\0645\0627\062A.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123916018988025832)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0644\062A\0634\063A\064A\0644 \0627\0644\062A\0644\0642\0627\0626\064A.')
,p_version_scn=>2692388
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851562100025812)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623 \0641\064A \0627\0633\062A\0639\0644\0627\0645 \0627\0644\062A\0634\063A\064A\0644 \0627\0644\062A\0644\0642\0627\0626\064A: %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895402229025825)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0634\0637\0628 %0 \0645\0646 \0627\0644\062C\0644\0633\0627\062A.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836777231025807)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \062A\0646\0641\064A\0630 \0627\0644\0631\0645\0632 %0! \0647\0648 \063A\064A\0631 \0645\062F\0639\0648\0645 \0628\0648\0627\0633\0637\0629 \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0623\0648 \063A\064A\0631 \0645\0645\0643\0646 \0628\0648\0627\0633\0637\0629 \0645\0639\0644\0645\0629 \0627\0644\0645\062B\064A\0644 MLE_LANGUAGES.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123834377775025806)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\0631\0646\0627\0645\062C \0627\0644\062A\0634\063A\064A\0644 \0645\062A\0639\062F\062F \0627\0644\0644\063A\0627\062A \063A\064A\0631 \0645\062A\0648\0641\0631 \0641\064A \0646\0633\062E\0629 \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0647\0630\0647!')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873552451025819)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0644\0627 \064A\0643\0648\0646 \0635\0641\064A\0641 \0645\062C\0645\0648\0639\0629 \0627\0644\062A\0637\0628\064A\0642 \0641\0627\0631\063A\064B\0627')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873391082025819)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0642\0645 \0633\0645\0629 \0627\0644\0639\0636\0648 \0627\0644\0645\062D\062F\062F %0 \063A\064A\0631 \0635\0627\0644\062D.  \064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0631\0642\0645 \0627\0644\0633\0645\0629 \0628\064A\0646 1 \0648%1')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873815219025819)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062C\0645\0648\0639\0629 \0627\0644\062A\0637\0628\064A\0642 \0645\0648\062C\0648\062F\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873604413025819)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0623\0646 \064A\0643\0648\0646 \0627\0633\0645 \0627\0644\0645\062C\0645\0648\0639\0629 \0641\0627\0631\063A\064B\0627')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873731069025819)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0623\0646 \064A\0632\064A\062F \0627\0633\0645 \0627\0644\0645\062C\0645\0648\0639\0629 \0639\0646 255 \062D\0631\0641\064B\0627')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873135877025819)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062C\0645\0648\0639\0629 \0627\0644\062A\0637\0628\064A\0642 %0 \063A\064A\0631 \0645\0648\062C\0648\062F\0629')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873955897025819)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062E\0644\064A\0629 \0644\064A\0633\062A \0645\0641\062A\0648\062D\0629 \0628\0639\062F')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873255445025819)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\062A\0633\0644\0633\0644 \0627\0644\0639\0636\0648 %0 \063A\064A\0631 \0645\0648\062C\0648\062F \0641\064A \0645\062C\0645\0648\0639\0629 \0627\0644\062A\0637\0628\064A\0642 %1'),
''))
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123873457730025819)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0633\0644\0633\0644 \0627\0644\0639\0636\0648 %0 \063A\064A\0631 \0645\0648\062C\0648\062F \0641\064A \0645\062C\0645\0648\0639\0629 \0627\0644\062A\0637\0628\064A\0642 "%1"')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123826291564025804)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062E\0648\0627\0631\0632\0645\064A\0629 %0 \063A\064A\0631 \0645\062F\0639\0648\0645\0629 \0644\0640 ECDSA.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123825920312025804)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\0637\0639 \0627\0644\0646\0627\0642\0635 %0 \063A\064A\0631 \0645\062F\0639\0648\0645.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951631187025843)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0638\064A\0641\0629 \0627\0644\062A\0634\0641\064A\0631 "%0" \063A\064A\0631 \0645\062F\0639\0648\0645\0629 \0641\064A \0647\0630\0627 \0627\0644\0646\0638\0627\0645.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124003951139025861)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\062E\062A\0628\0627\0631 \0625\0645\0643\0627\0646\064A\0629 \0627\0644\0648\0635\0648\0644')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894971905025825)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\063A\0644\0627\0642')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895092918025825)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\064A\0627\0631\0627\062A \062A\062E\0635\064A\0635 \0627\0644\0635\0641\062D\0629')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895198969025825)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0641\062A\0631\0627\0636\064A')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895211056025825)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0648\0636')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895351572025825)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062E\0641\064A')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894730197025825)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062F \0627\0644\0645\0646\0627\0637\0642 \0627\0644\062A\064A \062A\0631\064A\062F \062A\0636\0645\064A\0646\0647\0627 \0641\064A \0647\0630\0647 \0627\0644\0635\0641\062D\0629. \0642\062F \0644\0627 \064A\062A\0645 \0639\0631\0636 \0627\0644\0645\0646\0627\0637\0642 \0627\0644\0645\062D\062F\062F\0629 \0625\0630\0627 \0644\0645 \062A\0643\0646 \0641\064A \0633\064A\0627\0642 \0627\0644\062A\0637\0628\064A\0642 \0627\0644\0635\062D\064A\062D \0623\0648 \0644\064A\0633\062A \0644\062F\064A\0643 \0627\0644\0627\0645\062A\064A\0627\0632\0627\062A \0627\0644\0635\062D\064A\062D\0629.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894881387025825)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'ar'
,p_message_text=>unistr('\0647\0630\0647 \0627\0644\0635\0641\062D\0629 \063A\064A\0631 \0642\0627\0628\0644\0629 \0644\0644\062A\062E\0635\064A\0635.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004205196025861)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0645\0643\0646\0643 \062A\062E\0635\064A\0635 \0647\064A\0626\0629 \0627\0644\062A\0637\0628\064A\0642 \0645\0646 \062E\0644\0627\0644 \062A\063A\064A\064A\0631 \0623\0633\0644\0648\0628 \0627\0644\0633\0645\0629. \0627\0644\0631\062C\0627\0621 \062A\062D\062F\064A\062F \0623\0633\0644\0648\0628 \0633\0645\0629 \0645\0646 \0627\0644\0642\0627\0626\0645\0629 \0623\062F\0646\0627\0647 \0648\0627\0644\0646\0642\0631 \0639\0644\0649 "\062A\0637\0628\064A\0642 \0627\0644\062A\063A\064A\064A\0631\0627\062A".')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124005088476025861)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0631\0636 \0627\0644\0645\0646\0637\0642\0629')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004103200025861)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\062E\062F\0627\0645 \0627\0644\0623\0633\0644\0648\0628 \0627\0644\0627\0641\062A\0631\0627\0636\064A \0644\0644\062A\0637\0628\064A\0642')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124004022388025861)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0647\064A\0626\0629 ')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948297246025842)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0624\0634\0631 \0627\0644\0639\0645\0648\062F \0627\0644\0645\0634\0627\0631 \0625\0644\064A\0647 \0641\064A %0 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840978230025809)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0625\0644\062D\0627\0642 \062A\0635\062F\064A\0631 \0627\0644\0628\064A\0627\0646\0627\062A \063A\064A\0631 \0645\062F\0639\0648\0645 \0644\062A\0646\0633\064A\0642 %0.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123803938071025796)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062E\0631\062C\0627\062A CLOB \063A\064A\0631 \0645\062F\0639\0648\0645\0629 \0644\0635\064A\063A\0629 %0.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947928600025842)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0641\0627\0635\0644 \0627\0644\0639\0645\0648\062F \0641\064A \0628\062F\0627\064A\0629 \0635\0641\064A\0641 \0627\0644\0623\0639\0645\062F\0629.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948070450025842)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0624\0634\0631 \0645\062C\0645\0648\0639\0629 \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\0634\0627\0631 \0625\0644\064A\0647 \0641\064A %0 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123855168082025813)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0635\062F\064A\0631')
,p_version_scn=>2692378
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123862362634025815)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0623\0646 \062A\0643\0648\0646 \0635\064A\063A\0629 \0627\0644\062A\0635\062F\064A\0631 XML \0628\0627\0633\062A\062E\062F\0627\0645 ORDS \0643\062E\0627\062F\0645 \0637\0628\0627\0639\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948386610025842)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0624\0634\0631 \0627\0644\0639\0645\0648\062F \0627\0644\0645\0634\0627\0631 \0625\0644\064A\0647 \0641\064A \0627\0644\062A\0645\064A\064A\0632 %0 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123851709459025812)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0635\064A\063A\0629 \0627\0644\062A\0635\062F\064A\0631 \063A\064A\0631 \0635\0627\0644\062D\0629: %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123948161644025842)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0624\0634\0631 \0627\0644\0645\062C\0645\0648\0639\0629 \0627\0644\0631\0626\064A\0633\064A\0629 \0627\0644\0645\0634\0627\0631 \0625\0644\064A\0647 \0641\064A %0 \063A\064A\0631 \0645\0648\062C\0648\062F.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123973361346025850)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F %1 \0641\064A \0627\0644\062C\062F\0648\0644 %0 \0639\0645\0648\062F \0628\0627\0644\0647\0648\064A\0629 "GENERATED ALWAYS". \0627\0644\0631\062C\0627\0621 \0627\0644\062A\0623\0643\062F \0645\0646 \0639\062F\0645 \062A\0639\064A\064A\0646 \0639\0645\0648\062F \0645\0635\062F\0631 \0644\0639\0645\0648\062F %1 \0641\064A \0645\0631\0628\0639 \062D\0648\0627\0631 \0627\0644\062A\0643\0648\064A\0646.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123884963398025822)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0627\0635\0644 \0627\0644\0627\0644\062A\0632\0627\0645 \0627\0644\0645\062D\062F\062F \0642\0644\064A\0644 \0644\0644\063A\0627\064A\0629.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885078809025822)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\0642\062F\064A\0645 \0623\0639\0645\062F\0629 \0644\062A\062D\0645\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886367056025822)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0623\0639\0645\062F\0629 \0644\0645\062D\062F\062F \0627\0644\0635\0641\0648\0641 "%0". \062C\0631\0628 \0627\0644\0627\0643\062A\0634\0627\0641 \0627\0644\062A\0644\0642\0627\0626\064A \0623\0648 \0631\0627\062C\0639 \0647\064A\0643\0644 JSON.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895708318025825)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0623\0648\0631\0627\0642 \0639\0645\0644 \0641\064A \0645\0644\0641 XLSX.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840837342025808)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062A\062C\0627\0648\0632 \0645\0633\062A\0648\064A\0627\062A \0627\0644\062A\062F\0631\062C \0627\0644\0647\0631\0645\064A \0627\0644\0645\0637\0644\0648\0628\0629 \0644\0627\0643\062A\0634\0627\0641 (%0) \0627\0644\062D\062F \0627\0644\0623\0642\0635\0649 \0627\0644\0628\0627\0644\063A %1.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895640581025825)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0631\0642\0649 \0627\0644\0639\0645\0644 \0627\0644\0645\062D\062F\062F\0629 \063A\064A\0631 \0645\0648\062C\0648\062F\0629 \0641\064A \0645\0644\0641 XLSX.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123874064260025819)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\063A\064A\0631\062A \0646\0633\062E\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\062D\0627\0644\064A\0629 \0641\064A \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0644\0623\0646 \0627\0644\0645\0633\062A\062E\062F\0645 \0628\062F\0623 \0639\0645\0644\064A\0629 \062A\062D\062F\064A\062B.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876901049025820)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\062D\062F\064A\062B \0623\0639\0645\062F\0629 \0627\0644\062A\0642\0631\064A\0631: %0')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987428746025855)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \062A\062D\0648\064A\0644 %0 \0625\0644\0649 SDO_GEOMETRY.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923994466025834)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\0648\064A\0644 \0627\0644\0639\0645\0648\062F  %0 \0645\0646 \0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A %1 \0625\0644\0649 VARCHAR2!')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931363703025837)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0644\0639\0645\0648\062F "%0" \0627\0644\0645\062D\062F\062F \0644\0644\0633\0645\0629 "%1" \0641\064A \0645\0635\062F\0631 \0627\0644\0628\064A\0627\0646\0627\062A!')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867496742025817)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0645\0631\0634\062D %0 \063A\064A\0631 \0645\062F\0639\0648\0645 \0644\0644\0623\0639\0645\062F\0629 \0645\062A\0639\062F\062F\0629 \0627\0644\0642\064A\0645.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990985368025856)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0631\0634\062D "\0628\064A\0646" \063A\064A\0631 \0635\0627\0644\062D.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123846511580025810)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0642\064A\0645\0629 %2 \0641\064A \0627\0644\0639\0645\0648\062F %0\060C \0627\0644\0635\0641 #%1.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123843215541025809)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F %0 \0623\0648 \0627\0644\0635\0641 #%1 \063A\064A\0631 \0645\0648\062C\0648\062F\064A\0646.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829859349025805)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645 \0627\0644\0645\062D\062F\062F\0629 \063A\064A\0631 \0635\0627\0644\062D\0629.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829780385025805)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0633\062A\0639\0644\0627\0645 \063A\064A\0631 \0635\0627\0644\062D. \064A\062C\0628 \0623\0646 \064A\0643\0648\0646 \0646\0648\0639 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \062C\062F\0648\0644 \0623\0648 \0627\0633\062A\0639\0644\0627\0645 SQL \0623\0648 \062F\0627\0644\0629 PL/SQL \062A\064F\0631\062C\0639 \0627\0633\062A\0639\0644\0627\0645 SQL.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123924011334025834)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0641\0634\0644 \062A\062D\0644\064A\0644 \0627\0633\062A\0639\0644\0627\0645 SQL \0644\063A\0648\064A\064B\0627!'),
'%0'))
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931473678025837)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0648\0636\0639 \0627\0644\0639\0645\0648\062F \0627\0644\0645\062D\062F\062F %0 \0644\0644\0633\0645\0629 "%1" \0641\064A \0639\0628\0627\0631\0629 SQL!')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123821460447025802)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0633\062A\062E\062F\0627\0645 \0627\0644\0643\062B\064A\0631 \0644\0644\063A\0627\064A\0629 \0645\0646 \0627\0644\0639\0646\0627\0635\0631 \0641\064A \0645\0631\0634\062D \0627\0644\0642\064A\0645\0629.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123931211836025837)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\062D\062F\064A\062F \0639\0645\0648\062F \0644\0644\0633\0645\0629 "%0".')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829618216025805)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\0631\062C\0639 \0646\0635 \062F\0627\0644\0629 PL/SQL \0642\064A\0645\0629.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123947072649025842)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A \0645\0635\062F\0631 \0628\064A\0627\0646\0627\062A REST \0639\0644\0649 \0639\0645\0644\064A\0629 \0644\0645\0639\0627\0644\062C\0629 \0625\062C\0631\0627\0621 DML \0627\0644\0645\0637\0644\0648\0628.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988755439025855)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062A\0645 \062F\0639\0645 \0645\0631\0634\062D\0627\062A \0627\0644\0646\0637\0627\0642 \0625\0644\0627 \0644\0623\0646\0648\0627\0639 \0627\0644\0628\064A\0627\0646\0627\062A NUMBER \0623\0648 DATE \0623\0648 TIMESTAMP.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123809602368025798)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \0627\0644\0637\0644\0628 \0645\0639 \0638\0647\0648\0631 %0')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123813187889025799)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0648\064A\0644 GeoJSON \0625\0644\0649 SDO_GEOMETRY (\0627\0644\0639\0645\0648\062F %0) \063A\064A\0631 \0645\062A\0648\0641\0631 \0641\064A \0645\062C\0645\0648\0639\0629 \0627\0644\0628\064A\0627\0646\0627\062A \0647\0630\0647.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816586446025801)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\0648\064A\0644 SDO_GEOMETRY (\0627\0644\0639\0645\0648\062F %0) \063A\064A\0631 \0645\062F\0639\0648\0645 \0644\0645\0635\0627\062F\0631 \0628\064A\0627\0646\0627\062A XML.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123840665883025808)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\0631\0641 %0 \063A\064A\0631 \0645\062F\0639\0648\0645 \0643\0641\0627\0635\0644 \0645\062A\0639\062F\062F \0627\0644\0642\064A\0645.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123988806480025855)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645 \0647\0630\0647 \0627\0644\0648\0638\064A\0641\0629 \0641\064A \0633\064A\0627\0642 \0627\0644\0627\0633\062A\0639\0644\0627\0645.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123816684012025801)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\0645 \062A\0637\0627\0628\0642 \0646\0648\0639 \0628\064A\0627\0646\0627\062A \0627\0644\0639\0645\0648\062F.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123850160550025812)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062F\0639\0645 \0645\0635\062F\0631 \0627\0644\0628\064A\0627\0646\0627\062A \0647\0630\0627 \0625\062C\0631\0627\0621 \062A\063A\064A\064A\0631 \0639\0644\0649 \0639\062F\0629 \0635\0641\0648\0641.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829559424025805)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062C\0627\0648\0632 \062D\062F\0648\062F \0631\0628\0637 ORDS OUT \0627\0644\062F\0627\062E\0644\064A\0629. \0627\0644\0631\062C\0627\0621 \062A\0642\0644\064A\0644 \0643\0645\064A\0629 \0635\0641\0648\0641 DML.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932202697025837)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\062A\0639\0630\0631 \062A\062D\0644\064A\0644 \0627\0633\062A\062C\0627\0628\0629 JSON \0645\0646 \0627\0644\062E\0627\062F\0645 \0627\0644\0628\0639\064A\062F \0644\063A\0648\064A\064B\0627: '),
'%0'))
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123829423446025805)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0633\064A\0627\0642 \062E\0637\0623 \0623\0648 \063A\064A\0631 \0645\0639\0631\0648\0641.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123853528640025813)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0645\0643\0648\0646\0627\062A \063A\064A\0631 \0627\0644\0645\062F\0639\0648\0645\0629 \0644\0644\062A\0635\062F\064A\0631 \0627\0644\0642\0627\0628\0644 \0644\0644\0642\0631\0627\0621\0629: %0')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123951529873025843)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0648\0639 \0627\0644\0645\0644\0641 \0647\0630\0627 \063A\064A\0631 \0645\062F\0639\0648\0645 \0628\0648\0627\0633\0637\0629 \0627\0644\0645\062D\0644\0644 \0627\0644\0644\063A\0648\064A.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902376389025827)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0635\0648\0644 \063A\064A\0631 \0645\0635\062F\0642 (\0644\0645 \064A\062A\0645 \062A\0639\064A\064A\0646 wwv_flow_api.set_credentials).')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877238111025820)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\0643\0648\064A\0646 \0645\0633\0627\062D\0629 \0627\0644\0639\0645\0644 \0644\0623\0646\0647\0627 \0645\0648\062C\0648\062F\0629 \0628\0627\0644\0641\0639\0644.')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123877140611025820)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\0643\0648\064A\0646 \0645\062C\0645\0648\0639\0629 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646 \0644\0623\0646\0647\0627 \0645\0648\062C\0648\062F\0629 \0628\0627\0644\0641\0639\0644.')
,p_version_scn=>2692380
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888541599025823)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0633\0645 \0645\0633\062A\062E\062F\0645 \0645\0643\0631\0631 \0644\0640 %0.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888656861025823)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\062D\0645\064A\0644 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646. \0641\0634\0644 \0639\0646\062F \0627\0644\0645\0633\062A\062E\062F\0645 %0.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899437337025826)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0627\0646 \0633\064A\062A\0645 \062A\062D\0645\064A\0644 %0 \0645\0646 \0627\0644\0645\0633\062A\062E\062F\0645\064A\0646.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899210421025826)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899302996025826)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0645\062A\064A\0627\0632\0627\062A')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899072861025826)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\0645 \0627\0644\0645\0633\062A\062E\062F\0645')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979447639025852)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0639\0631\0636 \0639\0646\0635\0631 \0627\0644\0635\0641\062D\0629 #COMPONENT_NAME#.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894493384025825)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0639\0631\0636 \0639\0646\0635\0631 \0627\0644\0635\0641\062D\0629 \0644\0623\0646\0647 \0644\0645 \064A\062A\0645 \0641\062A\062D \0646\0645\0648\0630\062C HTML \0628\0639\062F.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123852867582025812)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062D\0633\0627\0628 \0627\0644\0642\064A\0645\0629 \0627\0644\0627\0641\062A\0631\0627\0636\064A\0629 \0644\0639\0646\0635\0631 \0627\0644\0635\0641\062D\0629 #COMPONENT_NAME#.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893746752025825)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0641\064A \0627\0644\062D\0633\0627\0628 \0627\0644\0644\0627\062D\0642 \0644\0639\0646\0635\0631 \0627\0644\0635\0641\062D\0629 #COMPONENT_NAME#.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893646149025825)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062D\0633\0627\0628 \0642\064A\0645\0629 \0645\0635\062F\0631 \0627\0644\0639\0646\0635\0631 \0644\0639\0646\0635\0631 \0627\0644\0635\0641\062D\0629 #COMPONENT_NAME#.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870457766025818)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0648\0635\0648\0644 \063A\064A\0631 \0645\0639\062A\0645\062F.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819953238025802)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629 %0 \0645\0646 %1 \0644\064A\0633\062A \0635\0641\064A\0641 JSON \0635\0627\0644\062D.')
,p_version_scn=>2692372
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893947193025825)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062C\0627\0641\0627 \0633\0643\0631\0628\062A \063A\064A\0631 \0645\062F\0639\0648\0645\0629.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894094223025825)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123894646654025825)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0628\062F\0621 \0627\0644\0627\0633\062A\0639\0644\0627\0645.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902687019025828)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\062D\062F\064A\062B %0 \063A\064A\0631 \0645\062F\0639\0648\0645.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123896121160025825)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0641 \0627\0644\0639\0646\0635\0631 \063A\064A\0631 \0635\0627\0644\062D: %0 ')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923862688025834)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \062A\0648\062C\062F \062A\0639\0644\064A\0645\0627\062A \0644\0647\0630\0627 \0627\0644\0639\0646\0635\0631.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885606457025822)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644 \062A\0643\0648\064A\0646 \0627\0633\062A\0639\0644\0627\0645 \0627\0644\0631\0633\0645 \0627\0644\0628\064A\0627\0646\064A. \062A\062D\0642\0642 \0645\0646 \0625\0639\062F\0627\062F\0627\062A \062A\062E\0637\064A\0637 \0627\0644\0639\0645\0648\062F \0648\0627\0644\0645\0635\062F\0631.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886934664025823)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\064A\0645\0629 \063A\064A\0631 \0635\0627\0644\062D\0629 \0644\0644\0645\0639\0644\0645\0629 p_mail_id: %0')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923698254025834)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0639\0630\0631 \0627\0633\062A\062E\062F\0627\0645 \0639\0646\0627\0648\064A\0646 "\0625\0644\0649" \0623\0648 "\0631\062F \0639\0644\0649" \0643\0639\0646\0648\0627\0646 "\0645\0646"\060C \0644\0623\0646\0647\0627 \062A\062D\062A\0648\064A \0639\0644\0649 \0639\0646\0627\0648\064A\0646 \0628\0631\064A\062F \0625\0644\0643\062A\0631\0648\0646\064A \0645\062A\0639\062F\062F\0629.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124008555362025862)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0642\062F \062A\062C\0627\0648\0632\062A \0627\0644\0639\062F\062F \0627\0644\0623\0642\0635\0649 \0627\0644\0645\0633\0645\0648\062D \0628\0647 \0644\0639\062F\062F \0631\0633\0627\0626\0644 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A \0644\0643\0644 \0645\0633\0627\062D\0629 \0639\0645\0644. \0627\0644\0631\062C\0627\0621 \0627\0644\0627\062A\0635\0627\0644 \0628\0627\0644\0645\0633\0624\0648\0644.')
,p_version_scn=>2692403
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865169950025816)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0627\0633\062A\062F\0639\0627\0621 \0647\0630\0627 \0627\0644\0625\062C\0631\0627\0621 \0645\0646 \062F\0627\062E\0644 \062C\0644\0633\0629 \0627\0644\062A\0637\0628\064A\0642.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886872190025823)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0625\062F\062E\0627\0644 \0642\064A\0645\0629 \062E\0627\0644\064A\0629 \0644\0644\0645\0639\0644\0645\0629 %0.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123944911780025841)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0642\0627\0644\0628 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A "%0" \0641\064A \0627\0644\062A\0637\0628\064A\0642 %1.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124021484653025866)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\0639\064A\064A\0646 \0645\0639\0644\0645\0629 \0627\0644\0645\062B\064A\0644 SMTP_HOST_ADDRESS \0644\0625\0631\0633\0627\0644 \0631\0633\0627\0626\0644 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A.')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123886266480025822)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \0625\062F\062E\0627\0644 \0645\0633\062A\0644\0645 \0631\0633\0627\0644\0629 \0644\0625\0631\0633\0627\0644 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124010931746025863)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \062A\0643\0648\064A\0646 \0627\062A\0635\0627\0644 SMTP \0645\0639 \062E\0627\062F\0645 \0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A \0627\0644\0645\0643\0648\0646.')
,p_version_scn=>2692404
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123986250279025854)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\062F\0639\0627\0621 Ajax \063A\064A\0631 \0635\0627\0644\062D!')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870149909025818)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\0639\0631\064A\0641 \0648\0638\064A\0641\0629Ajax \0644\0644\0623\062F\0627\0629 \0627\0644\0625\0636\0627\0641\064A\0629 %0')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976754136025851)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\0639\0631\064A\0641 \062A\0646\0641\064A\0630 \0639\0631\0636 \0644\0644\0623\062F\0627\0629 \0627\0644\0625\0636\0627\0641\064A\0629 %0')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870243850025818)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\0639\0631\064A\0641 \0648\0638\064A\0641\0629 \0639\0631\0636 \0644\0644\0623\062F\0627\0629 \0627\0644\0625\0636\0627\0641\064A\0629 %0')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987120403025855)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\0631\0646\0627\0645\062C \0627\0644\0625\0636\0627\0641\064A \0644\0645\0635\062F\0631 \0628\064A\0627\0646\0627\062A REST "%0" \0644\0627 \064A\062D\062A\0648\064A \0639\0644\0649 \0648\0638\064A\0641\0629 "\0642\062F\0631\0627\062A".')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987085127025855)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\0631\0646\0627\0645\062C \0627\0644\0625\0636\0627\0641\064A \0644\0645\0635\062F\0631 \0628\064A\0627\0646\0627\062A REST "%0" \0644\0627 \064A\062D\062A\0648\064A \0639\0644\0649 \0648\0638\064A\0641\0629 DML.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987214314025855)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\0631\0646\0627\0645\062C \0627\0644\0625\0636\0627\0641\064A \0644\0645\0635\062F\0631 \0628\064A\0627\0646\0627\062A REST "%0" \0644\0627 \064A\062D\062A\0648\064A \0639\0644\0649 \0648\0638\064A\0641\0629 \062A\0646\0641\064A\0630.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123987312077025855)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\0631\0646\0627\0645\062C \0627\0644\0625\0636\0627\0641\064A \0644\0645\0635\062F\0631 \0628\064A\0627\0646\0627\062A REST "%0" \0644\0627 \064A\062D\062A\0648\064A \0639\0644\0649 \0648\0638\064A\0641\0629 \0625\062D\0636\0627\0631.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867606370025817)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \0627\0644\0625\0628\0644\0627\063A \0639\0646 \062E\0637\0623 \0641\064A \0631\0645\0632 PLSQL \0623\062B\0646\0627\0621 \0645\0639\0627\0644\062C\0629 \0627\0644\0623\062F\0627\0629 \0627\0644\0625\0636\0627\0641\064A\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876244563025819)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0627\0644\0642\064A\0645\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123909293414025830)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \062A\062D\0648\064A\0644 \0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A %0 \0625\0644\0649 VARCHAR2!')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997474533025858)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \0627\0644\0639\0645\0648\062F "%0" \0627\0644\0645\062D\062F\062F \0644\0644\0633\0645\0629 "%1" \0641\064A \0639\0628\0627\0631\0629 SQL!')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123824728157025803)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629 %0 \0645\0646 %1 \0644\064A\0633\062A \0635\0641\064A\0641 JSON \0635\0627\0644\062D.')
,p_version_scn=>2692374
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974678701025851)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062C\0628 \062A\062D\062F\064A\062F \0627\0633\062A\0639\0644\0627\0645 \0642\0627\0626\0645\0629 \0642\064A\0645 (LOV) \0623\0648 \0642\0627\0626\0645\0629 \0642\064A\0645 \0645\0639\064A\0646\0629 \0644\0640 %0.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123976222809025851)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\062F\062F \0627\0644\0623\0639\0645\062F\0629 \0627\0644\0645\062D\062F\062F\0629 \0641\064A \0627\0633\062A\0639\0644\0627\0645 SQL \0644\0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645 \0644\0640 %0 \062E\0637\0623. \0627\0637\0644\0639 \0639\0644\0649 \0623\0645\062B\0644\0629 \0627\0644\0639\0628\0627\0631\0627\062A \0627\0644\0635\0627\0644\062D\0629.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997212044025858)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\062A\0645 \062A\062D\062F\064A\062F \0639\0645\0648\062F \0644\0644\0633\0645\0629 "%0".')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026478796025868)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0642\064A\0645\0629 \0627\0644\0645\062F\062E\0644\0629 %0 \0644\0644\0633\0645\0629 "%1" \0644\064A\0633\062A \0631\0642\0645\064A\0629.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123979759509025852)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 \0644\0647 \0646\0648\0639 \0628\064A\0627\0646\0627\062A \062E\0637\0623 \0641\064A \0639\0628\0627\0631\0629 SQL. \0627\0644\0639\0645\0648\062F \0631\0642\0645 %1 \0647\0648 %2 \0644\0643\0646 %3 \0647\0648 \0627\0644\0645\062A\0648\0642\0639.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123997377980025858)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0639\0645\0648\062F "%0" \0627\0644\0645\062D\062F\062F \0644\0644\0633\0645\0629 "%1" \0628\0646\0648\0639 \0627\0644\0628\064A\0627\0646\0627\062A %2 \0644\0643\0646 \064A\062C\0628 \0623\0646 \064A\0643\0648\0646 %3.')
,p_version_scn=>2692400
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123866836875025817)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0627\0644\0639\062B\0648\0631 \0639\0644\0649 \062A\062E\0637\064A\0637 \0627\0644\062A\0642\0631\064A\0631.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123854450941025813)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0645 \062A\062C\0627\0648\0632 \062D\062F \0639\0645\0644\064A\0627\062A \0627\0644\062A\0646\0641\064A\0630 \0641\064A \0627\0644\062E\0644\0641\064A\0629 \0644\0640 %0.')
,p_version_scn=>2692376
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804787229025797)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \062A\0646\0641\064A\0630 %0 \0622\062E\0631 \0642\064A\062F \0627\0644\062A\0634\063A\064A\0644 \0628\0627\0644\0641\0639\0644.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123804676477025797)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\0648\062C\062F \062A\0646\0641\064A\0630 %0 \0622\062E\0631 \0642\064A\062F \0627\0644\062A\0634\063A\064A\0644 \0628\0627\0644\0641\0639\0644 \0644\0644\0633\064A\0627\0642 %1.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123819672214025802)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0631\0624\064A\0629 \0627\0644\0645\0644\0641\0627\062A \0627\0644\062A\064A \062A\0645 \062A\062D\0645\064A\0644\0647\0627 \0641\064A \0627\0644\062C\0644\0633\0629 \0642\064A\062F \0627\0644\062A\0634\063A\064A\0644 \0644\0644\062A\0646\0641\064A\0630 %0.')
,p_version_scn=>2692371
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932170942025837)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\0645\0643\0646 \0627\0633\062A\062E\062F\0627\0645 \0645\064A\0632\0629 \062D\0633\0627\0628 \0627\0644\0645\062C\0645\0648\0639 \0644\0644\062A\0642\0627\0631\064A\0631 \0627\0644\0642\0627\0626\0645\0629 \0639\0644\0649 \0645\0635\062F \0628\064A\0627\0646\0627\062A REST.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123893878204025825)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('ERR-2904 \062A\0639\0630\0631 \062A\0639\064A\064A\0646 \0642\064A\0645\0629 \0627\0644\0627\062E\062A\0635\0627\0631.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123898802477025826)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062E\0637\0623: \0646\0648\0639 \0627\062E\062A\0635\0627\0631 \063A\064A\0631 \0645\0639\0631\0648\0641.')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123836534325025807)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0633\062A\0639\0644\0627\0645 \0627\0644\0628\062D\062B \0637\0648\064A\0644 \0644\0644\063A\0627\064A\0629.')
,p_version_scn=>2692375
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123887911470025823)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0625\062D\0636\0627\0631 authentication_scheme \0641\064A \0627\0644\062A\0637\0628\064A\0642 %0.')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123895967122025825)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0639\0630\0631 \0633\062D\0628 \0627\0644\0645\0643\0648\0646 %0.')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123966289248025848)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\0639\0631\0641 \0627\0644\0639\0645\064A\0644 \0645\0648\062C\0648\062F \0628\0627\0644\0641\0639\0644 \0644\0644\062C\0644\0633\0629 \0627\0644\062D\0627\0644\064A\0629.')
,p_version_scn=>2692396
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123899183994025826)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0628\0631\064A\062F \0627\0644\0625\0644\0643\062A\0631\0648\0646\064A')
,p_version_scn=>2692385
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025930062025867)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0634\0644\062A \0627\0644\0645\0635\0627\062F\0642\0629.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123926558967025835)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A \0645\0644\0641 \062A\0639\0631\064A\0641 \0627\0631\062A\0628\0627\0637 \0648\0627\062D\062F \0623\0648 \0623\0643\062B\0631 \0641\064A apex_util.g_request_cookies \0639\0644\0649 \0642\064A\0645\0629 \063A\064A\0631 \0635\0627\0644\062D\0629.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123908465736025829)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0633\062A\062C\0627\0628\0629 \0645\0646 \0633\062C\0644 UDDI \063A\064A\0631 \0635\0627\0644\062D\0629.')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123867724526025817)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0645 \064A\0642\0645 \0631\0627\0628\0637 URL \0627\0644\0645\0642\062F\0645 \0628\0625\0631\062C\0627\0639 \0645\0633\062A\0646\062F WSDL \0635\0627\0644\062D.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123870522660025818)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A \0645\0633\062A\0646\062F WSDL \0639\0644\0649 \0639\062F\0629 \0631\0648\0627\0628\0637 SOAP. &PRODUCT_NAME. \0644\0627 \064A\062F\0639\0645 \0625\0644\0627 WSDL \0628\0631\0627\0628\0637 SOAP \0648\0627\062D\062F. \0627\0646\0642\0631 \0644\062A\0643\0648\064A\0646 \0645\0631\062C\0639 \062E\062F\0645\0629 \0648\064A\0628 \064A\062F\0648\064A\064B\0627 \0644\0645\062A\0627\0628\0639\0629 \062A\0643\0648\064A\0646 \0645\0631\062C\0639 \0644\0647\0630\0647 \0627\0644\062E\062F\0645\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123946158825025841)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0627\0633\062A\062C\0627\0628\0629 \0645\0646 \0627\0644\062E\062F\0645\0629 \0644\0645 \062A\0643\0646 \0628\0627\0644\0635\064A\063A\0629 XML.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124025866919025867)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0631\0645\0632 \0648\0635\0648\0644 \0645\0635\0627\062F\0642\0629 OAuth \0627\0644\0645\0645\064A\0632 \063A\064A\0631 \0645\062A\0648\0641\0631 \0623\0648 \0645\0646\062A\0647\064A \0627\0644\0635\0644\0627\062D\064A\0629.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123990340306025856)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0642\062F \062A\062C\0627\0648\0632\062A \0627\0644\0639\062F\062F \0627\0644\0623\0642\0635\0649 \0627\0644\0645\0633\0645\0648\062D \0628\0647 \0644\0639\062F\062F \0637\0644\0628\0627\062A \062E\062F\0645\0629 \0627\0644\0648\064A\0628 \0644\0643\0644 \0645\0633\0627\062D\0629 \0639\0645\0644. \0627\0644\0631\062C\0627\0621 \0627\0644\0627\062A\0635\0627\0644 \0628\0627\0644\0645\0633\0624\0648\0644.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124026064974025867)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0623\062C\0627\0628 \0627\0644\062E\0627\062F\0645 \0628\0646\0648\0639 \0631\0645\0632 \0645\0635\0627\062F\0642\0629 OAuth \0645\0645\064A\0632 \063A\064A\0631 \0645\062F\0639\0648\0645.')
,p_version_scn=>2692406
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869987438025818)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'ar'
,p_message_text=>unistr('\0644\0627 \064A\062D\062A\0648\064A \0645\0633\062A\0646\062F WSDL \0647\0630\0627 \0639\0644\0649 \0631\0627\0628\0637 SOAP \0627\0644\0645\0637\0644\0648\0628 \0644\0625\0636\0627\0641\0629 \0627\0644\0645\0631\062C\0639.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123865350541025816)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062A\0637\0644\0628 WSDL \0628\064A\0627\0646\0627\062A \0635\0644\0627\062D\064A\0629 \0627\0644\0645\0635\0627\062F\0642\0629. \0627\0644\0631\062C\0627\0621 \0625\062F\062E\0627\0644 \0627\0633\0645 \0627\0644\0645\0633\062A\062E\062F\0645 \0648\0643\0644\0645\0629 \0627\0644\0645\0631\0648\0631 \0623\062F\0646\0627\0647.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123876313609025820)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631 \0641\0647\0645 \0645\0633\062A\0646\062F WSDL \0628\0648\0627\0633\0637\0629 \0645\062D\0631\0643 \0627\0644\0639\0631\0636. \0627\0646\0642\0631 \0639\0644\0649 \062A\0643\0648\064A\0646 \0645\0631\062C\0639 \062E\062F\0645\0629 \0648\064A\0628 \064A\062F\0648\064A\064B\0627 \0644\0645\062A\0627\0628\0639\0629 \062A\0643\0648\064A\0646 \0645\0631\062C\0639 \0644\0647\0630\0627 \0627\0644\062E\062F\0645\0629.')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123949128258025842)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062A\0639\0630\0631\062A \0645\0639\0627\0644\062C\0629 \0627\0644\062A\062D\062F\064A\062B.')
,p_version_scn=>2692393
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974990099025851)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0627\0644\0639\0631\0636 \0648\0627\0644\0646\062A\064A\062C\0629 \0641\064A \0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645 \0647\0645\0627 \0627\0644\0639\0645\0648\062F \0646\0641\0633\0647!')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123974846700025851)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0642\0627\0626\0645\0629 \0627\0644\0642\064A\0645 \0644\0627 \062A\062D\062A\0648\064A \0639\0644\0649 \0639\0645\0648\062F \0646\062A\064A\062C\0629.')
,p_version_scn=>2692397
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902572385025827)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0627\0644\062D\0635\0648\0644 \0639\0644\0649 \0642\064A\0645\0629 \0627\0644\0639\0645\0648\062F: %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927440144025835)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'ar'
,p_message_text=>unistr('\0628\064A\0627\0646\0627\062A \0627\0644\0646\0645\0648\0630\062C \0627\0644\062C\062F\0648\0644\064A \0627\0644\062D\0627\0644\064A\0629 \0642\062F\064A\0645\0629 \0644\0644\063A\0627\064A\0629\060C \062A\0645 \062A\0639\062F\064A\0644 \0628\064A\0627\0646\0627\062A \0627\0644\0645\0635\062F\0631.<br/> \0627\0646\0642\0631 <strong><a href="%0">\0647\0646\0627</a></strong> \0644\062A\062C\0627\0647\0644 \062A\063A\064A\064A\0631\0627\062A\0643 \0648\0625\0639\0627\062F\0629 \062A\062D\0645\064A\0644 \0627\0644\0628\064A\0627\0646\0627\062A \0645\0646 \0642\0627\0639\062F\0629 \0627\0644\0628\064A\0627\0646\0627\062A.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882605136025821)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\062D\062F\064A\062F \0633\0644\0633\0644\0629 \0627\0644\062A\0642\0633\064A\0645 \0625\0644\0649 \0635\0641\062D\0627\062A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882548034025821)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\062A\0639\0630\0631 \062A\062D\062F\064A\062F \0639\0646\0627\0648\064A\0646 \0627\0644\0627\0633\062A\0639\0644\0627\0645:'),
'%0'))
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882783459025821)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \062A\0646\0641\064A\0630 \0627\0633\062A\0628\062F\0627\0644 \062A\0630\064A\064A\0644 \0627\0644\062A\0642\0631\064A\0631')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882803171025821)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0641\0634\0644 \062A\062D\0644\064A\0644 \0627\0633\062A\0639\0644\0627\0645 SQL \0644\063A\0648\064A\064B\0627:'),
'%0',
'%1'))
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888908400025823)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\062D\062F \0627\0644\0623\062F\0646\0649 \0644\0639\062F\062F \0627\0644\0635\0641\0648\0641: %0\060C \062A\0645 \0644\0644\0639\062B\0648\0631 \0639\0644\0649 \0635\0641\0648\0641 \0644\0643\0646 \0644\0645 \064A\062A\0645 \0639\0631\0636\0647\0627: %1')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885350413025822)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0627\0644\0627\0633\062A\0639\0644\0627\0645 #%0 (%1) \063A\064A\0631 \0635\0627\0644\062D\060C \062A\062D\062A\0627\062C \0627\0644\0623\0639\0645\062F\0629 \0627\0644\062A\064A \062A\0633\062A\062E\062F\0645 HTML \0625\0644\0649 \0623\0633\0645\0627\0621 \0645\0633\062A\0639\0627\0631\0629')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123902426372025827)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'ar'
,p_message_text=>unistr('\062D\062F\062B \062E\0637\0623 \0623\062B\0646\0627\0621 \0627\0644\062D\0635\0648\0644 \0639\0644\0649 \0639\0646\0627\0648\064A\0646 \0627\0644\0627\0633\062A\0639\0644\0627\0645\0627\062A: %0')
,p_version_scn=>2692387
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882916125025821)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\062E\0637\0623 \062A\0642\0631\064A\0631:'),
'%0'))
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123923006695025834)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'ar'
,p_message_text=>unistr('\0641\0631\0632 \062D\0633\0628 \0647\0630\0627 \0627\0644\0639\0645\0648\062F')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885410423025822)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'ar'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\062A\0639\0630\0631 \062A\062D\0644\064A\0644 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0644\063A\0648\064A\064B\0627\060C \0627\0644\0631\062C\0627\0621 \0627\0644\062A\062D\0642\0642 \0645\0646 \0635\064A\0627\063A\0629 \0627\0644\0627\0633\062A\0639\0644\0627\0645 \0627\0644\062E\0627\0635 \0628\0643.'),
'(%0)',
'</p>'))
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927516291025835)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'ar'
,p_message_text=>unistr('\064A\062D\062A\0648\064A \0647\0630\0627 \0627\0644\0646\0645\0648\0630\062C \0639\0644\0649 \062A\063A\064A\064A\0631\0627\062A \063A\064A\0631 \0645\062D\0641\0648\0638\0629. \0627\0646\0642\0631 \0639\0644\0649 "\0645\0648\0627\0641\0642" \0644\0644\0645\062A\0627\0628\0639\0629 \062F\0648\0646 \062D\0641\0638 \0627\0644\062A\063A\064A\064A\0631\0627\062A.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123932074516025837)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'ar'
,p_message_text=>unistr('\0645\062E\0637\0637 \062A\0642\0633\064A\0645 \0627\0644\062A\0642\0631\064A\0631 \0625\0644\0649 \0635\0641\062D\0627\062A (%0) \063A\064A\0631 \0645\062F\0639\0648\0645 \0641\064A \0645\0635\062F\0631 \0627\0644\0628\064A\0627\0646\0627\062A \0627\0644\0645\062D\062F\062F.')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123885251470025822)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0639\0645\0648\062F \0627\0644\0627\0633\062A\0639\0644\0627\0645  #%0 (%1) \063A\064A\0631 \0635\0627\0644\062D\060C \0627\0633\062A\062E\062F\0645 \0627\0644\0627\0633\0645 \0627\0644\0645\0633\062A\0639\0627\0631 \0644\0644\0639\0645\0648\062F')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123889028453025823)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641 (\0627\0644\0635\0641\0648\0641) %0 - %1 \0644\0623\0643\062B\0631 \0645\0646 %2')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123929541924025836)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 - %1 \0644\0623\0643\062B\0631 \0645\0646 %2')
,p_version_scn=>2692390
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123888814750025823)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0635\0641 (\0627\0644\0635\0641\0648\0641) %0 - %1 \0645\0646 %2')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123869612128025818)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'ar'
,p_message_text=>unistr('%0 - %1 \0645\0646 %2')
,p_version_scn=>2692379
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123883062334025821)
,p_name=>'Y'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0639\0645')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123890336138025824)
,p_name=>'YEAR'
,p_message_language=>'ar'
,p_message_text=>unistr('\0633\0646\0629')
,p_version_scn=>2692384
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123882204357025821)
,p_name=>'YEARS'
,p_message_language=>'ar'
,p_message_text=>unistr('\0627\0644\0633\0646\0648\0627\062A')
,p_version_scn=>2692382
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(123927628131025835)
,p_name=>'YES'
,p_message_language=>'ar'
,p_message_text=>unistr('\0646\0639\0645')
,p_version_scn=>2692390
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
 p_id=>wwv_flow_imp.id(109678305570583962.4498)
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
 p_id=>1.4498
,p_name=>unistr('\0627\0644\0631\0633\0627\0626\0644')
,p_alias=>'MESSAGES'
,p_step_title=>unistr('\0627\0644\0631\0633\0627\0626\0644')
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
