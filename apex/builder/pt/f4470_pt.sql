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
,p_default_application_id=>4495
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4495 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4495
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131492860567034690')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'pt'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4495)
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
 p_id=>wwv_flow_imp.id(4495)
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
 p_id=>wwv_flow_imp.id(728504220438374.4495)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4495)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4495)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4495)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4495)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4495)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4495)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4495)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4495)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4495)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4495)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4495)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4495)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4495)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4495)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4495)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4495)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.pt'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4495)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4495)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4495)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4495)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4495)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4495)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4495)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.pt'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4495)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4495)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4495)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4495)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4495)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4495)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.pt'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4495)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4495)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4495)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.pt'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4495)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4495)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4495)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4495)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4495)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4495)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4495)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4495)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4495)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4495)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4495)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4495)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4495)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4495)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4495)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4495)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4495)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.pt'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4495)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4495)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4495)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4495)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4495)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4495)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4495)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4495)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4495)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4495)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4495)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4495)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4495)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4495)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4495)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4495)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4495)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.pt'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4495)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4495)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4495)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4495)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4495)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4495)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4495)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4495)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4495)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4495)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4495)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4495)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4495)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4495)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4495)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.pt'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4495)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4495)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4495)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4495)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4495)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4495)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4495)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4495)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4495)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4495)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4495)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4495)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4495)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4495)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4495)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4495)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4495)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4495)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4495)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4495)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4495)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4495)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4495)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4495)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4495)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4495)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4495)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4495)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4495)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4495)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4495)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4495)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4495)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4495)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4495)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4495)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4495)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4495)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4495)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4495)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4495)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4495)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4495)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4495)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4495)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4495)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4495)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4495)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4495)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4495)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4495)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4495)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4495)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4495)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4495)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4495)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4495)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4495)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4495)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4495)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4495)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4495)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4495)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4495)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4495)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4495)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4495)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4495)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4495)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4495)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4495)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4495)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4495)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4495)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4495)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4495)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4495)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4495)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4495)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4495)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4495)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4495)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4495)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4495)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4495)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4495)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4495)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4495)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4495)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4495)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4495)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4495)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4495)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4495)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4495)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4495)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4495)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4495)
,p_page_name=>'winlov'
,p_page_title=>unistr('Caixa de Di\00E1logo Pesquisar')
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
,p_find_button_text=>'Pesquisar'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Fechar'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>'Seguinte &gt;'
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Anterior'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Linha(s) #FIRST_ROW# - #LAST_ROW#</div>'
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
 p_id=>wwv_flow_imp.id(649611609668764506.4495)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4495)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4495)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4495)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4495)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4495)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4495)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4495)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4495)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4495)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4495)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4495)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4495)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4495)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4495)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4495)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4495)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4495)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4495)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4495)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4495)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4495)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4495)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4495)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4495)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4495)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4495)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4495)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4495)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4495)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4495)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4495)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4495)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4495)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4495)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4495)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4495)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4495)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4495)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4495)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4495)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4495)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4495)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4495)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4495)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4495)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4495)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4495)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4495)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4495)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4495)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4495)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4495)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4495)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4495)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4495)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4495)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4495)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4495)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4495)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4495)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4495)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4495)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4495)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4495)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4495)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4495)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4495)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4495)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4495)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4495)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4495)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4495)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4495)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4495)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4495)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4495)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4495)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4495)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4495)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4495)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4495)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4495)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4495)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4495)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4495)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4495)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4495)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4495)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4495)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4495)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4495)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4495)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4495)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4495)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4495)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4495)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4495)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4495)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4495)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4495)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4495)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4495)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4495)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4495)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4495)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4495)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4495)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4495)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4495)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4495)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4495)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4495)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4495)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4495)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4495)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4495)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4495)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4495)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4495)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4495)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4495)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4495)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4495)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4495)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4495)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4495)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4495)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4495)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4495)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4495)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4495)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4495)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4495)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4495)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4495)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4495)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4495)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4495)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4495)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4495)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4495)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4495)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4495)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4495)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4495)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4495)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4495)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4495)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4495)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4495)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4495)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4495)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4495)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4495)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4495)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4495)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4495)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4495)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4495)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4495)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4495)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4495)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4495)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4495)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4495)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4495)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4495)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4495)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4495)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4495)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4495)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4495)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4495)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4495)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4495)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4495)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4495)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4495)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4495)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4495)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4495)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4495)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4495)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4495)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4495)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4495)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4495)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4495)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4495)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4495)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4495)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4495)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4495)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4495)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4495)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4495)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4495)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4495)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4495)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4495)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4495)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4495)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4495)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4495)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4495)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4495)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4495)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4495)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4495)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4495)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4495)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4495)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4495)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4495)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4495)
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
 p_id=>wwv_flow_imp.id(128173512657027208)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'pt'
,p_message_text=>'Coluna %0'
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158198765027203)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'pt'
,p_message_text=>'Administrador'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158079361027203)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'pt'
,p_message_text=>'Nome de Utilizador'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220713834027222)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'pt'
,p_message_text=>'Acesso Recusado'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177649460027209)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'pt'
,p_message_text=>'A sua conta %0 foi criada.'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160832552027204)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'pt'
,p_message_text=>unistr('A conta est\00E1 bloqueada.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145324045027199)
,p_name=>'AM_PM'
,p_message_language=>'pt'
,p_message_text=>'AM / PM'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128150618027194)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'pt'
,p_message_text=>unistr('liga\00E7\00E3o da a\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128083066027194)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'pt'
,p_message_text=>unistr('liga\00E7\00E3o da caixa de di\00E1logo')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292401340027244)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'pt'
,p_message_text=>'Alternar %0'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300244173027246)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'pt'
,p_message_text=>'(Ativo)'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105018593027187)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'pt'
,p_message_text=>'Chat limpo'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104979143027187)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'pt'
,p_message_text=>'Limpar chat'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101502378027186)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'pt'
,p_message_text=>'Aceitar'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101670304027186)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'pt'
,p_message_text=>'Recusar'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101377263027186)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'pt'
,p_message_text=>unistr('Hist\00F3rico de Conversa\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104798416027187)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'pt'
,p_message_text=>'Copiado'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104868737027187)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'pt'
,p_message_text=>unistr('Copiado para a \00E1rea de transfer\00EAncia')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104544684027187)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'pt'
,p_message_text=>'Copiar'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104671663027187)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'pt'
,p_message_text=>unistr('Copiar para \00E1rea de transfer\00EAncia')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102096902027186)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'pt'
,p_message_text=>'Assistente'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102413303027186)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'pt'
,p_message_text=>unistr('A IA est\00E1 desativada ao n\00EDvel do espa\00E7o de trabalho ou da inst\00E2ncia.')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141722478027198)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'pt'
,p_message_text=>unistr('O Servi\00E7o de IA Generativa com a ID fornecida ou ID est\00E1tica n\00E3o foi encontrado.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140460893027198)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro de autentica\00E7\00E3o ou acesso proibido (HTTP-%1) para o URL %0. Verifique a configura\00E7\00E3o do Servi\00E7o de IA Generativa %2.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120294792027192)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('O pedido de HTTP para o Servi\00E7o de IA Generativa em %0 falhou com HTTP-%1: %2')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144648058027199)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro no pedido de HTTP ao Servi\00E7o de IA Generativa para o plug-in %0 no modo %1. Verifique a configura\00E7\00E3o do Servi\00E7o de IA Generativa.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107407356027188)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Exemplos'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105886741027187)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'pt'
,p_message_text=>'Assistente'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107209826027188)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105704581027187)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'pt'
,p_message_text=>'Utilizador'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136466772027196)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('O OCI Generative AI n\00E3o suporta atualmente a experi\00EAncia de chat com v\00E1rias mensagens.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116357824027190)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar o prompt %0 para a aplica\00E7\00E3o %1. Verifique se o App Builder est\00E1 dispon\00EDvel nesta inst\00E2ncia.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121448987027192)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel processar a resposta para o AI Service %0, resposta %1')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127637526027194)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Enviar Mensagem'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115904642027190)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Erro no AI Service de backend %0'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101752790027186)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Mensagem'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101842463027186)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'pt'
,p_message_text=>'Introduza a sua mensagem aqui'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105168149027187)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'pt'
,p_message_text=>'Avatar do utilizador'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105260788027187)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'pt'
,p_message_text=>'Utilizar este/a'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101934875027186)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tem uma mensagem n\00E3o enviada, tem a certeza?')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270925919027237)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'pt'
,p_message_text=>'A chamada de Ajax devolveu o erro do servidor %0 para %1.'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198028129027215)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'pt'
,p_message_text=>unistr('O pseud\00F3nimo da aplica\00E7\00E3o "%0" n\00E3o pode ser convertido numa ID da aplica\00E7\00E3o exclusiva.')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186873783027212)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-1816 Erro inesperado ao converter o pseud\00F3nimo da aplica\00E7\00E3o p_flow_alias_or_id (%0).')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284281615027241)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('A soma de verifica\00E7\00E3o da aplica\00E7\00E3o proporciona uma forma f\00E1cil de determinar se a mesma aplica\00E7\00E3o \00E9 implementada em todos os espa\00E7os de trabalho. Pode comparar esta soma de verifica\00E7\00E3o para determinar se existe uma correspond\00EAncia. ')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170804141027207)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a fun\00E7\00E3o de autentica\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152884393027201)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a fun\00E7\00E3o de autentica\00E7\00E3o.')
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324769014027254)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'pt'
,p_message_text=>unistr('O Nome do Tenant %0 devolvido pelo Oracle Cloud Identity Management n\00E3o est\00E1 autorizado para o dom\00EDnio %1!<br/><a href="&LOGOUT_URL.">Entre novamente em sess\00E3o</a> e especifique um nome de tenant autorizado ou altere o seu URL.')
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148989143027200)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'pt'
,p_message_text=>unistr('A sua conta "%0" n\00E3o tem os privil\00E9gios de desenvolvimento necess\00E1rios (DB_DEVELOPER ou DB_ADMINISTRATOR)<br/>para o espa\00E7o de trabalho "%1"! <a href="&LOGOUT_URL.">Entre novamente em sess\00E3o</a> ap\00F3s os privil\00E9gios terem sido fornecidos.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145515435027199)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'pt'
,p_message_text=>unistr('O Nome do Tenant devolvido pelo Oracle Cloud Identity Management n\00E3o est\00E1 autorizado para o espa\00E7o de trabalho atual!<br/><a href="&LOGOUT_URL.">Entre novamente em sess\00E3o</a> e especifique um nome de tenant autorizado.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149078707027200)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'pt'
,p_message_text=>unistr('Por motivos de seguran\00E7a, n\00E3o \00E9 permitido executar aplica\00E7\00F5es deste espa\00E7o de trabalho atrav\00E9s do dom\00EDnio no URL.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170530935027207)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Pe\00E7a ao DBA para executar $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170426252027207)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'pt'
,p_message_text=>unistr('O pacote SYS.DBMS_LDAP n\00E3o existe ou \00E9 inv\00E1lido.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170304308027207)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a fun\00E7\00E3o de edi\00E7\00E3o de utilizador de LDAP.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170607122027207)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a autentica\00E7\00E3o de LDAP.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171468047027207)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'pt'
,p_message_text=>'Erro no argumento p_flow_page para o procedimento login_page.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171005049027207)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'pt'
,p_message_text=>unistr('p_session inv\00E1lido em wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222334367027222)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'pt'
,p_message_text=>'Argumento incorreto para wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171162255027207)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'pt'
,p_message_text=>unistr('Nome de utilizador nulo transmitido ao procedimento de entrada em sess\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157910960027203)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'pt'
,p_message_text=>unistr('Aguarde <span id="apex_login_throttle_sec">%0</span> segundos para entrar em sess\00E3o novamente.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159235676027203)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('A tentativa de entrada em sess\00E3o foi bloqueada.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220059740027222)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('Autentica\00E7\00E3o "%0" n\00E3o encontrada')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159788602027203)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'pt'
,p_message_text=>unistr('A ID do grupo de seguran\00E7a \00E9 nula.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170916325027207)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao executar o processo de p\00F3s-autentica\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170782134027207)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar o processo de pr\00E9-autentica\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172441748027207)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Abra o URL no mesmo browser onde iniciou o pedido Redefinir Senha. Se clicar no URL de Redefini\00E7\00E3o da Senha e for redirecionado para'),
unistr('a p\00E1gina de entrada em sess\00E3o, inicie novamente a Redefini\00E7\00E3o da Senha e deixe o'),
'browser aberto.'))
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322296683027253)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'pt'
,p_message_text=>unistr('URL de Redefini\00E7\00E3o da Senha')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149293945027200)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'pt'
,p_message_text=>unistr('O grupo de consumidores do Gestor de Recursos %0 n\00E3o foi concedido a %1')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149373599027200)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'pt'
,p_message_text=>unistr('Utilize DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP para conceder o privil\00E9gio em falta.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183944482027211)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a fun\00E7\00E3o de sentinela da sess\00E3o.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184050901027211)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a fun\00E7\00E3o de verifica\00E7\00E3o da sess\00E3o.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184220471027211)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Pe\00E7a ao administrador do %0 para configurar o mecanismo para o Acesso \00DAnico do Oracle Application Server.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194684659027214)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'pt'
,p_message_text=>'%0 ilegal no token %1 devolvido pelo SSO.'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171342105027207)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'pt'
,p_message_text=>unistr('Edite o esquema de autentica\00E7\00E3o e acrescente o nome da aplica\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194398658027214)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'pt'
,p_message_text=>'Chamador ilegal do procedimento %0:'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194539501027214)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('Sess\00E3o da aplica\00E7\00E3o inv\00E1lida no token de URLC: %0')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194199885027214)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro em portal_sso_redirect: informa\00E7\00F5es de registo da aplica\00E7\00E3o em falta: %0')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184101371027211)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'pt'
,p_message_text=>unistr('O pacote WWSEC_SSO_ENABLER_PRIVATE n\00E3o existe ou \00E9 inv\00E1lido.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171208916027207)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel encontrar o nome da aplica\00E7\00E3o de parceiro registada no esquema de autentica\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194291051027214)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'pt'
,p_message_text=>unistr('Registe esta aplica\00E7\00E3o conforme descrito no manual de instala\00E7\00E3o.')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184365354027211)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a autentica\00E7\00E3o de SSO.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297657536027245)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'pt'
,p_message_text=>unistr('URL N\00E3o Autorizado: %0')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183717433027211)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a autentica\00E7\00E3o.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149108834027200)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'pt'
,p_message_text=>unistr('O espa\00E7o de trabalho "%0" est\00E1 inativo. Contacte o administrador.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149897178027200)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'pt'
,p_message_text=>'%0'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158922449027203)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Acesso recusado pela verifica\00E7\00E3o de seguran\00E7a da Aplica\00E7\00E3o')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159006446027203)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Acesso recusado pela verifica\00E7\00E3o de seguran\00E7a da P\00E1gina')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159165702027203)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar a autoriza\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228227332027224)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'pt'
,p_message_text=>'Criado com %0 utilizando %1'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228307445027224)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'pt'
,p_message_text=>'amor'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288123977027243)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Descri\00E7\00E3o do Evento')
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287967473027242)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'pt'
,p_message_text=>'Data de Fim'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288246596027243)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'pt'
,p_message_text=>'ID do Evento'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287882296027242)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'pt'
,p_message_text=>unistr('Data de In\00EDcio')
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288050300027243)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo do Evento')
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130685628027195)
,p_name=>'APEX.CARD'
,p_message_language=>'pt'
,p_message_text=>unistr('Cart\00E3o')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130810306027195)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00E3o do cart\00E3o')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171549441027207)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'pt'
,p_message_text=>unistr('Caixa de sele\00E7\00E3o visualmente oculta')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173494136027208)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro no conte\00FAdo da soma de verifica\00E7\00E3o')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173388829027208)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro no formato da soma de verifica\00E7\00E3o')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243236654027229)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'pt'
,p_message_text=>unistr('Copiado para a \00E1rea de transfer\00EAncia.')
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242777785027229)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'pt'
,p_message_text=>unistr('Este browser n\00E3o suporta a c\00F3pia a partir de um bot\00E3o ou menu. Tente Ctrl+C ou Comando+C.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228955358027224)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'pt'
,p_message_text=>'Fechar'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107393010027188)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'pt'
,p_message_text=>unistr('O conte\00FAdo do Editor de C\00F3digo excede o comprimento m\00E1ximo do item (caracteres reais %0, caracteres permitidos %1)')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287420467027242)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'pt'
,p_message_text=>'Contraste'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281956272027241)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'pt'
,p_message_text=>'Atual'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281810029027241)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'pt'
,p_message_text=>'Inicial'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286096336027242)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# deve ser uma cor v\00E1lida. Exemplo: %0')
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148488792027200)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'pt'
,p_message_text=>'Mais cores'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148565188027200)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'pt'
,p_message_text=>'Abrir seletor de cores'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105625982027187)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'pt'
,p_message_text=>unistr('Cursor de Desloca\00E7\00E3o de Alfa, cursor de desloca\00E7\00E3o horizontal. Utilize as teclas de setas para navegar.')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105367145027187)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'pt'
,p_message_text=>unistr('Espectro de Cores, cursor de desloca\00E7\00E3o de 4 sentidos. Utilize as teclas de setas para navegar.')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105457155027187)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'pt'
,p_message_text=>unistr('Cursor de Desloca\00E7\00E3o de Tonalidade, cursor de desloca\00E7\00E3o vertical. Utilize as teclas de setas para navegar.')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281791203027241)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'pt'
,p_message_text=>'Escolher cor'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282031295027241)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'pt'
,p_message_text=>'Alterar formato da cor'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319918235027252)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'pt'
,p_message_text=>'Lista de Valores'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320093601027252)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'pt'
,p_message_text=>'Abrir lista para: %0'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300356400027246)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'pt'
,p_message_text=>unistr('(Conclu\00EDdo)')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189205782027212)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'pt'
,p_message_text=>unistr('Contacte o administrador da aplica\00E7\00E3o.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204707350027217)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Contacte o administrador da aplica\00E7\00E3o.'),
unistr('Existem detalhes sobre este incidente dispon\00EDveis atrav\00E9s da ID de depura\00E7\00E3o "%0".')))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286300548027242)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'pt'
,p_message_text=>'Corrija os erros antes de gravar.'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131637580027195)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'pt'
,p_message_text=>'%0. Prima a Tecla de retrocesso para apagar.'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229827913027225)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 correspond\00EAncias encontradas')
,p_is_js_message=>true
,p_version_scn=>2693229
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111759834027189)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('1 correspond\00EAncia encontrada')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229769421027225)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontradas correspond\00EAncias')
,p_is_js_message=>true
,p_version_scn=>2693229
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106178289027187)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'pt'
,p_message_text=>'Outros'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106032775027187)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'pt'
,p_message_text=>'%0 valores selecionados'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300899948027246)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'pt'
,p_message_text=>'Progresso Atual'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286795128027242)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O ficheiro especificado no item %0 n\00E3o existe em in APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275203943027238)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'pt'
,p_message_text=>unistr('A vers\00E3o atual dos dados na base de dados foi alterada desde que o utilizador iniciou o processo de atualiza\00E7\00E3o.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244398807027229)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Carregar')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290649976027243)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro de pr\00E9-processamento')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290459124027243)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'pt'
,p_message_text=>'Inserir linha'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304041747027247)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Sequ\00EAncia: A\00E7\00E3o')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290580343027243)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'pt'
,p_message_text=>'Atualizar linha'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119062442027191)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146646794027200)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'pt'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132794440027195)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 deve ser um seletor de datas ou uma data v\00E1lida, por exemplo, %1.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241952798027228)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'pt'
,p_message_text=>'Limpar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150115369027201)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'pt'
,p_message_text=>unistr('Conclu\00EDdo')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161127846027204)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 tem partes n\00E3o suportadas na m\00E1scara de formato: %1')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146384926027199)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'pt'
,p_message_text=>'Hora'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230246292027225)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Calend\00E1rio Sobreposto: %0')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146182933027199)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'pt'
,p_message_text=>'Semana'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146200635027199)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'pt'
,p_message_text=>'Sem.'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146563701027199)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'pt'
,p_message_text=>'Minutos'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146752743027200)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EAs')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147138333027200)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EAs Seguinte')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116765153027191)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'pt'
,p_message_text=>'Janela Sobreposta para %0'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147079626027200)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EAs Anterior')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239520632027228)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'pt'
,p_message_text=>unistr('Seletor de data s\00F3 de leitura')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147912195027200)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Data'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116852260027191)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Data e Hora'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114073085027190)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Dia'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117481896027191)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'pt'
,p_message_text=>unistr('Selecionar M\00EAs e Ano')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114257980027190)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Hora'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114700797027190)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'pt'
,p_message_text=>'Hoje'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132314428027195)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# deve ser uma data v\00E1lida; por exemplo, %0.')
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132040954027195)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'pt'
,p_message_text=>'#LABEL# deve estar entre %0 e %1.'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132174652027195)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'pt'
,p_message_text=>'#LABEL# deve ser igual ou posterior a %0.'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132270759027195)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'pt'
,p_message_text=>'#LABEL# deve ser igual ou anterior a %0.'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123607611027193)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'pt'
,p_message_text=>unistr('Edi\00E7\00E3o Visualmente Oculta')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146965821027200)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'pt'
,p_message_text=>'Ano'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233999042027226)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# \00E9 posterior \00E0 data m\00E1xima especificada %0.')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234362666027226)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# n\00E3o corresponde ao formato %0.')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233859414027226)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# \00E9 anterior \00E0 data m\00EDnima especificada %0.')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234091005027226)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# n\00E3o est\00E1 no intervalo v\00E1lido de %0 a %1.')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234203309027226)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# n\00E3o est\00E1 no intervalo de anos v\00E1lido de %0 e %1.')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126009668027193)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Ocorreu um erro interno ao processar o pedido DBMS_CLOUD.'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286687069027242)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'pt'
,p_message_text=>'Cancelar'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312599286027250)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'pt'
,p_message_text=>'Fechar'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173790151027208)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Confirma\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314509563027250)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286411855027242)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'pt'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286520110027242)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'pt'
,p_message_text=>'Gravar'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154258682027202)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo da Caixa de Di\00E1logo')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193908212027214)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo da caixa de di\00E1logo visualmente oculta')
,p_is_js_message=>true
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115078074027190)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'pt'
,p_message_text=>unistr('Fun\00E7\00E3o Pr\00E9-Criada do Gerador de Documentos da Oracle')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125823599027193)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro na impress\00E3o do documento.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103023252027186)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('%s n\00E3o suporta %1 como sa\00EDda de dados.')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114932165027190)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro "%0" ao invocar a Fun\00E7\00E3o Pr\00E9-Criada do Gerador de Documentos da Oracle:')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106412934027187)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 obrigat\00F3rio um modelo.')
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131844563027195)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'pt'
,p_message_text=>'Erro durante o descarregamento do ficheiro.'
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131707480027195)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontrados dados descarreg\00E1veis.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135374961027196)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta funcionalidade n\00E3o est\00E1 dispon\00EDvel num ambiente S\00F3 de Runtime.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188199627027212)
,p_name=>'APEX.ERROR'
,p_message_language=>'pt'
,p_message_text=>'Erro'
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148090711027200)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'pt'
,p_message_text=>'Ocorreu o erro seguinte ao executar a callback de tratamento de erros: %0'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160679013027204)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Ocorreu um erro ao pintar a p\00E1gina de erro: %0')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149785725027200)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'pt'
,p_message_text=>'Erro Interno'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299467730027246)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Contacte o administrador.',
unistr('Existem detalhes sobre este incidente dispon\00EDveis atrav\00E9s da ID de depura\00E7\00E3o "%0".')))
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294073212027244)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'pt'
,p_message_text=>unistr('A base de dados est\00E1 aberta para acesso s\00F3 de leitura.')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324121329027254)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'pt'
,p_message_text=>unistr('ORA-28353: Falha ao abrir o wallet. Dados da aplica\00E7\00E3o n\00E3o acess\00EDveis atualmente.')
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294157766027244)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta p\00E1gina n\00E3o est\00E1 dispon\00EDvel')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152741025027201)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'pt'
,p_message_text=>unistr('Informa\00E7\00F5es t\00E9cnicas (dispon\00EDveis apenas para programadores)')
,p_is_js_message=>true
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258670908027233)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'pt'
,p_message_text=>'Mensagem de Erro'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272585614027238)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'pt'
,p_message_text=>'Formato esperado: %0'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237459100027227)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'pt'
,p_message_text=>unistr('O Utilizador j\00E1 existe na Lista de Controlo de Acesso')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237310225027227)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'pt'
,p_message_text=>unistr('Confirme a adi\00E7\00E3o do(s) seguinte(s) %0 utilizador(es) \00E0 lista de controlo de acesso <strong>%1</strong>.')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237816898027227)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'pt'
,p_message_text=>'Existe um utilizador duplicado'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237521058027227)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'pt'
,p_message_text=>unistr('Falta o sinal de arroba (@) no endere\00E7o de Email')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237697885027227)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'pt'
,p_message_text=>unistr('Falta o ponto final (.) no endere\00E7o de Email')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237712625027227)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'pt'
,p_message_text=>unistr('O nome de utilizador \00E9 demasiado longo')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238079161027227)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'pt'
,p_message_text=>unistr('Apenas os utilizadores definidos na lista de controlo de acesso podem aceder a esta aplica\00E7\00E3o')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238167561027227)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor de Defini\00E7\00E3o de Controlo de Acesso Inesperado: %0')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237943197027227)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'pt'
,p_message_text=>unistr('Todos os utilizadores autenticados podem aceder a esta aplica\00E7\00E3o')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282423066027241)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'pt'
,p_message_text=>'Desativado'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282310808027241)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'pt'
,p_message_text=>'Ativado'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282638975027241)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'pt'
,p_message_text=>unistr('%0: Est\00E1 Desativado')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282579253027241)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'pt'
,p_message_text=>unistr('%0: Est\00E1 Ativado')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131162119027195)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Suportado')
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192358943027213)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'pt'
,p_message_text=>'Desativado'
,p_is_js_message=>true
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192214557027213)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'pt'
,p_message_text=>'Ativado'
,p_is_js_message=>true
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282295583027241)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o identificado')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122774985027192)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'pt'
,p_message_text=>'%0 Bytes'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123265665027192)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'pt'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122939900027192)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'pt'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123169789027192)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'pt'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275485239027238)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'pt'
,p_message_text=>'Descarregar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128536780027194)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Op\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128260415027194)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'pt'
,p_message_text=>'Filtrar'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128464429027194)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'pt'
,p_message_text=>'Ocultar Faceta'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153180838027201)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar Filtro'
,p_is_js_message=>true
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229426552027225)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'pt'
,p_message_text=>'Filtro %0 Aplicado'
,p_is_js_message=>true
,p_version_scn=>2693228
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153845472027202)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'pt'
,p_message_text=>'Aplicar'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273035456027238)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'pt'
,p_message_text=>'Aplicar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153926666027202)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'pt'
,p_message_text=>'Cancelar'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137746932027197)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'pt'
,p_message_text=>unistr('Gr\00E1fico de Barras')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285773982027242)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'pt'
,p_message_text=>'Outros'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137894633027197)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'pt'
,p_message_text=>'Sectograma'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284317316027241)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'pt'
,p_message_text=>'Diagrama'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137525048027197)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Contagem'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273526444027238)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'pt'
,p_message_text=>'Limpar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273685164027238)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'pt'
,p_message_text=>'Limpar Tudo'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273703582027238)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'pt'
,p_message_text=>'Limpar %0'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290205191027243)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('A coluna %1, referenciada pela faceta %0, n\00E3o est\00E1 dispon\00EDvel ou n\00E3o est\00E1 autorizada.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100917871027186)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'pt'
,p_message_text=>'Escolher Filtros para mostrar'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227495293027224)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'pt'
,p_message_text=>'%0 resultados'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227509046027224)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'pt'
,p_message_text=>'%0 selecionado'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230308876027225)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'pt'
,p_message_text=>'Filtros atuais'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105913349027187)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'pt'
,p_message_text=>unistr('A Pesquisa Facetada requer uma Origem de Dados ao n\00EDvel da regi\00E3o.')
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109671984027188)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'pt'
,p_message_text=>'Lista de filtros'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288795431027243)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'pt'
,p_message_text=>'Limite de valor distinto (%0) excedido para a faceta %1.'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275099317027238)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>unistr('A faceta %0 n\00E3o \00E9 suportada para colunas DATE ou TIMESTAMP.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273147585027238)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'pt'
,p_message_text=>'Filtrar %0'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147768956027200)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'pt'
,p_message_text=>'%0 (Filtro Aplicado)'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273202172027238)
,p_name=>'APEX.FS.GO'
,p_message_language=>'pt'
,p_message_text=>'Ir'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143286236027198)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'pt'
,p_message_text=>unistr('cont\00E9m %0')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274632277027238)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'pt'
,p_message_text=>'igual a %0'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142911926027198)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'pt'
,p_message_text=>'maior que %0'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143013706027198)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'pt'
,p_message_text=>'maior que ou igual a %0'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142678247027198)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'pt'
,p_message_text=>'menor que %0'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142847470027198)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'pt'
,p_message_text=>'menor que ou igual a %0'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142154685027198)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o cont\00E9m %0')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127964590027194)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'pt'
,p_message_text=>'diferente de %0'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142227753027198)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o come\00E7a por %0')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143176534027198)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'pt'
,p_message_text=>unistr('come\00E7a por %0')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141219668027198)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o de Faceta')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117084356027191)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'pt'
,p_message_text=>unistr('Prefixo do filtro %0" inv\00E1lido para a faceta "%1".')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115463723027190)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'pt'
,p_message_text=>'Prefixo do filtro em falta para a faceta "%0".'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149697280027200)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'pt'
,p_message_text=>'Operador'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131503884027195)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'pt'
,p_message_text=>unistr('cont\00E9m')
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130537674027195)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'pt'
,p_message_text=>'igual a'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131210005027195)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'pt'
,p_message_text=>'maior que'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131319196027195)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'pt'
,p_message_text=>'maior que ou igual a'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130945217027195)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'pt'
,p_message_text=>'menor que'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131040563027195)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'pt'
,p_message_text=>'menor que ou igual a'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142010506027198)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o cont\00E9m')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130712195027195)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'pt'
,p_message_text=>'diferente'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141940563027198)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o come\00E7a por')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131446920027195)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'pt'
,p_message_text=>unistr('come\00E7a por')
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150034891027201)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('O tipo de dados %0 (%1) n\00E3o \00E9 suportado para a faceta Campo de Entrada de Dados.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116901581027191)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('O filtro "%0" n\00E3o \00E9 suportado para a faceta "%1" (tipo de dados %2).')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149534581027200)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'pt'
,p_message_text=>'Valor'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274895577027238)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram fornecidas colunas de pesquisa para a faceta %0')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101024673027186)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'pt'
,p_message_text=>'Mais Filtros'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227666696027224)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'pt'
,p_message_text=>unistr('In\00EDcio do Intervalo')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274387875027238)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'pt'
,p_message_text=>'%0 a %1'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274422454027238)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'pt'
,p_message_text=>'Acima de %0'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274501868027238)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'pt'
,p_message_text=>'Abaixo de %0'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227707729027224)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'pt'
,p_message_text=>'Fim do Intervalo'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292320134027244)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('O item da LDV #%2 ("%1") para a faceta de intervalo %0 \00E9 inv\00E1lido (separador "|" em falta).')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274715276027238)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Entrada de Dados Manual para a faceta Intervalo %0 n\00E3o \00E9 suportada atualmente, uma vez que a coluna \00E9 DATE ou TIMESTAMP.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274024727027238)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'pt'
,p_message_text=>'para'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137649904027197)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'pt'
,p_message_text=>'Retirar Diagrama'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224018146027223)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'pt'
,p_message_text=>'Redefinir'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273458045027238)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273372374027238)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar...'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274285381027238)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'pt'
,p_message_text=>'- Selecionar -'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137499725027197)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'pt'
,p_message_text=>unistr('Mostrar Gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273871758027238)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'pt'
,p_message_text=>'Mostrar Menos'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128273968975027238)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'pt'
,p_message_text=>'Mostrar Tudo'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274146414027238)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'pt'
,p_message_text=>'%0 estrelas e mais'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229385069027225)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Filtrar sugest\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693228
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128274976168027238)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>unistr('A faceta Campo de Texto %0 atualmente s\00F3 \00E9 suportada para colunas NUMBER.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100415073027186)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00FAmero Total de Linhas')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290303913027243)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('O tipo de dados %0 (%1) n\00E3o \00E9 suportado para a pesquisa facetada.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220509937027222)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo visualmente oculto')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282888356027241)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Ir para o erro'
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238894002027227)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Agrega\00E7\00E3o.')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166762693027206)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo em branco')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248156953027230)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'pt'
,p_message_text=>unistr('Contrair controlo de interrup\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693233
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238941376027227)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Controlo de interrup\00E7\00E3o.')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248083284027230)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'pt'
,p_message_text=>unistr('Expandir controlo de interrup\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247856896027230)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'pt'
,p_message_text=>'%0 linhas apagadas'
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316993823027251)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'pt'
,p_message_text=>'Identidade duplicada'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109899005027188)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'pt'
,p_message_text=>unistr('A entrar no modo de edi\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235737340027226)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'pt'
,p_message_text=>'Primeiro'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108653933027188)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'pt'
,p_message_text=>unistr('Ocultar caixa de di\00E1logo')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107681589027188)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Conte\00FAdo da c\00E9lula de excesso de dados flutuante')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108936555027188)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'pt'
,p_message_text=>unistr('Mostrar este conte\00FAdo do excesso de dados')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183152716027210)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'pt'
,p_message_text=>unistr('Rodap\00E9 da Grelha')
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239167000027227)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Cabe\00E7alho do grupo')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239068076027227)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Cabe\00E7alho.')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235867352027226)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110081380027189)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'pt'
,p_message_text=>unistr('A sair do modo de edi\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134791754027196)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'pt'
,p_message_text=>'Carregar Todos'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257621439027233)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'pt'
,p_message_text=>'Mostrar Mais'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235513539027226)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239298264027228)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Linhas da p\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148303051027200)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'pt'
,p_message_text=>unistr('P\00E1gina %0')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235911365027227)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'pt'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236080042027227)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'pt'
,p_message_text=>'%0 - %1 de %2'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292924734027244)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o de P\00E1ginas')
,p_is_js_message=>true
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183475779027211)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'pt'
,p_message_text=>unistr('Pagina\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235606126027226)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133661627027196)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'pt'
,p_message_text=>unistr('Ecr\00E3 do intervalo')
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167019088027206)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o de Linhas')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316750372027251)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'pt'
,p_message_text=>'Acrescentado'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316872418027251)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'pt'
,p_message_text=>'Alterado'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128325183344027254)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Sequ\00EAncia de linha de grelha %0, Coluna %1.')
,p_is_js_message=>true
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128325240250027254)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Sequ\00EAncia de linha de grelha %0.')
,p_is_js_message=>true
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316635401027251)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'pt'
,p_message_text=>'Apagado'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239490711027228)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'pt'
,p_message_text=>unistr('Cabe\00E7alho da linha')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166923654027206)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o de Linhas')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134878443027196)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'pt'
,p_message_text=>'%0 %1 selecionado'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234959529027226)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 c\00E9lulas selecionadas')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236150917027227)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'pt'
,p_message_text=>'%0 linhas selecionadas'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278226196027239)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Tudo'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171745242027207)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Todas as Linhas'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247987527027230)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'pt'
,p_message_text=>unistr('P\00E1gina %0')
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239351801027228)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Linha'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239631330027228)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'pt'
,p_message_text=>'Ordenado por Ordem Crescente %0'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239787727027228)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'pt'
,p_message_text=>'Ordenado por Ordem Decrescente %0'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235092419027226)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'pt'
,p_message_text=>'Ordem Crescente'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235334810027226)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'pt'
,p_message_text=>'Ordem Crescente %0'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235100258027226)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'pt'
,p_message_text=>'Ordem Decrescente'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235405470027226)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'pt'
,p_message_text=>'Ordem Decrescente %0'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128235221234027226)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Ordenar')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100892393027186)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Op\00E7\00F5es de ordena\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183201351027210)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'pt'
,p_message_text=>unistr('\00CDcones de Estado')
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183377958027211)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'pt'
,p_message_text=>'Estado da Grelha'
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113122797027189)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'pt'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112852768027189)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'pt'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247755876027230)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'pt'
,p_message_text=>'Total de %0'
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166553904027205)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'pt'
,p_message_text=>'Falha no pedido de HTTP para "%0".'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168190865027206)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Coluna %0'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168319560027206)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'pt'
,p_message_text=>'Coluna %0 e linha %1'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168629464027206)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 na primeira coluna. Coluna %0 e linha %1')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168522216027206)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 na primeira linha. Coluna %0 e linha %1')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314131722027250)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'pt'
,p_message_text=>'Apresentado em %0 colunas e %1 linhas'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168738618027206)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 na \00FAltima coluna. Coluna %0 e linha %1')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168404034027206)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 na \00FAltima linha. Coluna %0 e linha %1')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247674557027230)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'pt'
,p_message_text=>'Apresentado em %0 linhas'
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168216412027206)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'pt'
,p_message_text=>'Linha %0'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324998018027254)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Grelha Interativa %0'
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232080667027225)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233071742027226)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232901658027226)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar Linha'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318512094027252)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'pt'
,p_message_text=>'Agregar'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304172530027247)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Agrega\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305830300027248)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'pt'
,p_message_text=>'Tudo'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263468877027235)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Todas as Colunas de Texto'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264621448027235)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'pt'
,p_message_text=>'Alternativo'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265776240027235)
,p_name=>'APEX.IG.AND'
,p_message_language=>'pt'
,p_message_text=>'e'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285139026027242)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'pt'
,p_message_text=>'Contagem Distinta Aprox.'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319556367027252)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'pt'
,p_message_text=>'Contagem Distinta Global Aprox.'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302777006027247)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C1rea')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304678519027248)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'pt'
,p_message_text=>'Crescente'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264714111027235)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Autoriza\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318645787027252)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'pt'
,p_message_text=>unistr('Autom\00E1tico')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285543229027242)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E9dia')
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319205720027252)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E9dia Global')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302211752027247)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo do Eixo da Etiqueta')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302426095027247)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'pt'
,p_message_text=>'Casas Decimais'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302363918027247)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo do Eixo do Valor')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308446165027249)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'pt'
,p_message_text=>'Cor de Segundo Plano'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302800611027247)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'pt'
,p_message_text=>'Barra'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260090737027234)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'pt'
,p_message_text=>'entre'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309664433027249)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'pt'
,p_message_text=>'Ambos'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302985349027247)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'pt'
,p_message_text=>'Bolhas'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233221571027226)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'pt'
,p_message_text=>'Cancelar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265619751027235)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'pt'
,p_message_text=>unistr('Sens\00EDvel a Mai\00FAsculas/Min\00FAsculas')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320145246027252)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'pt'
,p_message_text=>unistr('(Sens\00EDvel a Mai\00FAsculas/Min\00FAsculas)')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291483310027244)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'pt'
,p_message_text=>unistr('Altera\00E7\00F5es gravadas')
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233660745027226)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Alterar Visualiza\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266700314027236)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'pt'
,p_message_text=>'Diagrama'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263200401027235)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'pt'
,p_message_text=>unistr('A sua consulta excede o m\00E1ximo de %0 pontos de dados por diagrama. Aplique um filtro para reduzir o n\00FAmero de registos na sua consulta base.')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231913288027225)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o do Gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240379731027228)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'pt'
,p_message_text=>'Limpar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301738092027247)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Fecho'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308610795027249)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'pt'
,p_message_text=>'Cores'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285923702027242)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00E9-visualizar')
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265087478027235)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Coluna'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232157328027225)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Colunas'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194000017027214)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es da Coluna')
,p_is_js_message=>true
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193818618027214)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es para a coluna "%0"')
,p_is_js_message=>true
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310445795027249)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'pt'
,p_message_text=>'Finalidade da Coluna'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265170253027235)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'pt'
,p_message_text=>'Complexo'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232346847027225)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'pt'
,p_message_text=>'Calcular'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260646339027234)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'pt'
,p_message_text=>unistr('cont\00E9m')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266951710027236)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'pt'
,p_message_text=>unistr('Controlo de Interrup\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240116324027228)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'pt'
,p_message_text=>unistr('Copiar para \00C1rea de Transfer\00EAncia')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240294822027228)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'pt'
,p_message_text=>'Copiar Abaixo'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284972943027242)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'pt'
,p_message_text=>'Contagem'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285045862027242)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'pt'
,p_message_text=>'Contagem Distinta'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319449759027252)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'pt'
,p_message_text=>'Contagem Distinta Global'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319369227027252)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'pt'
,p_message_text=>'Contagem Global'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317087718027251)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'pt'
,p_message_text=>'Criar %0'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263657975027235)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'pt'
,p_message_text=>'Dados'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310204682027249)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>'Tipo de Dados'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309828330027249)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'pt'
,p_message_text=>'Data'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291285560027243)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor da Data Inv\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261396241027234)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'pt'
,p_message_text=>'dias'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264344355027235)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00F5es por Omiss\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264170827027235)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tipo por Omiss\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233173766027226)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'pt'
,p_message_text=>'Apagar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311306829027250)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'pt'
,p_message_text=>unistr('Tem a certeza de que pretende apagar este relat\00F3rio?')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268721144027236)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'pt'
,p_message_text=>'Apagar Linha'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267561399027236)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'pt'
,p_message_text=>'Apagar Linhas'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304733184027248)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'pt'
,p_message_text=>'Decrescente'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266449272027236)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'pt'
,p_message_text=>'Detalhe'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231633416027225)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de Detalhe')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293796581027244)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Dire\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266107439027236)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'pt'
,p_message_text=>'Desativado'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260785188027234)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o cont\00E9m')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260974225027234)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o come\00E7a por')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303004511027247)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'pt'
,p_message_text=>'Anel'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267144918027236)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'pt'
,p_message_text=>'Descarregar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157407118027203)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'pt'
,p_message_text=>'Apenas Dados'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312306587027250)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'pt'
,p_message_text=>'Escolher Formato'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172525716027207)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'pt'
,p_message_text=>unistr('O Formato de Descarregamento %0 n\00E3o est\00E1 ativado.')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305434087027248)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Agrega\00E7\00E3o Duplicada')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305514938027248)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'pt'
,p_message_text=>unistr('Controlo de Interrup\00E7\00E3o Duplicado')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268689893027236)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'pt'
,p_message_text=>'Duplicar Linha'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267492391027236)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'pt'
,p_message_text=>'Duplicar Linhas'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232746842027226)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'pt'
,p_message_text=>'Editar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304520055027248)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'pt'
,p_message_text=>unistr('Editar Gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185070782027211)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'pt'
,p_message_text=>'Editar %0'
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315977284027251)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'pt'
,p_message_text=>'Editar Grupo por'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223133355027223)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 em modo de edi\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198752506027215)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Grelha no modo de edi\00E7\00E3o. Anule o bot\00E3o premido para alternar para o modo de visualiza\00E7\00E3o.')
,p_is_js_message=>true
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311960086027250)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'pt'
,p_message_text=>unistr('C\00F3pia oculta (bcc)')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312189952027250)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'pt'
,p_message_text=>'Mensagem'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311841434027250)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'pt'
,p_message_text=>unistr('C\00F3pia (cc)')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311554726027250)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'pt'
,p_message_text=>'Mensagem de email enviada.'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312061855027250)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'pt'
,p_message_text=>'Assunto'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311742637027250)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'pt'
,p_message_text=>unistr('Destinat\00E1rio (para)')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265802356027236)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'pt'
,p_message_text=>'Ativado'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259041012027233)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'pt'
,p_message_text=>'igual a'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265918012027236)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('Express\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310926799027249)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'pt'
,p_message_text=>'Tipo'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278194044027239)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'pt'
,p_message_text=>'Ficheiro preparado. A iniciar descarregamento.'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240496746027228)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'pt'
,p_message_text=>'Preencher'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242673041027229)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o de preenchimento com')
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242518141027229)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o de Preenchimento')
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232226755027225)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'pt'
,p_message_text=>'Filtrar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265201181027235)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'pt'
,p_message_text=>'Filtros'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318939467027252)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'pt'
,p_message_text=>'Filtrar...'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304942647027248)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'pt'
,p_message_text=>'Primeiro'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232480041027225)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'pt'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263785818027235)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'pt'
,p_message_text=>'Formatar'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309564917027249)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E1scara de Formato')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311280657027249)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'pt'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311186562027249)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'pt'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222216724027222)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'pt'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156131063027202)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'pt'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268307806027236)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'pt'
,p_message_text=>'Congelar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266040830027236)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'pt'
,p_message_text=>unistr('Fun\00E7\00F5es e Operadores')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303174799027247)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'pt'
,p_message_text=>'Funil'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284810450027242)
,p_name=>'APEX.IG.GO'
,p_message_language=>'pt'
,p_message_text=>'Ir'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259649578027234)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'pt'
,p_message_text=>'maior que'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259727625027234)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'pt'
,p_message_text=>'maior que ou igual a'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266390643027236)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'pt'
,p_message_text=>'Grelha'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231435477027225)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de Grelha')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305776366027248)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'pt'
,p_message_text=>'Agrupar'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266586695027236)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'pt'
,p_message_text=>'Agrupar por'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231792481027225)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o Agrupar Por')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310168314027249)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tipo de Condi\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309032938027249)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309210446027249)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'pt'
,p_message_text=>unistr('Alinhamento do T\00EDtulo')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318885705027252)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314302451027250)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Pode inserir, atualizar e apagar dados diretamente nesta grelha interativa.</p>',
'',
unistr('<p>Insira uma nova linha clicando no bot\00E3o Acrescentar Linha.</p>'),
'',
unistr('<p>Edite os dados existentes clicando duas vezes numa c\00E9lula espec\00EDfica. Para edi\00E7\00F5es maiores, clique em Editar para entrar no modo de edi\00E7\00E3o. No modo de edi\00E7\00E3o, pode clicar uma vez ou utilizar o teclado para editar c\00E9lulas espec\00EDficas.</p>'),
'',
unistr('<p>Utilize o menu Alterar para duplicar e apagar linhas. Para ativar o menu Alterar, utilize as caixas de sele\00E7\00E3o para selecionar uma ou mais linhas.</p>'),
'',
'<p>Duplique uma linha selecionada clicando no menu Alterar e selecionando Duplicar Linhas. Apague uma linha selecionada clicando no menu Alterar e selecionando Apagar Linha.</p>'))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316465669027251)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'pt'
,p_message_text=>unistr('Capacidades de Edi\00E7\00E3o')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316521639027251)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Uma grelha interativa apresenta um conjunto de dados num relat\00F3rio pesquis\00E1vel e customiz\00E1vel. Pode efetuar diversas opera\00E7\00F5es para limitar os registos devolvidos e alterar a forma como os dados s\00E3o apresentados.</p>'),
'',
unistr('<p>Utilize o campo Pesquisar para filtrar os registos devolvidos. Clique em A\00E7\00F5es para aceder a diversas op\00E7\00F5es para modificar a disposi\00E7\00E3o do relat\00F3rio ou utilize os menus de T\00EDtulo da Coluna nas colunas apresentadas.</p>'),
'',
unistr('<p>Utilize as Defini\00E7\00F5es do Relat\00F3rio para gravar as suas customiza\00E7\00F5es num relat\00F3rio. Tamb\00E9m pode descarregar os dados do relat\00F3rio para um ficheiro externo ou enviar os dados por email para si pr\00F3prio ou para outras pessoas.</p>'),
'',
unistr('<p>Para saber mais, consulte o t\00F3pico sobre como Utilizar Grelhas Interativas no <em>Oracle APEX End User''s Guide</em>.')))
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316225731027251)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'pt'
,p_message_text=>'Perspetiva Geral'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314291004027250)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Pode customizar a grelha interativa para apresentar os dados de formas diferentes utilizando as capacidades integradas.</p>',
'',
unistr('<p>Utilize os menus de T\00EDtulo da Coluna ou o menu A\00E7\00F5es para determinar as colunas a apresentar, por que sequ\00EAncia e congelar colunas. Tamb\00E9m pode definir v\00E1rios filtros de dados e ordenar os dados devolvidos.</p>'),
'',
unistr('<p>Utilize o bot\00E3o Visualizar (adjacente ao campo Pesquisar) para aceder a outras visualiza\00E7\00F5es de dados que possam ter sido definidas pelo programador da aplica\00E7\00E3o. Tamb\00E9m pode criar um diagrama ou visualizar um diagrama existente.</p>  '),
'',
unistr('<p><em>Nota: Clique em <strong>Aux\00EDlio</strong> nas caixas de di\00E1logo da grelha interativa para obter informa\00E7\00F5es mais detalhadas sobre a fun\00E7\00E3o selecionada.</em></p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316399417027251)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'pt'
,p_message_text=>unistr('Capacidades de Gera\00E7\00E3o de Relat\00F3rios')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267326226027236)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio da Grelha Interativa')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313146415027250)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para agregar colunas. Os valores agregados s\00E3o apresentados na parte inferior dos dados ou, se existirem Controlos de Interrup\00E7\00E3o definidos, na parte inferior de cada interrup\00E7\00E3o.</p>'),
'',
unistr('<p><strong>Lista Agrega\00E7\00E3o</strong><br>'),
unistr('A lista Agrega\00E7\00E3o apresenta as agrega\00E7\00F5es definidas. Desative uma agrega\00E7\00E3o existente anulando a respetiva sele\00E7\00E3o.<br>'),
unistr('Clique em Acrescentar (&plus;) para criar uma nova agrega\00E7\00E3o ou em Apagar (&minus;) para retirar uma agrega\00E7\00E3o existente.</p>'),
'',
unistr('<p><strong>Defini\00E7\00F5es de Agrega\00E7\00E3o</strong><br>'),
unistr('Utilize o formul\00E1rio \00E0 direita para definir a agrega\00E7\00E3o.<br>'),
unistr('Selecione o nome da Coluna e o tipo de Agrega\00E7\00E3o.<br>'),
unistr('Opcionalmente, introduza uma nota informativa para a agrega\00E7\00E3o.<br>'),
unistr('Se tiver definido um Controlo de Interrup\00E7\00E3o, a sele\00E7\00E3o de <strong>Mostrar Valor Global</strong> apresenta o valor m\00E9dio global, total ou semelhante na parte inferior dos dados.</p>'),
'',
unistr('<p><em>Nota: Aceda \00E0 caixa de di\00E1logo Agrega\00E7\00E3o no menu A\00E7\00F5es ou clicando no t\00EDtulo da coluna e em soma (&sum;).</em></p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315304552027251)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio da Agrega\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313814681027250)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para definir um diagrama que \00E9 apresentado como uma visualiza\00E7\00E3o de dados separada.<br> '),
'Selecione um Tipo de diagrama e atributos do diagrama.</p>',
'<p><strong>Atributos do Diagrama</strong><br>',
unistr('Os atributos do diagrama dispon\00EDveis variam consoante o tipo de diagrama.</p>'),
'<p>',
'<ul>',
unistr('  <li>Selecione a coluna que cont\00E9m o valor para o atributo:'),
'<ul>',
'      <li>Etiqueta - O texto para cada ponto de dados.</li>',
unistr('      <li>Valor - Os dados a tra\00E7ar.</li>'),
unistr('      <li>S\00E9rie - Para definir a sua consulta din\00E2mica de v\00E1rias s\00E9ries.</li>'),
unistr('      <li>Abertura - O pre\00E7o de abertura di\00E1rio da a\00E7\00E3o (apenas para A\00E7\00F5es).</li>'),
unistr('      <li>Fecho - O pre\00E7o de fecho di\00E1rio da a\00E7\00E3o (apenas para A\00E7\00F5es).</li>'),
unistr('      <li>M\00E1ximo - O valor m\00E1ximo (apenas para Intervalos e A\00E7\00F5es).</li>'),
unistr('      <li>M\00EDnimo - O valor m\00EDnimo (apenas para Intervalos e A\00E7\00F5es).</li>'),
unistr('      <li>Volume - O volume di\00E1rio de a\00E7\00F5es (apenas para A\00E7\00F5es).</li>'),
'      <li>Alvo - O valor-alvo (apenas para Funil).</li>',
unistr('      <li>X - O valor do eixo X (apenas para Bolhas e Dispers\00E3o).</li>'),
unistr('      <li>Y - O valor do eixo Y (apenas para Bolhas e Dispers\00E3o).</li>'),
'      <li>Z - A largura da barra ou o raio da bolha (apenas para Barras, Bolhas e Intervalos).</li>',
'    </ul>',
'  </li>',
unistr('  <li>Orienta\00E7\00E3o - Vertical ou horizontal.</li>'),
unistr('  <li>Agrega\00E7\00E3o - Selecione como agregar os valores de diagrama.</li>'),
unistr('  <li>Pilha - Especifique se os itens de dados s\00E3o empilhados.</li>'),
'  <li>Ordenar Por - Selecione pela etiqueta ou pelo(s) valor(es).',
'<ul>',
unistr('      <li>Dire\00E7\00E3o - Ordene por valores crescentes ou decrescentes.</li>'),
unistr('      <li>Nulos - Especifique como ordenar os registos com valores nulos em rela\00E7\00E3o aos registos com valores n\00E3o nulos.</li>'),
'    </ul>',
'  </li>',
'  <li>Casas Decimais</li>',
unistr('  <li>T\00EDtulo do Eixo da Etiqueta</li>'),
unistr('  <li>T\00EDtulo do Eixo do Valor</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315786749027251)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do Diagrama')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312841187027250)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para escolher quais as colunas apresentadas e por que ordem.</p>'),
'',
unistr('<p>Oculte uma coluna anulando a respetiva sele\00E7\00E3o.<br>'),
'Reordene as colunas clicando em Deslocar para Cima (&uarr;) ou Deslocar para Baixo (&darr;).<br>',
unistr('Utilize o seletor pendente para listar Todas as colunas, as Colunas apresentadas ou as Colunas n\00E3o apresentadas.</p>'),
'',
unistr('<p>Opcionalmente, utilize o formul\00E1rio para especificar a largura m\00EDnima de uma coluna em p\00EDxeis.</p>'),
'',
unistr('<p><em>Nota: Tamb\00E9m pode reordenar as colunas apresentadas clicando na al\00E7a para arrastar (no in\00EDcio do t\00EDtulo da coluna) e arrastando a coluna para a esquerda ou direita. Tamb\00E9m pode alterar a largura das colunas apresentadas selecionando o separado')
||unistr('r da coluna, entre os t\00EDtulos, e deslocando-o para a esquerda ou direita.</em></p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315687658027251)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio das Colunas')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313264222027250)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para definir colunas adicionais com base em c\00E1lculos matem\00E1ticos e funcionais efetuados em rela\00E7\00E3o \00E0s colunas existentes.</p>'),
'',
unistr('<p><strong>Lista C\00E1lculo</strong><br>'),
unistr('A lista C\00E1lculo apresenta os c\00E1lculos definidos. Desative um c\00E1lculo existente anulando a respetiva sele\00E7\00E3o.<br>'),
unistr('Clique em Acrescentar (&plus;) para acrescentar um novo c\00E1lculo ou em Apagar (&minus;) para retirar um c\00E1lculo existente.</p>'),
'',
unistr('<p><strong>Defini\00E7\00F5es de C\00E1lculo</strong><br>'),
unistr('Utilize o formul\00E1rio para definir o c\00E1lculo.<br>'),
unistr('Introduza os detalhes da coluna, como o t\00EDtulo ou etiqueta, e selecione as defini\00E7\00F5es de alinhamento.<br> '),
unistr('Utilize a \00E1rea de texto Express\00E3o para introduzir a(s) coluna(s) e as fun\00E7\00F5es associadas para o c\00E1lculo.<br>'),
unistr('Selecione o tipo de dados adequado e, opcionalmente, uma m\00E1scara de formato para a nova coluna.</p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315226713027251)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do C\00E1lculo')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313518286027250)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para definir um controlo de interrup\00E7\00E3o numa ou mais colunas.</p>'),
'',
unistr('<p><strong>Lista Controlo de Interrup\00E7\00E3o</strong><br>'),
unistr('A lista Controlo de Interrup\00E7\00E3o apresenta os controlos de interrup\00E7\00E3o definidos. Desative uma coluna de controlo de interrup\00E7\00E3o existente anulando a respetiva sele\00E7\00E3o.<br>'),
unistr('Clique em Acrescentar (&plus;) para incluir uma nova coluna no controlo de interrup\00E7\00E3o ou em Apagar (&minus;) para retirar uma coluna existente do controlo de interrup\00E7\00E3o.<br>'),
unistr('Para reordenar colunas, clique em Deslocar para Cima (&uarr;) ou Deslocar para Baixo (&darr;) para deslocar a coluna selecionada para cima e para baixo relativamente \00E0s outras colunas.</p>'),
'',
unistr('<p><strong>Defini\00E7\00F5es de Controlo de Interrup\00E7\00E3o</strong><br>'),
unistr('Utilize o formul\00E1rio para definir a coluna de controlo de interrup\00E7\00E3o.<br>'),
unistr('Selecione uma coluna de controlo de interrup\00E7\00E3o, a dire\00E7\00E3o de ordena\00E7\00E3o e o modo de ordena\00E7\00E3o das colunas nulas (colunas sem valores).</p>'),
'',
unistr('<p><em>Nota: Ao visualizar a grelha interativa, pode definir um controlo de interrup\00E7\00E3o clicando num T\00EDtulo da Coluna e selecionando o \00EDcone de controlo de interrup\00E7\00E3o.</em></p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314955356027251)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do Controlo de Interrup\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313760449027250)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para descarregar todas as linhas atuais para um ficheiro externo. O ficheiro ir\00E1 conter apenas as colunas apresentadas atualmente, utilizando os filtros e ordena\00E7\00F5es aplicados nos dados.</p>'),
'',
'<p>Selecione o formato do ficheiro e clique em Descarregar.<br>',
unistr('Nota: o CSV n\00E3o incluir\00E1 formata\00E7\00E3o de texto, como agrega\00E7\00F5es e controlos de interrup\00E7\00E3o.</p>'),
'',
unistr('<p>Para enviar o ficheiro por email, selecione Enviar como Mensagem de Email e introduza os detalhes de email (Destinat\00E1rio, Assunto e Mensagem).</p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314712893027251)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do Descarregamento')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312907176027250)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para configurar filtros de dados que limitam as linhas devolvidas.</p>'),
'',
'<p><strong>Lista Filtro</strong><br>',
unistr('A lista Filtro apresenta os filtros definidos. Desative um filtro existente anulando a respetiva sele\00E7\00E3o.<br>'),
'Clique em Acrescentar (&plus;) para criar um novo filtro ou em Apagar (&minus;) para retirar um filtro existente.</p>',
'',
unistr('<p><strong>Defini\00E7\00F5es de Filtro</strong><br>'),
unistr('Utilize o formul\00E1rio para definir as propriedades do filtro.<br>'),
'Selecione o tipo de filtro adequado:<br>',
unistr('&nbsp;&nbsp;&nbsp;Linha - filtra um termo em qualquer coluna filtr\00E1vel.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Coluna - filtra uma coluna espec\00EDfica com um operador e valor especificados.</p>'),
'',
unistr('<p><em>Nota: Ao visualizar a grelha interativa, pode definir filtros de linha escrevendo diretamente no campo Pesquisar. Clique em Selecionar Colunas para Pesquisar para limitar a pesquisa a uma coluna espec\00EDfica. Em alternativa, abra um menu de T\00EDtu')
||'lo da Coluna e selecione um valor para criar um filtro de coluna.</em></p>'))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315523208027251)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do Filtro')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313368583027250)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para visualizar os dados tal como existiam num per\00EDodo anterior.</p>'),
unistr('<p>Introduza o n\00FAmero de minutos no passado para executar a consulta de flashback.</p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315192427027251)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do Flashback')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315829412027251)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio de Agrupar Por')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313402836027250)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para destacar linhas ou colunas de dados com base na condi\00E7\00E3o introduzida.</p>'),
'',
'<p><strong>Lista Destaque</strong><br>',
unistr('A lista Destaque apresenta os destaques definidos. Desative um destaque existente anulando a respetiva sele\00E7\00E3o.<br>'),
'Clique em Acrescentar (&plus;) para criar um novo destaque ou em Apagar (&minus;) para retirar um destaque existente.</p>',
'',
unistr('<p><strong>Defini\00E7\00F5es de Destaque</strong><br>'),
unistr('Utilize o formul\00E1rio para definir as propriedades de destaque.<br>'),
unistr('Introduza o nome, selecione Linha ou Coluna e selecione os c\00F3digos de cor de HTML para o fundo e o texto.<br>'),
unistr('Selecione o <strong>Tipo de Condi\00E7\00E3o</strong> adequado para destacar dados espec\00EDficos:<br>'),
'&nbsp;&nbsp;&nbsp;Linha - destaca o termo em qualquer coluna.<br>',
unistr('&nbsp;&nbsp;&nbsp;Coluna - destaca numa coluna espec\00EDfica com base no operador e valor especificados.</p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315002391027251)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do Destaque')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313652592027250)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para gravar as altera\00E7\00F5es que efetuou na disposi\00E7\00E3o e configura\00E7\00E3o da grelha atual.<br>'),
unistr('Os programadores de aplica\00E7\00F5es podem definir v\00E1rias disposi\00E7\00F5es de relat\00F3rio alternativas. Onde for permitido, o utilizador e outros utilizadores finais poder\00E3o gravar um relat\00F3rio como P\00FAblico, disponibilizando o relat\00F3rio para todos os outros utili')
||unistr('zadores da grelha. Tamb\00E9m pode gravar um relat\00F3rio como Privado que s\00F3 pode ser visualizado por si.</p>'),
unistr('<p>Selecione um dos tipos dispon\00EDveis e introduza um nome para o relat\00F3rio gravado.</p>')))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314896357027251)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Aux\00EDlio do Relat\00F3rio'),
''))
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313038298027250)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilize esta caixa de di\00E1logo para definir a ordem de apresenta\00E7\00E3o.</p>'),
'',
unistr('<p><strong>Lista de Ordena\00E7\00E3o</strong><br>'),
unistr('A caixa de di\00E1logo Ordenar apresenta uma lista das regras de ordena\00E7\00E3o configuradas.<br>'),
unistr('Clique em Acrescentar (&plus;) para criar uma coluna de ordena\00E7\00E3o ou em Apagar (&minus;) para retirar uma coluna de ordena\00E7\00E3o.<br>'),
unistr('Clique em Deslocar para Cima (&uarr;) e Deslocar para Baixo (&darr;) para deslocar a coluna de ordena\00E7\00E3o selecionada para cima e para baixo relativamente \00E0s outras colunas de ordena\00E7\00E3o.</p>'),
'',
unistr('<p><strong>Defini\00E7\00F5es de Ordena\00E7\00E3o</strong><br>'),
unistr('Selecione uma coluna de ordena\00E7\00E3o, a dire\00E7\00E3o de ordena\00E7\00E3o e o modo de ordena\00E7\00E3o das colunas nulas (colunas sem valores).</p>'),
'',
unistr('<p><em>Nota: Os dados podem ser ordenados por colunas que n\00E3o s\00E3o apresentadas; contudo, \00E9 poss\00EDvel que nem todas as colunas sejam orden\00E1veis.</em><br>'),
unistr('<em>As colunas apresentadas podem ser ordenadas premindo as setas para cima (crescente) ou para baixo (decrescente) no fim dos t\00EDtulos da coluna. Para acrescentar uma coluna subsequente a uma ordena\00E7\00E3o existente, mantenha a tecla Shift premida e cliq')
||'ue na seta para cima ou para baixo.</em></p>'))
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128315452033027251)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio da Ordena\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314627548027251)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio da Subscri\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268283046027236)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'pt'
,p_message_text=>'Ocultar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232664816027226)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'pt'
,p_message_text=>'Destacar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301855972027247)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E1ximo')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302645743027247)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'pt'
,p_message_text=>'Horizontal'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261216655027234)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'pt'
,p_message_text=>'horas'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266219198027236)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'pt'
,p_message_text=>unistr('\00CDcone')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231566904027225)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de \00CDcones')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259405985027234)
,p_name=>'APEX.IG.IN'
,p_message_language=>'pt'
,p_message_text=>'em'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267808485027236)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00E3o Inativa')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267954805027236)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00F5es Inativas')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275510767027238)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Ocorreu um erro interno ao processar o pedido da Grelha Interativa.'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163456850027205)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('O Tipo de Filtro da Coluna "%0" n\00E3o \00E9 suportado para a coluna "%1".')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314450490027250)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'pt'
,p_message_text=>unistr('Formato de Data Inv\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289257579027243)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('A Grelha Interativa n\00E3o suporta a defini\00E7\00E3o de um filtro na coluna %0.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289127133027243)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o \00E9 um tipo de filtro v\00E1lido para definir um filtro da Grelha Interativa.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170030967027207)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'pt'
,p_message_text=>unistr('Formato de N\00FAmero Inv\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317188379027251)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00E3o Inv\00E1lida')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317222957027251)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00F5es Inv\00E1lidas')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308388277027249)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'pt'
,p_message_text=>unistr('Ordenar Por foi definido como %0, mas n\00E3o foi selecionada nenhuma coluna para %0.')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305635103027248)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Inv\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300737610027246)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Apresentado')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260255797027234)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'pt'
,p_message_text=>unistr('no(s) \00FAltimo(s)')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260428497027234)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'pt'
,p_message_text=>'seguinte(s)'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259383582027234)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o est\00E1 vazio')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259206855027234)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('est\00E1 vazio')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309136650027249)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'pt'
,p_message_text=>'Etiqueta'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301152045027247)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Etiqueta'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305003054027248)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249557750027231)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo Dia')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249721081027231)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltima Hora')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250240514027231)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo Minuto')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249204976027231)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo M\00EAs')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249337169027231)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltima Semana')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249421745027231)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimos %0 Dias')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249614491027231)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimas %0 Horas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250343044027231)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimos %0 Minutos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250180323027231)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimos %0 Meses')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250043248027231)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimas %0 Semanas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249029899027230)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimos %0 Anos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249134892027231)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo Ano')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309397397027249)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'pt'
,p_message_text=>unistr('Ajustamento das C\00E9lulas')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309434810027249)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'pt'
,p_message_text=>'Utilizar Grupo Para'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259832754027234)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'pt'
,p_message_text=>'menor que'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259915459027234)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'pt'
,p_message_text=>'menor que ou igual a'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303261511027247)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'pt'
,p_message_text=>'Linha'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303368889027247)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'pt'
,p_message_text=>unistr('Linha com \00C1rea')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309750680027249)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'pt'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301988924027247)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EDnimo')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312230951027250)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'pt'
,p_message_text=>unistr('Separar v\00E1rios endere\00E7os com v\00EDrgulas')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261006040027234)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('corresponde \00E0 express\00E3o regular')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285428948027242)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E1ximo')
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319751930027252)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E1ximo Global')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285624376027242)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'pt'
,p_message_text=>'Mediano'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319820767027252)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'pt'
,p_message_text=>'Mediano Global'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285349632027242)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EDnimo')
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261181435027234)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'pt'
,p_message_text=>'minutos'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286105286027242)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('H\00E1 minutos')
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319629913027252)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EDnimo Global')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261556347027234)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'pt'
,p_message_text=>'meses'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268126251027236)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('Os dados cont\00EAm mais de %0 linhas, o que excede o m\00E1ximo permitido. Aplique filtros adicionais para visualizar os resultados.')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293958809027244)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('A ID Est\00E1tica da Regi\00E3o deve ser especificada dado que a p\00E1gina cont\00E9m v\00E1rias Grelhas Interativas.')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264273028027235)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'pt'
,p_message_text=>'Nome'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264467626027235)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio Nomeado')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248450547027230)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'pt'
,p_message_text=>'Dia Seguinte'
,p_is_js_message=>true
,p_version_scn=>2693233
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248259073027230)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3xima hora')
,p_is_js_message=>true
,p_version_scn=>2693233
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250473094027231)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximo Minuto')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248730875027230)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EAs Seguinte')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248678663027230)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3xima Semana')
,p_is_js_message=>true
,p_version_scn=>2693233
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248571641027230)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximos %0 Dias')
,p_is_js_message=>true
,p_version_scn=>2693233
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248353676027230)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximas %0 Horas')
,p_is_js_message=>true
,p_version_scn=>2693233
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250599732027231)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximos %0 Minutos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249803822027231)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximos %0 Meses')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128249936787027231)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximas %0 Semanas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248955931027230)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximos %0 Anos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128248892029027230)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'pt'
,p_message_text=>'Ano Seguinte'
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260129120027234)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o entre')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259138813027234)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'pt'
,p_message_text=>'diferente'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323997389027254)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A regi\00E3o com a ID %0 n\00E3o \00E9 uma regi\00E3o da Grelha Interativa ou n\00E3o existe na aplica\00E7\00E3o %1.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128259555054027234)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o est\00E1 em')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260343135027234)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o est\00E1 no(s) \00FAltimo(s)')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260513673027234)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o est\00E1 no(s) pr\00F3ximo(s)')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268020202027236)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontrados dados')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304809653027248)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'pt'
,p_message_text=>'Nulos'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128309970962027249)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'pt'
,p_message_text=>unistr('Num\00E9rico')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305123482027248)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'pt'
,p_message_text=>'Desativado'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305208799027248)
,p_name=>'APEX.IG.ON'
,p_message_language=>'pt'
,p_message_text=>'Ativado'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258307300027233)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('H\00E1 1 minuto')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312759898027250)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'pt'
,p_message_text=>'Abrir Seletor de Cores: %0'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301638618027247)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Abertura'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265304526027235)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'pt'
,p_message_text=>'Operador'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301080821027246)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Orienta\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303402200027247)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'pt'
,p_message_text=>'Sectograma'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266606782027236)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'pt'
,p_message_text=>unistr('Din\00E2mica')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231817187027225)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o Din\00E2mica')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312631024027250)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'pt'
,p_message_text=>'Separar valores com "%0"'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303552465027247)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'pt'
,p_message_text=>'Polar'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308814246027249)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'pt'
,p_message_text=>'Centro'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308977210027249)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'pt'
,p_message_text=>'Fim'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308710686027249)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'pt'
,p_message_text=>unistr('In\00EDcio')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264538555027235)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'pt'
,p_message_text=>'Principal'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264888891027235)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Por Omiss\00E3o Principal')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281345596027240)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio Principal')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154965193027202)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'pt'
,p_message_text=>'Incluir Identificadores de Acessibilidade'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152392378027201)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'pt'
,p_message_text=>'Horizontal'
,p_is_js_message=>true
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152467633027201)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'pt'
,p_message_text=>'Vertical'
,p_is_js_message=>true
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152238797027201)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'pt'
,p_message_text=>unistr('Orienta\00E7\00E3o da p\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152117240027201)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'pt'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152080021027201)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'pt'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155164016027202)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'pt'
,p_message_text=>'Customizado'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151862873027201)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'pt'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151726180027201)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'pt'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151935229027201)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'pt'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151685718027201)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'pt'
,p_message_text=>unistr('Tamanho da p\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117243423027191)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'pt'
,p_message_text=>'Retirar RTF'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303641461027247)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'pt'
,p_message_text=>'Radar'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303707880027247)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'pt'
,p_message_text=>'Intervalo'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128313913413027250)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'pt'
,p_message_text=>'Renovar'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268859408027236)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'pt'
,p_message_text=>'Renovar Linha'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267611448027236)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'pt'
,p_message_text=>'Renovar Linhas'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272809624027238)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A regi\00E3o da Grelha Interativa n\00E3o existe na aplica\00E7\00E3o %0, p\00E1gina %1 e regi\00E3o %2.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233319355027226)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'pt'
,p_message_text=>'Retirar %0'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263916288027235)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323109389027253)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio apagado')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322876249027253)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio alternativo gravado para todos os utilizadores')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322709724027253)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio por omiss\00E3o gravado para todos os utilizadores')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323059604027253)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio privado gravado')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322999574027253)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio p\00FAblico gravado para todos os utilizadores')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272984381027238)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A Grelha Interativa gravada com o nome %0 n\00E3o existe.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258239246027233)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('Dados da grelha de h\00E1 %0 minutos')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258197272027233)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('Dados da grelha de h\00E1 1 minuto')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193636034027214)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O Relat\00F3rio da Grelha Interativa n\00E3o existe.')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316153974027251)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio - Editar')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272743067027238)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A Grelha Interativa gravada com a ID %0 n\00E3o existe.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128316005872027251)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio - Gravar Como')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233496455027226)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00F5es da Grelha')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324041399027254)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A Grelha Interativa gravada com a ID est\00E1tica %0 n\00E3o existe.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319034607027252)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o do Relat\00F3rio')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232593383027226)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'pt'
,p_message_text=>'Redefinir'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268970303027236)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'pt'
,p_message_text=>unistr('Reverter Altera\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267734319027236)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'pt'
,p_message_text=>'Reverter Linhas'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264976452027235)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'pt'
,p_message_text=>'Linha'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263828831027235)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Linhas por P\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323679444027253)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es da Linha')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324881589027254)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es para a linha %0')
,p_is_js_message=>true
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128232886816027226)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'pt'
,p_message_text=>'Gravar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277931175027239)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'pt'
,p_message_text=>'gravado'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182523147027210)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio gravado: %0')
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231016211027225)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rios Gravados')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231151662027225)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Por Omiss\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204627863027217)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 existe um relat\00F3rio gravado com o nome %0. Introduza um novo nome.')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231272408027225)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'pt'
,p_message_text=>'Privado'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128231345362027225)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'pt'
,p_message_text=>unistr('P\00FAblico')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318735967027252)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'pt'
,p_message_text=>'Gravar Como'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267063371027236)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>unistr('Gravar Defini\00E7\00F5es do Relat\00F3rio')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303834266027247)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'pt'
,p_message_text=>unistr('Dispers\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230962286027225)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311092487027249)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar: Todas as Colunas de Texto'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230856569027225)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar: %0'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310386579027249)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'pt'
,p_message_text=>'Pesquisa: Texto Integral'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258084903027233)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar ''%0'''
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300486025027246)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'pt'
,p_message_text=>'- Selecionar -'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240554744027228)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293626724027244)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'pt'
,p_message_text=>unistr('Selecionar 1 linha na regi\00E3o pai')
,p_is_js_message=>true
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230773664027225)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'pt'
,p_message_text=>'Selecionar colunas para pesquisar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323366932027253)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es de Sele\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240770577027228)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o de C\00E9lulas')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240645915027228)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'pt'
,p_message_text=>unistr('Sele\00E7\00E3o de Linhas')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311645492027250)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'pt'
,p_message_text=>'Enviar como Mensagem de Email'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304287888027247)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('S\00E9rie')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228450425027224)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'pt'
,p_message_text=>'Mostrar'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283615199027241)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'pt'
,p_message_text=>'Mostrar Valor Global'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268524494027236)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de Linha \00DAnica')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128266868744027236)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'pt'
,p_message_text=>'Ordenar'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304379221027247)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'pt'
,p_message_text=>'Ordenar Por'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323753285027253)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('S\00F3 pode definir uma ordena\00E7\00E3o por coluna.')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323530505027253)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'pt'
,p_message_text=>'Alterar'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305371620027248)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'pt'
,p_message_text=>'Pilha'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128260837800027234)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'pt'
,p_message_text=>unistr('come\00E7a por')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128303905019027247)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223223518027223)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Alongar Larguras das Colunas'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128267221261027236)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Subscri\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285298230027242)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'pt'
,p_message_text=>'Soma'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128325039727027254)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'pt'
,p_message_text=>unistr('Grelha Interativa. Relat\00F3rio: %0, Visualiza\00E7\00E3o: %1.')
,p_is_js_message=>true
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128319101894027252)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'pt'
,p_message_text=>'Soma Global'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302156475027247)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Alvo'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308575255027249)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'pt'
,p_message_text=>'Cor do Texto'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233559566027226)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'pt'
,p_message_text=>'Alternar'
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115689126027190)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'pt'
,p_message_text=>'Grelha'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283598378027241)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'pt'
,p_message_text=>'Nota Informativa'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128264036028027235)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'pt'
,p_message_text=>'Tipo'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128268452896027236)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'pt'
,p_message_text=>'Descongelar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265561172027235)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'pt'
,p_message_text=>'Unidade'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128311471483027250)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'pt'
,p_message_text=>unistr('Existem altera\00E7\00F5es n\00E3o gravadas. Continuar?')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128265458745027235)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'pt'
,p_message_text=>'Valor'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301231787027247)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Valor'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306119718027248)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio um valor.')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291361673027244)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor (o fuso hor\00E1rio n\00E3o pode ser alterado)')
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310030091027249)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'pt'
,p_message_text=>'Texto'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302542581027247)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'pt'
,p_message_text=>'Vertical'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263569228027235)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'pt'
,p_message_text=>'Visualizar'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198666738027215)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Grelha no modo de visualiza\00E7\00E3o, prima para editar')
,p_is_js_message=>true
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300502306027246)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'pt'
,p_message_text=>'Apresentado'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128302066079027247)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Volume'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261466482027234)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'pt'
,p_message_text=>'semanas'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300600056027246)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'pt'
,p_message_text=>unistr('Largura M\00EDnima da Coluna (P\00EDxel)')
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252642618027232)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'pt'
,p_message_text=>'%0 entre %1 e %2'
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252323129027231)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 cont\00E9m %1')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252492281027231)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o cont\00E9m %1')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227886185027224)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o come\00E7a por %1')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251173510027231)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 \00E9 igual a %1')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251311427027231)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'pt'
,p_message_text=>'%0 maior que %1'
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251476074027231)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'pt'
,p_message_text=>'%0 maior que ou igual a %1'
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252134839027231)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'pt'
,p_message_text=>'%0 em %1'
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253385601027232)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nos \00FAltimos %1 dias')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253199437027232)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nas \00FAltimas %1 horas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252954449027232)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nos \00FAltimos %1 minutos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253705368027232)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nos \00FAltimos %1 meses')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253538493027232)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nas \00FAltimas %1 semanas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253974377027232)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nos \00FAltimos %1 anos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253200647027232)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 no \00FAltimo dia')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253041333027232)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 na \00FAltima hora')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252843305027232)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 no \00FAltimo minuto')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253692369027232)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 no \00FAltimo m\00EAs')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253487810027232)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 na \00FAltima semana')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128253841357027232)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 no \00FAltimo ano')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255773846027232)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nos pr\00F3ximos %1 dias')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255514907027232)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nas pr\00F3ximas %1 horas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255356414027232)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nos pr\00F3ximos %1 minutos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256178773027233)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nos pr\00F3ximos %1 meses')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255945066027233)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nas pr\00F3ximas %1 semanas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256375057027233)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 nos pr\00F3ximos %1 anos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255633213027232)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 no pr\00F3ximo dia')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255465406027232)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 na pr\00F3xima hora')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255212737027232)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 no pr\00F3ximo minuto')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256013741027233)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 no pr\00F3ximo m\00EAs')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255838394027233)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 na pr\00F3xima semana')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256273112027233)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 no pr\00F3ximo ano')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251883471027231)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 vazio')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251777162027231)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 est\00E1 vazio')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251582461027231)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'pt'
,p_message_text=>'%0 menor que %1'
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251618114027231)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'pt'
,p_message_text=>'%0 menor que ou igual a %1'
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251933935027231)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'pt'
,p_message_text=>'%0 semelhante a %1'
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252585372027232)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 corresponde \00E0 express\00E3o regular %1')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258401255027233)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 minutos')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252790074027232)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o entre %1 e %2')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251253219027231)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 \00E9 diferente de %1')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252233543027231)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 em %1')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254503680027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nos \00FAltimos %1 dias')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254314149027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nas \00FAltimas %1 horas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254141646027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nos \00FAltimos %1 minutos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254982397027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nos \00FAltimos %1 meses')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254793896027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nas \00FAltimas %1 semanas')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255161125027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nos \00FAltimos %1 anos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254401382027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no \00FAltimo dia')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254200158027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 na \00FAltima hora')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254075044027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no \00FAltimo minuto')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254869008027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no \00FAltimo m\00EAs')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128254658054027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 na \00FAltima semana')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128255095377027232)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no \00FAltimo ano')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256921836027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nos pr\00F3ximos %1 dias')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256790490027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nas pr\00F3ximas %1 horas')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256501227027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nos pr\00F3ximos %1 minutos')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257363179027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nos pr\00F3ximos %1 meses ')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257180467027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nas pr\00F3ximas %1 semanas')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257585862027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 nos pr\00F3ximos %1 anos')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256828818027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no pr\00F3ximo dia')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256646438027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 na pr\00F3xima hora')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128256448434027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no pr\00F3ximo minuto')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257231894027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no pr\00F3ximo m\00EAs')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257007700027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 na pr\00F3xima semana')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257424749027233)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no pr\00F3ximo ano')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128252009352027231)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o \00E9 semelhante a %1')
,p_is_js_message=>true
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258967911027233)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 come\00E7a por %1')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301350836027247)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261686808027234)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'pt'
,p_message_text=>'anos'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301403986027247)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128301567778027247)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310548870027249)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'pt'
,p_message_text=>'Segunda-feira, 12 de janeiro de 2016'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310617622027249)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'pt'
,p_message_text=>'Janeiro'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310762346027249)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'pt'
,p_message_text=>unistr('16 horas atr\00E1s')
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128310849780027249)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'pt'
,p_message_text=>'em 16 h'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128837084027194)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'pt'
,p_message_text=>'Aplicar'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120836817027192)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Arraste a sua imagem e utilize o cursor de desloca\00E7\00E3o para reposicion\00E1-la dentro da moldura.</p>'),
'',
unistr('<p>Quando focado no recorte de imagens, est\00E3o dispon\00EDveis os seguintes atalhos de teclado:</p>'),
'<ul>',
'    <li>Seta para Esquerda: Deslocar a imagem para a esquerda*</li>',
'    <li>Seta para Cima: Deslocar a imagem para cima*</li>',
'    <li>Seta para a Direita: Deslocar a imagem para a direita*</li>',
'    <li>Seta para Baixo: Deslocar a imagem para baixo*</li>',
'    <li>I: Ampliar</li>',
'    <li>O: Reduzir</li>',
'    <li>L: Rodar para a esquerda</li>',
'    <li>R: Rodar para a direita</li>',
'</ul>',
'',
'<p class="margin-top-md"><em>*Manter Shift premido para se deslocar mais rapidamente</em></p>'))
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121074522027192)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do \00EDcone Cortar Imagem')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128917226027194)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'pt'
,p_message_text=>'Redefinir'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121351443027192)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'pt'
,p_message_text=>'Cortar Imagem'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129032849027194)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Mover o cursor de desloca\00E7\00E3o para ajustar o n\00EDvel de zoom')
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158611617027203)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'pt'
,p_message_text=>unistr('Tipo de ficheiro inv\00E1lido. Tipos de ficheiros suportados %0.')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293099480027244)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'pt'
,p_message_text=>'Percorrer'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292757541027244)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'pt'
,p_message_text=>'Escolher Ficheiro'
,p_is_js_message=>true
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292850903027244)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'pt'
,p_message_text=>'Escolher Ficheiros'
,p_is_js_message=>true
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158413359027203)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'pt'
,p_message_text=>'Arrastar e Largar'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158828083027203)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'pt'
,p_message_text=>'Arrastar e Largar Ficheiros'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160201571027204)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'pt'
,p_message_text=>'Selecionar um ficheiro ou largar um aqui.'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160379335027204)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'pt'
,p_message_text=>'Selecionar ou largar ficheiros aqui.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160433499027204)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'pt'
,p_message_text=>'Selecionar um ficheiro ou largar um aqui.'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160577892027204)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'pt'
,p_message_text=>'Selecionar ou largar ficheiros aqui.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158706697027203)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'pt'
,p_message_text=>'%0 ficheiros'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158513871027203)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'pt'
,p_message_text=>unistr('O ficheiro \00E9 demasiado grande. O tamanho m\00E1ximo do ficheiro \00E9 %0.')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139017878027197)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o s\00E3o suportados v\00E1rios carregamentos de ficheiros.')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121958200027192)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'pt'
,p_message_text=>'Retirar'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127474811027194)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('O endere\00E7o \00E9 obrigat\00F3rio.')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126381539027193)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'pt'
,p_message_text=>'Localidade'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126799941027194)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'pt'
,p_message_text=>unistr('C\00F3digo do Pa\00EDs')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126413584027193)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00FAmero da Porta')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127342736027194)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'pt'
,p_message_text=>'Latitude'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127235280027194)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'pt'
,p_message_text=>'Longitude'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127154441027194)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'pt'
,p_message_text=>'Mostrar no Mapa'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126831386027194)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'pt'
,p_message_text=>unistr('Pontua\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126582451027193)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'pt'
,p_message_text=>unistr('C\00F3digo Postal')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126614348027193)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'pt'
,p_message_text=>'Distrito'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126235608027193)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'pt'
,p_message_text=>'Rua'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126114653027193)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Resultados da Codifica\00E7\00E3o Geogr\00E1fica')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157633471027203)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'pt'
,p_message_text=>'Codificado geograficamente'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157702733027203)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Codificado Geograficamente')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127060601027194)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'pt'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128126994977027194)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontrados endere\00E7os.')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127515530027194)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 \00E9 obrigat\00F3rio(a).')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128233715915027226)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 ou %1 \00E9 obrigat\00F3rio.')
,p_is_js_message=>true
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323282868027253)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualizar texto de aux\00EDlio para %0.')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129244644027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'pt'
,p_message_text=>'Escolher Imagem'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129379877027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'pt'
,p_message_text=>'Escolher Imagens'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129186888027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'pt'
,p_message_text=>'Descarregar'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129429325027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'pt'
,p_message_text=>'Arrastar e Largar'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129579374027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'pt'
,p_message_text=>'Arrastar e Largar Imagens'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129644368027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'pt'
,p_message_text=>'Selecione uma imagem ou largue uma aqui.'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129711303027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'pt'
,p_message_text=>'Selecione ou largue imagens aqui.'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129897338027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'pt'
,p_message_text=>'Selecione uma imagem ou largue uma aqui.'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128129973725027194)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'pt'
,p_message_text=>'Selecione ou largue imagens aqui.'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214617766027220)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'pt'
,p_message_text=>'Selecionado'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214721625027220)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Selecionado')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242221922027228)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'pt'
,p_message_text=>unistr('Caixa mista s\00F3 de leitura em branco')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240071317027228)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'pt'
,p_message_text=>unistr('Caixa de listagem s\00F3 de leitura em branco')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239848668027228)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'pt'
,p_message_text=>unistr('Caixa mista s\00F3 de leitura')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128239975325027228)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'pt'
,p_message_text=>unistr('Caixa de listagem s\00F3 de leitura')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155657251027202)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# n\00E3o est\00E1 no intervalo v\00E1lido de %0 a %1.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155790997027202)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# n\00E3o \00E9 um m\00FAltiplo de %0.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243000946027229)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'pt'
,p_message_text=>unistr('Alternar para s\00F3 de leitura')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183694531027211)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'pt'
,p_message_text=>unistr('Edi\00E7\00E3o s\00F3 de leitura com uma liga\00E7\00E3o')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155290130027202)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'pt'
,p_message_text=>'#LABEL# deve corresponder aos valores %0 e %1.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155441883027202)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241722158027228)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Desativado'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241830484027228)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Ativado'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155350572027202)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Sim'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163200583027204)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'pt'
,p_message_text=>unistr('Seletor de l\00EDnguas')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099658555027185)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar Entrada'
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276466060027239)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276507122027239)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'pt'
,p_message_text=>'Retirar'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099733361027185)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'pt'
,p_message_text=>'Entradas selecionadas'
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280241379027240)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'pt'
,p_message_text=>unistr('Avan\00E7adas')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280596100027240)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'pt'
,p_message_text=>'Cancelar'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280376803027240)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'pt'
,p_message_text=>'Comum'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280655504027240)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Op\00E7\00F5es de Modelo Interativo')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281282210027240)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('As Op\00E7\00F5es de Modelo n\00E3o est\00E3o dispon\00EDveis porque este componente n\00E3o \00E9 renderizado na p\00E1gina.')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280138493027240)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontradas Op\00E7\00F5es de Modelo.')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280474516027240)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'pt'
,p_message_text=>'Gravar'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134207537027196)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Limpar C\00EDrculo')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136699981027197)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'pt'
,p_message_text=>unistr('Os Estilos Customizados n\00E3o s\00E3o JSON v\00E1lido.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134597810027196)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'pt'
,p_message_text=>unistr('Ferramenta de Dist\00E2ncia')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134362444027196)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Desenhar C\00EDrculo')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114108268027190)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Localiza\00E7\00E3o Atual')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120526264027192)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('As coordenadas da posi\00E7\00E3o inicial s\00E3o inv\00E1lidas.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109514427027188)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('A posi\00E7\00E3o inicial deve ser uma geometria de pontos.')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118186236027191)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'pt'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113336577027190)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'pt'
,p_message_text=>'Camada'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283739450027241)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'pt'
,p_message_text=>'Camada: %0'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132504550027195)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'pt'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102235959027186)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'pt'
,p_message_text=>'Mensagens'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118380802027191)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'pt'
,p_message_text=>'milhas'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282791422027241)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('Os dados cont\00EAm mais de %0 linhas, o que excede o m\00E1ximo permitido.')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112679604027189)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'pt'
,p_message_text=>'&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Termos</a> &nbsp;&nbsp; Dados do mapa &copy; 2021 AQUI'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109232865027188)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('O tipo de dados SDO_GEOMETRY n\00E3o est\00E1 dispon\00EDvel nesta base de dados.')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112700984027189)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'pt'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Contribuidores de OpenStreetMap </a>'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137382017027197)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'pt'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Contribuidores de OpenStreetMap </a>'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113570468027190)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'pt'
,p_message_text=>'Pontos'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283837974027241)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'pt'
,p_message_text=>'%0 Pontos'
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134457179027196)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'pt'
,p_message_text=>unistr('Zoom de Ret\00E2ngulo')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134170467027196)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Retirar'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113929436027190)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'pt'
,p_message_text=>unistr('Redefinir Orienta\00E7\00E3o para Norte')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228721186027224)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'pt'
,p_message_text=>'Alternar para modo 2D'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228843301027224)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'pt'
,p_message_text=>'Alternar para modo 3D'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134072313027196)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'pt'
,p_message_text=>'Alternar Aviso de Direitos de Autor'
,p_is_js_message=>true
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134697984027196)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'pt'
,p_message_text=>unistr('Dist\00E2ncia Total')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113691767027190)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'pt'
,p_message_text=>'Aproximar'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113802860027190)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'pt'
,p_message_text=>'Afastar'
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278320578027239)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'pt'
,p_message_text=>'Negrito'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279235882027240)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'pt'
,p_message_text=>'Imagem'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278809706027240)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'pt'
,p_message_text=>unistr('C\00F3digo Inline')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291557999027244)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'pt'
,p_message_text=>'Inserir Imagem'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291619619027244)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'pt'
,p_message_text=>unistr('Inserir Liga\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278436009027239)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'pt'
,p_message_text=>unistr('It\00E1lico')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292283028027244)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'pt'
,p_message_text=>'Ligar'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279174881027240)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'pt'
,p_message_text=>'Lista'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279025490027240)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'pt'
,p_message_text=>'Lista Ordenada'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278505940027239)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00E9-visualizar')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278605749027239)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'pt'
,p_message_text=>unistr('Nada para Pr\00E9-Visualizar')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278764345027240)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'pt'
,p_message_text=>'Riscado'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278936779027240)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'pt'
,p_message_text=>unistr('Lista N\00E3o Ordenada')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257882580027233)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'pt'
,p_message_text=>'atual'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128314077049027250)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Mais...'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257771401027233)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'pt'
,p_message_text=>'A carregar'
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171914959027207)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'pt'
,p_message_text=>unistr('Bot\00E3o Dividir')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171847926027207)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'pt'
,p_message_text=>'Menu Dividir'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288866383027243)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'pt'
,p_message_text=>unistr('Mensagem de Notifica\00E7\00E3o')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112932210027189)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foi encontrado nenhum %0')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262804392027235)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# deve ser um n\00FAmero menor que ou igual a %0.')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262969235027235)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# deve ser um n\00FAmero v\00E1lido.')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263031786027235)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# n\00E3o corresponde ao formato de n\00FAmero %0 (Exemplo: %1).')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262726001027235)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# deve ser um n\00FAmero maior que ou igual a %0.')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262660770027235)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'pt'
,p_message_text=>unistr('#LABEL# deve ser um n\00FAmero entre %0 E %1.')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128257981575027233)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'pt'
,p_message_text=>unistr('\00E9 aberto numa nova janela')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207722033027218)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta p\00E1gina j\00E1 foi submetida e n\00E3o pode ser submetida novamente.')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189136081027212)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('Aplica\00E7\00E3o "%0", P\00E1gina "%1", n\00E3o encontrada.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224673750027223)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>'#LABEL# deve ter um valor.'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115374286027190)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'pt'
,p_message_text=>'Ocultar Senha'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115269796027190)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'pt'
,p_message_text=>'Mostrar Senha'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162860552027204)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276869144027239)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'pt'
,p_message_text=>'Fechar'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276748370027239)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'pt'
,p_message_text=>'Encontrar %0'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277074687027239)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276959432027239)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153668813027202)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'pt'
,p_message_text=>'Introduza um termo de pesquisa com, pelo menos, %0 caracteres.'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229957057027225)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'pt'
,p_message_text=>'Lista de Valores Sobreposta: %0'
,p_version_scn=>2693229
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153793001027202)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'pt'
,p_message_text=>'Introduza um termo de pesquisa.'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100709038027186)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'pt'
,p_message_text=>'Lista de valores'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153570985027202)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontrados resultados.')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153432952027202)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'pt'
,p_message_text=>'Retirar %0'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250606883027231)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'pt'
,p_message_text=>'Termo de Pesquisa'
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276667251027239)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102887126027186)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>'Requer %0.'
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115179922027190)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro durante a impress\00E3o do relat\00F3rio.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125934308027193)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel imprimir o documento utilizando o servidor de impress\00E3o configurado.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148636416027200)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro durante a avalia\00E7\00E3o do par\00E2metro %0 ao chamar %1. Consulte o di\00E1rio de erros para mais detalhes.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287372141027242)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'pt'
,p_message_text=>'A processar'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146406160027199)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147563957027200)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'pt'
,p_message_text=>unistr('Este website tem funcionalidade de aplica\00E7\00E3o. Instale-a no seu dispositivo para beneficiar da melhor experi\00EAncia poss\00EDvel.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148875919027200)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150485605027201)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Instalar esta aplica\00E7\00E3o')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135259874027196)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Aparentemente, o seu dispositivo ou browser n\00E3o suporta a instala\00E7\00E3o de Aplica\00E7\00F5es Web Progressivas, de momento.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130347217027195)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'pt'
,p_message_text=>unistr('1. Toque no \00EDcone <strong>Partilhar</strong>')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130405044027195)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'pt'
,p_message_text=>unistr('2. Desloque-se para baixo e toque em <strong>Adicionar ao Ecr\00E3 Principal</strong>')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146855699027200)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'pt'
,p_message_text=>'3. Toque em <strong style="color:#007AE1;">Adicionar</strong> para confirmar'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145903505027199)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'pt'
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
unistr('    <h1>N\00E3o \00E9 poss\00EDvel ligar</h1>'),
unistr('    <p>Poder\00E1 existir um problema na rede. Verifique a sua liga\00E7\00E3o e tente novamente.</p>'),
'    <button type="button">Repetir</button>',
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145840407027199)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel ligar')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192487792027213)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'pt'
,p_message_text=>unistr('Este dispositivo n\00E3o conseguiu ativar as notifica\00E7\00F5es de push.')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197987655027215)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Escolhas R\00E1pidas para %0')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197861615027215)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Liga\00E7\00E3o de Escolha R\00E1pida')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128171682199027207)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'pt'
,p_message_text=>unistr('Bot\00E3o de r\00E1dio visualmente oculto')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115733938027190)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de Linha \00DAnica')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298489002027246)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243769012027229)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'pt'
,p_message_text=>'Todo o Dia'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321354532027253)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'pt'
,p_message_text=>'Enviar Convite'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321168739027253)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Op\00E7\00F5es')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245558755027229)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o di\00E1ria para todo o dia ')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245320856027229)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o di\00E1ria para dados com hora ')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289593515027243)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'pt'
,p_message_text=>'Dia'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284558561027241)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Descri\00E7\00E3o')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168058460027206)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'pt'
,p_message_text=>'CSV'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167888482027206)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'pt'
,p_message_text=>'iCal'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167718630027206)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'pt'
,p_message_text=>'PDF'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167944682027206)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'pt'
,p_message_text=>'XML'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167476106027206)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'pt'
,p_message_text=>'Data de Fim'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167657328027206)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'pt'
,p_message_text=>'Nome do Evento'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321200282027253)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'pt'
,p_message_text=>'Convite'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289660682027243)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'pt'
,p_message_text=>'Lista'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289304021027243)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EAs')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291939510027244)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128305904890027248)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'pt'
,p_message_text=>'Sem Eventos'
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321512181027253)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'pt'
,p_message_text=>'Edite um Evento Existente.'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321461934027253)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'pt'
,p_message_text=>'Envie um Convite por Email.'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292006239027244)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299737186027246)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'pt'
,p_message_text=>'Enviar Email'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299522568027246)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'pt'
,p_message_text=>'Enviar Email'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322177805027253)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('Todos os campos s\00E3o obrigat\00F3rios.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322046096027253)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'pt'
,p_message_text=>'Enviar Convite'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321083844027253)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'pt'
,p_message_text=>'Assunto'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299629407027246)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'pt'
,p_message_text=>'Para'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167543485027206)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'pt'
,p_message_text=>unistr('Data de In\00EDcio')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297787995027245)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'pt'
,p_message_text=>unistr('Formul\00E1rio em %0')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245187990027229)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'pt'
,p_message_text=>'Hora'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292101652027244)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'pt'
,p_message_text=>'Hoje'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290177163027243)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'pt'
,p_message_text=>'Visualizar'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289427066027243)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'pt'
,p_message_text=>'Semana'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245459103027229)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o semanal para todo o dia')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245290472027229)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o semanal para dados com hora')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290019450027243)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'pt'
,p_message_text=>'Ano'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289749033027243)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Colunas...'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289813928027243)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'pt'
,p_message_text=>'Carregar mais...'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219206170027221)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160769055027204)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'pt'
,p_message_text=>'Carregar mais...'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163030584027204)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar...'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289916870027243)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'pt'
,p_message_text=>'Carregar mais...'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291846078027244)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('ID da Regi\00E3o %0 n\00E3o encontrada.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162922164027204)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Foram Encontrados Dados')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190433808027213)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel redefinir a pagina\00E7\00E3o da regi\00E3o.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154131120027202)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao definir a pagina\00E7\00E3o da regi\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283913731027241)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Colunas...'
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138450843027197)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'pt'
,p_message_text=>unistr('O carregamento em modo lazy \00E9 incompat\00EDvel com slots em %0, que \00E9 uma regi\00E3o \00FAnica (parcial). Dever\00E1 desativar o carregamento em modo lazy para esta regi\00E3o ou deslocar os componentes de slot para uma regi\00E3o diferente.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133763406027196)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'pt'
,p_message_text=>unistr('O Modelo de Grupo est\00E1 em falta no Componente de Modelo para %0.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128712741027194)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 \00E9 uma regi\00E3o \00FAnica (parcial) e devolveu v\00E1rias linhas.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291755924027244)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('O Tipo de Regi\00E3o %0 n\00E3o \00E9 suportado.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154067517027202)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro durante a renderiza\00E7\00E3o da regi\00E3o "#COMPONENT_NAME#".')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224748861027223)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>'#COLUMN_HEADER# deve ter um valor.'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106327920027187)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar uma Disposi\00E7\00E3o de Relat\00F3rio.')
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320623530027252)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'pt'
,p_message_text=>'%0, editor de RTF'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226833879027224)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'pt'
,p_message_text=>unistr('A markup de HTML RTF excede o comprimento m\00E1ximo do item (real %0, %1 caracteres permitidos)')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136277569027196)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'pt'
,p_message_text=>unistr('Editor de RTF S\00F3 de Leitura')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136168840027196)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'pt'
,p_message_text=>'Editor de RTF'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135955027027196)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'pt'
,p_message_text=>'Alinhamento'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136047187027196)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'pt'
,p_message_text=>'Extras'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135767669027196)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'pt'
,p_message_text=>'Tipo de Letra'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135684466027196)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'pt'
,p_message_text=>'Formatar'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135869055027196)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'pt'
,p_message_text=>'Listas'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288976181027243)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'pt'
,p_message_text=>'Apagar'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281419860027240)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'pt'
,p_message_text=>'Duplicar'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279791552027240)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'pt'
,p_message_text=>'Colunas Apresentadas'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279660126027240)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'pt'
,p_message_text=>'Excluir Valores Nulos'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128289093706027243)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar'
,p_is_js_message=>true
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243362645027229)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'pt'
,p_message_text=>'Deslocar para Baixo'
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243407588027229)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'pt'
,p_message_text=>'Deslocar para Cima'
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279405809027240)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280073481027240)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Outras Colunas'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279523300027240)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279895839027240)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'pt'
,p_message_text=>'Linha %0'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279968851027240)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'pt'
,p_message_text=>'Linha %0 de %1'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281505893027240)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'pt'
,p_message_text=>'Renovar'
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281672404027240)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'pt'
,p_message_text=>unistr('Reverter Altera\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128279386513027240)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238540860027227)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'pt'
,p_message_text=>'Por exemplo, %0'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242891393027229)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'pt'
,p_message_text=>'Exemplo: %0'
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155565355027202)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'pt'
,p_message_text=>'1 resultado'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152636796027201)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'pt'
,p_message_text=>'%0 resultados'
,p_is_js_message=>true
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204440575027217)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Pagina\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204555302027217)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'pt'
,p_message_text=>'Resultados %0 para %1'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100206898027186)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Entrar Novamente em Sess\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100120296027186)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('A sua sess\00E3o terminou')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100399410027186)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'pt'
,p_message_text=>'Prolongar'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099969317027185)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'pt'
,p_message_text=>unistr('A sua sess\00E3o vai terminar \00E0s %0. Pretende prolong\00E1-la?')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100018356027186)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'pt'
,p_message_text=>unistr('A sua sess\00E3o vai terminar \00E0s %0 e n\00E3o pode ser prolongada. Grave o trabalho agora para evitar perder dados')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299304613027246)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar o c\00F3digo de limpeza da sess\00E3o da base de dados.')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189096688027212)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao processar o c\00F3digo de configura\00E7\00E3o da sess\00E3o da base de dados.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159427828027203)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('A sua sess\00E3o terminou.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298518604027246)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'pt'
,p_message_text=>unistr('Feche esta caixa de di\00E1logo e prima o bot\00E3o de recarregamento do seu browser para obter uma nova sess\00E3o.')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317413493027251)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('Clique em <a href="%0">Iniciar sess\00E3o</a> novamente para criar uma nova sess\00E3o.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201781194027216)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'pt'
,p_message_text=>unistr('Sess\00E3o N\00E3o V\00E1lida')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244829066027229)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foi poss\00EDvel ativar nenhum Perfil de Grupo Din\00E2mico na sess\00E3o de Real Application Security para o utilizador "%0".')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186987152027212)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-99900 N\00E3o foi poss\00EDvel criar a ID da sess\00E3o exclusiva: %0')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116058888027190)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('O tipo de dados de estado da sess\00E3o CLOB n\00E3o \00E9 permitido para o item %0.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135488306027196)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('A substitui\00E7\00E3o de itens do tipo de dados de estado da sess\00E3o CLOB n\00E3o \00E9 suportada.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204210955027217)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Viola\00E7\00E3o de prote\00E7\00E3o do estado da sess\00E3o: Isto pode ser causado pela altera\00E7\00E3o manual do item de p\00E1gina protegido %0. Se n\00E3o tiver a certeza sobre a causa deste erro, contacte o administrador da aplica\00E7\00E3o para obter assist\00EAncia.')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128325476598027254)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Viola\00E7\00E3o de prote\00E7\00E3o da p\00E1gina: Isto pode ser causado pela submiss\00E3o de uma p\00E1gina cujo carregamento ainda n\00E3o terminou ou pela altera\00E7\00E3o manual de itens da p\00E1gina protegidos. Para obter mais assist\00EAncia, contacte o administrador da aplica\00E7\00E3o.')
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324510215027254)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 cont\00E9m um dos seguintes caracteres inv\00E1lidos &<>"/;,*|=% ou --')
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324635313027254)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 cont\00E9m um dos seguintes caracteres inv\00E1lidos &<>"/;,*|=% ou -- ou nova linha.')
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324314685027254)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 cont\00E9m caracteres especiais. S\00F3 s\00E3o permitidos os caracteres a-Z, 0-9 e espa\00E7os.')
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324416317027254)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 cont\00E9m <, > ou " que s\00E3o caracteres inv\00E1lidos.')
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161882260027204)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foi fornecida uma soma de verifica\00E7\00E3o para mostrar o processamento de uma p\00E1gina que requer uma soma de verifica\00E7\00E3o quando um ou mais valores de pedido, limpeza da cache ou argumento s\00E3o transmitidos como par\00E2metros.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199168730027215)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Viola\00E7\00E3o de prote\00E7\00E3o do estado da sess\00E3o: Isto pode ser causado pela altera\00E7\00E3o manual de um URL que cont\00E9m uma soma de verifica\00E7\00E3o ou pela utiliza\00E7\00E3o de uma liga\00E7\00E3o com uma soma de verifica\00E7\00E3o incorreta ou em falta. Se n\00E3o tiver a certeza sobre a cau')
||unistr('sa deste erro, contacte o administrador da aplica\00E7\00E3o para obter assist\00EAncia.')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280745493027240)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'pt'
,p_message_text=>'Desativar Modo de Contraste Alto'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280869641027240)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'pt'
,p_message_text=>'Ativar Modo de Contraste Alto'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145207195027199)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('A defini\00E7\00E3o da aplica\00E7\00E3o %0 n\00E3o pode ser atualizada uma vez que foi subscrita a partir de outra aplica\00E7\00E3o.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195547752027214)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'pt'
,p_message_text=>'Inferior'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195741050027214)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'pt'
,p_message_text=>'Para Baixo'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195854456027214)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'pt'
,p_message_text=>'Deslocar'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195978145027214)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'pt'
,p_message_text=>'Deslocar Todos'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196099819027214)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'pt'
,p_message_text=>'Retirar'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196170961027214)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'pt'
,p_message_text=>'Retirar Todos'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196258489027214)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'pt'
,p_message_text=>'Redefinir'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195426588027214)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'pt'
,p_message_text=>'Superior'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195603077027214)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'pt'
,p_message_text=>'Para Cima'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307297094027248)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'pt'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307911543027249)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'em %0d'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307151053027248)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'pt'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308045208027249)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'em %0h'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306971180027248)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'pt'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308116028027249)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'em %0m'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307522307027248)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'pt'
,p_message_text=>'%0mo'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307795889027248)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'em %0mo'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307043204027248)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'pt'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307817358027249)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'em %0s'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307341029027248)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'pt'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128308283020027249)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'em %0w'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307479704027248)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'pt'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128307668867027248)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'em %0y'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108580048027188)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'pt'
,p_message_text=>'[Linha]'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109143827027188)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'pt'
,p_message_text=>unistr('[V\00E1rias Linhas]')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108816475027188)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'pt'
,p_message_text=>unistr('[V\00E1rios Pontos]')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109341868027188)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'pt'
,p_message_text=>unistr('[V\00E1rios Pol\00EDgonos]')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109442183027188)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'pt'
,p_message_text=>'[Objeto de Geometria]'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108402461027188)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'pt'
,p_message_text=>'[Ponto (%0,%1)]'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108737768027188)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'pt'
,p_message_text=>unistr('[Pol\00EDgono]')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107901370027188)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'pt'
,p_message_text=>unistr('Regi\00E3o contra\00EDda: %0')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223098855027223)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'pt'
,p_message_text=>'Contrair'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106911858027188)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'pt'
,p_message_text=>unistr('A divis\00E3o orientada de forma horizontal n\00E3o pode ser deslocada para a esquerda ou direita')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107153073027188)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi atingido o tamanho m\00E1ximo de %0px')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108194580027188)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi atingido o tamanho m\00EDnimo de %0px')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108030451027188)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'pt'
,p_message_text=>unistr('A regi\00E3o est\00E1 contra\00EDda')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107803972027188)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'pt'
,p_message_text=>unistr('A regi\00E3o est\00E1 reposta')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107587737027188)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'pt'
,p_message_text=>'Redimensionado como %0px'
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107718288027188)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'pt'
,p_message_text=>unistr('Regi\00E3o reposta: %0')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222914304027223)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'pt'
,p_message_text=>'Repor'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128107021899027188)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'pt'
,p_message_text=>unistr('A divis\00E3o orientada de forma vertical n\00E3o pode ser deslocada para cima ou baixo')
,p_is_js_message=>true
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272467294027238)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'pt'
,p_message_text=>unistr('Limpar Classifica\00E7\00E3o')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262372216027234)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no intervalo de classifica\00E7\00E3o v\00E1lido de 1 - %1')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262410911027234)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o \00E9 num\00E9rico')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258557194027233)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'pt'
,p_message_text=>unistr('Mensagem de \00CAxito')
,p_is_js_message=>true
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320360544027252)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320237285027252)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230415063027225)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('O sistema de registo(s) associado a esta inst\00E2ncia de tarefa n\00E3o foi encontrado')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238771382027227)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Falha na execu\00E7\00E3o da a\00E7\00E3o de tarefa %0: a tarefa foi definida para estado com erros. Verifique o c\00F3digo de a\00E7\00E3o da tarefa')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118998947027191)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('Acrescentar Coment\00E1rio: N\00E3o autorizado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118258000027191)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'pt'
,p_message_text=>unistr('Tarefa j\00E1 atribu\00EDda')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111658360027189)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'pt'
,p_message_text=>unistr('Atribu\00EDdo a %0')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117908590027191)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('Cancelar Tarefa: N\00E3o autorizado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133522729027196)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel retirar o atual propriet\00E1rio desta tarefa. Delegue a tarefa para outro participante antes de repetir esta opera\00E7\00E3o.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117582397027191)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('Reclamar Tarefa: N\00E3o autorizado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117680722027191)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('Concluir Tarefa: N\00E3o autorizado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117730071027191)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('Delegar Tarefa: N\00E3o autorizado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116147793027190)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'pt'
,p_message_text=>unistr('A Data-Limite da tarefa n\00E3o pode j\00E1 ter decorrido.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111411280027189)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'pt'
,p_message_text=>'Limite %0'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111886696027189)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Falha na A\00E7\00E3o da Tarefa %1. Mensagem de erro - %0')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111581205027189)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'pt'
,p_message_text=>'Com falha'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111138587027189)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'pt'
,p_message_text=>unistr('Com \00CAxito')
,p_is_js_message=>true
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111316912027189)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00E3o %1 bem-sucedida com mensagem %0')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114637653027190)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'pt'
,p_message_text=>'Antes de Expirar'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140267618027198)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'pt'
,p_message_text=>'Cancelar'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139711254027197)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Tarefa cancelada'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140395741027198)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('O participante n\00E3o pode cancelar a tarefa')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139684630027197)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'pt'
,p_message_text=>'Reclamar'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140040050027198)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'pt'
,p_message_text=>unistr('A tarefa j\00E1 foi reclamada por outro utilizador ou o participante n\00E3o tem o direito de reclamar esta tarefa')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139852075027197)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Tarefa reclamada por %0'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240908499027228)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'pt'
,p_message_text=>unistr('Conclu\00EDda')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139422374027197)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tarefa conclu\00EDda com o resultado %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140722354027198)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Tarefa n\00E3o est\00E1 reservada ou o participante n\00E3o pode concluir a tarefa')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101191313027186)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'pt'
,p_message_text=>unistr('Tarefa conclu\00EDda sem resultados')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241078928027228)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'pt'
,p_message_text=>'Criar'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133978335027196)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Tarefa criada com a ID %0'
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241191698027228)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'pt'
,p_message_text=>'Delegar'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139567989027197)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tarefa delegada ao propriet\00E1rio potencial %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140185975027198)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('O participante n\00E3o tem direito ou o novo participante n\00E3o \00E9 um propriet\00E1rio potencial desta tarefa')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113210986027189)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'pt'
,p_message_text=>'Expirar'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114384806027190)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Tarefa expirada.'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241264793027228)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'pt'
,p_message_text=>unistr('Sem Aprova\00E7\00E3o')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109954037027189)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Tarefa n\00E3o foi atribu\00EDda ou o participante n\00E3o tem permiss\00E3o para pedir informa\00E7\00F5es sobre a tarefa')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110160445027189)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram pedidas informa\00E7\00F5es para a tarefa ou o participante n\00E3o tem permiss\00F5es para submeter informa\00E7\00F5es para a tarefa.')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113762129027190)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi atingido o n\00FAmero m\00E1ximo de renova\00E7\00F5es de %0 da tarefa de expira\00E7\00E3o.')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141025920027198)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'pt'
,p_message_text=>unistr('A tarefa n\00E3o est\00E1 no estado correto ou o participante n\00E3o \00E9 um administrador de atividade para esta tarefa')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141117315027198)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('A opera\00E7\00E3o %0 \00E9 desconhecida ou n\00E3o \00E9 aplic\00E1vel para esta tarefa')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241347083027228)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'pt'
,p_message_text=>unistr('Liberta\00E7\00E3o')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227087565027224)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Tarefa desbloqueada. Pode ser agora reclamada por outros.'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119947667027191)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('A liberta\00E7\00E3o da tarefa n\00E3o \00E9 permitida: o utilizador n\00E3o \00E9 o propriet\00E1rio da tarefa')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136972847027197)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'pt'
,p_message_text=>unistr('Retirar Propriet\00E1rio')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137163166027197)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Participante %0 retirado da tarefa'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114545776027190)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'pt'
,p_message_text=>'Renovar'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113494046027190)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tarefa renovada com a ID %0. O n\00FAmero m\00E1ximo de renova\00E7\00F5es restantes antes da expira\00E7\00E3o \00E9 %1.')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114430659027190)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'ID da tarefa %0 renovada com a ID da tarefa %1'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110443677027189)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'pt'
,p_message_text=>unistr('Pedir Informa\00E7\00F5es')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110371159027189)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Pedido de mais informa\00E7\00F5es: %1 efetuado a %0')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108258570027188)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Definir Iniciador Pode Concluir para %0'
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110557445027189)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'pt'
,p_message_text=>unistr('Submeter Informa\00E7\00F5es')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110234582027189)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Informa\00E7\00F5es pedidas submetidas a %0: %1')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241450892027228)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'pt'
,p_message_text=>unistr('Atualizar Coment\00E1rio')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137977232027197)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Acrescentar coment\00E1rio: %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140813208027198)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('O estado da tarefa n\00E3o permite coment\00E1rios')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148157806027200)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Definir data-limite da tarefa para %0'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106228169027187)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'pt'
,p_message_text=>'Atualizar Data-Limite'
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241508055027228)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'pt'
,p_message_text=>unistr('Atualizar Propriet\00E1rio')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139218045027197)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Acrescentar o propriet\00E1rio potencial %0 aos participantes da tarefa')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138385032027197)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'pt'
,p_message_text=>unistr('Atualizar Par\00E2metros')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128241633048027228)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'pt'
,p_message_text=>'Atualizar Prioridade'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139907304027197)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Definir prioridade da tarefa como %0'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137265058027197)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Par\00E2metro "%0" atualizado de "%1" para "%2".')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120773552027192)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tarefa cancelada uma vez que a inst\00E2ncia do fluxo de trabalho correspondente foi terminada.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117868974027191)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('Reencaminhar Tarefa: N\00E3o autorizado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111225165027189)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'pt'
,p_message_text=>'Iniciado por %0 %1'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120134546027192)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Ocorr\00EAncia de erro interno inesperado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118412943027191)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Opera\00E7\00E3o de tarefa n\00E3o aplic\00E1vel')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144015529027199)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'pt'
,p_message_text=>unistr('Este potencial propriet\00E1rio n\00E3o existe.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119743091027191)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'pt'
,p_message_text=>'Aprovada'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119847888027191)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'pt'
,p_message_text=>'Rejeitada'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101267892027186)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'pt'
,p_message_text=>unistr('A conclus\00E3o da tarefa requer um resultado')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128101416155027186)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 permitido que a tarefa tenha um resultado')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128137097764027197)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel atualizar o par\00E2metro %0.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133347747027195)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'pt'
,p_message_text=>unistr('O participante j\00E1 existe para esta inst\00E2ncia de tarefa.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234867221027226)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'pt'
,p_message_text=>'Urgente'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111943464027189)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>'Urgente'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234772554027226)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E1ximo')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112097435027189)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>'Prioridade alta'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234615527027226)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'pt'
,p_message_text=>'Meio'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112193109027189)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Prioridade m\00E9dia')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234558711027226)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EDnimo')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112238169027189)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>'Prioridade baixa'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234497829027226)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EDnima')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112313411027189)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Prioridade m\00EDnima')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118032204027191)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('Definir Prioridade da Tarefa: N\00E3o autorizado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119260478027191)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'pt'
,p_message_text=>unistr('Atribu\00EDda')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119677815027191)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'pt'
,p_message_text=>'Cancelada'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119318200027191)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'pt'
,p_message_text=>unistr('Conclu\00EDda')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119582713027191)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'pt'
,p_message_text=>'Com Erros'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128113022279027189)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'pt'
,p_message_text=>'Expirado'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119456410027191)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'pt'
,p_message_text=>'Com falha'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109707468027188)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'pt'
,p_message_text=>unistr('Informa\00E7\00F5es Pedidas')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128119199373027191)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Atribu\00EDda')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141511505027198)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Falha na cria\00E7\00E3o de uma nova Tarefa para a Defini\00E7\00E3o da Tarefa %0 na aplica\00E7\00E3o %1.'),
'SQLCODE: %2'))
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141457848027198)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'pt'
,p_message_text=>unistr('Falhou a tentativa de criar uma tarefa para a defini\00E7\00E3o da tarefa %0 na aplica\00E7\00E3o %1 porque a defini\00E7\00E3o da tarefa n\00E3o cont\00E9m nenhum propriet\00E1rio potencial: edite a defini\00E7\00E3o da tarefa e acrescente, pelo menos, um participante do tipo propriet\00E1rio pot')
||'encial'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118717486027191)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00E3o da tarefa n\00E3o encontrada')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118660611027191)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('Participantes n\00E3o encontrados para a tarefa')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120050805027192)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'pt'
,p_message_text=>'Foi especificada mais de uma tarefa para a ID da tarefa: consulte o administrador da base de dados'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118870675027191)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('Tarefa N\00E3o Encontrada')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128118544000027191)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('Par\00E2metro da tarefa n\00E3o encontrado')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154813337027202)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00E3o')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154771124027202)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'pt'
,p_message_text=>unistr('Aprova\00E7\00E3o')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102120071027186)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('O Procedimento da Regra de F\00E9rias %2 falhou a execu\00E7\00E3o da defini\00E7\00E3o da tarefa %0 na aplica\00E7\00E3o %1.')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102360324027186)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'O participante %1 foi acrescentado como um substituto para o participante %0. Motivo - %2 .'
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306084685027248)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'pt'
,p_message_text=>'Barra de Ferramentas'
,p_is_js_message=>true
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159537037027203)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Aplica\00E7\00E3o')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320735688027253)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Expandir/Contrair Navega\00E7\00E3o')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320838969027253)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Expandir/Contrair Coluna Lateral'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229232831027224)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Navega\00E7\00E3o Principal')
,p_version_scn=>2693228
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130057862027195)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'pt'
,p_message_text=>unistr('"%0" \00E9 um nome de reposit\00F3rio de valores inv\00E1lido.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236911732027227)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'pt'
,p_message_text=>'1 dia'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236762798027227)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'pt'
,p_message_text=>'1 hora'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237014467027227)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'pt'
,p_message_text=>'%0 dias'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236888697027227)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'pt'
,p_message_text=>'%0 horas'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236671828027227)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'pt'
,p_message_text=>'%0 minutos'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237243896027227)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'pt'
,p_message_text=>'%0 semanas'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128237178238027227)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'pt'
,p_message_text=>'1 semana'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128134957545027196)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'pt'
,p_message_text=>'%0 itens selecionados'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135121305027196)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Item'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135035125027196)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'pt'
,p_message_text=>'Selecionar %0'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323894238027254)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'pt'
,p_message_text=>unistr('In\00EDcio da p\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181460188027210)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'pt'
,p_message_text=>'Ativado'
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149974909027200)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Erro ao processar o pedido.'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128135533505027196)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('A mensagem de texto %0 n\00E3o pode ser atualizada uma vez que foi subscrita a partir de outra aplica\00E7\00E3o.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238647849027227)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Obrigat\00F3rio')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155033984027202)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00EDvel do t\00EDtulo %0, oculto')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283484595027241)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta p\00E1gina tem altera\00E7\00F5es n\00E3o gravadas.')
,p_is_js_message=>true
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145072151027199)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'pt'
,p_message_text=>'Navegador'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144779929027199)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'pt'
,p_message_text=>'Aproximar'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145762521027199)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00EDvel de zoom {0}%')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144803470027199)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'pt'
,p_message_text=>'Afastar'
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144989830027199)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'pt'
,p_message_text=>unistr('Redefini\00E7\00E3o do Zoom')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120431726027192)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'pt'
,p_message_text=>unistr('De momento, o diagrama de fluxo de trabalho n\00E3o est\00E1 acess\00EDvel.')
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120313204027192)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Diagrama de Fluxo de Trabalho'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122215866027192)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia do Fluxo de Trabalho %0 est\00E1 atualmente no estado %1. Como tal, a opera\00E7\00E3o n\00E3o \00E9 permitida')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124891540027193)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'pt'
,p_message_text=>unistr('A inst\00E2ncia %1 da Atividade %2 no Fluxo de Trabalho %0 foi conclu\00EDda')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124669433027193)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'pt'
,p_message_text=>unistr('Nova Inst\00E2ncia %1 da Atividade %2 criada no Fluxo de Trabalho %0')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116464346027190)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A linha de dados adicional associada a esta inst\00E2ncia de atividade do fluxo de trabalho n\00E3o foi encontrada')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124784895027193)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'pt'
,p_message_text=>unistr('A inst\00E2ncia com falha %1 da Atividade %2 no Fluxo de Trabalho %0 foi repetida')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106770750027188)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'pt'
,p_message_text=>unistr('A inst\00E2ncia da atividade %1 no Fluxo de Trabalho %0 foi terminada')
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140514760027198)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'pt'
,p_message_text=>unistr('O limite de tempo da inst\00E2ncia da atividade %1 no Fluxo de Trabalho %0 foi excedido e foi terminada a inst\00E2ncia.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124960491027193)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'pt'
,p_message_text=>unistr('A inst\00E2ncia %1 da Atividade %2 no Fluxo de Trabalho %0 est\00E1 no estado Em Espera')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106551073027187)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia do Fluxo de Trabalho %0 foi alterada e retomada na atividade %1')
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123944511027193)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia de Espera %1 da Atividade %2 no Fluxo de Trabalho %0 foi conclu\00EDda com \00EAxito')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123777848027193)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'pt'
,p_message_text=>unistr('Atividade em espera %1 Com falha uma vez que o Fluxo de Trabalho %0 j\00E1 estava no estado Com falha antes da Atividade ser conclu\00EDda')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123823464027193)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Atividade em espera %1 foi Terminada uma vez que o Fluxo de Trabalho %0 j\00E1 estava Terminado antes da Atividade ser conclu\00EDda')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106895909027188)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'pt'
,p_message_text=>unistr('Falha no t\00E9rmino da Atividade %1 no Fluxo de Trabalho %0 devido \00E0 exce\00E7\00E3o - %2')
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122416789027192)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'pt'
,p_message_text=>unistr('O Fluxo de Trabalho est\00E1 atualmente ocupado a concluir a opera\00E7\00E3o anterior. Tente novamente mais tarde')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138596743027197)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'pt'
,p_message_text=>unistr('Conclu\00EDdo %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121585595027192)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('O Fluxo de Trabalho %0 n\00E3o pode ser continuado uma vez que est\00E1 na Atividade %1 que n\00E3o est\00E1 num estado de Espera')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133467098027196)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o \00E9 um contexto de correla\00E7\00E3o do fluxo de trabalho v\00E1lido para o processo a ser executado por esta Atividade do Fluxo de Trabalho. O contexto de correla\00E7\00E3o deve ser um texto delimitado por dois pontos que contenha APEX_APPL_WORKFLOW seguido da I')
||unistr('D da Inst\00E2ncia do Fluxo de Trabalho e da ID da Inst\00E2ncia da Atividade.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124141003027193)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'pt'
,p_message_text=>unistr('Nova Inst\00E2ncia %0 do Fluxo de Trabalho %1 criada, Vers\00E3o %2')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116276453027190)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A linha de dados adicional associada a esta inst\00E2ncia do fluxo de trabalho n\00E3o foi encontrada')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138739313027197)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'pt'
,p_message_text=>'Limite %0'
,p_version_scn=>2693215
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124045828027193)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'pt'
,p_message_text=>'O fluxo de trabalho %0 terminou com o estado %1'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121218032027192)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('O tipo de dados %1 das condi\00E7\00F5es a serem comparadas na Atividade de Troca do Fluxo de Trabalho %0 n\00E3o \00E9 compat\00EDvel com o operador da condi\00E7\00E3o')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128111006593027189)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'pt'
,p_message_text=>'Iniciado por %0 %1'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133804247027196)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'pt'
,p_message_text=>unistr('Nova Inst\00E2ncia %0 do Fluxo de Trabalho %1 criada, Vers\00E3o %2 - invocada a partir da inst\00E2ncia da atividade %4 da inst\00E2ncia do fluxo de trabalho %3')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128106682414027188)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A atividade com a ID est\00E1tica %1 n\00E3o \00E9 uma atividade no Fluxo de Trabalho %0. Verifique a ID est\00E1tica da atividade da Vers\00E3o do Fluxo de Trabalho correspondente.')
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128131981240027195)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 \00E9 um par\00E2metro obrigat\00F3rio para este fluxo de trabalho e n\00E3o deve ser NULL.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124522770027193)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia do Fluxo de Trabalho %0 foi retomada')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124476893027193)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia do Fluxo de Trabalho %0 foi repetida')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138839897027197)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'pt'
,p_message_text=>'%0 tentativa'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138923015027197)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'pt'
,p_message_text=>'%0 tentativas'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138639996027197)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'pt'
,p_message_text=>'Iniciado %0'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132866110027195)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'pt'
,p_message_text=>'Ativa'
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133074235027195)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'pt'
,p_message_text=>unistr('Conclu\00EDda')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133100518027195)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'pt'
,p_message_text=>'Com falha'
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128133270933027195)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'pt'
,p_message_text=>'Suspensa'
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132937469027195)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'pt'
,p_message_text=>'Terminada'
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148222719027200)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'pt'
,p_message_text=>'A aguardar'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124235043027193)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia do Fluxo de Trabalho %0 foi suspensa')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130168834027195)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel determinar a atividade seguinte para a Inst\00E2ncia do Fluxo de Trabalho %0. Verifique e corrija as condi\00E7\00F5es definidas para a atividade de mudan\00E7a atual antes de repetir o fluxo de trabalho.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128124375676027193)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia do Fluxo de Trabalho %0 foi terminada')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123497992027193)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'pt'
,p_message_text=>'Apenas o Administrador de Atividades do Fluxo de Trabalho %0 podem retomar o fluxo de trabalho'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123528407027193)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'pt'
,p_message_text=>unistr('O Fluxo de Trabalho %0 s\00F3 pode ser obtido por um Administrador de Atividade e/ou um Propriet\00E1rio')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123092163027192)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia do Fluxo de Trabalho %0 s\00F3 pode ser suspensa por um Administrador de Atividade do fluxo de trabalho')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128123357752027192)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'pt'
,p_message_text=>unistr('Apenas os Propriet\00E1rios e Administradores de Atividades da Inst\00E2ncia do Fluxo de Trabalho %0 podem terminar o fluxo de trabalho')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121734840027192)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'pt'
,p_message_text=>unistr('As Vari\00E1veis do Fluxo de Trabalho %0 s\00F3 podem ser atualizadas por um Administrador de Atividade definido para o fluxo de trabalho')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136332049027196)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('A inst\00E2ncia do fluxo de trabalho %0 deve estar no estado Com Falha ou Suspensa para que as respetivas vari\00E1veis possam ser atualizadas.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127836371027194)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor da Vari\00E1vel do Fluxo de Trabalho %0 atualizado para %1')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138059312027197)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'pt'
,p_message_text=>unistr('O Fluxo de Trabalho %0 n\00E3o tem uma vers\00E3o Ativa')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138115470027197)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'pt'
,p_message_text=>unistr('O Fluxo de Trabalho %0 n\00E3o tem uma vers\00E3o Em Desenvolvimento')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128138237909027197)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('O Fluxo de Trabalho %0 n\00E3o tem uma vers\00E3o Ativa ou Em Desenvolvimento')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121186757027192)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia da Atividade %1 para a Inst\00E2ncia do Fluxo de Trabalho %0 n\00E3o foi encontrada')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120940681027192)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A Inst\00E2ncia do Fluxo de Trabalho %0 n\00E3o foi encontrada')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156021743027202)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'pt'
,p_message_text=>unistr('O livro n\00E3o tem nenhuma folha de c\00E1lculo ativa.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155952882027202)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('O livro n\00E3o foi inicializado.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128155853274027202)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Ocorreu um erro interno ao criar o ficheiro XLSX.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158341600027203)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'pt'
,p_message_text=>'Folha'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168928054027206)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'pt'
,p_message_text=>unistr('O nome da folha de c\00E1lculo "%0" j\00E1 est\00E1 em uso. Experimente um nome diferente.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297577932027245)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212568269027219)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'pt'
,p_message_text=>unistr('Menu A\00E7\00F5es')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208239653027218)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Acrescentar Fun\00E7\00E3o')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208118766027218)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar Agrupar por Coluna'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245797470027229)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('Acrescentar Coluna Din\00E2mica')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245877202027230)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Acrescentar Coluna da Linha'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180279788027210)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'pt'
,p_message_text=>'Agregar'
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218715840027221)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Agrega\00E7\00E3o')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199611047027215)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E9dia')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203900827027217)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'pt'
,p_message_text=>'Contagem'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199754583027215)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E1ximo')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199913162027216)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'pt'
,p_message_text=>'Mediano'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199860020027215)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EDnimo')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199545939027215)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'pt'
,p_message_text=>'Soma %0'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200679498027216)
,p_name=>'APEXIR_ALL'
,p_message_language=>'pt'
,p_message_text=>'Tudo'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179535876027209)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Todas as Colunas'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159630982027203)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'pt'
,p_message_text=>'Todas as Linhas'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294501327027244)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'pt'
,p_message_text=>'Alternativo'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296106269027245)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Por Omiss\00E3o Alternativo: %0 ')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193771440027214)
,p_name=>'APEXIR_AND'
,p_message_language=>'pt'
,p_message_text=>'e'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228548552027224)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel importar o relat\00F3rio gravado. O conte\00FAdo est\00E1 corrompido.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228600107027224)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel importar o relat\00F3rio gravado. O conte\00FAdo est\00E1 vazio.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181703561027210)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'pt'
,p_message_text=>'Aplicar'
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175382336027208)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'pt'
,p_message_text=>'Crescente'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196877350027215)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'pt'
,p_message_text=>'A partir de %0'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296718433027245)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E9dia %0')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288376861027243)
,p_name=>'APEXIR_BAR'
,p_message_language=>'pt'
,p_message_text=>'Barra'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181058981027210)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'pt'
,p_message_text=>'entre'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174189215027208)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'pt'
,p_message_text=>'Cor de Segundo Plano'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176072816027208)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'pt'
,p_message_text=>'azul'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210195881027219)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'pt'
,p_message_text=>'Inferior'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140996625027198)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'pt'
,p_message_text=>unistr('Bot\00F5es junto \00E0 barra de pesquisa de %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176634545027209)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'pt'
,p_message_text=>'Cancelar'
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182939672027210)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'pt'
,p_message_text=>'Categoria'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174055975027208)
,p_name=>'APEXIR_CELL'
,p_message_language=>'pt'
,p_message_text=>unistr('C\00E9lula')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200567186027216)
,p_name=>'APEXIR_CHART'
,p_message_language=>'pt'
,p_message_text=>'Diagrama'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211069996027219)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'pt'
,p_message_text=>'A Inicializar...'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250710739027231)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar a etiqueta do diagrama.')
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263170206027235)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'pt'
,p_message_text=>unistr('A sua consulta excede o m\00E1ximo de %0 pontos de dados por diagrama. Aplique um filtro para reduzir o n\00FAmero de registos na sua consulta base.')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262083564027234)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('O n\00FAmero m\00E1ximo de linhas para uma consulta de Diagrama limita o n\00FAmero de linhas na consulta base e n\00E3o o n\00FAmero de linhas apresentadas.  '),
unistr('A sua consulta base excede o n\00FAmero m\00E1ximo de linhas de %0. Aplique um filtro para reduzir o n\00FAmero de registos na sua consulta base.')))
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179662787027209)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'pt'
,p_message_text=>'Tipo de Diagrama'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143586710027199)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de diagrama de %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258793292027233)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Tudo'
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197277510027215)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'pt'
,p_message_text=>unistr('Escolher formato do relat\00F3rio')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205078189027217)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'pt'
,p_message_text=>'limpar'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176522005027208)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Coluna'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216370702027221)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Colunas'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183564441027211)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'pt'
,p_message_text=>unistr('Pseud\00F3nimos de Colunas')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291170428027243)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'pt'
,p_message_text=>'Filtrar...'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151337603027201)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'pt'
,p_message_text=>unistr('Cabe\00E7alho da Coluna')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165489284027205)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es da Coluna')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165733113027205)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'pt'
,p_message_text=>unistr('A\00E7\00F5es para a coluna "%0"')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207137758027218)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'pt'
,p_message_text=>unistr('Menu T\00EDtulo da Coluna')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210898909027219)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'pt'
,p_message_text=>unistr('Informa\00E7\00F5es da Coluna')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293432430027244)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Etiqueta da Coluna'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208539143027218)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'pt'
,p_message_text=>'Coluna %0'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191440140027213)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'pt'
,p_message_text=>unistr('cont\00E9m')
,p_version_scn=>2693222
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192715510027213)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o cont\00E9m')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175063489027208)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'pt'
,p_message_text=>'em'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192952502027213)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o est\00E1 no \00FAltimo intervalo de')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202056792027216)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o est\00E1 no pr\00F3ximo intervalo de')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192835641027213)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'pt'
,p_message_text=>unistr('est\00E1 no \00FAltimo intervalo de')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201919532027216)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('est\00E1 no pr\00F3ximo intervalo de')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174921174027208)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o \00E9 nulo')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174896708027208)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('\00E9 nulo')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174678907027208)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'pt'
,p_message_text=>'semelhante'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175181760027208)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o est\00E1 em')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174740307027208)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o semelhante')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191718971027213)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'pt'
,p_message_text=>unistr('corresponde \00E0 express\00E3o regular')
,p_version_scn=>2693222
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197128498027215)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'pt'
,p_message_text=>unistr('C\00E1lculo')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261778315027234)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('Express\00E3o de C\00E1lculo')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216625587027221)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'pt'
,p_message_text=>unistr('Crie um c\00E1lculo com pseud\00F3nimos de colunas.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216794914027221)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'pt'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216810850027221)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'pt'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216959778027221)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'pt'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157875125027203)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'pt'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201374612027216)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'pt'
,p_message_text=>'Calcular'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209147389027218)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'pt'
,p_message_text=>unistr('Controlo de Interrup\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212173434027219)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'pt'
,p_message_text=>unistr('Controlos de Interrup\00E7\00E3o')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298749798027246)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>unistr('Colunas de Controlo de Interrup\00E7\00E3o')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154554677027202)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'pt'
,p_message_text=>'Contagem Distinta'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297231095027245)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'pt'
,p_message_text=>'Contagem Distinta'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297148347027245)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'pt'
,p_message_text=>'Contagem %0'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270152796027237)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'pt'
,p_message_text=>unistr('Di\00E1rio')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128323470833027253)
,p_name=>'APEXIR_DATA'
,p_message_language=>'pt'
,p_message_text=>'Dados'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210955447027219)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'pt'
,p_message_text=>unistr('Comunicar dados de h\00E1 %0 minutos')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143911067027199)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de dados de %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180337431027210)
,p_name=>'APEXIR_DATE'
,p_message_language=>'pt'
,p_message_text=>'Data'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214818274027220)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Por Omiss\00E3o')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294337137027244)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tipo de Relat\00F3rio Por Omiss\00E3o')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176706382027209)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'pt'
,p_message_text=>'Apagar'
,p_is_js_message=>true
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180605620027210)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'pt'
,p_message_text=>unistr('Pretende apagar as defini\00E7\00F5es deste relat\00F3rio?')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281158615027240)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Apagar Relat\00F3rios Por Omiss\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208889356027218)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Apagar Relat\00F3rio')
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175483108027208)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'pt'
,p_message_text=>'Decrescente'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183012909027210)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Descri\00E7\00E3o')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207085981027218)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de Linha \00DAnica')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215306511027220)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Dire\00E7\00E3o %0')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216246635027220)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'pt'
,p_message_text=>'Desativado'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176214996027208)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'pt'
,p_message_text=>'Apresentado'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179477850027209)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Colunas Apresentadas'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215258031027220)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Apresentar no Relat\00F3rio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210071869027219)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'pt'
,p_message_text=>'Para Baixo'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201478960027216)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'pt'
,p_message_text=>'Descarregar'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215188452027220)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Apresentar')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284481758027241)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 existe um destaque com a mesma condi\00E7\00E3o.')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298986996027246)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('Coluna din\00E2mica duplicada. A lista de colunas din\00E2micas deve ser exclusiva.')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299198390027246)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'pt'
,p_message_text=>'Editar'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211132443027219)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'pt'
,p_message_text=>unistr('Editar Defini\00E7\00F5es do Diagrama')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217795288027221)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'pt'
,p_message_text=>unistr('Editar Gr\00E1fico')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181644883027210)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'pt'
,p_message_text=>unistr('Editar Controlo de Interrup\00E7\00E3o')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218193104027221)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'pt'
,p_message_text=>'Editar Filtro'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184610231027211)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'pt'
,p_message_text=>'Editar Flashback'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275996433027239)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'pt'
,p_message_text=>'Editar Grupo por'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218091865027221)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'pt'
,p_message_text=>'Editar Destaque'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246078223027230)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'pt'
,p_message_text=>unistr('Editar Din\00E2mica')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205448836027217)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Editar Relat\00F3rio')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294629401027245)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'pt'
,p_message_text=>'Email'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166896988027206)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'pt'
,p_message_text=>unistr('Endere\00E7o de Email')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294975273027245)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'pt'
,p_message_text=>'Bcc'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295122829027245)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'pt'
,p_message_text=>'Corpo'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294844918027245)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'pt'
,p_message_text=>'Cc'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295602856027245)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'pt'
,p_message_text=>unistr('Frequ\00EAncia')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172055863027207)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'pt'
,p_message_text=>unistr('O email n\00E3o foi configurado para esta aplica\00E7\00E3o. Contacte o administrador.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269499043027237)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar o Endere\00E7o de Email.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295200258027245)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'pt'
,p_message_text=>'Consultar anexo'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295070769027245)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'pt'
,p_message_text=>'Assunto'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270494246027237)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar o Assunto da Mensagem de Email.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294797482027245)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'pt'
,p_message_text=>'Para'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173889890027208)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'pt'
,p_message_text=>'Ativado'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217935415027221)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'pt'
,p_message_text=>'Ativar/Desativar'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217446084027221)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'pt'
,p_message_text=>'Erro! %0'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217096186027221)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'pt'
,p_message_text=>'Exemplos'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217872885027221)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'pt'
,p_message_text=>'Exemplos:'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179337946027209)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'pt'
,p_message_text=>'Excluir Valores Nulos'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218468210027221)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'pt'
,p_message_text=>'Expandir/Contrair'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216054211027220)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('Express\00E3o')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200942049027216)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'pt'
,p_message_text=>'Filtrar'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212041874027219)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'pt'
,p_message_text=>'Filtros'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222751389027222)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('Express\00E3o do Filtro')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320974378027253)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'pt'
,p_message_text=>unistr('A express\00E3o do filtro \00E9 demasiado longa.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165669374027205)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Filtrar sugest\00F5es')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222680337027222)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'pt'
,p_message_text=>'Tipo de Filtro'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218611180027221)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'pt'
,p_message_text=>'Selecionar colunas para pesquisar'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201290207027216)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'pt'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215892941027220)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Uma consulta de flashback permite-lhe visualizar os dados tal como existiam num per\00EDodo anterior.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269850623027237)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Dura\00E7\00E3o do Flashback')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271247403027237)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'pt'
,p_message_text=>'Formatar'
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197086234027215)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E1scara de Formato %0')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208740155027218)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Fun\00E7\00E3o')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216594928027221)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Fun\00E7\00F5es %0')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294252468027244)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'pt'
,p_message_text=>unistr('Fun\00E7\00F5es/Operadores')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208474138027218)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'pt'
,p_message_text=>unistr('Fun\00E7\00E3o %0')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200733488027216)
,p_name=>'APEXIR_GO'
,p_message_language=>'pt'
,p_message_text=>'Ir'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174393182027208)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'pt'
,p_message_text=>'verde'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219395151027221)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Agrupar por Colunas'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219478478027221)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Agrupar por Fun\00E7\00F5es')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154687742027202)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'pt'
,p_message_text=>'Agrupar por'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295387891027245)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Agrupar Por Coluna %0'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250879180027231)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar Agrupar por coluna.')
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261904038027234)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'pt'
,p_message_text=>unistr('O n\00FAmero m\00E1ximo de linhas para uma consulta de Agrupar Por limita o n\00FAmero de linhas na consulta base e n\00E3o o n\00FAmero de linhas apresentadas. A sua consulta base excede o n\00FAmero m\00E1ximo de linhas de %0. Aplique um filtro para reduzir o n\00FAmero de regist')
||'os na sua consulta base.'
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242102675027228)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Ordena\00E7\00E3o de Agrupar Por')
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298804977027246)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'pt'
,p_message_text=>unistr('Sequ\00EAncia de Ordena\00E7\00E3o de Agrupar Por')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143723180027199)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o de agrupar por de %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179775971027209)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'pt'
,p_message_text=>'Coluna Horizontal'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213762461027220)
,p_name=>'APEXIR_HELP'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205525819027217)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Os relat\00F3rios interativos permitem que os utilizadores finais customizem relat\00F3rios. Os utilizadores podem alterar a disposi\00E7\00E3o dos dados do relat\00F3rio ao selecionarem colunas, aplicarem filtros, destacarem e ordenarem. Os utilizadores tamb\00E9m podem de')
||unistr('finir quebras, agrega\00E7\00F5es, diagramas e agrupamentos, e acrescentarem c\00E1lculos pr\00F3prios. Os utilizadores tamb\00E9m podem configurar uma subscri\00E7\00E3o para que uma vers\00E3o em HTML do relat\00F3rio lhes seja enviada por email em intervalos de tempo especificados. ')
||unistr('Os utilizadores podem criar diferentes varia\00E7\00F5es de um relat\00F3rio e grav\00E1-las como relat\00F3rios nomeados para visualiza\00E7\00E3o p\00FAblica ou privada. '),
'<p/>',
unistr('As sec\00E7\00F5es a seguir resumem as formas de customiza\00E7\00E3o de um relat\00F3rio interativo. Para saber mais, consulte "Utilizar Relat\00F3rios Interativos" no <i>Oracle APEX End User''s Guide</i>.')))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212609102027219)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'pt'
,p_message_text=>unistr('O menu A\00E7\00F5es aparece \00E0 direita do bot\00E3o Ir na barra de Pesquisa. Utilize este menu para customizar um relat\00F3rio interativo.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206337372027217)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('As agrega\00E7\00F5es s\00E3o c\00E1lculos matem\00E1ticos efetuados com base numa coluna. As agrega\00E7\00F5es s\00E3o apresentadas ap\00F3s cada controlo de interrup\00E7\00E3o e no fim do relat\00F3rio, na coluna onde est\00E3o definidas. As op\00E7\00F5es incluem:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Agrega\00E7\00E3o</strong> permite-lhe selecionar uma agrega\00E7\00E3o'),
unistr('definida anteriormente para edi\00E7\00E3o.</li>'),
unistr('<li><strong>Fun\00E7\00E3o</strong> \00E9 a fun\00E7\00E3o a efetuar (por exemplo, SUM, MIN).</li>'),
unistr('<li><strong>Coluna</strong> \00E9 utilizada para selecionar a coluna \00E0 qual a fun\00E7\00E3o matem\00E1tica \00E9 aplicada. Apenas s\00E3o apresentadas'),
unistr('colunas num\00E9ricas.</li>'),
'</ul>'))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206405367027217)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pode definir um diagrama por cada relat\00F3rio gravado. Conclu\00EDda'),
unistr('a defini\00E7\00E3o, pode alternar entre as visualiza\00E7\00F5es de diagrama e de relat\00F3rio com os \00EDcones de visualiza\00E7\00E3o na barra de Pesquisa.'),
unistr('As op\00E7\00F5es incluem:  '),
'<p>',
'</p><ul>',
'<li><strong>Tipo de Diagrama</strong> identifica o tipo de diagrama a incluir.',
'Selecione barra horizontal, barra vertical, sectograma ou linha.</li>',
'<li><strong>Etiqueta</strong> permite-lhe selecionar a coluna a utilizar como etiqueta.</li>',
unistr('<li><strong>T\00EDtulo do Eixo para Etiqueta</strong> \00E9 o t\00EDtulo apresentado no eixo associado \00E0 coluna selecionada para a'),
unistr('Etiqueta. N\00E3o est\00E1 dispon\00EDvel para sectogramas.</li>'),
unistr('<li><strong>Valor</strong> permite-lhe selecionar a coluna a utilizar como valor. Se a fun\00E7\00E3o'),
unistr('for COUNT, n\00E3o \00E9 necess\00E1rio selecionar um Valor.</li>'),
unistr('<li><strong>T\00EDtulo do Eixo para Valor</strong> \00E9 o t\00EDtulo apresentado no eixo associado \00E0 coluna selecionada para o'),
unistr('Valor. N\00E3o est\00E1 dispon\00EDvel para sectogramas.</li>'),
unistr('<li><strong>Fun\00E7\00E3o</strong> \00E9 uma fun\00E7\00E3o opcional a efetuar na coluna selecionada para o Valor.</li>'),
'<li><strong>Ordenar</strong> permite-lhe ordenar o conjunto de resultados.</li></ul>'))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205756182027217)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Clicar num t\00EDtulo de coluna exp\00F5e um menu de t\00EDtulo de coluna. As op\00E7\00F5es incluem:'),
'<p></p>',
'<ul>',
unistr('<li>O \00EDcone <strong>Ordem Crescente</strong> ordena o relat\00F3rio pela coluna na ordem crescente.</li>'),
unistr('<li>O \00EDcone <strong>Ordem Decrescente</strong> ordena o relat\00F3rio pela coluna na ordem decrescente.</li>'),
unistr('<li><strong>Ocultar Coluna</strong> oculta a coluna. Nem todas as colunas podem ser ocultadas. Se n\00E3o for poss\00EDvel ocultar uma coluna, o \00EDcone Ocultar Coluna n\00E3o \00E9 apresentado.</li>'),
unistr('<li><strong>Quebrar Coluna</strong> cria um grupo de quebras na coluna. Isto extrai a coluna do relat\00F3rio como um registo mestre.</li>'),
unistr('<li><strong>Informa\00E7\00F5es da Coluna</strong> apresenta texto de aux\00EDlio sobre a coluna, se dispon\00EDvel.</li>'),
unistr('<li>A <strong>\00C1rea de Texto</strong> \00E9 utilizada para introduzir crit\00E9rios de pesquisa n\00E3o sens\00EDveis a mai\00FAsculas/min\00FAsculas'),
unistr('(sem necessidade de caracteres de substitui\00E7\00E3o). A introdu\00E7\00E3o de um valor reduz a lista de'),
'valores na parte inferior do menu. Em seguida, pode selecionar um valor na',
unistr('parte inferior e o valor selecionado ser\00E1 criado como um filtro com ''='''),
unistr('(por exemplo, <code>coluna = ''ABC''</code>). Em alternativa, pode clicar no \00EDcone Lanterna e introduzir um valor para ser criado como um filtro com o modificador ''SEMELHANTE A'''),
'(por exemplo, <code>coluna SEMELHANTE A ''%ABC%''</code>).</li>',
unistr('<li>A <strong>Lista de Valores Exclusivos</strong> cont\00E9m os primeiros 500 valores'),
unistr('exclusivos correspondentes aos crit\00E9rios do filtro. Se a coluna for uma data, \00E9 apresentada'),
unistr('uma lista de intervalos de datas. Se selecionar um valor, ser\00E1 criado um filtro'),
'com ''='' (por exemplo, <code>coluna = ''ABC''</code>).</li>',
'</ul>'))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206230832027217)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Permite-lhe acrescentar colunas calculadas ao relat\00F3rio. Podem ser c\00E1lculos matem\00E1ticos (por exemplo, <code>NBR_HOURS/24</code>) ou fun\00E7\00F5es Oracle standard'),
unistr('aplicadas a colunas existentes. Alguns s\00E3o apresentados como exemplos e outros (como <code>TO_DATE)</code> tamb\00E9m podem ser utilizados). As op\00E7\00F5es incluem:'),
'<p></p>',
'<ul>',
unistr('<li><strong>C\00E1lculo</strong> permite-lhe selecionar um c\00E1lculo definido anteriormente para edi\00E7\00E3o.</li>'),
unistr('<li><strong>T\00EDtulo da Coluna</strong> \00E9 o t\00EDtulo da coluna para a nova coluna.</li>'),
unistr('<li><strong>M\00E1scara de Formato</strong> \00E9 uma m\00E1scara de formato Oracle a ser aplicada \00E0 coluna (por exemplo,S9999).</li>'),
unistr('<li><strong>C\00E1lculo</strong> \00E9 o c\00E1lculo a efetuar. No c\00E1lculo, as colunas s\00E3o referenciadas com os pseud\00F3nimos apresentados.</li>'),
'</ul>',
unistr('<p>Abaixo do c\00E1lculo, as colunas da consulta s\00E3o apresentadas com'),
unistr('o respetivo pseud\00F3nimo associado. Ao clicar no nome ou pseud\00F3nimo da coluna, inclui-a'),
unistr('no C\00E1lculo. Existe um teclado junto \00E0s Colunas. Este teclado funciona como'),
unistr('um atalho para teclas utilizadas frequentemente. Na extremidade direita, encontra as Fun\00E7\00F5es.</p>'),
unistr('<p>O c\00E1lculo de exemplo a seguir demonstra como apresentar a remunera\00E7\00E3o total:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(em que A \00E9 ORGANIZATION, B \00E9 SALARY e C \00E9 COMMISSION)'),
''))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212750579027219)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'pt'
,p_message_text=>unistr('Utilizado para criar um grupo de quebras numa ou mais colunas. Retira as colunas do relat\00F3rio interativo e apresenta-as como um registo mestre.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206979765027218)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Para ver os detalhes de uma s\00F3 linha de cada vez, clique no \00EDcone de visualiza\00E7\00E3o de linha \00FAnica na linha que pretende visualizar. Se estiver dispon\00EDvel, a visualiza\00E7\00E3o de linha \00FAnica ser\00E1 sempre a primeira coluna. Consoante a customiza\00E7\00E3o do relat\00F3r')
||unistr('io interativo, a visualiza\00E7\00E3o de linha \00FAnica pode ser a visualiza\00E7\00E3o standard ou uma p\00E1gina customizada que pode permitir a atualiza\00E7\00E3o.')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206840880027218)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'pt'
,p_message_text=>unistr('Permite que o conjunto de resultados atual seja descarregado. Os formatos de descarregamento incluem PDF, Excel, HTML e CSV. As op\00E7\00F5es de descarregamento diferem consoante o formato selecionado. Todos os formatos podem tamb\00E9m ser enviados como mensag')
||'ens de e-mail.'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205900501027217)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Foca o relat\00F3rio ao acrescentar ou modificar a cl\00E1usula <code>WHERE</code> na consulta. Pode filtrar por coluna ou por linha.  '),
unistr('<p>Se filtrar por coluna, selecione uma coluna (n\00E3o precisa de ser'),
unistr('uma das colunas apresentadas), selecione um operador Oracle standard (=, !=, n\00E3o est\00E1 em, entre) e introduza uma express\00E3o para compara\00E7\00E3o. As express\00F5es s\00E3o sens\00EDveis a mai\00FAsculas/min\00FAsculas. Utilize % como car\00E1cter de substitui\00E7\00E3o (por exemplo, <co')
||'de>STATE_NAME',
'semelhante a A%)</code>.</p>',
unistr('<p>Se filtrar por linha, pode criar cl\00E1usulas <code>WHERE</code> complexas com'),
unistr('pseud\00F3nimos de colunas e quaisquer operadores ou fun\00E7\00F5es Oracle (por exemplo, <code>G = ''VA'' ou G = ''CT''</code>, em que'),
unistr('<code>G</code> \00E9 o pseud\00F3nimo de <code>CUSTOMER_STATE</code>).</p>'),
''))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206584331027218)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Uma consulta de flashback permite-lhe visualizar os dados tal como existiam num per\00EDodo'),
unistr('anterior. A quantidade de tempo por omiss\00E3o para o flashback \00E9 de 3 horas (ou 180'),
unistr('minutos), mas a quantidade real ser\00E1 diferente para cada base de dados.')))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271183945027237)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Formatar permite-lhe customizar a apresenta\00E7\00E3o do relat\00F3rio.'),
unistr('Formatar cont\00E9m o seguinte submenu:</p>'),
'<ul><li>Ordenar</li>',
unistr('<li>Controlo de Interrup\00E7\00E3o</li>'),
'<li>Destacar</li>',
'<li>Calcular</li>',
'<li>Agregar</li>',
'<li>Diagrama</li>',
'<li>Agrupar Por</li>',
unistr('<li>Din\00E2mica</li>'),
'</ul>',
''))
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269361229027237)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pode definir uma visualiza\00E7\00E3o Agrupar Por para cada relat\00F3rio'),
unistr('gravado. Ap\00F3s a defini\00E7\00E3o, pode alternar entre as visualiza\00E7\00F5es'),
unistr('agrupar por e relat\00F3rio ao utilizar os \00EDcones de visualiza\00E7\00E3o na barra de Pesquisa. Para criar uma visualiza\00E7\00E3o Agrupar Por,'),
'selecione:',
'<p></p><ul>',
'<li>as colunas para agrupar</li>',
unistr('<li>as colunas a agregar com a fun\00E7\00E3o a efetuar (m\00E9dia, soma, contagem, etc.)</li>'),
'</ul>'))
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206170992027217)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Permite-lhe definir um filtro. As linhas que cumprem os crit\00E9rios do filtro s\00E3o destacadas com as caracter\00EDsticas associadas ao filtro. As op\00E7\00F5es incluem:</p>'),
'<ul>',
unistr('<li>O <strong>Nome</strong> \00E9 utilizado apenas para apresenta\00E7\00E3o.</li>'),
unistr('<li>A <strong>Sequ\00EAncia</strong> identifica a sequ\00EAncia de avalia\00E7\00E3o das regras.</li>'),
unistr('<li>A op\00E7\00E3o <strong>Ativado</strong> identifica se uma regra est\00E1 ativada ou desativada.</li>'),
unistr('<li>O <strong>Tipo de Destaque</strong> identifica se a linha ou a c\00E9lula deve ser'),
unistr('destacada. Se selecionar C\00E9lula, a coluna referenciada na'),
unistr('Condi\00E7\00E3o de Destaque \00E9 destacada.</li>'),
unistr('<li>A <strong>Cor de Segundo Plano</strong> \00E9 a nova cor do segundo plano da \00E1rea destacada.</li>'),
unistr('<li>A <strong>Cor do Texto</strong> \00E9 a nova cor do texto na \00E1rea destacada.</li>'),
unistr('<li>A <strong>Condi\00E7\00E3o de Destaque</strong> define a condi\00E7\00E3o do filtro.</li>'),
'</ul>',
''))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099584658027185)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pode definir uma visualiza\00E7\00E3o Din\00E2mica por relat\00F3rio gravado. Depois de definir a visualiza\00E7\00E3o, pode alternar entre as visualiza\00E7\00F5es de relat\00F3rio e din\00E2mica ao utilizar os \00EDcones de visualiza\00E7\00E3o dispon\00EDveis na barra de Pesquisa. Para criar uma visual')
||unistr('iza\00E7\00E3o Din\00E2mica, selecione: '),
'<p></p>',
'<ul>',
unistr('<li>as colunas din\00E2micas</li>'),
'<li>as colunas a apresentar como linhas</li>',
unistr('<li>as colunas a agregar com a fun\00E7\00E3o a efetuar (m\00E9dia, soma, contagem, etc.)</li>'),
'</ul>'))
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217247075027221)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Se customizar um relat\00F3rio interativo, as defini\00E7\00F5es do relat\00F3rio s\00E3o apresentadas'),
unistr('abaixo da barra de Pesquisa e acima do relat\00F3rio. Esta \00E1rea pode ser contra\00EDda ou expandida com o \00EDcone \00E0 esquerda.'),
'<p>',
unistr('Para cada defini\00E7\00E3o do relat\00F3rio, pode:'),
'</p><ul>',
unistr('<li>Editar uma defini\00E7\00E3o ao clicar no nome.</li>'),
unistr('<li>Desativar/Ativar uma defini\00E7\00E3o ao anular a sele\00E7\00E3o ou ao selecionar a caixa de sele\00E7\00E3o Ativar/Desativar. Utilize este controlo para desativar ou ativar temporariamente uma defini\00E7\00E3o.</li>'),
unistr('<li>Retirar uma defini\00E7\00E3o ao clicar no \00EDcone Retirar.</li>'),
'</ul>',
unistr('<p>Se tiver criado um diagrama, agrupar por ou din\00E2mica, pode alternar entre eles'),
unistr('e o relat\00F3rio base atrav\00E9s das liga\00E7\00F5es Visualiza\00E7\00E3o de Relat\00F3rio, Visualiza\00E7\00E3o de Diagrama, Visualiza\00E7\00E3o Agrupar Por e Visualiza\00E7\00E3o Din\00E2mica'),
unistr('mostradas \00E0 direita. Se est\00E1 a visualizar o diagrama, agrupar por ou din\00E2mica, tamb\00E9m'),
unistr('pode utilizar a liga\00E7\00E3o Editar para editar as defini\00E7\00F5es.</p>'),
''))
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206701985027218)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'pt'
,p_message_text=>unistr('Redefine o relat\00F3rio para as defini\00E7\00F5es por omiss\00E3o ao retirar todas as customiza\00E7\00F5es que efetuou.')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271451371027237)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Define o n\00FAmero de registos a apresentar por p\00E1gina.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206637321027218)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Grava o relat\00F3rio customizado para utiliza\00E7\00E3o futura. Fornece um nome e uma descri\00E7\00E3o opcional e pode tornar o relat\00F3rio acess\00EDvel ao p\00FAblico (ou seja, a todos os utilizadores que podem aceder ao relat\00F3rio por omiss\00E3o principal). Pode gravar quatr')
||unistr('o tipos de relat\00F3rios interativos:</p>'),
'<ul>',
unistr('<li><strong>Por Omiss\00E3o Principal</strong> (Apenas para Programadores). O relat\00F3rio Por Omiss\00E3o Principal \00E9 o relat\00F3rio apresentado inicialmente. O relat\00F3rio Por Omiss\00E3o Principal n\00E3o pode ser renomeado nem apagado.</li>'),
unistr('<li><strong>Relat\00F3rio Alternativo</strong> (Apenas para Programadores). Permite que os programadores criem v\00E1rias disposi\00E7\00F5es de relat\00F3rios. Um relat\00F3rio Alternativo s\00F3 pode ser gravado, renomeado ou apagado por um programador.</li>'),
unistr('<li><strong>Relat\00F3rio P\00FAblico</strong> (Utilizador final). Pode ser gravado, renomeado ou apagado pelo utilizador final que o criou. Outros utilizadores podem visualizar e gravar a disposi\00E7\00E3o como outro relat\00F3rio.</li>'),
unistr('<li><strong>Relat\00F3rio Privado</strong> (Utilizador final). O relat\00F3rio s\00F3 pode ser visualizado, gravado, renomeado ou apagado pelo utilizador final que o criou.</li>'),
'</ul>',
unistr('<p>Se gravar relat\00F3rios customizados, um seletor de Relat\00F3rios \00E9 apresentado na barra de Pesquisa \00E0 esquerda do seletor de Linhas (se esta funcionalidade estiver ativada).</p>'),
''))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205622234027217)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'pt'
,p_message_text=>unistr('Encontra uma regi\00E3o de pesquisa no in\00EDcio de cada p\00E1gina do relat\00F3rio. Esta regi\00E3o (ou barra de Pesquisa) fornece as seguintes funcionalidades:')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272092985027237)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'pt'
,p_message_text=>unistr('<li>O <strong>Menu A\00E7\00F5es</strong> permite-lhe customizar um relat\00F3rio. Consulte as sec\00E7\00F5es a seguir.</li>')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271540153027237)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'pt'
,p_message_text=>unistr('<li>O <strong>\00EDcone Selecionar colunas</strong> permite-lhe identificar as colunas a pesquisar (ou todas).</li>')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271838938027237)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'pt'
,p_message_text=>unistr('<li><strong>Relat\00F3rios</strong> apresenta os relat\00F3rios privados e p\00FAblicos gravados e por omiss\00E3o alternativos.</li>')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271770113027237)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'pt'
,p_message_text=>unistr('<li><strong>Linhas</strong> define o n\00FAmero de registos a apresentar por p\00E1gina.</li>')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271633843027237)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li>A <strong>\00C1rea de texto</strong> permite-lhe introduzir crit\00E9rios de pesquisa n\00E3o sens\00EDveis a mai\00FAsculas/min\00FAsculas (incluindo caracteres de substitui\00E7\00E3o).</li>'),
unistr('<li>O <strong>bot\00E3o Ir</strong> executa a pesquisa. Premir a tecla enter tamb\00E9m executa a pesquisa quando o cursor est\00E1 na \00E1rea de texto da pesquisa.</li>')))
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271967884027237)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('<li>Os <strong>\00CDcones de Visualiza\00E7\00F5es</strong> alternam entre as visualiza\00E7\00F5es de \00EDcone, relat\00F3rio, detalhe, diagrama, agrupar por e din\00E2mica do relat\00F3rio caso estejam definidas.</li>')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205845768027217)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>unistr('Utilizado para modificar as colunas apresentadas. S\00E3o apresentadas as colunas \00E0 direita. As colunas \00E0 esquerda s\00E3o ocultadas. Pode reordenar as colunas apresentadas com as setas na extremidade direita. As colunas calculadas t\00EAm o prefixo <strong>**</')
||'strong>.'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128206009604027217)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilizado para alterar as colunas para ordena\00E7\00E3o e determina a utiliza\00E7\00E3o da'),
unistr('ordem crescente ou da ordem decrescente. Tamb\00E9m pode especificar como os'),
unistr('<code>NULLs</code> s\00E3o processados. A defini\00E7\00E3o por omiss\00E3o apresenta sempre os <code>NULLs</code> em \00FAltimo lugar ou sempre em primeiro lugar. A ordena\00E7\00E3o resultante \00E9 apresentada \00E0 direita dos'),
unistr('t\00EDtulos das colunas no relat\00F3rio.</p>')))
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269140144027237)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Quando acrescenta uma subscri\00E7\00E3o, fornece um endere\00E7o de email (ou v\00E1rios endere\00E7os de email separados por v\00EDrgulas), o assunto da mensagem de email, a frequ\00EAncia e as datas de in\00EDcio e fim. As mensagens de email resultantes incluem uma vers\00E3o export')
||unistr('ada (em PDF, Excel, HTML ou CSV) do relat\00F3rio interativo que cont\00E9m os dados atuais que utilizam as defini\00E7\00F5es do relat\00F3rio existentes quando a subscri\00E7\00E3o foi acrescentada.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210700721027219)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Ocultar Coluna'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201137290027216)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'pt'
,p_message_text=>'Destacar'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212290732027219)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'pt'
,p_message_text=>'Destaques'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182428375027210)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'pt'
,p_message_text=>unistr('Destacar C\00E9lula %0 em %1')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217369537027221)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'pt'
,p_message_text=>unistr('Condi\00E7\00E3o de Destaque')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182320257027210)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'pt'
,p_message_text=>'Destacar Linha %0 em %1'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269732452027237)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'pt'
,p_message_text=>'Estilo do Destaque'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173986591027208)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'pt'
,p_message_text=>'Tipo de Destaque'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288589900027243)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'pt'
,p_message_text=>'Horizontal'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317556044027251)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'pt'
,p_message_text=>unistr('1 defini\00E7\00E3o inativa')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317644168027251)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 defini\00E7\00F5es inativas')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207303373027218)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do Relat\00F3rio Interativo')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218382025027221)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('Inv\00E1lido')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211793742027219)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Express\00E3o de c\00E1lculo inv\00E1lida. %0')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167334643027206)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'pt'
,p_message_text=>unistr('A data de fim deve ser posterior \00E0 data de in\00EDcio.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226553911027224)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'pt'
,p_message_text=>unistr('Express\00E3o de filtro inv\00E1lida. %0')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296349695027245)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'pt'
,p_message_text=>unistr('Consulta de filtro inv\00E1lida')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317793161027252)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'pt'
,p_message_text=>unistr('1 defini\00E7\00E3o inv\00E1lida')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317823170027252)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 defini\00E7\00F5es inv\00E1lidas')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269962255027237)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'pt'
,p_message_text=>'(em minutos)'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286911139027242)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 est\00E1 no \00FAltimo intervalo de %1')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287109833027242)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 est\00E1 no pr\00F3ximo intervalo de %1')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287095904027242)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no \00FAltimo intervalo de %1')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287272281027242)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 n\00E3o est\00E1 no pr\00F3ximo intervalo de %1')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216403159027221)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'pt'
,p_message_text=>'Teclado'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180172968027210)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Etiqueta %0'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210303830027219)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo do Eixo para Etiqueta')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202662622027216)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo Dia')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202877425027216)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltima Hora')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202309218027216)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo M\00EAs')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202476410027216)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltima Semana')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202523803027216)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimos %0 Dias')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202702007027216)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimas %0 Horas')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202161212027216)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimos %0 Anos')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202201486027216)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'pt'
,p_message_text=>unistr('\00DAltimo Ano')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180076079027210)
,p_name=>'APEXIR_LINE'
,p_message_language=>'pt'
,p_message_text=>'Linha'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176815538027209)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'pt'
,p_message_text=>unistr('Linha com \00C1rea')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296203214027245)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'pt'
,p_message_text=>unistr('Localiza\00E7\00E3o no Mapa')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211214155027219)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'pt'
,p_message_text=>unistr('Estima-se que a consulta exceda o m\00E1ximo de recursos permitidos. Modifique as defini\00E7\00F5es do relat\00F3rio e tente novamente.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192611049027213)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'pt'
,p_message_text=>unistr('O n\00FAmero m\00E1ximo de linhas para este relat\00F3rio \00E9 %0 linhas. Aplique um filtro para reduzir o n\00FAmero de registos na sua consulta.')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296873326027245)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00E1ximo %0')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297036411027245)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'pt'
,p_message_text=>'Mediano %0'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139307258027197)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Mensagem'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196958118027215)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 minutos')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296914895027245)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EDnimo %0')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295902694027245)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EAs')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270387305027237)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'pt'
,p_message_text=>'Mensal'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209599565027218)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'pt'
,p_message_text=>'Deslocar'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209489663027218)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'pt'
,p_message_text=>'Deslocar Todos'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322624413027253)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('A ID Est\00E1tica da Regi\00E3o deve ser especificada dado que a p\00E1gina cont\00E9m v\00E1rios relat\00F3rios interativos.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175532229027208)
,p_name=>'APEXIR_NAME'
,p_message_language=>'pt'
,p_message_text=>'Nome'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205293877027217)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Nova Agrega\00E7\00E3o')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318464506027252)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'pt'
,p_message_text=>'Nova Categoria'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205372789027217)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Novo C\00E1lculo')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200002457027216)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203172160027216)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'pt'
,p_message_text=>'Dia Seguinte'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128202991374027216)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3xima hora')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203449195027217)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximo M\00EAs')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203357010027217)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3xima Semana')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203264146027217)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximos %0 Dias')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203034778027216)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximas %0 Horas')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203627411027217)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximos %0 Anos')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203515914027217)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00F3ximo Ano')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175804513027208)
,p_name=>'APEXIR_NO'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218548286027221)
,p_name=>'APEXIR_NONE'
,p_message_language=>'pt'
,p_message_text=>'- Nenhum -'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269577019027237)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 um endere\00E7o de email v\00E1lido.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141640615027198)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'pt'
,p_message_text=>unistr('Nenhuma coluna selecionada para apresenta\00E7\00E3o. Utilize as <strong>Colunas</strong> no Menu A\00E7\00E3o para tornar as colunas vis\00EDveis.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215068282027220)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'pt'
,p_message_text=>unistr('Nulos Sempre no In\00EDcio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214974703027220)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'pt'
,p_message_text=>'Nulos Sempre no Fim'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215480961027220)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'pt'
,p_message_text=>unistr('Ordena\00E7\00E3o de Nulos %0')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211820699027219)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio que o tempo de flashback seja num\00E9rico.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211450791027219)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio que a sequ\00EAncia seja num\00E9rica.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215926535027220)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'pt'
,p_message_text=>'Operador'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174452773027208)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'pt'
,p_message_text=>'laranja'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288471476027243)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Orienta\00E7\00E3o')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176389749027208)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'pt'
,p_message_text=>'Outro'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142558090027198)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'pt'
,p_message_text=>unistr('Pagina\00E7\00E3o de %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156576092027202)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Orienta\00E7\00E3o da p\00E1gina')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157273630027203)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'pt'
,p_message_text=>'Horizontal'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157330750027203)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'pt'
,p_message_text=>'Vertical'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156495532027202)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tamanho da p\00E1gina')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157082573027203)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'pt'
,p_message_text=>'A3'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156981008027203)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'pt'
,p_message_text=>'A4'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157101507027203)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'pt'
,p_message_text=>'Customizado'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156783960027203)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'pt'
,p_message_text=>'Legal'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156661357027203)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'pt'
,p_message_text=>'Letter'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156821607027203)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'pt'
,p_message_text=>'Tabloid'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297370834027245)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'pt'
,p_message_text=>'Percentagem da Contagem Total %0 (%)'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296590584027245)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'pt'
,p_message_text=>'Percentagem da Soma Total %0 (%)'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295564343027245)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'pt'
,p_message_text=>'Percentagem da Contagem Total'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295496771027245)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'pt'
,p_message_text=>'Percentagem da Soma Total'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179977451027209)
,p_name=>'APEXIR_PIE'
,p_message_language=>'pt'
,p_message_text=>'Sectograma'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245619671027229)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'pt'
,p_message_text=>unistr('Din\00E2mica')
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247178466027230)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar a agrega\00E7\00E3o.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247374151027230)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o pode efetuar a agrega\00E7\00E3o numa coluna selecionada como coluna da linha.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246588472027230)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>unistr('Colunas Din\00E2micas')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246306905027230)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'pt'
,p_message_text=>unistr('Coluna Din\00E2mica %0')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246987038027230)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar a coluna din\00E2mica.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099440587027185)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'pt'
,p_message_text=>unistr('O n\00FAmero m\00E1ximo de linhas para uma consulta Din\00E2mica limita o n\00FAmero de linhas na consulta base e n\00E3o o n\00FAmero de linhas apresentadas. A sua consulta base excede o n\00FAmero m\00E1ximo de linhas de %0. Aplique um filtro para reduzir o n\00FAmero de registos na ')
||'sua consulta base.'
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246806083027230)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Ordena\00E7\00E3o Din\00E2mica')
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212840960027219)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'pt'
,p_message_text=>unistr('A coluna din\00E2mica cont\00E9m demasiados valores distintos - n\00E3o \00E9 poss\00EDvel gerar o SQL din\00E2mico.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143874854027199)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o din\00E2mica de %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269666202027237)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00E9-visualizar')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200159755027216)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128294444812027244)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'pt'
,p_message_text=>'Principal'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270611576027237)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio Principal')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156306573027202)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'pt'
,p_message_text=>'Incluir Identificadores de Acessibilidade'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117101077027191)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'pt'
,p_message_text=>'Retirar RTF'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225583694027223)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'pt'
,p_message_text=>'Privado'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180556469027210)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'pt'
,p_message_text=>unistr('P\00FAblico')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176106363027208)
,p_name=>'APEXIR_RED'
,p_message_language=>'pt'
,p_message_text=>'vermelho'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322556843027253)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A ID Est\00E1tica da Regi\00E3o %0 n\00E3o existe.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209657496027218)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'pt'
,p_message_text=>'Retirar'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209771751027218)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'pt'
,p_message_text=>'Retirar Todos'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317931113027252)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'pt'
,p_message_text=>'Retirar Diagrama'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209283612027218)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'pt'
,p_message_text=>unistr('Retirar Controlo de Interrup\00E7\00E3o')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208900673027218)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'pt'
,p_message_text=>'Retirar Filtro'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209021797027218)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'pt'
,p_message_text=>'Retirar Flashback'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318003889027252)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'pt'
,p_message_text=>'Retirar Agrupar Por'
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209308212027218)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'pt'
,p_message_text=>'Retirar Destaque'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318186643027252)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'pt'
,p_message_text=>unistr('Retirar Din\00E2mica')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299222084027246)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Retirar Relat\00F3rio')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128281085853027240)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Renomear Relat\00F3rio Por Omiss\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218873372027221)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Renomear Relat\00F3rio')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200463748027216)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio')
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297420193027245)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rios')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172699412027207)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O relat\00F3rio interativo gravado com o pseud\00F3nimo %0 n\00E3o existe.')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225898562027223)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O relat\00F3rio n\00E3o existe.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172752141027207)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A ID do Relat\00F3rio Interativo Gravado %0 n\00E3o existe.')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217193335027221)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00F5es do Relat\00F3rio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141350286027198)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00F5es de relat\00F3rio de %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197424035027215)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualiza\00E7\00E3o do Relat\00F3rio')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201631305027216)
,p_name=>'APEXIR_RESET'
,p_message_language=>'pt'
,p_message_text=>'Redefinir'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180712724027210)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'pt'
,p_message_text=>unistr('Repor defini\00E7\00F5es por omiss\00E3o do relat\00F3rio.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175942002027208)
,p_name=>'APEXIR_ROW'
,p_message_language=>'pt'
,p_message_text=>'Linha'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293510196027244)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o pode utilizar ROWID como coluna de chave prim\00E1ria para uma Origem de Dados REST.')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208368450027218)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'pt'
,p_message_text=>'Linhas'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271305104027237)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Linhas por P\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246609899027230)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Colunas da Linha'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246485692027230)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'pt'
,p_message_text=>'Coluna da Linha %0'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247008385027230)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar a coluna da linha.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247225650027230)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'pt'
,p_message_text=>unistr('A coluna da linha deve ser diferente da coluna din\00E2mica.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222833737027223)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'pt'
,p_message_text=>'Filtro de Linha'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197533958027215)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'pt'
,p_message_text=>'Linha %0 de %1'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201845973027216)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'pt'
,p_message_text=>unistr('O texto da linha cont\00E9m')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175207675027208)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'pt'
,p_message_text=>'Gravar'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212405612027219)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio Gravado')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212317827027219)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio Gravado = "%0"')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214573853027220)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'pt'
,p_message_text=>unistr('As defini\00E7\00F5es atuais do relat\00F3rio ser\00E3o utilizadas como valores por omiss\00E3o para todos os utilizadores.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128280981427027240)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Gravar Relat\00F3rio Por Omiss\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201503945027216)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Gravar Relat\00F3rio')
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318399099027252)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Gravar Relat\00F3rio *')
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272322413027238)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207235429027218)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'pt'
,p_message_text=>'Barra Pesquisa'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128140603221027198)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'pt'
,p_message_text=>'Barra de pesquisa de %0'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128318213741027252)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar: %0'
,p_is_js_message=>true
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277828574027239)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Pesquisar Relat\00F3rio')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128261819919027234)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Colunas Selecionadas'
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176968815027209)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'- Selecionar Coluna -'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200890460027216)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Colunas'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180428905027210)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('- Selecionar Fun\00E7\00E3o -')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208039708027218)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'- Selecionar Agrupar Por Coluna -'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246174611027230)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('- Selecionar Coluna Din\00E2mica -')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296479563027245)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Linha'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246244714027230)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'- Selecionar Coluna da Linha -'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128127781665027194)
,p_name=>'APEXIR_SEND'
,p_message_language=>'pt'
,p_message_text=>'Enviar'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150230415027201)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'pt'
,p_message_text=>'Enviar como Mensagem de Email'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175653165027208)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'pt'
,p_message_text=>unistr('Sequ\00EAncia')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128201050955027216)
,p_name=>'APEXIR_SORT'
,p_message_language=>'pt'
,p_message_text=>'Ordenar'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210594665027219)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'pt'
,p_message_text=>'Ordem Crescente'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210633745027219)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'pt'
,p_message_text=>'Ordem Decrescente'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298697369027246)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'pt'
,p_message_text=>unistr('Sequ\00EAncia de Ordena\00E7\00E3o')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204986373027217)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'pt'
,p_message_text=>unistr('espa\00E7o')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128216132050027220)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'pt'
,p_message_text=>'Estado %0'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270093040027237)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Subscri\00E7\00E3o')
,p_is_js_message=>true
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295840332027245)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'pt'
,p_message_text=>'A terminar a'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128114823629027190)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'pt'
,p_message_text=>unistr('Ignorar se N\00E3o Foram Encontrados Dados')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128295743963027245)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'pt'
,p_message_text=>'A Partir De'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296680805027245)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'pt'
,p_message_text=>'Soma %0'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287568088027242)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'pt'
,p_message_text=>unistr('%0, Relat\00F3rio = %1, Visualiza\00E7\00E3o = %2')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174513156027208)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'pt'
,p_message_text=>'Cor do Texto'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193247397027213)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'pt'
,p_message_text=>'dias'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193170321027213)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'pt'
,p_message_text=>'horas'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193025001027213)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'pt'
,p_message_text=>'minutos'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193461298027214)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'pt'
,p_message_text=>'meses'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193319133027214)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'pt'
,p_message_text=>'semanas'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128193510284027214)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'pt'
,p_message_text=>'anos'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299062064027246)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'pt'
,p_message_text=>'Alternar'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209847886027219)
,p_name=>'APEXIR_TOP'
,p_message_language=>'pt'
,p_message_text=>'Superior'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292595017027244)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('Coluna N\00E3o Agrupada')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211368111027219)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio que o Nome do Destaque seja exclusivo.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179229259027209)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('tipo de dados n\00E3o suportado')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128209968087027219)
,p_name=>'APEXIR_UP'
,p_message_language=>'pt'
,p_message_text=>'Para Cima'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211559738027219)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'pt'
,p_message_text=>unistr('Introduza uma cor v\00E1lida.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211645866027219)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'pt'
,p_message_text=>unistr('Introduza uma m\00E1scara de formato v\00E1lida.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128176466561027208)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'pt'
,p_message_text=>'Valor'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210462806027219)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo do Eixo para Valor')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218243049027221)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Obrigat\00F3rio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179881298027209)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'pt'
,p_message_text=>'Coluna Vertical'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128288632269027243)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'pt'
,p_message_text=>'Vertical'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217555593027221)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'pt'
,p_message_text=>'Visualizar Diagrama'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276188523027239)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'pt'
,p_message_text=>'Visualizar Detalhe'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320466567027252)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O relat\00F3rio n\00E3o tem a visualiza\00E7\00E3o %0 definida.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276239551027239)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'pt'
,p_message_text=>'Visualizar Grupo Por'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276040488027239)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualizar \00CDcones')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245948634027230)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualizar Din\00E2mica')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128217668570027221)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Visualizar Relat\00F3rio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270287629027237)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'pt'
,p_message_text=>'Semanal'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200360786027216)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio de Trabalho')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298063786027246)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'pt'
,p_message_text=>'%0 dias'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297941610027246)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'pt'
,p_message_text=>'%0 horas'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128297806613027246)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'pt'
,p_message_text=>'%0 minutos'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298243296027246)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'pt'
,p_message_text=>'%0 meses'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298148665027246)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'pt'
,p_message_text=>'%0 semanas'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128298391296027246)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'pt'
,p_message_text=>'%0 anos'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128296009413027245)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'pt'
,p_message_text=>'Ano'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128174207537027208)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'pt'
,p_message_text=>'amarelo'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128175726448027208)
,p_name=>'APEXIR_YES'
,p_message_language=>'pt'
,p_message_text=>'Sim'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128210259066027219)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 cont\00E9m < ou > que s\00E3o caracteres inv\00E1lidos.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128234194077027226)
,p_name=>'APEX_REGION'
,p_message_language=>'pt'
,p_message_text=>unistr('Regi\00E3o')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125252164027193)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel extrair o ficheiro comprimido.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125140217027193)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'pt'
,p_message_text=>unistr('A assinatura do Fim do Diret\00F3rio Central n\00E3o foi encontrada. Este ficheiro n\00E3o \00E9 um ficheiro comprimido.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128156273705027202)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'pt'
,p_message_text=>unistr('Pr\00E9-condi\00E7\00E3o de API violada')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178335004027209)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel obter o valor para a Defini\00E7\00E3o de Aplica\00E7\00E3o %0 dado que a op\00E7\00E3o de cria\00E7\00E3o associada est\00E1 desativada.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178279729027209)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel definir o valor para a Defini\00E7\00E3o de Aplica\00E7\00E3o %0 dado que a op\00E7\00E3o de cria\00E7\00E3o associada est\00E1 desativada.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290826751027243)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'pt'
,p_message_text=>unistr('O valor da Defini\00E7\00E3o %0 da Aplica\00E7\00E3o \00E9 inv\00E1lido')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290740829027243)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'pt'
,p_message_text=>unistr('A Defini\00E7\00E3o %0 da Aplica\00E7\00E3o Pedida n\00E3o est\00E1 definida')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128290991822027243)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('A Defini\00E7\00E3o %0 da Aplica\00E7\00E3o n\00E3o pode ser definida para um valor nulo')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164873823027205)
,p_name=>'BACK'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147290325027200)
,p_name=>'BUILDER'
,p_message_language=>'pt'
,p_message_text=>'Criador'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220877917027222)
,p_name=>'BUTTON LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Etiqueta de Bot\00E3o')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144111556027199)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'pt'
,p_message_text=>unistr('Classes CSS do bot\00E3o')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182626004027210)
,p_name=>'BUTTON_ID'
,p_message_language=>'pt'
,p_message_text=>unistr('A ID de bot\00E3o gerada ser\00E1 a ID Est\00E1tica do bot\00E3o se for definida; caso contr\00E1rio, ser\00E1 uma ID gerada internamente no formato ''B'' || [ID de Bot\00E3o Interna]')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116613741027191)
,p_name=>'CANDLESTICK'
,p_message_language=>'pt'
,p_message_text=>'Vela'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230665058027225)
,p_name=>'CENTER'
,p_message_language=>'pt'
,p_message_text=>'Centro'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177234549027209)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'pt'
,p_message_text=>'%0 Pedido'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167272980027206)
,p_name=>'CHECK$'
,p_message_language=>'pt'
,p_message_text=>'seletor de linha'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128292678315027244)
,p_name=>'CHECKED'
,p_message_language=>'pt'
,p_message_text=>'selecionado'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269092215027236)
,p_name=>'COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Coluna'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226621679027224)
,p_name=>'COMMENTS'
,p_message_language=>'pt'
,p_message_text=>unistr('Coment\00E1rios')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207661048027218)
,p_name=>'CONTINUE'
,p_message_language=>'pt'
,p_message_text=>'Continuar'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165142584027205)
,p_name=>'COPYRIGHT'
,p_message_language=>'pt'
,p_message_text=>'Copyright &copy; 1999, %0, Oracle e/ou respetivas afiliadas.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213305500027220)
,p_name=>'COUNT'
,p_message_language=>'pt'
,p_message_text=>'Contagem'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220308870027222)
,p_name=>'CREATE'
,p_message_language=>'pt'
,p_message_text=>'Criar'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275719346027239)
,p_name=>'CREATED'
,p_message_language=>'pt'
,p_message_text=>'Criado'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275895312027239)
,p_name=>'CREATED_BY'
,p_message_language=>'pt'
,p_message_text=>'Criado Por'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196783265027215)
,p_name=>'CREATED_ON'
,p_message_language=>'pt'
,p_message_text=>'Criado em'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207871190027218)
,p_name=>'CUSTOM'
,p_message_language=>'pt'
,p_message_text=>'Customizado'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219075230027221)
,p_name=>'CUSTOMIZE'
,p_message_language=>'pt'
,p_message_text=>'Customizar'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221007840027222)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'pt'
,p_message_text=>unistr('As prefer\00EAncias da p\00E1gina foram redefinidas para o utilizador %0.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221153999027222)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'pt'
,p_message_text=>unistr('As prefer\00EAncias foram alteradas para o utilizador %0.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220920219027222)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'pt'
,p_message_text=>unistr('As prefer\00EAncias da p\00E1gina foram redefinidas para o utilizador %0.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182027247027210)
,p_name=>'DAILY'
,p_message_language=>'pt'
,p_message_text=>unistr('Di\00E1rio')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145434137027199)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'pt'
,p_message_text=>unistr('O ficheiro carregado \00E9 inv\00E1lido ou tem uma extens\00E3o incorreta.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177444785027209)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi utilizado um seletor de XML ou JSON inv\00E1lido.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122578662027192)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'pt'
,p_message_text=>unistr('O perfil de dados e o ficheiro carregado n\00E3o cont\00EAm nenhuma coluna da tabela de destino.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236498143027227)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontrados dados no ficheiro carregado.')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236554518027227)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontrados dados na folha de c\00E1lculo "%0".')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142300581027198)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'pt'
,p_message_text=>unistr('O ficheiro especificado n\00E3o \00E9 um ficheiro XLSX.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128108336390027188)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'pt'
,p_message_text=>'O carregamento de dados terminou: %0 linhas processadas.'
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110665297027189)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'pt'
,p_message_text=>'O carregamento de dados terminou: %0 linhas processadas com 1 erro.'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110998715027189)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'pt'
,p_message_text=>'O carregamento de dados terminou: %0 linhas processadas com %1 erros.'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110738431027189)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'pt'
,p_message_text=>'O carregamento de dados terminou: 1 linha processada.'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125073894027193)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'pt'
,p_message_text=>'O carregamento de dados terminou: 1 linha processada com erro.'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128110890421027189)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'pt'
,p_message_text=>'O carregamento de dados terminou: 1 linha processada sem erro.'
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243513679027229)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'pt'
,p_message_text=>'Coluna de Destino'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150762458027201)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Carregar')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150804719027201)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro de pr\00E9-processamento')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243664984027229)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'pt'
,p_message_text=>'Coluna de Origem'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244472377027229)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'pt'
,p_message_text=>unistr('Formato de Data/N\00FAmero')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150572098027201)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'pt'
,p_message_text=>'Inserir linha'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306619293027248)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'pt'
,p_message_text=>'Falha ao obter o valor de lookup.'
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128276328972027239)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'pt'
,p_message_text=>unistr('Correspond\00EAncia de Dados/Tabela')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244547952027229)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'pt'
,p_message_text=>'Linha'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150991376027201)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Sequ\00EAncia: A\00E7\00E3o')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238258969027227)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'pt'
,p_message_text=>unistr('Falha na regra de transforma\00E7\00E3o')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150692514027201)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'pt'
,p_message_text=>'Atualizar linha'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128212979145027219)
,p_name=>'DATE'
,p_message_language=>'pt'
,p_message_text=>'Data'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185882978027211)
,p_name=>'DAY'
,p_message_language=>'pt'
,p_message_text=>'dia'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185946568027211)
,p_name=>'DAYS'
,p_message_language=>'pt'
,p_message_text=>'dias'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226319269027224)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'pt'
,p_message_text=>unistr('A depura\00E7\00E3o n\00E3o est\00E1 ativada para esta aplica\00E7\00E3o.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128278060551027239)
,p_name=>'DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Por Omiss\00E3o')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186677605027212)
,p_name=>'DELETE'
,p_message_language=>'pt'
,p_message_text=>'apagar'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162222333027204)
,p_name=>'DELETE_MSG'
,p_message_language=>'pt'
,p_message_text=>unistr('Pretende efetuar esta a\00E7\00E3o de apagamento?')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128141826277027198)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'pt'
,p_message_text=>unistr('Corre\00E7\00F5es de Sess\00F5es')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142702477027198)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Ativar Corre\00E7\00F5es de Sess\00F5es')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143692438027199)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'pt'
,p_message_text=>unistr('Ocorreu um erro ao carregar corre\00E7\00F5es de sess\00F5es.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143448441027199)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'pt'
,p_message_text=>unistr('Ocorreu um erro ao gravar corre\00E7\00F5es de sess\00F5es.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128143399046027198)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'pt'
,p_message_text=>unistr('Corre\00E7\00F5es de sess\00F5es gravadas. Feche esta caixa de di\00E1logo para ver as altera\00E7\00F5es.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128116567286027190)
,p_name=>'DIAL_PCT'
,p_message_language=>'pt'
,p_message_text=>unistr('Man\00F3metro (Percentagem)')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128157516107027203)
,p_name=>'DOWNLOAD'
,p_message_language=>'pt'
,p_message_text=>'Descarregar'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277126812027239)
,p_name=>'DUP_USER'
,p_message_language=>'pt'
,p_message_text=>'Nome de Utilizador duplicado na lista.'
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165982995027205)
,p_name=>'EDIT'
,p_message_language=>'pt'
,p_message_text=>'Editar'
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177106506027209)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('O endere\00E7o de email "%0" n\00E3o foi encontrado.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159826491027203)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'pt'
,p_message_text=>'Esta mensagem de email enviada por %0.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277364463027239)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'pt'
,p_message_text=>unistr('O Endere\00E7o de Email \00E9 demasiado longo. Tem um limite de 240 caracteres.')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207522867027218)
,p_name=>'ERROR'
,p_message_language=>'pt'
,p_message_text=>'Erro'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238360318027227)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel definir o valor de origem do item da p\00E1gina para a regi\00E3o de renova\00E7\00E3o de p\00E1gina parcial')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198824889027215)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'pt'
,p_message_text=>'Criado Por'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160169899027204)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'pt'
,p_message_text=>'A Senha Expirou'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152520791027201)
,p_name=>'FILE_EMPTY'
,p_message_language=>'pt'
,p_message_text=>unistr('O ficheiro est\00E1 vazio.')
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242302710027228)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'pt'
,p_message_text=>'O tamanho do ficheiro carregado era maior que %0 MB. Carregue um ficheiro mais pequeno.'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162487317027204)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Falha na autentica\00E7\00E3o do utilizador e um ou mais ficheiros n\00E3o foram carregados.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162523509027204)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta inst\00E2ncia n\00E3o permite que utilizadores n\00E3o autenticados carreguem ficheiros.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242440796027229)
,p_name=>'FILTERS'
,p_message_language=>'pt'
,p_message_text=>'Filtros'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220467590027222)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Ocorreu 1 erro'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219615299027222)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Ocorreram %0 erros'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165066097027205)
,p_name=>'FORM_OF'
,p_message_language=>'pt'
,p_message_text=>'%0 de %1'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204036327027217)
,p_name=>'GO'
,p_message_language=>'pt'
,p_message_text=>'Ir'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306225463027248)
,p_name=>'HELP'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio')
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147343609027200)
,p_name=>'HOME'
,p_message_language=>'pt'
,p_message_text=>unistr('P\00E1gina Principal')
,p_is_js_message=>true
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185623497027211)
,p_name=>'HOUR'
,p_message_language=>'pt'
,p_message_text=>'hora'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185701819027211)
,p_name=>'HOURS'
,p_message_language=>'pt'
,p_message_text=>'horas'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128167131585027206)
,p_name=>'ICON'
,p_message_language=>'pt'
,p_message_text=>unistr('\00CDcone %0')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144488598027199)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'pt'
,p_message_text=>unistr('Aux\00EDlio do \00CDcone Recortar')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145646898027199)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Arraste o seu \00EDcone e utilize o cursor de desloca\00E7\00E3o para reposicion\00E1-lo dentro da moldura.</p>'),
'',
unistr('<p>Ao carregar um novo \00EDcone, este ser\00E1 redimensionado para se ajustar a tr\00EAs formatos: \00EDcone favicon, pequeno e grande.</p>'),
'',
unistr('<p>Quando focado no recorte de \00EDcones, est\00E3o dispon\00EDveis os seguintes atalhos de teclado:</p>'),
'<ul>',
'    <li>Seta para Esquerda: Deslocar a imagem para a esquerda*</li>',
'    <li>Seta para Cima: Deslocar a imagem para cima*</li>',
'    <li>Seta para a Direita: Deslocar a imagem para a direita*</li>',
'    <li>Seta para Baixo: Deslocar a imagem para baixo*</li>',
'    <li>I: Ampliar</li>',
'    <li>O: Reduzir</li>',
'    <li>L: Rodar para a esquerda</li>',
'    <li>R: Rodar para a direita</li>',
'</ul>',
'',
'<p class="margin-top-md"><em>*Manter Shift premido para se deslocar mais rapidamente</em></p>'))
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151151822027201)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('\00CDcone Arrastar para reposicionar')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151206486027201)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Mover o cursor de desloca\00E7\00E3o para ajustar o n\00EDvel de zoom')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144256122027199)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('\00CDcone Editar Aplica\00E7\00E3o')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144503567027199)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'pt'
,p_message_text=>unistr('\00CDcone de erro na grava\00E7\00E3o')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226949147027224)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'pt'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> Esta aplica\00E7\00E3o utiliza \00EDcones anteriores. Carregar um novo \00EDcone ir\00E1 substituir todos os \00EDcones anteriores.</p>')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128145149142027199)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'pt'
,p_message_text=>unistr('Carregar novo \00EDcone')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221301700027222)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'pt'
,p_message_text=>unistr('Credencias de Entrada em Sess\00E3o Inv\00E1lidas')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322490666027253)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor inv\00E1lido para o par\00E2metro: %0')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215626712027220)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'pt'
,p_message_text=>unistr('Como Defini\00E7\00F5es Por Omiss\00E3o do Relat\00F3rio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215703223027220)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Como Relat\00F3rio Nomeado')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197666080027215)
,p_name=>'IR_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Erro de %0. %1'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197327312027215)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel calcular a navega\00E7\00E3o na ficha. %0')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172986399027207)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('O relat\00F3rio interativo n\00E3o foi encontrado.')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172397281027207)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A regi\00E3o do relat\00F3rio interativo n\00E3o existe na aplica\00E7\00E3o %0, p\00E1gina %1 e regi\00E3o %2.')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128215597156027220)
,p_name=>'IR_STAR'
,p_message_language=>'pt'
,p_message_text=>'Apenas apresentado para programadores'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203762950027217)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('A consulta de relat\00F3rio deve ser uma chave exclusiva para identificar cada linha. A chave fornecida n\00E3o pode ser utilizada para esta consulta. Defina uma coluna de chave exclusiva. %0')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128203828006027217)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'pt'
,p_message_text=>unistr('A consulta de relat\00F3rio deve ser uma chave exclusiva para identificar cada linha. A chave fornecida n\00E3o pode ser utilizada nesta consulta. Edite os atributos do relat\00F3rio para definir uma coluna de chave exclusiva. %0')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244782934027229)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'pt'
,p_message_text=>'Escolher Ficheiro'
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244635293027229)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'pt'
,p_message_text=>'Arraste e largue o ficheiro aqui ou'
,p_is_js_message=>true
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165301285027205)
,p_name=>'ITEMS'
,p_message_language=>'pt'
,p_message_text=>'Itens'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199011376027215)
,p_name=>'ITEM_VALUE'
,p_message_language=>'pt'
,p_message_text=>'Valor do Item'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213646485027220)
,p_name=>'LABEL'
,p_message_language=>'pt'
,p_message_text=>'Etiqueta'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226287070027224)
,p_name=>'LANGUAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('L\00EDngua')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186339392027211)
,p_name=>'LAST'
,p_message_language=>'pt'
,p_message_text=>unistr('\00FAltimo')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162397624027204)
,p_name=>'LENGTH'
,p_message_language=>'pt'
,p_message_text=>'Comprimento'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220623831027222)
,p_name=>'LOGIN'
,p_message_language=>'pt'
,p_message_text=>unistr('Entrar em Sess\00E3o')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262211570027234)
,p_name=>'MANAGE'
,p_message_language=>'pt'
,p_message_text=>'Gerir'
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128325361951027254)
,p_name=>'MAXIMIZE'
,p_message_language=>'pt'
,p_message_text=>'Maximizar'
,p_is_js_message=>true
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185480673027211)
,p_name=>'MINUTE'
,p_message_language=>'pt'
,p_message_text=>'minuto'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185583679027211)
,p_name=>'MINUTES'
,p_message_language=>'pt'
,p_message_text=>'minutos'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277502037027239)
,p_name=>'MISSING_AT'
,p_message_language=>'pt'
,p_message_text=>unistr('Falta "@" no Endere\00E7o de Email.')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277752086027239)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'pt'
,p_message_text=>unistr('Aviso: N\00E3o foi definido nenhum modelo de P\00E1gina de Caixa de Di\00E1logo para a p\00E1gina de Caixa de Di\00E1logo %0 na aplica\00E7\00E3o %1.')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277432565027239)
,p_name=>'MISSING_DOT'
,p_message_language=>'pt'
,p_message_text=>unistr('Falta "." no dom\00EDnio do Endere\00E7o de Email.')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223715448027223)
,p_name=>'MODULE'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00F3dulo')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177938141027209)
,p_name=>'MONTH'
,p_message_language=>'pt'
,p_message_text=>unistr('M\00EAs')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181887583027210)
,p_name=>'MONTHLY'
,p_message_language=>'pt'
,p_message_text=>'Mensal'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178084427027209)
,p_name=>'MONTHS'
,p_message_language=>'pt'
,p_message_text=>'meses'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213203597027220)
,p_name=>'MOVE'
,p_message_language=>'pt'
,p_message_text=>'Deslocar'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284086537027241)
,p_name=>'MOVE_FROM'
,p_message_language=>'pt'
,p_message_text=>'Deslocar de'
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284162206027241)
,p_name=>'MOVE_TO'
,p_message_language=>'pt'
,p_message_text=>'Deslocar para'
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128200205118027216)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro na opera\00E7\00E3o de apagamento de v\00E1rias linhas: linha= %0, %1, %2')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199254213027215)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Deve Ser Utilizador P\00FAblico')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147801669027200)
,p_name=>'NAME'
,p_message_language=>'pt'
,p_message_text=>'Nome'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213485469027220)
,p_name=>'NEW'
,p_message_language=>'pt'
,p_message_text=>'Novo'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177749374027209)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Pode entrar em sess\00E3o em %0 ao ir para:')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177805259027209)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Notifica\00E7\00E3o de Nova Conta de %0')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306446274027248)
,p_name=>'NEXT'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223636388027223)
,p_name=>'NO'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128320541940027252)
,p_name=>'NOBODY'
,p_message_language=>'pt'
,p_message_text=>unistr('ningu\00E9m')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186712848027212)
,p_name=>'NOT'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229667111027225)
,p_name=>'NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Nulo')
,p_version_scn=>2693229
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199378365027215)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o %0')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219132368027221)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('n\00E3o foram encontrados dados')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229107660027224)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foi encontrado nenhum relat\00F3rio atualiz\00E1vel. As opera\00E7\00F5es de atualiza\00E7\00E3o e apagamento de v\00E1rias linhas s\00F3 podem ser efetuadas em fichas tabulares do tipo "Relat\00F3rio Atualiz\00E1vel".')
,p_version_scn=>2693228
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230071027027225)
,p_name=>'OK'
,p_message_language=>'pt'
,p_message_text=>'OK'
,p_version_scn=>2693229
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225303988027223)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'pt'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128324278930027254)
,p_name=>'ORA_06550'
,p_message_language=>'pt'
,p_message_text=>'ORA-06550: linha %0, coluna %1'
,p_version_scn=>2693248
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275137396027238)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'pt'
,p_message_text=>unistr('Est\00E1 a utilizar um browser desatualizado. Para obter uma lista de browsers suportados, consulte o Oracle APEX Installation Guide.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170178429027207)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi pedido um conjunto de linhas inv\00E1lido. Os dados de origem do relat\00F3rio foram modificados.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192196265027213)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar um n\00FAmero de p\00E1gina v\00E1lido; por exemplo, p?n=1234.')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196314098027214)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'pt'
,p_message_text=>'Seguinte'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196403760027214)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'pt'
,p_message_text=>'Conjunto Seguinte'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196505815027214)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128196629389027215)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'pt'
,p_message_text=>'Conjunto Anterior'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306324219027248)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'pt'
,p_message_text=>unistr('Selecionar Pagina\00E7\00E3o')
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236335280027227)
,p_name=>'PASSWORD'
,p_message_language=>'pt'
,p_message_text=>'Senha'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177073785027209)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'pt'
,p_message_text=>'A sua senha de %0 foi alterada.'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164783822027205)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha n\00E3o est\00E1 em conformidade com as regras de complexidade da senha do site.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163878541027205)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'pt'
,p_message_text=>'A nova senha deve ser diferente da senha antiga em, pelo menos, %0 caracteres.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164486155027205)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha n\00E3o deve conter o nome de utilizador.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164678374027205)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha cont\00E9m uma palavra simples proibida.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164570230027205)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha n\00E3o deve conter o nome do espa\00E7o de trabalho.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163739326027205)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'pt'
,p_message_text=>'A senha deve conter, pelo menos, %0 caracteres.'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163992437027205)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha deve conter, pelo menos, um car\00E1cter alfab\00E9tico (%0).')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164361502027205)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha deve conter, pelo menos, um car\00E1cter alfab\00E9tico em min\00FAsculas.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164004702027205)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha deve conter, pelo menos, um car\00E1cter num\00E9rico (0123456789).')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164137301027205)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha deve conter, pelo menos, um car\00E1cter de pontua\00E7\00E3o (%0).')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164205973027205)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha deve conter, pelo menos, um car\00E1cter alfab\00E9tico em mai\00FAsculas.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177572274027209)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Notifica\00E7\00E3o de Redefini\00E7\00E3o da Senha')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162687880027204)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('A senha n\00E3o pode ser utilizada porque foi utilizada nos \00FAltimos %0 dias.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159389504027203)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Gr\00E1fico Percentual')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128250993060027231)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'pt'
,p_message_text=>'Itens'
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128251032090027231)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'pt'
,p_message_text=>'Item'
,p_version_scn=>2693235
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225160225027223)
,p_name=>'PERCENT'
,p_message_language=>'pt'
,p_message_text=>'Percentagem'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194491223027214)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'pt'
,p_message_text=>'Contacte o administrador.'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306560393027248)
,p_name=>'PREVIOUS'
,p_message_language=>'pt'
,p_message_text=>'Anterior'
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243172208027229)
,p_name=>'PRINT'
,p_message_language=>'pt'
,p_message_text=>'Imprimir'
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223998870027223)
,p_name=>'PRIVILEGES'
,p_message_language=>'pt'
,p_message_text=>unistr('Privil\00E9gios')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192553365027213)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'pt'
,p_message_text=>unistr('Refer\00EAncias de Regi\00F5es')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213539824027220)
,p_name=>'REPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223882428027223)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'pt'
,p_message_text=>unistr('Per\00EDodo de Gera\00E7\00E3o de Relat\00F3rios')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306730714027248)
,p_name=>'REPORT_LABEL'
,p_message_language=>'pt'
,p_message_text=>unistr('Relat\00F3rio: %0')
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224585651027223)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'pt'
,p_message_text=>unistr('Total do Relat\00F3rio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128170216499027207)
,p_name=>'RESET'
,p_message_language=>'pt'
,p_message_text=>unistr('Redefinir Pagina\00E7\00E3o')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198927052027215)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Redefinir Pagina\00E7\00E3o')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229065140027224)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'pt'
,p_message_text=>'Redefinir Senha'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204820257027217)
,p_name=>'RESTORE'
,p_message_language=>'pt'
,p_message_text=>'Repor'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128238497310027227)
,p_name=>'RESULTS'
,p_message_language=>'pt'
,p_message_text=>'Resultados'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230103190027225)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Regresse \00E0 aplica\00E7\00E3o.')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128230535628027225)
,p_name=>'RIGHT'
,p_message_language=>'pt'
,p_message_text=>'Direita'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262560228027235)
,p_name=>'ROW'
,p_message_language=>'pt'
,p_message_text=>'Linha %0'
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213112279027220)
,p_name=>'ROW_COUNT'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00FAmero de Linhas')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102921856027186)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Perguntar \00E0 Oracle')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103238635027186)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Fechar Perguntar \00E0 Oracle')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103566617027187)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'pt'
,p_message_text=>unistr('Lista de Notifica\00E7\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103193418027186)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Abrir Perguntar \00E0 Oracle')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103420285027187)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'pt'
,p_message_text=>'Mapa do Produto'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103396739027186)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'pt'
,p_message_text=>unistr('Lista de Sugest\00F5es')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104218437027187)
,p_name=>'RW_CLEAR'
,p_message_language=>'pt'
,p_message_text=>'Limpar'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104173106027187)
,p_name=>'RW_CLOSE'
,p_message_language=>'pt'
,p_message_text=>'Fechar'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103915886027187)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'pt'
,p_message_text=>'Visualizar Mais'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104335840027187)
,p_name=>'RW_GO_TO'
,p_message_language=>'pt'
,p_message_text=>'Ir para'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103787700027187)
,p_name=>'RW_GP_STEP'
,p_message_language=>'pt'
,p_message_text=>'Passo'
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103805976027187)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'pt'
,p_message_text=>'de'
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128103664994027187)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'pt'
,p_message_text=>unistr('Alternar apresenta\00E7\00E3o de passos')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102738268027186)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'pt'
,p_message_text=>'Ocultar Senha'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104067915027187)
,p_name=>'RW_OPEN'
,p_message_language=>'pt'
,p_message_text=>'Abertura'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102594049027186)
,p_name=>'RW_ORACLE'
,p_message_language=>'pt'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128102660089027186)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'pt'
,p_message_text=>'Mostrar Senha'
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128104454324027187)
,p_name=>'RW_START'
,p_message_language=>'pt'
,p_message_text=>unistr('In\00EDcio')
,p_is_js_message=>true
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128229510542027225)
,p_name=>'SAVE'
,p_message_language=>'pt'
,p_message_text=>'Gravar'
,p_version_scn=>2693229
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225759555027223)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Por Omiss\00E3o Alternativo')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226153973027224)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'pt'
,p_message_text=>unistr('Descri\00E7\00E3o')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225689339027223)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Por Omiss\00E3o Principal')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226479781027224)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'pt'
,p_message_text=>unistr('Existem mais de %0 linhas dispon\00EDveis. Aumente o seletor de linhas para visualizar mais linhas.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293848263027244)
,p_name=>'SEARCH'
,p_message_language=>'pt'
,p_message_text=>'Pesquisar'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185365239027211)
,p_name=>'SECONDS'
,p_message_language=>'pt'
,p_message_text=>'segundos'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225241631027223)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'pt'
,p_message_text=>'Consultar anexo'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128285850660027242)
,p_name=>'SELECT_ROW'
,p_message_language=>'pt'
,p_message_text=>'Selecionar Linha'
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224968848027223)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'pt'
,p_message_text=>unistr('Desativar Modo de Leitor de Ecr\00E3')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225082809027223)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'pt'
,p_message_text=>unistr('Ativar Modo de Leitor de Ecr\00E3')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221239740027222)
,p_name=>'SHOW'
,p_message_language=>'pt'
,p_message_text=>'Mostrar'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287608940027242)
,p_name=>'SHOW_ALL'
,p_message_language=>'pt'
,p_message_text=>'Mostrar Tudo'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128312411679027250)
,p_name=>'SIGN_IN'
,p_message_language=>'pt'
,p_message_text=>unistr('Entrar em Sess\00E3o')
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128263319181027235)
,p_name=>'SIGN_OUT'
,p_message_language=>'pt'
,p_message_text=>unistr('Sair de sess\00E3o')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214199665027220)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 dias')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221773627027222)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'%0 dias a partir de agora'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214043967027220)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 horas')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221610409027222)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'%0 horas a partir de agora'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213996417027220)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 minutos')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221518844027222)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'%0 minutos a partir de agora'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214329940027220)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 meses')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221926671027222)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'%0 meses a partir de agora'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222100867027222)
,p_name=>'SINCE_NOW'
,p_message_language=>'pt'
,p_message_text=>'Agora'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213844696027220)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 segundos')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221446464027222)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'%0 segundos a partir de agora'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214211773027220)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 semanas')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128221800444027222)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'%0 semanas a partir de agora'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128214482695027220)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'pt'
,p_message_text=>unistr('h\00E1 %0 anos')
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222000795027222)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'pt'
,p_message_text=>'%0 anos a partir de agora'
,p_is_js_message=>true
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207962105027218)
,p_name=>'STANDARD'
,p_message_language=>'pt'
,p_message_text=>'Standard'
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224888905027223)
,p_name=>'START_DATE'
,p_message_language=>'pt'
,p_message_text=>unistr('Data de In\00EDcio')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160006562027204)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'pt'
,p_message_text=>unistr('Est\00E1 a receber esta mensagem de email a partir da subscri\00E7\00E3o de relat\00F3rio Interativo criada por %0.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321605824027253)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'pt'
,p_message_text=>unistr('Subscri\00E7\00F5es')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128271001987027237)
,p_name=>'TAB'
,p_message_language=>'pt'
,p_message_text=>'Separador'
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185244765027211)
,p_name=>'TITLE'
,p_message_language=>'pt'
,p_message_text=>unistr('T\00EDtulo')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128164949711027205)
,p_name=>'TODAY'
,p_message_language=>'pt'
,p_message_text=>'Hoje'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224463197027223)
,p_name=>'TOTAL'
,p_message_language=>'pt'
,p_message_text=>'Total'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166256918027205)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 poss\00EDvel selecionar um m\00E1ximo de %0 colunas.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122052296027192)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'pt'
,p_message_text=>'Contrair Todos'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122626228027192)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'pt'
,p_message_text=>'Contrair Todos Abaixo'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121625595027192)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'pt'
,p_message_text=>'Expandir Todos'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122343735027192)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'pt'
,p_message_text=>'Expandir Todos Abaixo'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122880981027192)
,p_name=>'TREE.REPARENT'
,p_message_language=>'pt'
,p_message_text=>'Novo pai'
,p_is_js_message=>true
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244914141027229)
,p_name=>'TREES'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C1rvores')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128287780870027242)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('Obrigat\00F3rio')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128208639291027218)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Autorizado')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128258810293027233)
,p_name=>'UNAVAILABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o Dispon\00EDvel')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222551497027222)
,p_name=>'UNKNOWN'
,p_message_language=>'pt'
,p_message_text=>'Desconhecido'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128160984071027204)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Ocorreu um erro de autentica\00E7\00E3o n\00E3o reconhecido.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163162372027204)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'pt'
,p_message_text=>unistr('Se j\00E1 n\00E3o pretende receber mensagens de email, clique em <a href="%0">anular subscri\00E7\00E3o</a> para gerir a sua subscri\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128159963652027203)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Se j\00E1 n\00E3o pretende receber mensagens de email, aceda ao seguinte URL para gerir a sua subscri\00E7\00E3o:')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128199429802027215)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('tipo de dados n\00E3o suportado')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186588001027211)
,p_name=>'UPDATE'
,p_message_language=>'pt'
,p_message_text=>'atualizar'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128185171261027211)
,p_name=>'UPDATED'
,p_message_language=>'pt'
,p_message_text=>'Atualizado'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128322690027194)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'pt'
,p_message_text=>unistr('Atualiza\00E7\00E3o a Decorrer')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128128638993027194)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'pt'
,p_message_text=>unistr('O Oracle APEX est\00E1 a ser atualizado para uma vers\00E3o mais recente. Este processo demora geralmente at\00E9 3 minutos.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191972585027213)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'pt'
,p_message_text=>'O URL pedido foi proibido. Contacte o administrador.'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128213036487027219)
,p_name=>'USER'
,p_message_language=>'pt'
,p_message_text=>'Utilizador'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128236249913027227)
,p_name=>'USERNAME'
,p_message_language=>'pt'
,p_message_text=>'Nome de Utilizador'
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277623648027239)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'pt'
,p_message_text=>unistr('O nome de utilizador \00E9 demasiado longo. Tem um limite de %0 caracteres.')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220122718027222)
,p_name=>'USERS'
,p_message_language=>'pt'
,p_message_text=>'utilizadores'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128277257040027239)
,p_name=>'USER_EXISTS'
,p_message_language=>'pt'
,p_message_text=>unistr('O nome de utilizador j\00E1 existe.')
,p_version_scn=>2693239
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128291038789027243)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'pt'
,p_message_text=>'Imagem do perfil para o utilizador %0'
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128152914500027201)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Automatiza\00E7\00E3o - %0')
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151428037027201)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'pt'
,p_message_text=>unistr('P\00E1gina %0 - %1 ')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154326143027202)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'pt'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128154446358027202)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'pt'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153359485027202)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'pt'
,p_message_text=>unistr('Configura\00E7\00E3o da Pesquisa - %0')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153200981027201)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'pt'
,p_message_text=>unistr('LDV Din\00E2mica Partilhada - %0')
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128153096780027201)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'pt'
,p_message_text=>unistr('Defini\00E7\00E3o de Tarefa - %0')
,p_version_scn=>2693217
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151553335027201)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'pt'
,p_message_text=>'Fluxo de trabalho - %0 '
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173650131027208)
,p_name=>'VALID'
,p_message_language=>'pt'
,p_message_text=>unistr('V\00E1lido')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165298156027205)
,p_name=>'VALIDATIONS'
,p_message_language=>'pt'
,p_message_text=>unistr('Valida\00E7\00F5es')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225997147027223)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar o valor')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272224960027238)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar o valor para %0')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194895504027214)
,p_name=>'VERTICAL'
,p_message_language=>'pt'
,p_message_text=>'vertical'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186440626027211)
,p_name=>'VIEW'
,p_message_language=>'pt'
,p_message_text=>'visualizar'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128220215027027222)
,p_name=>'VIEWS'
,p_message_language=>'pt'
,p_message_text=>unistr('visualiza\00E7\00F5es')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226789922027224)
,p_name=>'VIEW_ALL'
,p_message_language=>'pt'
,p_message_text=>'Visualizar Tudo'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166695984027205)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'pt'
,p_message_text=>unistr('Liga\00E7\00E3o visualmente oculta')
,p_is_js_message=>true
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128207469921027218)
,p_name=>'WARNING'
,p_message_language=>'pt'
,p_message_text=>'Aviso'
,p_is_js_message=>true
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186099022027211)
,p_name=>'WEEK'
,p_message_language=>'pt'
,p_message_text=>'semana'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181991876027210)
,p_name=>'WEEKLY'
,p_message_language=>'pt'
,p_message_text=>'Semanal'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186103251027211)
,p_name=>'WEEKS'
,p_message_language=>'pt'
,p_message_text=>'semanas'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128226036611027223)
,p_name=>'WELCOME_USER'
,p_message_language=>'pt'
,p_message_text=>'Damos-lhe as boas-vindas: %0'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224293916027223)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi encontrado um valor inv\00E1lido. Verifique os dados introduzidos.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224337412027223)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi encontrado um valor inv\00E1lido. Verifique os dados introduzidos.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162163881027204)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi encontrado um valor de data inv\00E1lido. Verifique o formato da data.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128224121332027223)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi encontrado um valor num\00E9rico inv\00E1lido. Verifique o formato do n\00FAmero.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173205939027207)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi encontrado um valor de indica\00E7\00E3o de data/hora inv\00E1lido. Verifique o formato de indica\00E7\00E3o de data/hora.')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128197734892027215)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel associar "%0". Utilize aspas para itens com v\00E1rios bytes ou verifique se o item tem 30 bytes ou menos de comprimento. Utilize a sintaxe v() para referenciar itens com mais de 30 bytes.')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187569572027212)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'pt'
,p_message_text=>unistr('Acesso negado pela verifica\00E7\00E3o de seguran\00E7a de %0')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190070530027213)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Aplica\00E7\00E3o N\00E3o Dispon\00EDvel')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188431624027212)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Aplica\00E7\00E3o n\00E3o encontrada.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188534728027212)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('aplica\00E7\00E3o=%0  espa\00E7o de trabalho=%1')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188999314027212)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'pt'
,p_message_text=>unistr('O acesso a esta aplica\00E7\00E3o est\00E1 restringido. Tente novamente mais tarde.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188887347027212)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'pt'
,p_message_text=>unistr('O acesso a esta aplica\00E7\00E3o est\00E1 restringido a programadores de aplica\00E7\00F5es. Tente novamente mais tarde.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188058470027212)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-7744 N\00E3o \00E9 poss\00EDvel processar a ramifica\00E7\00E3o para a fun\00E7\00E3o que devolve o URL.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187967508027212)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-7744 N\00E3o \00E9 poss\00EDvel processar a ramifica\00E7\00E3o para a fun\00E7\00E3o que devolve a p\00E1gina.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188264671027212)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-1430 A chamada para apresenta\00E7\00E3o a partir do processo da p\00E1gina n\00E3o \00E9 suportada: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189309993027212)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'pt'
,p_message_text=>'ERR-1018 Erro ao limpar cache de passos.'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187731701027212)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-1005 Tipo de c\00E1lculo desconhecido.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188657802027212)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-1201 A ID da sess\00E3o n\00E3o est\00E1 definida na autentica\00E7\00E3o customizada.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188757562027212)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('p\00E1gina=%0')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128188301888027212)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-7620 N\00E3o foi poss\00EDvel determinar o espa\00E7o de trabalho para a aplica\00E7\00E3o (%0).')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128168816684027206)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'pt'
,p_message_text=>'Editar'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187436270027212)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-1802 N\00E3o \00E9 poss\00EDvel encontrar a ID do item "%0"')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187159832027212)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-1002 N\00E3o \00E9 poss\00EDvel encontrar a ID do item "%0" na aplica\00E7\00E3o "%1".')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187296125027212)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro inesperado, n\00E3o \00E9 poss\00EDvel encontrar o nome do item ao n\00EDvel da aplica\00E7\00E3o ou da p\00E1gina.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187684447027212)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 est\00E1 na primeira p\00E1gina dos dados.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204196381027217)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'pt'
,p_message_text=>unistr('A ID do Item (%0) n\00E3o \00E9 um item definido na p\00E1gina atual.')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161775746027204)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'pt'
,p_message_text=>unistr('O item pode ser definido atrav\00E9s da transmiss\00E3o de argumentos \00E0 aplica\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162047728027204)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'pt'
,p_message_text=>unistr('(N\00E3o foi fornecida uma soma de verifica\00E7\00E3o)')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161527107027204)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'pt'
,p_message_text=>unistr('O item pode ser definido quando acompanhado de uma soma de verifica\00E7\00E3o de "marcador de n\00EDvel de utilizador".')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161412986027204)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'pt'
,p_message_text=>unistr('O item pode ser definido quando acompanhado de uma soma de verifica\00E7\00E3o de "marcador de n\00EDvel de aplica\00E7\00E3o".')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161630802027204)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('O item pode ser definido quando acompanhado de um soma de verifica\00E7\00E3o de "sess\00E3o".')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161306967027204)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'pt'
,p_message_text=>unistr('O item n\00E3o tem prote\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189459001027212)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o existe nenhuma p\00E1gina de aux\00EDlio dispon\00EDvel.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128177385279027209)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'pt'
,p_message_text=>unistr('O espa\00E7o de trabalho %0 n\00E3o tem privil\00E9gios para analisar como schema %1.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187893853027212)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-1010 O limite de recurs\00E3o do processamento de aceita\00E7\00E3o da ramifica\00E7\00E3o para p\00E1gina foi excedido. %0')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128144391566027199)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('P\00E1gina indispon\00EDvel, n\00E3o pode executar um padr\00E3o de p\00E1gina.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161957677027204)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta p\00E1gina n\00E3o pode ser invocada atrav\00E9s de um URL ou um comando GET ou POST para o procedimento show. Deve ser chamada com um tipo de ramo "Ramificar para P\00E1gina".')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128246726266027230)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao tentar gravar valor n\00E3o num\00E9rico no item %0. ')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179076749027209)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'pt'
,p_message_text=>unistr('O schema de an\00E1lise "%0" da aplica\00E7\00E3o n\00E3o existe na base de dados.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128179106573027209)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'pt'
,p_message_text=>unistr('As contas no espa\00E7o de trabalho INTERNAL s\00F3 podem ser utilizadas no acesso a &PRODUCT_NAME. <a href="%0">Servi\00E7os de Administra\00E7\00E3o</a>.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187010404027212)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-1029 N\00E3o \00E9 poss\00EDvel armazenar informa\00E7\00F5es da sess\00E3o.  sess\00E3o=%0 item=%1')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190159522027213)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel parar o diagn\00F3stico: %0')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128187338729027212)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'pt'
,p_message_text=>'Erro inesperado'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198193156027215)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'pt'
,p_message_text=>'Erro em update_substitution_cache: %0'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190210831027213)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio fornecer a aplica\00E7\00E3o e a p\00E1gina para visualizar o aux\00EDlio.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128211955574027219)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A automatiza\00E7\00E3o n\00E3o foi encontrada.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147436948027200)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro de Consulta de Automatiza\00E7\00E3o: %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191313223027213)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 sess\00F5es eliminadas.')
,p_version_scn=>2693222
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132673644027195)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel executar o c\00F3digo %0. N\00E3o \00E9 suportado pela base de dados ou n\00E3o \00E9 ativado pelo par\00E2metro de inst\00E2ncia MLE_LANGUAGES.')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128130228487027195)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('O Mecanismo Multilingue n\00E3o est\00E1 dispon\00EDvel nesta vers\00E3o da base de dados!')
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169432986027206)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('A matriz da cole\00E7\00E3o de aplica\00E7\00F5es n\00E3o deve ser nula')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169212634027206)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'pt'
,p_message_text=>unistr('O n\00FAmero do atributo de membro %0 especificado \00E9 inv\00E1lido. O n\00FAmero do atributo deve ser entre 1 e %1')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169710228027206)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'pt'
,p_message_text=>unistr('Existe uma cole\00E7\00E3o de aplica\00E7\00F5es')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169542840027206)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('O nome da cole\00E7\00E3o n\00E3o pode ser nula')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169649222027206)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'pt'
,p_message_text=>unistr('O nome da cole\00E7\00E3o n\00E3o pode ter mais de 255 caracteres')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169025072027206)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A cole\00E7\00E3o de aplica\00E7\00F5es %0 n\00E3o existe')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169856738027206)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'pt'
,p_message_text=>unistr('O cursor ainda n\00E3o est\00E1 aberto')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169119754027206)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('A sequ\00EAncia de membros %0 n\00E3o existe na cole\00E7\00E3o de Aplica\00E7\00F5es %1'),
''))
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169339987027206)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('A sequ\00EAncia de membros %0 n\00E3o existe na cole\00E7\00E3o de Aplica\00E7\00F5es "%1"')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128122122965027192)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'pt'
,p_message_text=>unistr('O algoritmo %0 n\00E3o \00E9 suportado para ECDSA.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128121890460027192)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'pt'
,p_message_text=>unistr('A curva el\00EDptica %0 n\00E3o \00E9 suportada.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247556412027230)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('A fun\00E7\00E3o criptogr\00E1fica "%0" n\00E3o \00E9 suportada neste sistema.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299830624027246)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'pt'
,p_message_text=>'Acessibilidade Testada'
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190888112027213)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'pt'
,p_message_text=>'Fechar'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190934879027213)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'pt'
,p_message_text=>unistr('Op\00E7\00F5es de Customiza\00E7\00E3o da P\00E1gina')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191055210027213)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor Por Omiss\00E3o')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191111965027213)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'pt'
,p_message_text=>'Apresentado'
,p_version_scn=>2693222
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191262067027213)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'pt'
,p_message_text=>'Oculto'
,p_version_scn=>2693222
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190621212027213)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'pt'
,p_message_text=>unistr('Selecione as regi\00F5es que pretende incluir nesta p\00E1gina. As regi\00F5es selecionadas podem n\00E3o ser apresentadas se n\00E3o estiver no contexto de aplica\00E7\00E3o adequado ou n\00E3o tiver os privil\00E9gios adequados.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190726699027213)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta p\00E1gina n\00E3o \00E9 customiz\00E1vel.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300199723027246)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'pt'
,p_message_text=>unistr('Pode personalizar o aspeto desta aplica\00E7\00E3o ao alterar o Estilo do Tema. Selecione um Estilo do Tema na lista abaixo e clique em Aplicar Altera\00E7\00F5es.')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300914024027246)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'pt'
,p_message_text=>unistr('Apresenta\00E7\00E3o da Regi\00E3o')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128300044308027246)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'pt'
,p_message_text=>unistr('Utilizar Estilo Por Omiss\00E3o da Aplica\00E7\00E3o')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128299973206027246)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'pt'
,p_message_text=>'Aspeto '
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244157709027229)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O \00EDndice de colunas referenciado na agrega\00E7\00E3o %0 n\00E3o existe.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136852227027197)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('A anexa\00E7\00E3o da exporta\00E7\00E3o de dados n\00E3o \00E9 suportada para o formato %0.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099882776027185)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('A sa\00EDda de dados de CLOB n\00E3o \00E9 suportada para o formato %0.')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243841067027229)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'pt'
,p_message_text=>unistr('A quebra da coluna deve ficar no in\00EDcio da matriz de colunas.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128243967111027229)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O \00EDndice de grupo de colunas referenciado em %0 n\00E3o existe.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128151012493027201)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('exporta\00E7\00E3o')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128158270852027203)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'pt'
,p_message_text=>unistr('O formato de exporta\00E7\00E3o deve ser XML e utilizar ORDS como Servidor de Impress\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244285685027229)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O \00EDndice de colunas referenciado no destaque %0 n\00E3o existe.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128147694823027200)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'pt'
,p_message_text=>unistr('Formato de Exporta\00E7\00E3o Inv\00E1lido: %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128244089510027229)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('O \00EDndice de grupos pai referenciado em %0 n\00E3o existe.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128269203481027237)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('A coluna %1 da tabela %0 \00E9 uma coluna de identidade "GENERATED ALWAYS". Certifique-se de que nenhuma coluna de origem tem correspond\00EAncia com a coluna %1 na caixa de di\00E1logo Configurar.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180870339027210)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'pt'
,p_message_text=>unistr('O intervalo de confirma\00E7\00E3o especificado \00E9 demasiado pequeno.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128180952434027210)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram fornecidas colunas para o carregamento de dados.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182297631027210)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foi encontrada nenhuma coluna para o seletor de linhas "%0". Experimente a dete\00E7\00E3o autom\00E1tica ou reveja a estrutura do JSON.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191609923027213)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foram encontradas folhas de c\00E1lculo no ficheiro XLSX.')
,p_version_scn=>2693222
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136753760027197)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'pt'
,p_message_text=>unistr('Os n\00EDveis de hierarquia pedidos para detetar (%0) excedem o m\00E1ximo de %1.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191564907027213)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'pt'
,p_message_text=>unistr('A folha de c\00E1lculo especificada n\00E3o existe no ficheiro XLSX.')
,p_version_scn=>2693222
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128169900912027206)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'pt'
,p_message_text=>unistr('A vers\00E3o atual dos dados na base de dados foi alterada desde que o utilizador iniciou o processo de atualiza\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172873996027207)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao atualizar as colunas do relat\00F3rio: %0')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283354527027241)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel converter %0 em SDO_GEOMETRY.')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219829705027222)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'pt'
,p_message_text=>unistr('A coluna %0 com o tipo de dados %1 n\00E3o pode ser convertida em VARCHAR2!')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227242004027224)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A coluna "%0" especificada para o atributo "%1" n\00E3o foi encontrada na origem de dados!')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163310883027204)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'pt'
,p_message_text=>unistr('O tipo de filtro %0 n\00E3o \00E9 suportado para colunas de v\00E1rios valores.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286891893027242)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'pt'
,p_message_text=>unistr('Filtro "entre" inv\00E1lido.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128142416458027198)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'pt'
,p_message_text=>'Nenhum valor %2 encontrado na coluna %0, linha #%1.'
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128139189655027197)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'pt'
,p_message_text=>unistr('A coluna %0 ou a linha #%1 n\00E3o existe.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125743367027193)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi especificado um tipo de LDV inv\00E1lido.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125658672027193)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('Tipo de consulta inv\00E1lido. O tipo de consulta deve ser Tabela, Consulta de SQL ou Fun\00E7\00E3o de PL/SQL que devolve uma Consulta de SQL.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219906328027222)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Falha ao analisar a consulta de SQL!',
'%0'))
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227341301027224)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A posi\00E7\00E3o de coluna %0 especificada para o atributo "%1" n\00E3o foi encontrada na instru\00E7\00E3o de SQL!')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128117367298027191)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'pt'
,p_message_text=>unistr('Demasiados itens utilizados no filtro de V\00E1rios Valores.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227190038027224)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'pt'
,p_message_text=>'Nenhuma coluna especificada para o atributo "%0".'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125530110027193)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('O corpo da fun\00E7\00E3o de PL/SQL n\00E3o devolveu um valor.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242966977027229)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'pt'
,p_message_text=>unistr('A Origem de Dados REST n\00E3o cont\00E9m uma Opera\00E7\00E3o para processar a a\00E7\00E3o DML pedida.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284601247027241)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('Os filtros de intervalo s\00F3 s\00E3o suportados para os tipos de dados NUMBER, DATE ou TIMESTAMP.')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128105573475027187)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'pt'
,p_message_text=>'Falha do pedido com %0'
,p_version_scn=>2693209
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128109063064027188)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'pt'
,p_message_text=>unistr('A convers\00E3o de GeoJSON em SDO_GEOMETRY (coluna %0) n\00E3o est\00E1 dispon\00EDvel nesta base de dados.')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112496954027189)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'pt'
,p_message_text=>unistr('A convers\00E3o de SDO_GEOMETRY (coluna %0) n\00E3o \00E9 suportada para origens de dados em XML.')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128136574562027196)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'pt'
,p_message_text=>unistr('O car\00E1cter %0 n\00E3o \00E9 suportado como separador de v\00E1rios valores.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128284734830027242)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta fun\00E7\00E3o n\00E3o pode ser utilizada num Contexto de Consulta.')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128112534988027189)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o correspond\00EAncia do Tipo de Dados da Coluna.')
,p_version_scn=>2693211
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128146014534027199)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta origem de dados n\00E3o suporta a altera\00E7\00E3o de v\00E1rias linhas.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125424745027193)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'pt'
,p_message_text=>unistr('Os limites de Associa\00E7\00E3o de ORDS OUT internos foram excedidos. Reduza a quantidade de linhas de DML.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228137960027224)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('N\00E3o foi poss\00EDvel analisar a resposta de JSON a partir do servidor remoto: '),
'%0'))
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128125384000027193)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'pt'
,p_message_text=>'Tipo de contexto desconhecido ou incorreto.'
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128149414533027200)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'pt'
,p_message_text=>unistr('Componentes n\00E3o suportados para a exporta\00E7\00E3o leg\00EDvel: %0')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128247409602027230)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('Este tipo de ficheiro n\00E3o \00E9 suportado pelo analisador.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198224430027215)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Acesso n\00E3o autorizado (wwv_flow_api.set_credentials n\00E3o definido).')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173182176027207)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'pt'
,p_message_text=>unistr('O espa\00E7o de trabalho n\00E3o foi criado porque j\00E1 existe.')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128173013277027207)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'pt'
,p_message_text=>unistr('O grupo de utilizadores n\00E3o foi criado porque j\00E1 existe.')
,p_version_scn=>2693219
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184423532027211)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'pt'
,p_message_text=>'Nome de utilizador duplicado encontrado para %0.'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184524880027211)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'pt'
,p_message_text=>'Erro ao carregar utilizadores. Falha no utilizador %0.'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195308402027214)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'pt'
,p_message_text=>'Teria carregado %0 utilizadores.'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195157032027214)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'pt'
,p_message_text=>'Senha'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195207491027214)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'pt'
,p_message_text=>unistr('Privil\00E9gios')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194903466027214)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'pt'
,p_message_text=>'Nome de Utilizador'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275388996027238)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro durante a renderiza\00E7\00E3o do item de p\00E1gina #COMPONENT_NAME#.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190354973027213)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel apresentar o item da p\00E1gina porque a ficha em HTML ainda n\00E3o foi aberta.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128148717112027200)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao calcular valor por omiss\00E3o para o item da p\00E1gina #COMPONENT_NAME#.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189613922027212)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro no p\00F3s-c\00E1lculo do item de p\00E1gina #COMPONENT_NAME#.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189558707027212)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao calcular valor de origem do item de p\00E1gina #COMPONENT_NAME#.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166371259027205)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'pt'
,p_message_text=>unistr('Acesso n\00E3o autorizado.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115808135027190)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'pt'
,p_message_text=>unistr('O valor %0 de %1 n\00E3o \00E9 uma matriz de JSON v\00E1lida.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189850913027212)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'pt'
,p_message_text=>unistr('JavaScript n\00E3o suportado.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189982115027212)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'pt'
,p_message_text=>'Lista'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128190534189027213)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel inicializar a consulta.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198502130027215)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('A atualiza\00E7\00E3o de %0 n\00E3o \00E9 suportada.')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128192014835027213)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ID de item inv\00E1lido: %0 ')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219742249027222)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o existe aux\00EDlio para este item.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181586557027210)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'pt'
,p_message_text=>unistr('Falha na gera\00E7\00E3o da consulta do diagrama. Verifique a defini\00E7\00F5es Origem e Correspond\00EAncia de Colunas.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182862035027210)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor inv\00E1lido para o par\00E2metro p_mail_id: %0')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128219504963027221)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel utilizar "Para" ou "Responder A" como endere\00E7o "De", uma vez que estes cont\00EAm v\00E1rios endere\00E7os de email.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128304484694027247)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'pt'
,p_message_text=>unistr('Excedeu o n\00FAmero m\00E1ximo de mensagens de email por espa\00E7o de trabalho. Contacte o administrador.')
,p_version_scn=>2693244
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161097076027204)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'pt'
,p_message_text=>unistr('Este procedimento deve ser invocado numa sess\00E3o da aplica\00E7\00E3o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182720376027210)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'pt'
,p_message_text=>unistr('Valor nulo fornecido para o par\00E2metro %0.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128240823278027228)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('O modelo de email "%0" n\00E3o foi encontrado na aplica\00E7\00E3o %1.')
,p_version_scn=>2693231
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128317350572027251)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('O par\00E2metro de inst\00E2ncia SMTP_HOST_ADDRESS deve ser definido para enviar correio.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128182104735027210)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('Deve fornece um destinat\00E1rio da mensagem para enviar correio.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128306870151027248)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel estabelecer a liga\00E7\00E3o de SMTP com o servidor de email configurado.')
,p_version_scn=>2693245
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282176243027241)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'pt'
,p_message_text=>unistr('Chamada de Ajax inv\00E1lida!')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166091742027205)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foi definida nenhuma fun\00E7\00E3o Ajax para o plug-in %0')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272673096027238)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foi definida nenhuma fun\00E7\00E3o de execu\00E7\00E3o para o plug-in %0')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166138548027205)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o foi definida nenhuma fun\00E7\00E3o de renderiza\00E7\00E3o para o plug-in %0')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283047856027241)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('O Plug-In da Origem de Dados REST "%0" n\00E3o cont\00E9m uma fun\00E7\00E3o "Capacidades".')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128282959762027241)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('O Plug-In da Origem de Dados REST "%0" n\00E3o cont\00E9m uma fun\00E7\00E3o DML.')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283170852027241)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('O Plug-In da Origem de Dados REST "%0" n\00E3o cont\00E9m uma fun\00E7\00E3o de execu\00E7\00E3o.')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128283251119027241)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'pt'
,p_message_text=>unistr('O Plug-In da Origem de Dados REST "%0" n\00E3o cont\00E9m uma fun\00E7\00E3o de extra\00E7\00E3o.')
,p_version_scn=>2693240
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163547709027205)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro no c\00F3digo PLSQL gerado durante o processamento do plug-in.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172153968027207)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar o valor.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128205125321027217)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'pt'
,p_message_text=>unistr('O tipo de dados %0 n\00E3o pode ser convertido em VARCHAR2!')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293311346027244)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('A coluna "%0" especificada para o atributo "%1" n\00E3o foi encontrada na instru\00E7\00E3o de SQL!')
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128120685768027192)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'pt'
,p_message_text=>unistr('O valor %0 de %1 n\00E3o \00E9 uma matriz de JSON v\00E1lida.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270569216027237)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'pt'
,p_message_text=>unistr('\00C9 necess\00E1rio especificar um consulta de lista de valores (LDV) ou uma lista de valores Nomeada para %0.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128272118529027237)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'pt'
,p_message_text=>unistr('Foi selecionado um n\00FAmero incorreto de colunas nas consulta de SQL da LDV para %0. Consulte os exemplos para obter instru\00E7\00F5es v\00E1lidas.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293166247027244)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'pt'
,p_message_text=>'Nenhuma coluna especificada para o atributo "%0".'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128322302547027253)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('O valor %0 introduzido para o atributo "%1" n\00E3o \00E9 num\00E9rico.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128275619275027239)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>unistr('%0 tem um tipo de dados incorreto na instru\00E7\00E3o de SQL. Column# %1 \00E9 %2, mas era esperado %3.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128293206981027244)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'pt'
,p_message_text=>'A coluna "%0" especificada para o atributo "%1" tem o tipo de dados %2, mas deveria ter %3.'
,p_version_scn=>2693242
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128162798680027204)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel encontrar a disposi\00E7\00E3o do relat\00F3rio.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128150336254027201)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'pt'
,p_message_text=>unistr('Limite de Execu\00E7\00F5es em Segundo Plano excedido para %0.')
,p_version_scn=>2693215
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100689885027186)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 est\00E1 em curso Outra Execu\00E7\00E3o de %0.')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128100599526027186)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'pt'
,p_message_text=>unistr('J\00E1 est\00E1 em curso Outra Execu\00E7\00E3o de %0 para o contexto %1.')
,p_version_scn=>2693208
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128115520520027190)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'pt'
,p_message_text=>unistr('Os ficheiros carregados n\00E3o s\00E3o vis\00EDveis na sess\00E3o de trabalho para a Execu\00E7\00E3o de %0.')
,p_version_scn=>2693212
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128228034358027224)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'pt'
,p_message_text=>unistr('A funcionalidade Calcular Soma n\00E3o pode ser utilizada para relat\00F3rios baseados numa Origem de Dados REST.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128189704147027212)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('ERR-2904 N\00E3o \00E9 poss\00EDvel definir valor do atalho.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128194701105027214)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'pt'
,p_message_text=>'Erro: Tipo de atalho desconhecido.'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128132410184027195)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'pt'
,p_message_text=>'Consulta de pesquisa demasiado longa.'
,p_version_scn=>2693214
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128183897686027211)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel extrair authentication_scheme na aplica\00E7\00E3o %0.')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128191828417027213)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel extrair o componente %0.')
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128262157044027234)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'pt'
,p_message_text=>unistr('A ID do tenant j\00E1 existe para a sess\00E3o atual.')
,p_version_scn=>2693236
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128195098381027214)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'pt'
,p_message_text=>'E-Mail'
,p_version_scn=>2693223
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321874513027253)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'pt'
,p_message_text=>unistr('Falha na autentica\00E7\00E3o.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128222496351027222)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'pt'
,p_message_text=>unistr('Um ou mais cookies definidos em apex_util.g_request_cookies cont\00EAm um valor inv\00E1lido.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128204371108027217)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'pt'
,p_message_text=>unistr('A resposta do registo de UDDI era inv\00E1lida.')
,p_version_scn=>2693226
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128163641523027205)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'pt'
,p_message_text=>unistr('O URL fornecido n\00E3o devolveu uma documento em WSDL v\00E1lido.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128166435164027205)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'pt'
,p_message_text=>unistr('O documento em WSDL cont\00E9m v\00E1rias associa\00E7\00F5es de SOAP. &PRODUCT_NAME. Apenas suporta WSDLs com uma associa\00E7\00E3o de SOAP. Clique em Criar Manualmente Refer\00EAncia de Servi\00E7o Web para continuar a criar uma refer\00EAncia para este servi\00E7o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128242047765027228)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'pt'
,p_message_text=>unistr('A resposta do servi\00E7o n\00E3o foi XML.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321784692027253)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'pt'
,p_message_text=>unistr('O token de acesso de OAuth n\00E3o est\00E1 dispon\00EDvel ou expirou.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128286207563027242)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'pt'
,p_message_text=>unistr('Excedeu o n\00FAmero m\00E1ximo de pedidos de servi\00E7o Web por espa\00E7o de trabalho. Contacte o administrador.')
,p_version_scn=>2693241
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128321900037027253)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'pt'
,p_message_text=>unistr('O servidor respondeu com um tipo de token de OAuth n\00E3o suportado.')
,p_version_scn=>2693247
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165864531027205)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'pt'
,p_message_text=>unistr('O documento em WSDL n\00E3o continha uma associa\00E7\00E3o para SOAP, o que \00E9 obrigat\00F3rio para acrescentar a refer\00EAncia.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128161214294027204)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'pt'
,p_message_text=>unistr('Este WSDL requer credenciais de autentica\00E7\00E3o. Forne\00E7a o nome de utilizador e a senha abaixo.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128172235627027207)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'pt'
,p_message_text=>unistr('O mecanismo de renderiza\00E7\00E3o n\00E3o conseguiu compreender o documento em WSDL. Clique em Criar Manualmente Refer\00EAncia do Servi\00E7o Web para criar uma refer\00EAncia para este servi\00E7o.')
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128245067560027229)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00E3o \00E9 poss\00EDvel processar a atualiza\00E7\00E3o.')
,p_version_scn=>2693232
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270821221027237)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'pt'
,p_message_text=>unistr('As colunas de devolu\00E7\00E3o e apresenta\00E7\00E3o da Lista de Valores s\00E3o iguais!')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128270792265027237)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'pt'
,p_message_text=>unistr('A Lista de Valores n\00E3o tem uma coluna de devolu\00E7\00E3o.')
,p_version_scn=>2693237
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198453321027215)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'pt'
,p_message_text=>'Erro ao extrair valor da coluna: %0'
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223385672027223)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'pt'
,p_message_text=>unistr('Os dados da ficha tabular atual s\00E3o demasiado antigos; os dados de origem foram modificados.<br/> Clique <strong><a href="%0">aqui</a></strong> para excluir as altera\00E7\00F5es e carregar novamente os dados a partir da base de dados.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178570920027209)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao determinar cadeia de caracteres de pagina\00E7\00E3o')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178444603027209)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('n\00E3o \00E9 poss\00EDvel determinar os t\00EDtulos da consulta:'),
'%0'))
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178647842027209)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'pt'
,p_message_text=>unistr('erro ao efetuar substitui\00E7\00F5es do rodap\00E9 do relat\00F3rio')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178780663027209)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'falha ao analisar a consulta de SQL:',
'%0',
'%1'))
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184804850027211)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'pt'
,p_message_text=>unistr('N\00FAmero m\00EDnimo de linhas pedido: %0, linhas encontradas, mas n\00E3o apresentadas: %1')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181281631027210)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'pt'
,p_message_text=>unistr('a coluna de consulta #%0 (%1) \00E9 inv\00E1lida, as colunas que utilizam HTML necessitam de nomes de pseud\00F3nimos')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128198395837027215)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'pt'
,p_message_text=>unistr('Erro ao obter t\00EDtulos da consulta: %0')
,p_version_scn=>2693225
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178827799027209)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('erro de relat\00F3rio:'),
'%0'))
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128218989555027221)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'pt'
,p_message_text=>'Ordenar por esta coluna'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181371318027210)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'pt'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>N\00E3o \00E9 poss\00EDvel analisar a consulta. Verifique a sintaxe da consulta.'),
'(%0)',
'</p>'))
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223409141027223)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'pt'
,p_message_text=>unistr('Esta ficha cont\00E9m altera\00E7\00F5es n\00E3o gravadas. Prima "OK" para continuar sem gravar as altera\00E7\00F5es. ')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128227902379027224)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'pt'
,p_message_text=>unistr('O esquema de pagina\00E7\00E3o do relat\00F3rio (%0) n\00E3o \00E9 suportado com a origem de dados escolhida.')
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128181104582027210)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'pt'
,p_message_text=>unistr('a coluna de consulta #%0 (%1) \00E9 inv\00E1lida, utilize o pseud\00F3nimo da coluna')
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184909329027211)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'pt'
,p_message_text=>'linha(s) %0 - %1 de mais de %2'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128225401113027223)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'pt'
,p_message_text=>'%0 - %1 de mais de %2'
,p_version_scn=>2693227
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128184758435027211)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'pt'
,p_message_text=>'linha(s) %0 - %1 de %2'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128165501490027205)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'pt'
,p_message_text=>'%0 - %1 de %2'
,p_version_scn=>2693218
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178916942027209)
,p_name=>'Y'
,p_message_language=>'pt'
,p_message_text=>'S'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128186220977027211)
,p_name=>'YEAR'
,p_message_language=>'pt'
,p_message_text=>'ano'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128178185738027209)
,p_name=>'YEARS'
,p_message_language=>'pt'
,p_message_text=>'anos'
,p_version_scn=>2693221
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128223565872027223)
,p_name=>'YES'
,p_message_language=>'pt'
,p_message_text=>'Sim'
,p_version_scn=>2693227
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
 p_id=>wwv_flow_imp.id(109678305570583962.4495)
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
 p_id=>1.4495
,p_name=>'Mensagens'
,p_alias=>'MESSAGES'
,p_step_title=>'Mensagens'
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
