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
,p_default_application_id=>4496
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4496 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4496
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131491041014028633')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'cs'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4496)
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
 p_id=>wwv_flow_imp.id(4496)
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
 p_id=>wwv_flow_imp.id(728504220438374.4496)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4496)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4496)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4496)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4496)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4496)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4496)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4496)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4496)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4496)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4496)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4496)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4496)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4496)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4496)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4496)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4496)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.cs'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4496)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4496)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4496)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4496)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4496)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4496)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4496)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.cs'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4496)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4496)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4496)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4496)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4496)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4496)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.cs'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4496)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4496)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4496)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.cs'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4496)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4496)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4496)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4496)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4496)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4496)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4496)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4496)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4496)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4496)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4496)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4496)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4496)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4496)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4496)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4496)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4496)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.cs'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4496)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4496)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4496)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4496)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4496)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4496)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4496)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4496)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4496)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4496)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4496)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4496)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4496)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4496)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4496)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4496)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4496)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.cs'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4496)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4496)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4496)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4496)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4496)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4496)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4496)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4496)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4496)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4496)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4496)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4496)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4496)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4496)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4496)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.cs'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4496)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4496)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4496)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4496)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4496)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4496)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4496)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4496)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4496)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4496)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4496)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4496)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4496)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4496)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4496)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4496)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4496)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4496)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4496)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4496)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4496)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4496)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4496)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4496)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4496)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4496)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4496)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4496)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4496)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4496)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4496)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4496)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4496)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4496)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4496)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4496)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4496)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4496)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4496)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4496)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4496)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4496)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4496)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4496)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4496)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4496)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4496)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4496)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4496)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4496)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4496)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4496)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4496)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4496)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4496)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4496)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4496)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4496)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4496)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4496)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4496)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4496)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4496)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4496)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4496)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4496)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4496)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4496)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4496)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4496)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4496)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4496)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4496)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4496)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4496)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4496)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4496)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4496)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4496)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4496)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4496)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4496)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4496)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4496)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4496)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4496)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4496)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4496)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4496)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4496)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4496)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4496)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4496)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4496)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4496)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4496)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4496)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4496)
,p_page_name=>'winlov'
,p_page_title=>unistr('Dialogov\00E9 okno Vyhled\00E1v\00E1n\00ED')
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
,p_find_button_text=>unistr('Vyhled\00E1v\00E1n\00ED')
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>unistr('Zav\0159\00EDt')
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('Dal\0161\00ED &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; P\0159edchoz\00ED')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">\0158\00E1dky #FIRST_ROW#\00A0\2013 #LAST_ROW#</div>')
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
 p_id=>wwv_flow_imp.id(649611609668764506.4496)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4496)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4496)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4496)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4496)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4496)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4496)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4496)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4496)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4496)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4496)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4496)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4496)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4496)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4496)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4496)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4496)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4496)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4496)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4496)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4496)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4496)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4496)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4496)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4496)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4496)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4496)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4496)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4496)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4496)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4496)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4496)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4496)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4496)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4496)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4496)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4496)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4496)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4496)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4496)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4496)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4496)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4496)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4496)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4496)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4496)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4496)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4496)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4496)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4496)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4496)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4496)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4496)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4496)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4496)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4496)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4496)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4496)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4496)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4496)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4496)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4496)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4496)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4496)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4496)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4496)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4496)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4496)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4496)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4496)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4496)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4496)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4496)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4496)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4496)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4496)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4496)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4496)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4496)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4496)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4496)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4496)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4496)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4496)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4496)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4496)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4496)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4496)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4496)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4496)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4496)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4496)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4496)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4496)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4496)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4496)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4496)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4496)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4496)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4496)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4496)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4496)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4496)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4496)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4496)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4496)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4496)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4496)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4496)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4496)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4496)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4496)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4496)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4496)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4496)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4496)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4496)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4496)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4496)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4496)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4496)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4496)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4496)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4496)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4496)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4496)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4496)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4496)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4496)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4496)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4496)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4496)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4496)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4496)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4496)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4496)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4496)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4496)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4496)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4496)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4496)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4496)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4496)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4496)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4496)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4496)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4496)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4496)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4496)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4496)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4496)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4496)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4496)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4496)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4496)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4496)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4496)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4496)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4496)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4496)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4496)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4496)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4496)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4496)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4496)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4496)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4496)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4496)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4496)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4496)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4496)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4496)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4496)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4496)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4496)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4496)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4496)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4496)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4496)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4496)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4496)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4496)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4496)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4496)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4496)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4496)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4496)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4496)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4496)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4496)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4496)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4496)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4496)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4496)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4496)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4496)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4496)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4496)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4496)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4496)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4496)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4496)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4496)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4496)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4496)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4496)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4496)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4496)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4496)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4496)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4496)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4496)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4496)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4496)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4496)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4496)
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
 p_id=>wwv_flow_imp.id(124103791052025894)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'cs'
,p_message_text=>'Sloupec %0'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088378731025889)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'cs'
,p_message_text=>unistr('Spr\00E1vce')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088208148025889)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'cs'
,p_message_text=>unistr('U\017Eivatelsk\00E9 jm\00E9no')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150968209025908)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDstup odep\0159en')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107893092025895)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00E1\0161 \00FA\010Det %0 byl vytvo\0159en.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091033993025890)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Det je zam\010Den\00FD.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075586322025886)
,p_name=>'AM_PM'
,p_message_language=>'cs'
,p_message_text=>'AM / PM'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058331864025881)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'cs'
,p_message_text=>'odkaz na akci'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058257090025881)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'cs'
,p_message_text=>unistr('odkaz na dialogov\00E9 okno')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222677768025929)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159epnout %0')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230423874025931)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'cs'
,p_message_text=>unistr('(Aktivn\00ED)')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035272365025874)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'cs'
,p_message_text=>unistr('Konverzace vymaz\00E1na')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035158824025874)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'cs'
,p_message_text=>'Vymazat konverzaci'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031747893025873)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ijmout')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031847632025873)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'cs'
,p_message_text=>unistr('Zam\00EDtnout')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031531858025873)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'cs'
,p_message_text=>'Historie konverzace'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034937791025874)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zkop\00EDrov\00E1no')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035038123025874)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'cs'
,p_message_text=>unistr('Zkop\00EDrov\00E1no do schr\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034796636025874)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'cs'
,p_message_text=>unistr('Kop\00EDrovat')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034820210025874)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'cs'
,p_message_text=>unistr('Kop\00EDrovat do schr\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032246992025873)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'cs'
,p_message_text=>'Asistent'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032654126025873)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'cs'
,p_message_text=>unistr('AI je na \00FArovni pracovn\00EDho prostoru nebo instance zak\00E1z\00E1na.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071982646025885)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'cs'
,p_message_text=>unistr('Slu\017Eba generativn\00ED AI s\00A0dan\00FDm ID nebo statick\00FDm ID nebyla nalezena.')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070601458025884)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba ov\011B\0159en\00ED nebo zak\00E1zan\00FD p\0159\00EDstup (HTTP-%1) pro adresu URL %0. Zkontrolujte konfiguraci slu\017Eby Generative AI Service %2.')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050485566025878)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadavek HTTP na slu\017Ebu generativn\00ED AI v\00A0\201E%0\201C selhal s\00A0k\00F3dem HTTP-%1: %2')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074837700025886)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba v\00A0po\017Eadavku HTTP na slu\017Ebu Generative AI Service pro modul plugin %0 v\00A0re\017Eimu %1. Zkontrolujte konfiguraci slu\017Eby Generative AI Service.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037657120025875)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDklady')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036092143025874)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'cs'
,p_message_text=>'Asistent'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037466845025875)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035979651025874)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'cs'
,p_message_text=>'Vy'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066604776025883)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Slu\017Eba OCI Generative AI v\00A0sou\010Dasn\00E9 dob\011B nepodporuje prost\0159ed\00ED chatu s\00A0v\00EDce zpr\00E1vami.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046583502025877)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Do\0161lo k\00A0chyb\011B p\0159i zpracov\00E1n\00ED v\00FDzvy %0 aplikace %1. Zkontrolujte, jestli je u\00A0instance dostupn\00FD App Builder.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051611303025879)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze zpracovat odpov\011B\010F pro slu\017Ebu AI %0, odpov\011B\010F %1')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057844784025881)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Odeslat zpr\00E1vu')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046103459025877)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba backendov\00E9 slu\017Eby AI %0')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031930283025873)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zpr\00E1va')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032034107025873)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'cs'
,p_message_text=>unistr('Sem napi\0161te zpr\00E1vu')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035334613025874)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Avatar u\017Eivatele')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035440811025874)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'cs'
,p_message_text=>unistr('Pou\017E\00EDt toto')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032168572025873)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('M\00E1te neodeslanou zpr\00E1vu, jste si jist\00ED?')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201184245025923)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Ajaxov\00E9 vol\00E1n\00ED vr\00E1tilo chybu serveru %0 pro %1.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128213876025901)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'cs'
,p_message_text=>unistr('Alias aplikace "%0" nelze p\0159ev\00E9st na jedine\010Dn\00E9 ID aplikace.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117079348025898)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('ERR-1816 Neo\010Dek\00E1van\00E1 chyba p\0159i p\0159evodu aliasu aplikace p_flow_alias_or_id (%0).')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214483268025927)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Kontroln\00ED sou\010Det aplikace poskytuje jednoduch\00FD zp\016Fsob, jak ur\010Dit, zda je stejn\00E1 aplikace nasazena v jin\00FDch pracovn\00EDch prostorech. Tyto kontroln\00ED sou\010Dty m\016F\017Eete porovnat a ur\010Dit, zda existuje shoda. ')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101069682025893)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED funkce autentizace.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083090545025888)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED funkce autentizace.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254979583025939)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'cs'
,p_message_text=>unistr('Jm\00E9no z\00E1kazn\00EDka %0 vr\00E1cen\00E9 slu\017Ebou Oracle Cloud Identity Management nen\00ED autorizov\00E1no pro dom\00E9nu %1!<br/><a href="&LOGOUT_URL.">P\0159ihlaste se znovu</a> a zadejte jm\00E9no autorizovan\00E9ho z\00E1kazn\00EDka nebo zm\011B\0148te adresu URL.')
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079153133025887)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00E1\0161 \00FA\010Det "%0" nem\00E1 pot\0159ebn\00E1 v\00FDvoj\00E1\0159sk\00E1 opr\00E1vn\011Bn\00ED (DB_DEVELOPER nebo DB_ADMINISTRATOR)<br/>pro pracovn\00ED prostor "%1"! <a href="&LOGOUT_URL.">P\0159ihlaste se znovu</a>, a\017E z\00EDsk\00E1te opr\00E1vn\011Bn\00ED.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075791583025886)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'cs'
,p_message_text=>unistr('Jm\00E9no z\00E1kazn\00EDka vr\00E1cen\00E9 slu\017Ebou Oracle Cloud Identity Management nen\00ED autorizov\00E1no v aktu\00E1ln\00EDm pracovn\00EDm prostoru!<br/><a href="&LOGOUT_URL.">P\0159ihlaste se znovu</a> a zadejte jm\00E9no autorizovan\00E9ho z\00E1kazn\00EDka.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079278479025887)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'cs'
,p_message_text=>unistr('Z bezpe\010Dnostn\00EDch d\016Fvod\016F nen\00ED povoleno spou\0161t\011Bn\00ED aplikac\00ED tohoto pracovn\00EDho prostoru prost\0159ednictv\00EDm dom\00E9ny v adrese URL.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100789974025893)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017E\00E1dejte sv\00E9ho spr\00E1vce datab\00E1ze o spu\0161t\011Bn\00ED skriptu $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100642076025893)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'cs'
,p_message_text=>unistr('Bal\00ED\010Dek SYS.DBMS_LDAP neexistuje nebo je neplatn\00FD.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100508787025893)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED u\017Eivatelsk\00E9 funkce LDAP.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100825356025893)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED autentizace LDAP.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101683548025893)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba v argumentu v procedu\0159e p_flow_page procedury login_page.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101271520025893)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E9 p_session ve wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152558301025908)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\0161kozen\00FD argument pro wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101339041025893)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'cs'
,p_message_text=>unistr('Do p\0159ihla\0161ovac\00ED procedury byla p\0159ed\00E1na hodnota null jako u\017Eivatelsk\00E9 jm\00E9no.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088114426025889)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Dkejte <span id="apex_login_throttle_sec">%0</span> sekund a pak se p\0159ihlaste znovu.')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089475895025890)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Pokus o p\0159ihl\00E1\0161en\00ED byl zablokov\00E1n.')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150238494025907)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>'Autentizace "%0" nebyla nalezena'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089993107025890)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'cs'
,p_message_text=>unistr('ID skupiny zabezpe\010Den\00ED je null.')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101123951025893)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i prov\00E1d\011Bn\00ED procesu po autentizaci.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100907416025893)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED procesu p\0159ed autentizac\00ED.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102618018025894)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Otev\0159ete adresu URL ve stejn\00E9m prohl\00ED\017Ee\010Di, kde jste zah\00E1jili po\017Eadavek Obnovit heslo.  Kdy\017E klikn\011Bte na adresu URL Obnovit heslo a budete p\0159esm\011Brov\00E1ni na p\0159ihla\0161ovac\00ED str\00E1nku, zahajte po\017Eadavek Obnovit heslo znovu a nechte prohl\00ED\017Ee\010D otev\0159en\00FD.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252415417025938)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'cs'
,p_message_text=>unistr('Adresa URL pro obnoven\00ED hesla')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079446115025887)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Skupina spot\0159ebitel\016F %0 aplikace Resource Manager nebyla ud\011Blena pro %1')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079570591025887)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro ud\011Blen\00ED chyb\011Bj\00EDc\00EDho opr\00E1vn\011Bn\00ED pou\017Eijte skupinu DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114193369025897)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED funkce uk\00E1zky relace.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114277755025897)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED funkce ov\011B\0159en\00ED relace.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114405272025897)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017E\00E1dejte sv\00E9ho spr\00E1vce %0 o konfiguraci modulu pro p\0159ihl\00E1\0161en\00ED typu Single Sign-On aplikace Oracle Application Server.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124848430025900)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E9 %0 v tokenu %1 vr\00E1cen\00E9m ze SSO.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101529617025893)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'cs'
,p_message_text=>unistr('Upravte sch\00E9ma autentizace a p\0159idejte n\00E1zev aplikace.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124553266025900)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD volaj\00EDc\00ED procedury %0:')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124702455025900)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E1 relace aplikace v tokenu urlc: %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124316165025900)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba v portal_sso_redirect: chyb\00ED registra\010Dn\00ED \00FAdaje aplikace: %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114367479025897)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'cs'
,p_message_text=>unistr('Bal\00ED\010Dek WWSEC_SSO_ENABLER_PRIVATE neexistuje nebo je neplatn\00FD.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101449667025893)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Ve sch\00E9matu autentizace nelze naj\00EDt n\00E1zev registrovan\00E9 aplikace partnera.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124496009025900)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'cs'
,p_message_text=>unistr('Registrujte tuto aplikaci podle popisu v p\0159\00EDru\010Dce pro instalaci.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114579152025897)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED autentizace SSO.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227832999025931)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'cs'
,p_message_text=>unistr('Neautorizovan\00E1 adresa URL:  %0')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113934254025897)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED autentizace.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079348526025887)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED prostor "%0" je neaktivn\00ED. Obra\0165te se na spr\00E1vce.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080037792025887)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'cs'
,p_message_text=>'%0'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089170843025890)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDstup byl odep\0159en kontrolou zabezpe\010Den\00ED aplikace')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089286291025890)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDstup byl odep\0159en kontrolou zabezpe\010Den\00ED str\00E1nky')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089389760025890)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED autorizace.')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158443825025910)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'cs'
,p_message_text=>unistr('Sestaveno v %0 s pou\017Eit\00EDm %1')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158540276025910)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'cs'
,p_message_text=>'nula'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218340536025928)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Popis ud\00E1losti')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218159211025928)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'cs'
,p_message_text=>unistr('Datum ukon\010Den\00ED')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218409335025928)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'cs'
,p_message_text=>unistr('ID ud\00E1losti')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218093444025928)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'cs'
,p_message_text=>unistr('Datum zah\00E1jen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218278508025928)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev ud\00E1losti')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060853473025881)
,p_name=>'APEX.CARD'
,p_message_language=>'cs'
,p_message_text=>'Karta'
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061097235025882)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'cs'
,p_message_text=>'Akce karty'
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101712877025893)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'cs'
,p_message_text=>unistr('Vizu\00E1ln\011B skryt\00E9 za\0161krt\00E1vac\00ED pol\00ED\010Dko')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103653004025894)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba obsahu kontroln\00EDho sou\010Dtu')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103567491025894)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba form\00E1tu kontroln\00EDho sou\010Dtu')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173466480025914)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zkop\00EDrov\00E1no do schr\00E1nky.')
,p_is_js_message=>true
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172974886025914)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'cs'
,p_message_text=>unistr('Tento prohl\00ED\017Ee\010D nepodporuje kop\00EDrov\00E1n\00ED z tla\010D\00EDtka nebo nab\00EDdky. Zkuste stisknout Ctrl+C nebo Command+C.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159143370025910)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Zav\0159\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037519804025875)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00FD obsah editoru k\00F3du p\0159esahuje maxim\00E1ln\00ED d\00E9lku polo\017Eky (skute\010Dn\00E1 %0, povoleno %1 znak\016F)')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217614677025928)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'cs'
,p_message_text=>'Kontrast'
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212115707025926)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktu\00E1ln\00ED')
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212098321025926)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010D\00E1te\010Dn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216286391025927)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# mus\00ED b\00FDt platn\00E1 barva. P\0159\00EDklad: %0')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078666533025887)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED barvy')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078757998025887)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'cs'
,p_message_text=>unistr('Otev\0159\00EDt v\00FDb\011Br barvy')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035817098025874)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'cs'
,p_message_text=>unistr('Posuvn\00EDk Alfa, vodorovn\00FD posuvn\00EDk. K proch\00E1zen\00ED pou\017Eijte kl\00E1vesy se \0161ipkami.')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035581879025874)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'cs'
,p_message_text=>unistr('Barevn\00E9 spektrum, \010Dty\0159cestn\00FD posuvn\00EDk. K proch\00E1zen\00ED pou\017Eijte kl\00E1vesy se \0161ipkami.')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035651914025874)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'cs'
,p_message_text=>unistr('Posuvn\00EDk odst\00EDnu, svisl\00FD posuvn\00EDk. K proch\00E1zen\00ED pou\017Eijte kl\00E1vesy se \0161ipkami.')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211984919025926)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'cs'
,p_message_text=>'Zvolte barvu'
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212282484025926)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zm\011Bnit form\00E1t barvy')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250155444025937)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'cs'
,p_message_text=>'Seznam hodnot'
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250232884025937)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'cs'
,p_message_text=>unistr('Otev\0159\00EDt seznam pro: %0')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230539529025931)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'cs'
,p_message_text=>unistr('(Dokon\010Deno)')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119413674025898)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'cs'
,p_message_text=>unistr('Kontaktujte spr\00E1vce aplikace.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134903290025903)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Obra\0165te se na spr\00E1vce aplikace.'),
unistr('Podrobnosti o tomto incidentu jsou dostupn\00E9 prost\0159ednictv\00EDm ladic\00EDho id "%0".')))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216529831025927)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed ulo\017Een\00EDm opravte chyby.')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061801179025882)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'cs'
,p_message_text=>unistr('%0. Odstra\0148te stisknut\00EDm tla\010D\00EDtka Backspace.')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160090242025910)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Nalezen\00E9 shody - %0')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041930487025876)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('1 odpov\00EDdaj\00EDc\00ED polo\017Eka')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159921778025910)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyly nalezeny \017E\00E1dn\00E9 shody')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036358222025874)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'cs'
,p_message_text=>unistr('Ostatn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036226749025874)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybran\00E9 hodnoty: %0')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231069310025931)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktu\00E1ln\00ED pr\016Fb\011Bh')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216989092025927)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Soubor ur\010Den\00FD v polo\017Ece %0 neexistuje v APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205443934025924)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktu\00E1ln\00ED verze dat v\00A0datab\00E1zi se od zah\00E1jen\00ED procesu aktualizace u\017Eivatelem zm\011Bnila.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174566528025915)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'cs'
,p_message_text=>unistr('Nenahr\00E1vat')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220856550025928)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159edb\011B\017En\00E9ho zpracov\00E1n\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220647983025928)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vlo\017Eit \0159\00E1dek')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234209343025932)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\0159ad\00ED : Akce')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220763789025928)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizovat \0159\00E1dek')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049241468025878)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'cs'
,p_message_text=>'Akce'
,p_is_js_message=>true
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076888499025886)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'cs'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062952093025882)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 mus\00ED b\00FDt n\00E1stroj pro v\00FDb\011Br data nebo platn\00E9 datum, nap\0159\00EDklad %1.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172199309025914)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'cs'
,p_message_text=>'Vymazat'
,p_is_js_message=>true
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080373113025887)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'cs'
,p_message_text=>'Hotovo'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091314979025890)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 obsahuje nepodporovan\00E9 sou\010D\00E1sti ve form\00E1tovac\00ED masce: %1')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076511183025886)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'cs'
,p_message_text=>'Hodina'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160409791025910)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyskakovac\00ED kalend\00E1\0159: %0')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076347846025886)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('T\00FDden')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076475998025886)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'cs'
,p_message_text=>'WK'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076756657025886)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'cs'
,p_message_text=>'Minuty'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076924761025886)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('M\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077314285025886)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00ED m\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046960464025877)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ekryvn\00E9 okno pro %0')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077223943025886)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED m\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169782547025913)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1stroj pro v\00FDb\011Br data jen pro \010Dten\00ED')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078116316025886)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'cs'
,p_message_text=>'Vybrat datum'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047083023025877)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat datum a \010Das')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044224978025877)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'cs'
,p_message_text=>'Vybrat den'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047686357025878)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat m\011Bs\00EDc a rok')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044499838025877)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybran\00FD \010Das')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044940089025877)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'cs'
,p_message_text=>'Dnes'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062534260025882)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# mus\00ED b\00FDt platn\00E9 datum, nap\0159\00EDklad %0.')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062291629025882)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota #LABEL# mus\00ED b\00FDt mezi %0 a\00A0%1.')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062322965025882)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota #LABEL# se mus\00ED shodovat nebo n\00E1sledovat po %0.')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062437235025882)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota #LABEL# se mus\00ED shodovat nebo p\0159edch\00E1zet hodnot\011B\00A0%0.')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053899694025879)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vizu\00E1ln\011B skryt\00E1 \00FAprava')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077140398025886)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'cs'
,p_message_text=>'Rok'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164104697025912)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# je pozd\011Bj\0161\00ED ne\017E zadan\00E9 nejpozd\011Bj\0161\00ED datum %0.')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164504260025912)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# neodpov\00EDd\00E1 form\00E1tu %0.')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164053329025911)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# je star\0161\00ED ne\017E zadan\00E9 nejstar\0161\00ED datum %0.')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164227970025912)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# nen\00ED v platn\00E9m rozsahu %0 a\017E %1.')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164459485025912)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# nen\00ED v platn\00E9m rozsahu let %0 a\017E %1.')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056246644025880)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i zpracov\00E1n\00ED po\017Eadavku DBMS_CLOUD do\0161lo k\00A0vnit\0159n\00ED chyb\011B.')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216857356025927)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161it')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242785463025935)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zav\0159\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103900681025894)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Potvrzen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244790902025936)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216653916025927)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'cs'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216740719025927)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084451696025888)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev dialogu')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124104304025900)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vizu\00E1ln\011B skryt\00FD n\00E1zev dialogov\00E9ho okna')
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045256422025877)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edem p\0159ipraven\00E1 funkce gener\00E1toru dokument\016F Oracle')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056083760025880)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i tisku dokumentu do\0161lo k\00A0chyb\011B.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033223414025873)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('%s nepodporuje %1 jako v\00FDstup.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045193632025877)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i vyvol\00E1n\00ED p\0159edem p\0159ipraven\00E9 funkce gener\00E1toru dokument\016F Oracle do\0161lo k\00A0chyb\011B \201E%0\201C:')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036682435025874)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Je vy\017Eadov\00E1na \0161ablona.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062012686025882)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i stahov\00E1n\00ED souboru.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061972204025882)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyla nalezena \017E\00E1dn\00E1 stahovateln\00E1 data.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065529638025883)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'cs'
,p_message_text=>unistr('Tato funkce nen\00ED v\00A0prost\0159ed\00ED typu \201EPouze za b\011Bhu\201C k\00A0dispozici.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118353418025898)
,p_name=>'APEX.ERROR'
,p_message_language=>'cs'
,p_message_text=>'Chyba'
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078273472025886)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i prov\00E1d\011Bn\00ED zp\011Btn\00E9ho vol\00E1n\00ED zpracov\00E1n\00ED chyby se vyskytla n\00E1sleduj\00EDc\00ED chyba: %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090854997025890)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Do\0161lo k chyb\011B p\0159i vykreslov\00E1n\00ED chybov\00E9 str\00E1nky: %0')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079900002025887)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vnit\0159n\00ED chyba')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229619153025931)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Obra\0165te se na spr\00E1vce.'),
unistr('Podrobnosti o tomto incidentu jsou dostupn\00E9 prost\0159ednictv\00EDm ladic\00EDho id "%0".')))
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224227093025929)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'cs'
,p_message_text=>unistr('Datab\00E1ze je otev\0159ena pro p\0159\00EDstup pouze ke \010Dten\00ED.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254379259025938)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'cs'
,p_message_text=>unistr('ORA-28353: Otev\0159en\00ED walletu selhalo. Data aplikace nyn\00ED nejsou p\0159\00EDstupn\00E1.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224326378025929)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Je n\00E1m l\00EDto, ale tato str\00E1nka nen\00ED k dispozici')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082933565025888)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'cs'
,p_message_text=>unistr('Technick\00E9 informace (dostupn\00E9 pouze pro v\00FDvoj\00E1\0159e)')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188832852025919)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('Hl\00E1\0161en\00ED o\00A0chyb\011B')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202738138025923)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('O\010Dek\00E1van\00FD form\00E1t: %0')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167686954025913)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'cs'
,p_message_text=>unistr('U\017Eivatel je ji\017E v seznamu \0159\00EDzen\00ED p\0159\00EDstupu')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167560381025913)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'cs'
,p_message_text=>unistr('Potvr\010Fte p\0159id\00E1n\00ED %0 u\017Eivatele/u\017Eivatel\016F  do seznamu \0159\00EDzen\00ED p\0159\00EDstupu <strong>%1</strong>.')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168000192025913)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'cs'
,p_message_text=>unistr('Existuje duplicitn\00ED u\017Eivatel')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167779349025913)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyb\011Bj\00EDc\00ED zavin\00E1\010D (@) v\00A0e-mailov\00E9 adrese')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167855344025913)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyb\011Bj\00EDc\00ED te\010Dka(.) v\00A0e-mailov\00E9 adrese')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167901286025913)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'cs'
,p_message_text=>unistr('U\017Eivatelsk\00E9 jm\00E9no je p\0159\00EDli\0161 dlouh\00E9')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168288973025913)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'cs'
,p_message_text=>unistr('K\00A0t\00E9to aplikaci maj\00ED p\0159\00EDstup pouze u\017Eivatel\00E9 definovan\00ED v\00A0seznamu \0159\00EDzen\00ED p\0159\00EDstupu aplikace')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168322215025913)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Neo\010Dek\00E1van\00E1 hodnota nastaven\00ED \0159\00EDzen\00ED p\0159\00EDstupu: %0')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168139869025913)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'cs'
,p_message_text=>unistr('K\00A0t\00E9to aplikaci maj\00ED p\0159\00EDstup v\0161ichni ov\011B\0159en\00ED u\017Eivatel\00E9')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212643008025926)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zak\00E1z\00E1no')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212586664025926)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'cs'
,p_message_text=>'Povoleno'
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212892716025926)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'cs'
,p_message_text=>unistr('%0: Je zak\00E1z\00E1no')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212794647025926)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'cs'
,p_message_text=>'%0: Je povoleno'
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061367984025882)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nepodporov\00E1no')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122512162025899)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'cs'
,p_message_text=>'Vypnuto'
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122402954025899)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'cs'
,p_message_text=>'Zapnuto'
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212434773025926)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nezji\0161t\011Bno')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052933470025879)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 bajt\016F')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053493204025879)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'cs'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053182970025879)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'cs'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053350317025879)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'cs'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205621429025924)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('St\00E1hnout')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058702722025881)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'cs'
,p_message_text=>'Volby'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058408700025881)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'cs'
,p_message_text=>'Filtrovat'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058663725025881)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'cs'
,p_message_text=>unistr('Skr\00FDt fazetu')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083377926025888)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat filtr')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159697302025910)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i\0159azen\00FD filtr %0')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084089739025888)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'cs'
,p_message_text=>unistr('Pou\017E\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203228220025923)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'cs'
,p_message_text=>unistr('Pou\017E\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084126619025888)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161it')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067946015025884)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupcov\00FD graf')
,p_is_js_message=>true
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215974735025927)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'cs'
,p_message_text=>unistr('Ostatn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068041308025884)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDse\010Dov\00FD graf')
,p_is_js_message=>true
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214594535025927)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'cs'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067795295025883)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det')
,p_is_js_message=>true
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203724553025923)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'cs'
,p_message_text=>'Vymazat'
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203816752025923)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vymazat v\0161e')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203907870025923)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'cs'
,p_message_text=>'Vymazat %0'
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220452133025928)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec %1, odkazovan\00FD z fazety %0, nen\00ED dostupn\00FD nebo nen\00ED autorizov\00E1n.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031183485025873)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte filtry, kter\00E9 chcete zobrazit')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157615854025910)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00FDsledk\016F')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157705222025910)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybr\00E1no %0')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160509056025910)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktu\00E1ln\00ED filtry')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036172720025874)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'cs'
,p_message_text=>unistr('Fazetov\00E9 vyhled\00E1v\00E1n\00ED vy\017Eaduje datov\00FD zdroj na \00FArovni oblasti.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039820313025875)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Seznam filtr\016F')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218923551025928)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'cs'
,p_message_text=>unistr('Limit jedine\010Dn\00FDch hodnot (%0) p\0159ekro\010Den pro fazetu %1.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205257811025924)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Fazeta %0 nen\00ED podporov\00E1na u sloupc\016F typu DATE nebo TIMESTAMP.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203318258025923)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'cs'
,p_message_text=>'Filtr %0'
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077933473025886)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 (Pou\017Eit\00FD filtr)')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203496545025923)
,p_name=>'APEX.FS.GO'
,p_message_language=>'cs'
,p_message_text=>'Spustit'
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073482656025885)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'cs'
,p_message_text=>'obsahuje %0'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204806545025924)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'cs'
,p_message_text=>unistr('rovn\00E1 se %0')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073195969025885)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'cs'
,p_message_text=>unistr('v\00EDce ne\017E %0')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073276472025885)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'cs'
,p_message_text=>unistr('v\011Bt\0161\00ED ne\017E nebo rovno %0')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072824499025885)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'cs'
,p_message_text=>unistr('m\00E9n\011B ne\017E %0')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073006851025885)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'cs'
,p_message_text=>unistr('men\0161\00ED ne\017E nebo rovno %0')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072334709025885)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'cs'
,p_message_text=>'neobsahuje %0'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058168872025881)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'cs'
,p_message_text=>unistr('nerovn\00E1 se %0')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072400751025885)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'cs'
,p_message_text=>unistr('neza\010D\00EDn\00E1 na %0')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073335021025885)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'cs'
,p_message_text=>unistr('za\010D\00EDn\00E1 na %0')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071488029025885)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br fazety')
,p_is_js_message=>true
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047217746025877)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edpona filtru \201E%0\201C je pro fazetu \201E%1\201C neplatn\00E1.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045669600025877)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyb\00ED p\0159edpona filtru fazety \201E%0\201C.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079819573025887)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Oper\00E1tor')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061736225025882)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'cs'
,p_message_text=>'obsahuje'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060771351025881)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'cs'
,p_message_text=>'je rovno'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061416442025882)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'cs'
,p_message_text=>unistr('v\011Bt\0161\00ED ne\017E')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061501017025882)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'cs'
,p_message_text=>unistr('v\011Bt\0161\00ED ne\017E nebo rovno')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061137207025882)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'cs'
,p_message_text=>unistr('men\0161\00ED ne\017E')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061221727025882)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'cs'
,p_message_text=>unistr('men\0161\00ED ne\017E nebo rovno')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072290798025885)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'cs'
,p_message_text=>'neobsahuje'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060974127025882)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED rovno')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072171837025885)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'cs'
,p_message_text=>unistr('neza\010D\00EDn\00E1 na')
,p_is_js_message=>true
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124061625008025882)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'cs'
,p_message_text=>unistr('za\010D\00EDn\00E1 na')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080210273025887)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Datov\00FD typ %0 (%1) nen\00ED podporov\00E1n u fazety Vstupn\00ED pole.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047109627025877)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Filtr \201E%0\201C nen\00ED podporov\00E1n pro fazetu \201E%1\201C (typ dat %2).')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079705120025887)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'cs'
,p_message_text=>'Hodnota'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205011017025924)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyly zad\00E1ny \017E\00E1dn\00E9 vyhled\00E1vac\00ED sloupce pro fazetu %0')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031245841025873)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00EDce filtr\016F')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157859070025910)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'cs'
,p_message_text=>unistr('Za\010D\00E1tek rozsahu')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204571933025924)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 a\017E %1')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204611186025924)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'cs'
,p_message_text=>'Nad %0'
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204791897025924)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'cs'
,p_message_text=>'Pod %0'
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157998113025910)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'cs'
,p_message_text=>'Konec rozsahu'
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222594799025929)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eka seznamu hodnot #%2 ("%1") pro fazetu rozsahu %0 je neplatn\00E1 (chyb\00ED odd\011Blova\010D "|").')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204999671025924)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Ru\010Dn\00ED vstup pro fazetu rozsahu %0 nyn\00ED nen\00ED podporov\00E1n, proto\017Ee sloupec je typu DATE nebo TIMESTAMP.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204248732025924)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('a\017E')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067883333025883)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'cs'
,p_message_text=>'Odebrat graf'
,p_is_js_message=>true
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154204240025909)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'cs'
,p_message_text=>'Obnovit'
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203614699025923)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203586346025923)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'cs'
,p_message_text=>'Vyhledat...'
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204454414025924)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'cs'
,p_message_text=>unistr('-\00A0Vybrat\00A0-')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067621862025883)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit graf'
,p_is_js_message=>true
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204039817025923)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit m\00E9n\011B')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204129901025923)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit v\0161e')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124204371569025924)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 a v\00EDce hv\011Bzdi\010Dek')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159542233025910)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1vrhy filtru')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205194485025924)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Fazeta textov\00E9ho pole %0 je nyn\00ED podporov\00E1na pouze u sloupc\016F typu NUMBER.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030652213025873)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00FD po\010Det \0159\00E1dk\016F')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220505990025928)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Datov\00FD typ %0 (%1) nen\00ED podporov\00E1n ve fazetov\00E9m vyhled\00E1v\00E1n\00ED.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150787614025908)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('Vizu\00E1ln\011B skryt\00FD nadpis')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213096358025926)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ej\00EDt na chybu')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169041958025913)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'cs'
,p_message_text=>'Agregovat.'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096983115025892)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('Pr\00E1zdn\00FD nadpis')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178309294025916)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'cs'
,p_message_text=>unistr('Sbalit P\0159eru\0161en\00ED')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169198955025913)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159eru\0161en\00ED')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178204327025916)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'cs'
,p_message_text=>unistr('Rozbalit P\0159eru\0161en\00ED')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178079333025916)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Odstran\011Bn\00E9 \0159\00E1dk\016F: %0')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247197923025936)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'cs'
,p_message_text=>unistr('Duplicitn\00ED identita')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040098340025875)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159epnut\00ED do re\017Eimu \00FAprav')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165909265025912)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Prvn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038851893025875)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'cs'
,p_message_text=>unistr('Skr\00FDt dialogov\00E9 okno')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037871397025875)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Obsah bu\0148ky plovouc\00EDho p\0159ete\010Den\00ED')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039197152025875)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit obsah p\0159ete\010Den\00ED')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113364844025897)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'cs'
,p_message_text=>unistr('Z\00E1pat\00ED m\0159\00ED\017Eky')
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169338825025913)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Z\00E1hlav\00ED skupiny')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169238544025913)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Z\00E1hlav\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166090385025912)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040225023025875)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ukon\010Dov\00E1n\00ED re\017Eimu \00FAprav')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064926546025883)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDst v\0161e')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187831189025919)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit v\00EDce')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165777388025912)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169405778025913)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dky str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078598815025887)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'cs'
,p_message_text=>unistr('Str\00E1nka %0')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166103582025912)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'cs'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166202553025912)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'cs'
,p_message_text=>unistr('%0\2013%1 z\00A0%2')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223135422025929)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113603723025897)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'cs'
,p_message_text=>unistr('Str\00E1nkov\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165816588025912)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063840326025882)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED rozsahu')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097278593025892)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br \0159\00E1dek')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246967303025936)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159id\00E1no')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247091555025936)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zm\011Bn\011Bno')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255370732025939)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\0159adov\00E9 \010D\00EDslo \0159\00E1dku m\0159\00ED\017Eky %0, sloupec %1.')
,p_is_js_message=>true
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255495520025939)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\0159adov\00E9 \010D\00EDslo \0159\00E1dku m\0159\00ED\017Eky %0.')
,p_is_js_message=>true
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246812790025936)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'cs'
,p_message_text=>unistr('Odstran\011Bno')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169664257025913)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'cs'
,p_message_text=>unistr('Z\00E1hlav\00ED \0159\00E1dky')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097101644025892)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br \0159\00E1dku')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065008328025883)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 %1 vybr\00E1no')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165109568025912)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybr\00E1no %0 bun\011Bk')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166343889025912)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det vybran\00FDch \0159\00E1dek: %0')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208491934025925)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat v\0161e')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101982866025893)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat v\0161echny \0159\00E1dky')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178147695025916)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'cs'
,p_message_text=>unistr('Str\00E1nka %0')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169521387025913)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat \0159\00E1dek')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169855955025913)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159azeno vzestupn\011B %0')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124169962819025913)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159azeno sestupn\011B %0')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165235758025912)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159adit vzestupn\011B')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165519122025912)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159adit vzestupn\011B %0')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165366398025912)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159adit sestupn\011B')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165619744025912)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159adit sestupn\011B %0')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165494578025912)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'cs'
,p_message_text=>unistr('Nese\0159azovat')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031065352025873)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Volby \0159azen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113459538025897)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'cs'
,p_message_text=>unistr('Stavov\00E9 ikony')
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113598868025897)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'cs'
,p_message_text=>unistr('Stav m\0159\00ED\017Eky')
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043374720025876)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'cs'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043017431025876)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'cs'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177993200025916)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'cs'
,p_message_text=>'Celkem %0'
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096718014025892)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadavek HTTP na "%0" selhal.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098394362025892)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Sloupec %0'
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098564291025892)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec %0 a\00A0\0159\00E1dek %1')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098846118025892)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Ji\017E v\00A0prvn\00EDm sloupci. Sloupec %0 a\00A0\0159\00E1dek %1')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098727982025892)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Ji\017E na prvn\00ED \0159\00E1dce. Sloupec %0 a\00A0\0159\00E1dek %1')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244306462025935)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det sloupc\016F: %0 a\00A0\0159\00E1dk\016F: %1 v\00A0zobrazen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098904613025892)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Ji\017E v\00A0posledn\00EDm sloupci. Sloupec %0 a\00A0\0159\00E1dek %1')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098608199025892)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Ji\017E na posledn\00ED \0159\00E1dce. Sloupec %0 a\00A0\0159\00E1dek %1')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177851010025916)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det \0159\00E1dk\016F zobrazen\00ED: %0')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098458110025892)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dek %0')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255130710025939)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Interaktivn\00ED m\0159\00ED\017Eka %0')
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162224144025911)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'cs'
,p_message_text=>'Akce'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163286044025911)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163147183025911)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat \0159\00E1dek')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248791448025937)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'cs'
,p_message_text=>'Agregovat'
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234315705025932)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'cs'
,p_message_text=>'Agregace'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236054414025933)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('V\0161e')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193635686025920)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('V\0161echny textov\00E9 sloupce')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194876062025921)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Alternativn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195951922025921)
,p_name=>'APEX.IG.AND'
,p_message_language=>'cs'
,p_message_text=>'a'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215389738025927)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ibli\017En\00FD po\010Det jedine\010Dn\00FDch')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249755336025937)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00FD p\0159ibli\017En\00FD po\010Det jedine\010Dn\00FDch')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232965652025932)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'cs'
,p_message_text=>unistr('Plo\0161n\00FD')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234858120025933)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Vzestupn\011B')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194927047025921)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'cs'
,p_message_text=>'Autorizace'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248892723025937)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'cs'
,p_message_text=>'Automaticky'
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215759733025927)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'cs'
,p_message_text=>unistr('Pr\016Fm\011Br')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249496455025937)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00FD pr\016Fm\011Br')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232442943025932)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev osy \0161t\00EDtku')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232660608025932)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Desetinn\00E1 m\00EDsta')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232583102025932)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev osy hodnoty')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238617942025934)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Barva pozad\00ED')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233028389025932)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupcov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190210730025919)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'cs'
,p_message_text=>'mezi'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239880209025934)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'cs'
,p_message_text=>'Oba'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233198362025932)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Bublinov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163400350025911)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161it')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195884888025921)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Rozli\0161ovat mal\00E1 a\00A0velk\00E1 p\00EDsmena')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250368445025937)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'cs'
,p_message_text=>unistr('(Rozli\0161uje mal\00E1 a\00A0velk\00E1 p\00EDsmena)')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221605225025929)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zm\011Bny byly ulo\017Eeny')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163883349025911)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zm\011Bnit zobrazen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196981124025921)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'cs'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193411828025920)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00E1\0161 dotaz p\0159ekra\010Duje maxim\00E1ln\00ED po\010Det %0\00A0datov\00FDch bod\016F na graf. Pou\017Eijte filtr ke sn\00ED\017Een\00ED po\010Dtu z\00E1znam\016F v\00A0z\00E1kladn\00EDm dotazu.')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162159055025911)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED sch\00E9matu')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170509012025913)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'cs'
,p_message_text=>'Vymazat'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231949506025932)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Zav\0159\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238896313025934)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'cs'
,p_message_text=>'Barvy'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216180974025927)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1hled')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195294559025921)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Sloupec'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162329319025911)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'cs'
,p_message_text=>'Sloupce'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124200465025900)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'cs'
,p_message_text=>'Akce sloupce'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124054547025900)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'cs'
,p_message_text=>'Akce pro sloupec "%0"'
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240635183025934)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Del sloupce')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195362768025921)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'cs'
,p_message_text=>unistr('Komplexn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162592730025911)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vypo\010D\00EDtat')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190824219025920)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'cs'
,p_message_text=>'obsahuje'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197193358025921)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159eru\0161en\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170397944025913)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'cs'
,p_message_text=>unistr('Kop\00EDrovat do schr\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170424268025913)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'cs'
,p_message_text=>unistr('Zkop\00EDrovat dol\016F')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215185879025927)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215221185025927)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det jedine\010Dn\00FDch')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249650018025937)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00FD po\010Det jedine\010Dn\00FDch')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249526825025937)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00FD po\010Det')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247206245025936)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159it %0')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193826683025920)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'cs'
,p_message_text=>'Data'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240426222025934)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>'Typ dat'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240008422025934)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'cs'
,p_message_text=>'Datum'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221492941025929)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E1 hodnota data')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191516972025920)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'cs'
,p_message_text=>'dny'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194515328025921)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED nastaven\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194321329025921)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED typ')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163343184025911)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'cs'
,p_message_text=>'Odstranit'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241520506025935)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'cs'
,p_message_text=>'Opravdu chcete odstranit tuto sestavu?'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198924349025922)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Odstranit \0159\00E1dku')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197710170025922)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('Odstranit \0159\00E1dky')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234998153025933)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Sestupn\011B')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196653597025921)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'cs'
,p_message_text=>'Detail'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161867501025911)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED detail\016F')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223900686025929)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Sm\011Br')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196385189025921)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zak\00E1z\00E1no')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190959554025920)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'cs'
,p_message_text=>'neobsahuje'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191112249025920)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'cs'
,p_message_text=>unistr('neza\010D\00EDn\00E1 na')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233261026025932)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'cs'
,p_message_text=>unistr('Prstencov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197327174025921)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'cs'
,p_message_text=>unistr('St\00E1hnout')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087637669025889)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'cs'
,p_message_text=>'Pouze data'
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242529812025935)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Zvolte form\00E1t')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102746163025894)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'cs'
,p_message_text=>unistr('Form\00E1t stahov\00E1n\00ED %0 nen\00ED aktivov\00E1n.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235680070025933)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Duplicitn\00ED agregace')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235775865025933)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'cs'
,p_message_text=>unistr('Duplicitn\00ED P\0159eru\0161en\00ED')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198856884025922)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Duplikovat \0159\00E1dek')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197676799025922)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('Duplicitn\00ED \0159\00E1dky')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162914731025911)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'cs'
,p_message_text=>'Upravit'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234705963025933)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'cs'
,p_message_text=>'Upravit graf'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115222788025897)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'cs'
,p_message_text=>'Upravit %0'
,p_is_js_message=>true
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246157962025936)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'cs'
,p_message_text=>'Upravit Seskupit podle'
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153321630025908)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v re\017Eimu \00FAprav')
,p_is_js_message=>true
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128994847025901)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('M\0159\00ED\017Eka v re\017Eimu \00FApravy, ukon\010Den\00EDm stisknut\00ED p\0159epn\011Bte do re\017Eimu zobrazen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242127015025935)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'cs'
,p_message_text=>unistr('Skryt\00E1 kopie')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242371354025935)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'cs'
,p_message_text=>unistr('Zpr\00E1va')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242002834025935)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'cs'
,p_message_text=>'Kopie'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241794573025935)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'cs'
,p_message_text=>unistr('E-mail odesl\00E1n.')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242226144025935)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edm\011Bt')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241958896025935)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDjemce')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196063387025921)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'cs'
,p_message_text=>'Povoleno'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189240573025919)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'cs'
,p_message_text=>'je rovno'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196125315025921)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDraz')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241162764025934)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'cs'
,p_message_text=>'Typ'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208370011025925)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'cs'
,p_message_text=>unistr('Soubor je p\0159ipraven. Zahajuje se stahov\00E1n\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170699652025913)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'cs'
,p_message_text=>'Vyplnit'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172808200025914)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyplnit v\00FDb\011Br pomoc\00ED')
,p_is_js_message=>true
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172712167025914)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br v\00FDpln\011B')
,p_is_js_message=>true
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162420539025911)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'cs'
,p_message_text=>'Filtrovat'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195479388025921)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'cs'
,p_message_text=>'Filtry'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249171894025937)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'cs'
,p_message_text=>'Filtrovat...'
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235173033025933)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'cs'
,p_message_text=>unistr('Prvn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162642653025911)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'cs'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193951444025920)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Form\00E1t')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239792543025934)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'cs'
,p_message_text=>unistr('Form\00E1tovac\00ED maska')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241475546025935)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'cs'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241344513025935)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'cs'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152496800025908)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'cs'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086357332025889)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'cs'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198526859025922)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'cs'
,p_message_text=>'Zmrazit'
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196264032025921)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'cs'
,p_message_text=>unistr('Funkce a\00A0Oper\00E1tory')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233392469025932)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Trycht\00FD\0159ov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215084364025927)
,p_name=>'APEX.IG.GO'
,p_message_language=>'cs'
,p_message_text=>'Spustit'
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189822426025919)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'cs'
,p_message_text=>unistr('v\011Bt\0161\00ED ne\017E')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189935892025919)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'cs'
,p_message_text=>unistr('v\011Bt\0161\00ED nebo rovno')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196552717025921)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'cs'
,p_message_text=>unistr('M\0159\00ED\017Eka')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161646575025911)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('M\0159\00ED\017Ekov\00E9 zobrazen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235902000025933)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'cs'
,p_message_text=>'Skupina'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196755056025921)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'cs'
,p_message_text=>'Seskupit podle'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161923434025911)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED seskupen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240344270025934)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Typ podm\00EDnky')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239231616025934)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'cs'
,p_message_text=>'Nadpis'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239475465025934)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'cs'
,p_message_text=>unistr('Zarovn\00E1n\00ED z\00E1hlav\00ED')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249092787025937)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244543873025935)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Data m\016F\017Eete vkl\00E1dat, aktualizovat a odstra\0148ovat p\0159\00EDmo v t\00E9to interaktivn\00ED m\0159\00ED\017Ece.</p>'),
'',
unistr('<p>Nov\00FD \0159\00E1dek vlo\017E\00EDte kliknut\00EDm na tla\010D\00EDtko P\0159idat \0159\00E1dek.</p>'),
'',
unistr('<p>St\00E1vaj\00EDc\00ED data uprav\00EDte poklep\00E1n\00EDm na konkr\00E9tn\00ED bu\0148ku. Chcete-li prov\00E1d\011Bt v\011Bt\0161\00ED \00FApravy, kliknut\00EDm na Upravit p\0159ejd\011Bte do re\017Eimu \00FAprav. V re\017Eimu \00FAprav m\016F\017Eete konkr\00E9tn\00ED bu\0148ky upravit jedin\00FDm kliknut\00EDm nebo pomoc\00ED kl\00E1vesnice.</p>'),
'',
unistr('<p>Pomoc\00ED nab\00EDdky Zm\011Bnit duplikujte a odstra\0148te \0159\00E1dky. Chcete-li povolit nab\00EDdku Zm\011Bnit, vyberte pomoc\00ED za\0161krt\00E1vac\00EDch pol\00ED\010Dek jeden nebo v\00EDce \0159\00E1dk\016F.</p>'),
'',
unistr('<p>Vybran\00FD \0159\00E1dek duplikujte kliknut\00EDm na nab\00EDdku Zm\011Bnit a v\00FDb\011Brem p\0159\00EDkazu Duplikovat \0159\00E1dky. Vybran\00FD \0159\00E1dek odstran\00EDte kliknut\00EDm na nab\00EDdku Zm\011Bnit a v\00FDb\011Brem polo\017Eky Odstranit \0159\00E1dek.</p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246601703025936)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DApravy - mo\017Enosti')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246777593025936)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interaktivn\00ED m\0159\00ED\017Eka p\0159edstavuje sadu dat v prohled\00E1vateln\00E9 a p\0159izp\016Fsobiteln\00E9 sestav\011B. M\016F\017Eete omezit po\010Det vr\00E1cen\00FDch z\00E1znam\016F a zm\011Bnit zp\016Fsob zobrazen\00ED dat.</p>'),
'',
unistr('<p>Pomoc\00ED pole Hledat m\016F\017Eete filtrovat vr\00E1cen\00E9 z\00E1znamy. Kliknut\00EDm na polo\017Eku Akce z\00EDsk\00E1te p\0159\00EDstup k mnoha mo\017Enostem \00FApravy rozvr\017Een\00ED sestavy nebo pou\017Eijte nab\00EDdky Z\00E1hlav\00ED sloupc\016F v zobrazen\00FDch sloupc\00EDch.</p>'),
'',
unistr('<p>Pomoc\00ED dialogu Nastaven\00ED sestavy ulo\017Ete sv\00E9 \00FApravy sestavy. Data ze zpr\00E1vy si tak\00E9 m\016F\017Eete st\00E1hnout do extern\00EDho souboru nebo je odeslat e-mailem sob\011B nebo ostatn\00EDm.</p>'),
'',
unistr('<p>Dal\0161\00ED informace naleznete v \010D\00E1sti \201EPou\017E\00EDv\00E1n\00ED interaktivn\00EDch m\0159\00ED\017Eek\201C v <em>P\0159\00EDru\010Dce koncov\00E9ho u\017Eivatele Oracle APEX</em>.'),
''))
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246454570025936)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ehled')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244451637025935)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interaktivn\00ED m\0159\00ED\017Eku m\016F\017Eete pomoc\00ED vestav\011Bn\00FDch funkc\00ED p\0159izp\016Fsobit tak, aby zobrazovala data r\016Fzn\00FDmi zp\016Fsoby.</p>'),
'',
unistr('<p>Nab\00EDdky Z\00E1hlav\00ED sloupc\016F a Akce umo\017E\0148uj\00ED ur\010Dit, kter\00E9 sloupce se maj\00ED zobrazit, v jak\00E9m po\0159ad\00ED a tak\00E9 sloupce zmrazit. M\016F\017Eete tak\00E9 definovat r\016Fzn\00E9 datov\00E9 filtry a se\0159adit vr\00E1cen\00E1 data.</p>'),
'',
unistr('<p>Pomoc\00ED tla\010D\00EDtka Zobrazit (vedle pole Hledat) z\00EDsk\00E1te p\0159\00EDstup k dal\0161\00EDm zobrazen\00EDm dat, kter\00E1 mohla b\00FDt definov\00E1na v\00FDvoj\00E1\0159em aplikace. M\016F\017Eete tak\00E9 vytvo\0159it graf nebo zobrazit existuj\00EDc\00ED graf.</p>'),
'',
unistr('<p><em>Pozn\00E1mka: Kliknut\00EDm na polo\017Eku <strong>N\00E1pov\011Bda</strong> v dialogov\00FDch oknech interaktivn\00ED m\0159\00ED\017Eky z\00EDsk\00E1te podrobn\011Bj\0161\00ED informace o vybran\00E9 funkci.</em></p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246523826025936)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('Vykazov\00E1n\00ED - mo\017Enosti')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197563595025922)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda interaktivn\00ED m\0159\00ED\017Eky.')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243378038025935)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tento dialog pou\017Eijte k agregaci sloupc\016F. Agregovan\00E9 hodnoty se zobrazuj\00ED ve spodn\00ED \010D\00E1sti dat, nebo - pokud jsou definov\00E1na p\0159eru\0161en\00ED - ve spodn\00ED \010D\00E1sti ka\017Ed\00E9ho p\0159eru\0161en\00ED. </p>'),
'',
unistr('<p><strong>Seznam agregac\00ED</strong><br>'),
unistr('Seznam Agregace zobrazuje definovan\00E9 agregace. St\00E1vaj\00EDc\00ED agregaci deaktivujete zru\0161en\00EDm v\00FDb\011Bru.<br>'),
unistr('Kliknut\00EDm na P\0159idat ( &plus; ) vytvo\0159\00EDte novou agregaci, kliknut\00EDm na Odstranit ( &minus; ) odstran\00EDte st\00E1vaj\00EDc\00ED agregaci.</p>'),
'',
unistr('<p><strong>Nastaven\00ED agregace</strong><br>'),
unistr('K definici agregace pou\017Eijte formul\00E1\0159 vpravo.<br>'),
unistr('Vyberte n\00E1zev sloupce a typ agregace.<br>'),
unistr('Voliteln\011B zadejte popis agregace.<br>'),
unistr('Pokud jste definovali p\0159eru\0161en\00ED, v\00FDb\011Brem mo\017Enosti <strong>Zobrazit celkovou hodnotu</strong> se v doln\00ED \010D\00E1sti dat zobraz\00ED celkov\00FD pr\016Fm\011Br, sou\010Det nebo podobn\00E1 hodnota.</p>'),
'',
unistr('<p><em>Pozn\00E1mka: Dialog Agregace je p\0159\00EDstupn\00FD v nab\00EDdce Akce nebo po kliknut\00ED na z\00E1hlav\00ED sloupce a sou\010Det ( &sum; ). </em> </p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245555451025936)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0Agregac\00EDm')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244060449025935)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>V tomto dialogu definujete graf, kter\00FD se zobraz\00ED jako samostatn\00E9 zobrazen\00ED \00FAdaj\016F.<br>'),
'Vyberte typ grafu a atributy grafu.</p>',
'<p><strong>Atributy grafu</strong><br>',
unistr('Dostupn\00E9 atributy grafu se li\0161\00ED v z\00E1vislosti na typu grafu.</p>'),
'<p>',
'<ul>',
unistr('  <li>Vyberte sloupec obsahuj\00EDc\00ED hodnotu pro atribut:'),
'    <ul>',
unistr('      <li>Popisek - Text pro ka\017Ed\00FD datov\00FD bod.</li>'),
unistr('      <li>Hodnota - Data, kter\00E1 maj\00ED b\00FDt vykreslen\00E1.</li>'),
unistr('      <li>\0158ady - Pro definov\00E1n\00ED dynamick\00E9ho dotazu s v\00EDce \0159adami.</li>'),
unistr('      <li>Otv\00EDrac\00ED - Denn\00ED otev\00EDrac\00ED skladov\00E1 cena (pouze burzovn\00ED).</li>'),
unistr('      <li>Kone\010Dn\00E1 - Denn\00ED kone\010Dn\00E1 skladov\00E1 cena (pouze burzovn\00ED).</li>'),
unistr('      <li>Vysok\00E1 - Vysok\00E1 hodnota (pouze rozsahy a akcie).</li>'),
unistr('      <li>N\00EDzk\00E1 - N\00EDzk\00E1 hodnota (pouze rozsahy a akcie).</li>'),
unistr('      <li>Objem - Denn\00ED objem z\00E1sob (pouze burzovn\00ED).</li>'),
unistr('      <li>C\00EDl - C\00EDlov\00E1 hodnota (pouze trycht\00FD\0159ov\00FD).</li>'),
unistr('      <li>X - Hodnota osy x (pouze bublinov\00E1 a bodov\00E1).</li>'),
unistr('      <li>Y - Hodnota osy y (pouze bublinov\00E1 a bodov\00E1).</li>'),
unistr('      <li>Z - \0160\00ED\0159ka pruhu nebo pom\011Br bubliny (pouze pruhov\00E1, bublinov\00E1 a rozsahov\00E1).</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Orientace - Svisl\00E1 nebo vodorovn\00E1.</li>'),
unistr('  <li>Agregace - V\00FDb\011Br, jak agregovat hodnoty grafu.</li>'),
unistr('  <li>Skl\00E1d\00E1n\00ED - Ur\010Den\00ED, zda jsou datov\00E9 polo\017Eky skl\00E1d\00E1ny.</li>'),
unistr('  <li>Se\0159adit podle - Se\0159azen\00ED podle popisku nebo hodnot.'),
'    <ul>',
unistr('      <li>Sm\011Br - \0158azen\00ED ve vzestupn\00FDch nebo sestupn\00FDch hodnot\00E1ch.</li>'),
unistr('      <li>Nulov\00E9 hodnoty - Ur\010Den\00ED, jak se\0159adit z\00E1znamy s hodnotami null vzhledem k z\00E1znam\016Fm s hodnotami jin\00FDmi ne\017E null.</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Desetinn\00E1 m\00EDsta</li>'),
unistr('  <li>N\00E1zev osy popisku</li>'),
unistr('  <li>N\00E1zev osy hodnoty</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245945954025936)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda ke Graf\016Fm')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243080724025935)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>V tomto dialogu ur\010D\00EDte, kter\00E9 sloupce se zobraz\00ED a v jak\00E9m po\0159ad\00ED.</p>'),
'',
unistr('<p>Sloupec skryjete zru\0161en\00EDm jeho v\00FDb\011Bru.<br>'),
unistr('Po\0159ad\00ED sloupc\016F zm\011Bn\00EDte kliknut\00EDm na tla\010D\00EDtka P\0159esunout nahoru ( &uarr; ) nebo P\0159esunout dol\016F ( &darr; ).<br>'),
unistr('V rozev\00EDrac\00EDm seznamu m\016F\017Eete zvolit V\0161echny sloupce, Zobrazen\00E9 sloupce nebo Nezobrazen\00E9 sloupce.</p>'),
'',
unistr('<p>Voliteln\011B ve formul\00E1\0159i ur\010Dete minim\00E1ln\00ED \0161\00ED\0159ku sloupce v pixelech.</p>'),
'',
unistr('<p><em>Pozn\00E1mka: Po\0159ad\00ED zobrazen\00FDch sloupc\016F m\016F\017Eete zm\011Bnit tak\00E9 tak, \017Ee klikn\011Bte na \00FAchyt pro p\0159eta\017Een\00ED (na za\010D\00E1tku z\00E1hlav\00ED sloupce) a p\0159et\00E1hn\011Bte sloupec doleva \010Di doprava. \0160\00ED\0159ku zobrazen\00E9ho sloupce m\016F\017Eete zm\011Bnit tak\00E9 v\00FDb\011Brem odd\011Blova\010De sloupce mezi z')
||unistr('\00E1hlav\00EDmi a jeho p\0159eta\017Een\00EDm doleva \010Di doprava.</em></p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245817592025936)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupce - n\00E1pov\011Bda')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243402655025935)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tento dialog pou\017Eijte k definov\00E1n\00ED dal\0161\00EDch sloupc\016F na z\00E1klad\011B matematick\00FDch a funk\010Dn\00EDch v\00FDpo\010Dt\016F proveden\00FDch proti existuj\00EDc\00EDm sloupc\016Fm.</p>'),
'',
unistr('<p><strong>V\00FDpo\010Detn\00ED seznam</strong><br>'),
unistr('Seznam V\00FDpo\010Det zobrazuje definovan\00E9 v\00FDpo\010Dty. St\00E1vaj\00EDc\00ED v\00FDpo\010Det deaktivujete zru\0161en\00EDm v\00FDb\011Bru.<br>'),
unistr('Kliknut\00EDm na P\0159idat ( &plus; ) p\0159id\00E1te nov\00FD v\00FDpo\010Det, kliknut\00EDm na Odstranit ( &minus; ) odstran\00EDte st\00E1vaj\00EDc\00ED v\00FDpo\010Det.</p>'),
'',
unistr('<p><strong>Nastaven\00ED v\00FDpo\010Dtu</strong><br>'),
unistr('K definici v\00FDpo\010Dtu pou\017Eijte formul\00E1\0159.<br>'),
unistr('Zadejte podrobnosti sloupce, nap\0159\00EDklad nadpis, popisek a vyberte nastaven\00ED zarovn\00E1n\00ED.<br>'),
unistr('V textov\00E9 oblasti V\00FDraz zadejte sloupce a souvisej\00EDc\00ED funkce pro v\00FDpo\010Det.<br>'),
unistr('Vyberte pot\0159ebn\00FD datov\00FD typ pro nov\00FD sloupec a p\0159\00EDpadn\011B masku form\00E1tu.</p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245435168025936)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0V\00FDpo\010Dt\016Fm')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243701963025935)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tento dialog pou\017Eijte k definov\00E1n\00ED p\0159eru\0161en\00ED v jednom nebo v\00EDce sloupc\00EDch.</p>'),
'',
unistr('<p><strong>Seznam p\0159eru\0161en\00ED</strong><br>'),
unistr('Seznam p\0159eru\0161en\00ED zobrazuje definovan\00E1 p\0159eru\0161en\00ED. St\00E1vaj\00EDc\00ED sloupec p\0159eru\0161en\00ED deaktivujte zru\0161en\00EDm jeho v\00FDb\011Bru.<br>'),
unistr('Kliknut\00EDm na P\0159idat ( &plus; ) zahrnete do p\0159eru\0161en\00ED nov\00FD sloupec, kliknut\00EDm na Odstranit ( minus; ) odstran\00EDte existuj\00EDc\00ED sloupec z p\0159eru\0161en\00ED.<br>'),
unistr('Chcete-li zm\011Bnit po\0159ad\00ED sloupc\016F, kliknut\00EDm na P\0159esunout nahoru ( &uarr; ) nebo P\0159esunout dol\016F ( &darr; ) p\0159esu\0148te vybran\00FD sloupec nahoru a dol\016F vzhledem k ostatn\00EDm sloupc\016Fm. </p>'),
'',
unistr('<p><strong>Nastaven\00ED p\0159eru\0161en\00ED</strong><br>'),
unistr('K definici sloupce p\0159eru\0161en\00ED pou\017Eijte formul\00E1\0159.<br>'),
unistr('Ve formul\00E1\0159i ur\010D\00EDte sloupec p\0159eru\0161en\00ED, sm\011Br \0159azen\00ED a zp\016Fsob \0159azen\00ED sloupc\016F s hodnotou null (sloupce bez hodnoty).</p>'),
'',
unistr('<p><em>Pozn\00E1mka: P\0159i prohl\00ED\017Een\00ED interaktivn\00ED m\0159\00ED\017Eky m\016F\017Eete definovat p\0159eru\0161en\00ED kliknut\00EDm na z\00E1hlav\00ED sloupce a v\00FDb\011Brem ikony p\0159eru\0161en\00ED.</em></p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245199925025936)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0P\0159eru\0161en\00ED')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243904847025935)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pomoc\00ED tohoto dialogu st\00E1hnete v\0161echny aktu\00E1ln\00ED \0159\00E1dky do extern\00EDho souboru. Soubor bude obsahovat pouze aktu\00E1ln\011B zobrazen\00E9 sloupce s daty ovlivn\011Bn\00FDmi pou\017Eit\00FDmi filtry a \0159azen\00EDm.</p>'),
'',
unistr('<p>Vyberte form\00E1t souboru a klikn\011Bte na St\00E1hnout.<br>'),
unistr('Pozn\00E1mka: Soubor CSV nebude zahrnovat form\00E1tov\00E1n\00ED textu, nap\0159\00EDklad agregace a p\0159eru\0161en\00ED.</p>'),
'',
unistr('<p>Chcete-li soubor poslat e-mailem, vyberte Odeslat jako e-mail a zadejte podrobnosti (p\0159\00EDjemce, p\0159edm\011Bt a zpr\00E1va). </p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244976940025936)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda ke Stahov\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243106922025935)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>V tomto dialogu konfigurujete filtry dat, kter\00E9 omezuj\00ED po\010Det vr\00E1cen\00FDch \0159\00E1dk\016F.</p>'),
'',
unistr('<p><strong>Seznam filtr\016F</strong><br>'),
unistr('Seznam filtr\016F zobrazuje definovan\00E9 filtry. Existuj\00EDc\00ED filtr deaktivujete zru\0161en\00EDm jeho v\00FDb\011Bru.<br>'),
unistr('Kliknut\00EDm na tla\010D\00EDtko P\0159idat ( &plus; ) vytvo\0159\00EDte nov\00FD filtr, kliknut\00EDm na Odstranit ( &minus; ) odeberete st\00E1vaj\00EDc\00ED filtr.</p>'),
'',
unistr('<p><strong>Nastaven\00ED filtru</strong><br>'),
unistr('K definici vlastnost\00ED filtru pou\017Eijte formul\00E1\0159.<br>'),
unistr('Vyberte p\0159\00EDslu\0161n\00FD typ filtru:<br>'),
unistr('&nbsp;&nbsp;&nbsp;\0158\00E1dek - filtr pro pojem v libovoln\00E9m filtrovateln\00E9m sloupci.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Sloupec - filtrov\00E1n\00ED ur\010Dit\00E9ho sloupce pomoc\00ED oper\00E1toru a hodnoty.</p>'),
'',
unistr('<p><em>Pozn\00E1mka: P\0159i prohl\00ED\017Een\00ED interaktivn\00ED m\0159\00ED\017Eky m\016F\017Eete definovat filtry \0159\00E1dk\016F p\0159\00EDm\00FDm z\00E1pisem do pole Hledat. Po kliknut\00ED na volbu Vyberte sloupce, kter\00E9 chcete vyhledat omez\00EDte vyhled\00E1v\00E1n\00ED na ur\010Dit\00FD sloupec. Alternativn\011B otev\0159ete nab\00EDdku Z\00E1hlav\00ED ')
||unistr('sloupce a vyberte hodnotu pro vytvo\0159en\00ED filtru sloupce.</em></p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245701540025936)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0Filtr\016Fm')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243542552025935)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tento dialog pou\017Eijte k zobrazen\00ED dat tak, jak existovaly v p\0159edchoz\00EDm \010Dasov\00E9m okam\017Eiku.</p>'),
unistr('<p>Zadejte po\010Det minut v minulosti k proveden\00ED zp\011Btn\00E9ho dotazu.</p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245306094025936)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0Flashbacku')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246042444025936)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0Seskupen\00EDm podle')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243618463025935)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tento dialog pou\017Eijte k zv\00FDrazn\011Bn\00ED \0159\00E1dk\016F nebo sloupc\016F dat na z\00E1klad\011B zadan\00E9 podm\00EDnky.</p>'),
'',
unistr('<p><strong>Seznam Zv\00FDrazn\011Bn\00ED</strong><br>'),
unistr('Seznam Zv\00FDrazn\011Bn\00ED zobrazuje definovan\00E1 zv\00FDrazn\011Bn\00ED. St\00E1vaj\00EDc\00ED zv\00FDrazn\011Bn\00ED deaktivujete zru\0161en\00EDm v\00FDb\011Bru.<br>'),
unistr('Kliknut\00EDm na P\0159idat (& plus;) vytvo\0159\00EDte nov\00E9 zv\00FDrazn\011Bn\00ED, kliknut\00EDm na Odstranit (& minus;) zv\00FDrazn\011Bn\00ED odstran\00EDte.</p>'),
'',
unistr('<p><strong>Nastaven\00ED zv\00FDrazn\011Bn\00ED</strong><br>'),
unistr('Vlastnosti zv\00FDrazn\011Bn\00ED se definuj\00ED ve formul\00E1\0159i.<br>'),
unistr('Zadejte n\00E1zev, vyberte \0158\00E1dek nebo Sloupec a vyberte barevn\00E9 k\00F3dy HTML pro pozad\00ED a text. <br>'),
unistr('Chcete-li zv\00FDraznit konkr\00E9tn\00ED data, vyberte p\0159\00EDslu\0161n\00FD <strong>Typ podm\00EDnky</strong>:<br>'),
unistr('&nbsp;&nbsp;&nbsp;\0158\00E1dek - zv\00FDrazn\00ED v\00FDraz v libovoln\00E9m sloupci.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Sloupec - zv\00FDrazn\011Bn\00ED v konkr\00E9tn\00EDm sloupci na z\00E1klad\011B zadan\00E9ho oper\00E1toru a hodnoty.</p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245224198025936)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda ke Zv\00FDrazn\011Bn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243872921025935)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tento dialog pou\017Eijte k ulo\017Een\00ED zm\011Bn, kter\00E9 jste provedli v aktu\00E1ln\00EDm rozlo\017Een\00ED a konfiguraci m\0159\00ED\017Eky.<br>'),
unistr('V\00FDvoj\00E1\0159i aplikac\00ED mohou definovat v\00EDce alternativn\00EDch rozvr\017Een\00ED sestav. Je-li to mo\017En\00E9, m\016F\017Eete vy a dal\0161\00ED koncov\00ED u\017Eivatel\00E9 ulo\017Eit sestavu jako ve\0159ejnou, \010Dili p\0159\00EDstupnou v\0161em ostatn\00EDm u\017Eivatel\016Fm m\0159\00ED\017Eky. Sestavu m\016F\017Eete tak\00E9 ulo\017Eit jako soukromou, a pa')
||unistr('k ji m\016F\017Eete zobrazit pouze vy.</p>'),
unistr('<p>Vyberte si z dostupn\00FDch typ\016F a zadejte n\00E1zev ulo\017Een\00E9ho p\0159ehledu.</p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245028329025936)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('N\00E1pov\011Bda k\00A0Sestav\00E1m'),
''))
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124243203929025935)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>V tomto dialogu se nastavuje po\0159ad\00ED zobrazen\00ED.</p>'),
'',
unistr('<p><strong>Seznam \0159azen\00ED</strong><br>'),
unistr('Dialog Se\0159adit zobrazuje seznam konfigurovan\00FDch pravidel \0159azen\00ED.<br>'),
unistr('Kliknut\00EDm na tla\010D\00EDtko P\0159idat ( &plus; ) vytvo\0159\00EDte sloupec \0159azen\00ED, kliknut\00EDm na Odstranit ( &minus; ) ho odeberete.<br>'),
unistr('Kliknut\00EDm na volby P\0159esunout nahoru ( &uarr; ) nebo P\0159esunout dol\016F ( &darr; ) p\0159esunete vybran\00FD sloupec \0159azen\00ED nahoru \010Di dol\016F vzhledem k jin\00FDm sloupc\016Fm \0159azen\00ED.</p>'),
'',
unistr('<p><strong>Nastaven\00ED \0159azen\00ED</strong><br>'),
unistr('Vyberte sloupec \0159azen\00ED, sm\011Br \0159azen\00ED a zp\016Fsob \0159azen\00ED sloupc\016F obsahuj\00EDc\00EDch hodnoty null (sloupce bez hodnoty).</p>'),
'',
unistr('<p><em>Pozn\00E1mka: Data lze \0159adit podle sloupc\016F, kter\00E9 nejsou zobrazen\00E9; ne v\0161echny sloupce je v\0161ak mo\017En\00E9 se\0159adit.</em><br>'),
unistr('<em>Zobrazen\00E9 sloupce lze \0159adit stisknut\00EDm \0161ipek nahoru (vzestupn\011B) nebo dol\016F (sestupn\011B) na konci z\00E1hlav\00ED sloupc\016F. Chcete-li p\0159idat dal\0161\00ED sloupec do st\00E1vaj\00EDc\00EDho \0159azen\00ED, podr\017Ete kl\00E1vesu Shift a klikn\011Bte na \0161ipku nahoru nebo dol\016F.</em></p>')))
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124245657483025936)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0Se\0159azen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244869231025936)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0Subskripci')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198451835025922)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'cs'
,p_message_text=>unistr('Skr\00FDt')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162850845025911)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('Zv\00FDraznit')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232088900025932)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Vysok\00E1')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232804695025932)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Horizont\00E1ln\00ED')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191438906025920)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'cs'
,p_message_text=>'hodiny'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196454763025921)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'cs'
,p_message_text=>'Ikona'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161708847025911)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED ikon')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189603289025919)
,p_name=>'APEX.IG.IN'
,p_message_language=>'cs'
,p_message_text=>'v'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198084949025922)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'cs'
,p_message_text=>unistr('Neaktivn\00ED nastaven\00ED')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198140424025922)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>unistr('Neaktivn\00ED nastaven\00ED')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205737242025924)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i zpracov\00E1n\00ED po\017Eadavku interaktivn\00ED m\0159\00ED\017Eky do\0161lo k vnit\0159n\00ED chyb\011B.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093667325025891)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Typ filtru sloupce "%0" nen\00ED podporov\00E1n u sloupce "%1".')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244660617025936)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD form\00E1t data')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219437879025928)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Interaktivn\00ED m\0159\00ED\017Eka nepodporuje definov\00E1n\00ED filtru na sloupci %0.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219374508025928)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED platn\00FD typ filtru pro definov\00E1n\00ED filtru interaktivn\00ED m\0159\00ED\017Eky.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100298734025893)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD form\00E1t \010D\00EDsla')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247365375025936)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E9 nastaven\00ED')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247419067025936)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E1 nastaven\00ED')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238589603025934)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'cs'
,p_message_text=>unistr('operace Se\0159adit podle byla nastavena na %0, ale pro %0 nebyl vybr\00E1n \017E\00E1dn\00FD sloupec.')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235844780025933)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E1 hodnota')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230967520025931)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'cs'
,p_message_text=>'Nezobrazeno'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190440480025919)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('v\00A0posledn\00EDm')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190616836025920)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('v\00A0n\00E1sleduj\00EDc\00EDm')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189526952025919)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED pr\00E1zdn\00E9')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189490178025919)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('je pr\00E1zdn\00E9')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239311675025934)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('\0160t\00EDtek')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231363091025932)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('\0160t\00EDtek')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235244203025933)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179741972025916)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00ED den')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179904111025916)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00ED hodina')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180449911025916)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00ED minuta')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179453673025916)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('Minul\00FD m\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179546345025916)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('Minul\00FD t\00FDden')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179676577025916)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0dn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179884417025916)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0hodin')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180541697025916)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0minut')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180360744025916)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0m\011Bs\00EDc\016F')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180281185025916)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0t\00FDdn\016F')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179276746025916)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0let')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179380415025916)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Minul\00FD rok')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239559597025934)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'cs'
,p_message_text=>unistr('Zarovn\00E1n\00ED bu\0148ky')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239617898025934)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Pou\017E\00EDt skupinu pro')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190015541025919)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'cs'
,p_message_text=>unistr('men\0161\00ED ne\017E')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190135871025919)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'cs'
,p_message_text=>unistr('men\0161\00ED nebo rovno')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233459611025932)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'cs'
,p_message_text=>unistr('Liniov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233529969025932)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'cs'
,p_message_text=>unistr('Spojnicov\00FD s plo\0161n\00FDm')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239981248025934)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'cs'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232137994025932)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00EDzk\00E1')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242490038025935)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'cs'
,p_message_text=>unistr('Jednotliv\00E9 adresy odd\011Blte \010D\00E1rkou')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191230288025920)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('shoduje se s\00A0regul\00E1rn\00EDm v\00FDrazem')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215607650025927)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'cs'
,p_message_text=>unistr('Maxim\00E1ln\00ED')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249991764025937)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00E9 maximum')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215889534025927)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'cs'
,p_message_text=>unistr('Medi\00E1n')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250042510025937)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00FD medi\00E1n')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215588944025927)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'cs'
,p_message_text=>unistr('Minim\00E1ln\00ED')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191309689025920)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'cs'
,p_message_text=>'minuty'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216390215025927)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed n\011Bkolika minutami')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249883054025937)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00E9 minimum')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191798134025920)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('m\011Bs\00EDce')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198389829025922)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Data obsahuj\00ED v\00EDce ne\017E %0 \0159\00E1dek, co\017E p\0159esahuje maxim\00E1ln\00ED povolen\00FD po\010Det. Pokud chcete zobrazit v\00FDsledky, pou\017Eijte v\00EDce filtr\016F.')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224145727025929)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Mus\00ED b\00FDt zad\00E1no statick\00E9 ID oblasti, proto\017Ee str\00E1nka obsahuje v\00EDce interaktivn\00EDch m\0159\00ED\017Eek.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194411641025921)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194681489025921)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Pojmenovan\00E1 sestava')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178683719025916)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1sleduj\00EDc\00ED den')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178495491025916)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1sleduj\00EDc\00ED hodina')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180629897025916)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1sleduj\00EDc\00ED minuta')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178900018025916)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00ED m\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178839742025916)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00ED t\00FDden')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178767909025916)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0dn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124178538609025916)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0hodin')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180773021025916)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0minut')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180097349025916)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0m\011Bs\00EDc\016F')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180153645025916)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0t\00FDdn\016F')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179181350025916)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0let')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124179022061025916)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00ED rok')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190365214025919)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED mezi')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189312014025919)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED rovno')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254112690025938)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Oblast s ID %0 nen\00ED oblast\00ED interaktivn\00ED m\0159\00ED\017Eky nebo neexistuje v aplikaci %1.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189721579025919)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED v')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190588862025919)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED v\00A0posledn\00EDm')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124190711463025920)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED v\00A0n\00E1sleduj\00EDc\00EDm')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198239400025922)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyla nalezena \017E\00E1dn\00E1 data')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235050459025933)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'cs'
,p_message_text=>'Hodnoty Null'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240105164025934)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'cs'
,p_message_text=>unistr('\010C\00EDseln\00E9')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235399043025933)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'cs'
,p_message_text=>'Vypnuto'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235481020025933)
,p_name=>'APEX.IG.ON'
,p_message_language=>'cs'
,p_message_text=>'Zapnuto'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188561394025919)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed 1\00A0minutou')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242951072025935)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'cs'
,p_message_text=>unistr('Otev\0159\00EDt v\00FDb\011Br barev: %0')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231890597025932)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Otev\0159\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195598381025921)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Oper\00E1tor')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231275604025931)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'cs'
,p_message_text=>'Orientace'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233672875025932)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDse\010Dov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124196877011025921)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'cs'
,p_message_text=>'Operace pivot'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162043421025911)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED pivot')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242835291025935)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnoty odd\011Blte \201E%0\201C')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233785728025932)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Pol\00E1rn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239003132025934)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'cs'
,p_message_text=>unistr('St\0159ed')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124239121275025934)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'cs'
,p_message_text=>'Konec'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238986000025934)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'cs'
,p_message_text=>unistr('Za\010D\00E1tek')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194756704025921)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'cs'
,p_message_text=>unistr('Prim\00E1rn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195068834025921)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('Prim\00E1rn\00ED v\00FDchoz\00ED nastaven\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211579044025926)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Prim\00E1rn\00ED sestava')
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085157272025888)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'cs'
,p_message_text=>unistr('Zahrnout tagy p\0159\00EDstupnosti')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082567522025888)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'cs'
,p_message_text=>unistr('Na \0161\00ED\0159ku')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082677402025888)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'cs'
,p_message_text=>unistr('Na v\00FD\0161ku')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082451224025888)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'cs'
,p_message_text=>unistr('Orientace str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082370554025888)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'cs'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082263664025888)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'cs'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085344327025889)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'cs'
,p_message_text=>unistr('Vlastn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082004649025888)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'cs'
,p_message_text=>unistr('Pr\00E1vn\00ED informace')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081928086025888)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'cs'
,p_message_text=>'Dopis'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082145583025888)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'cs'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081810667025888)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'cs'
,p_message_text=>unistr('Velikost str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047433156025878)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'cs'
,p_message_text=>unistr('Odstranit form\00E1tovan\00FD text')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233870750025932)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Paprskov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124233965346025932)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Rozsahov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244130613025935)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'cs'
,p_message_text=>'Aktualizovat'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199011232025922)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizovat \0159\00E1dku')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197851642025922)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizovat \0159\00E1dky')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203054554025923)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Oblast interaktivn\00ED m\0159\00ED\017Eky neexistuje v\00A0aplikaci %0, na str\00E1nce\00A0%1 a\00A0v oblasti %2.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163596018025911)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'cs'
,p_message_text=>'Odebrat %0'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194195392025921)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'cs'
,p_message_text=>'Sestava'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253334511025938)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'cs'
,p_message_text=>unistr('Sestava odstran\011Bna')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253021502025938)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Alternativn\00ED sestava ulo\017Eena pro v\0161echny u\017Eivatele')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252950275025938)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED sestava ulo\017Eena pro v\0161echny u\017Eivatele')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253284540025938)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Soukrom\00E1 sestava ulo\017Eena')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253101373025938)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'cs'
,p_message_text=>unistr('Ve\0159ejn\00E1 sestava ulo\017Eena pro v\0161echny u\017Eivatele')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124203119442025923)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 interaktivn\00ED m\0159\00ED\017Eka s\00A0n\00E1zvem %0 neexistuje.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188421393025919)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('Data m\0159\00ED\017Eky jako p\0159ed %0\00A0minutami')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188396922025919)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('Data m\0159\00ED\017Eky jako p\0159ed 1\00A0minutou')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123854754025900)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Sestava interaktivn\00ED m\0159\00ED\017Eky neexistuje.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246300952025936)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'cs'
,p_message_text=>unistr('Sestava\00A0\2013 Upravit')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202923274025923)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 interaktivn\00ED m\0159\00ED\017Eka s\00A0ID %0 neexistuje.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124246271948025936)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'cs'
,p_message_text=>unistr('Sestava\00A0\2013 Ulo\017Eit jako')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163681009025911)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastaven\00ED m\0159\00ED\017Eky')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254292915025938)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 interaktivn\00ED m\0159\00ED\017Eka se\00A0statick\00FDm ID %0 neexistuje.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249262385025937)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED sestavy')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124162706117025911)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'cs'
,p_message_text=>'Obnovit'
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199158281025922)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'cs'
,p_message_text=>unistr('Vr\00E1tit zm\011Bny')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197998879025922)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('Vr\00E1tit \0159\00E1dky')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195194635025921)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dka')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194020846025921)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dk\016F na str\00E1nku')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253812791025938)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Akce \0159\00E1dk\016F')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255093948025939)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Akce pro \0159\00E1dku %0')
,p_is_js_message=>true
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163006374025911)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208188751025925)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'cs'
,p_message_text=>unistr('ulo\017Eeno')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112770117025897)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 sestava: %0')
,p_is_js_message=>true
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161242792025911)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 vy\00FA\010Dtov\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161365096025911)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134865293025903)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 sestava s n\00E1zvem %0 ji\017E existuje. Zadejte nov\00FD n\00E1zev.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161438646025911)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Soukrom\00E9')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161577087025911)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'cs'
,p_message_text=>unistr('Ve\0159ejn\00E9')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248921159025937)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit jako')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197213805025921)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit nastaven\00ED sestavy')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234000436025932)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Bodov\00FD')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161193070025911)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241214603025934)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED: V\0161echny textov\00E9 sloupce')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124161015625025911)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED: %0')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240555260025934)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1n\00ED: Full text')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188241503025919)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'cs'
,p_message_text=>'Vyhledat ''%0'''
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230619183025931)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'cs'
,p_message_text=>unistr('-\00A0Vybrat\00A0-')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170723361025913)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223872489025929)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte 1\00A0\0159\00E1dek v\00A0nad\0159\00EDzen\00E9 oblasti')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160980113025911)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte sloupce, kter\00E9 chcete vyhledat')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253562248025938)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Akce v\00FDb\011Bru')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170999796025914)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br bu\0148ky')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170829125025914)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br \0159\00E1dku')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241852485025935)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'cs'
,p_message_text=>'Odeslat jako e-mail'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234453379025932)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158ada')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158633632025910)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit'
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213844444025926)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit celkovou hodnotu'
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198707843025922)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Jedno\0159\00E1dkov\00E9 zobrazen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197098344025921)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159adit')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234531467025932)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158adit podle')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253919966025938)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Na jeden sloupec m\016F\017Eete definovat pouze jedno \0159azen\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253702903025938)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'cs'
,p_message_text=>unistr('Zm\011Bnit')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124235578736025933)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'cs'
,p_message_text=>unistr('Z\00E1sobn\00EDk')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191084464025920)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'cs'
,p_message_text=>unistr('za\010D\00EDn\00E1 na')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234147661025932)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'cs'
,p_message_text=>unistr('Burzovn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153492060025908)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Rozt\00E1hnout \0161\00ED\0159ky sloupc\016F')
,p_is_js_message=>true
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124197492749025922)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'cs'
,p_message_text=>'Subskripce'
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124215402167025927)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'cs'
,p_message_text=>unistr('Sou\010Det')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255211743025939)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'cs'
,p_message_text=>unistr('Interaktivn\00ED m\0159\00ED\017Eka. Sestava: %0, Zobrazen\00ED: %1.')
,p_is_js_message=>true
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124249349334025937)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00FD sou\010Det')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232362283025932)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('C\00EDl')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238723819025934)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'cs'
,p_message_text=>'Barva textu'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163798901025911)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159epnout')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045843775025877)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'cs'
,p_message_text=>unistr('M\0159\00ED\017Eka')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213789717025926)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'cs'
,p_message_text=>'Popisek'
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124194256500025921)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'cs'
,p_message_text=>'Typ'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124198654905025922)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161it zmrazen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195797996025921)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'cs'
,p_message_text=>'Jednotka'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241679171025935)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyly ulo\017Eeny zm\011Bny. Chcete pokra\010Dovat?')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124195688921025921)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'cs'
,p_message_text=>'Hodnota'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231438277025932)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Hodnota'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236379920025933)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Je nutn\00E9 zadat hodnotu.')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221525415025929)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota (\010Dasov\00E9 p\00E1smo nelze zm\011Bnit)')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240260973025934)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'cs'
,p_message_text=>'Text'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232764216025932)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vertik\00E1ln\00ED')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193721231025920)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128804291025901)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('M\0159\00ED\017Eka v re\017Eimu zobrazen\00ED, upravte stisknut\00EDm')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230791210025931)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'cs'
,p_message_text=>'Zobrazeno'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124232277292025932)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Objem'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191602409025920)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('t\00FDdny')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230807591025931)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'cs'
,p_message_text=>unistr('Minim\00E1ln\00ED \0161\00ED\0159ka sloupce (v\00A0pixelech)')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182819702025917)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 mezi %1 a\00A0%2')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182530801025917)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'cs'
,p_message_text=>'%0 obsahuje %1'
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182610026025917)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'cs'
,p_message_text=>'%0 neobsahuje %1'
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158041618025910)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%1 nen\00ED za\010D\00E1tek %0')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181398047025917)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'cs'
,p_message_text=>'%0 je rovno %1'
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181532096025917)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je v\011Bt\0161\00ED ne\017E %1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181643689025917)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je v\011Bt\0161\00ED nebo rovno %1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182392897025917)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0%1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183533493025917)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00EDch %1\00A0dn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183328946025917)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00EDch %1\00A0hodin')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183115780025917)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00EDch %1\00A0minut')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183935869025918)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00EDch %1\00A0m\011Bs\00EDc\016F')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183736752025917)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00EDch %1\00A0t\00FDdn\016F')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184182455025918)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00EDch %1\00A0let')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183478814025917)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00ED den')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183254322025917)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00ED hodinu')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183035876025917)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00ED m\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183826171025917)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00ED m\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124183682641025917)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00ED t\00FDden')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184024645025918)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za posledn\00ED rok')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185965633025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0p\0159\00ED\0161t\00EDch %1\00A0dnech')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185713690025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0p\0159\00ED\0161t\00EDch %1\00A0hodin\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185591008025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0p\0159\00ED\0161t\00EDch %1\00A0minut\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186308824025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0p\0159\00ED\0161t\00EDch %1\00A0m\011Bs\00EDc\00EDch')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186194700025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0p\0159\00ED\0161t\00EDch %1\00A0t\00FDdnech')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186535381025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0p\0159\00ED\0161t\00EDch %1\00A0letech')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185892929025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0n\00E1sleduj\00EDc\00EDm dni')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185620908025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0n\00E1sleduj\00EDc\00ED hodin\011B')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185445195025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0n\00E1sleduj\00EDc\00ED minut\011B')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186217261025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0n\00E1sleduj\00EDc\00EDm m\011Bs\00EDci')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186039064025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0n\00E1sleduj\00EDc\00EDm t\00FDdnu')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186435244025918)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00A0n\00E1sleduj\00EDc\00EDm roce')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182080783025917)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED pr\00E1zdn\00FD')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181979769025917)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je pr\00E1zdn\00FD')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181789979025917)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je men\0161\00ED ne\017E %1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181825408025917)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je men\0161\00ED nebo rovno %1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182179819025917)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'cs'
,p_message_text=>'%0 jako %1'
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182730092025917)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 se shoduje s\00A0regul\00E1rn\00EDm v\00FDrazem %1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188638591025919)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed %0\00A0minutami')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182944416025917)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED mezi %1 a\00A0%2')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181402890025917)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED rovno %1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182491508025917)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0%1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184729359025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00EDch %1\00A0dn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184541713025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00EDch %1\00A0hodin')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184374239025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00EDch %1\00A0minut')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185119842025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00EDch %1\00A0m\011Bs\00EDc\016F')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184967879025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00EDch %1\00A0t\00FDdn\016F')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185300778025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00EDch %1\00A0let')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184647814025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00ED den')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184406803025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00ED hodinu')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184290201025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00ED minutu')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185063321025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00ED m\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124184892236025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00ED t\00FDden')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124185271553025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED za posledn\00ED rok')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187199004025919)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0p\0159\00ED\0161t\00EDch %1\00A0dnech')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186964474025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0p\0159\00ED\0161t\00EDch %1\00A0hodin\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186701909025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0p\0159\00ED\0161t\00EDch %1\00A0minut\00E1ch')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187500370025919)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0p\0159\00ED\0161t\00EDch %1\00A0m\011Bs\00EDc\00EDch')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187311058025919)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0p\0159\00ED\0161t\00EDch %1\00A0t\00FDdnech')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187722519025919)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0p\0159\00ED\0161t\00EDch %1\00A0letech')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187036975025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0n\00E1sleduj\00EDc\00EDm dni')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186855269025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0n\00E1sleduj\00EDc\00ED hodin\011B')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124186684205025918)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0n\00E1sleduj\00EDc\00ED minut\011B')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187453181025919)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0n\00E1sleduj\00EDc\00EDm m\011Bs\00EDci')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187262651025919)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0n\00E1sleduj\00EDc\00EDm t\00FDdnu')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187641186025919)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0n\00E1sleduj\00EDc\00EDm roce')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124182257193025917)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED jako %1')
,p_is_js_message=>true
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189121951025919)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 za\010D\00EDn\00E1 na %1')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231505047025932)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'cs'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191851311025920)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'cs'
,p_message_text=>'roky'
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231608877025932)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231747173025932)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240778801025934)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'cs'
,p_message_text=>unistr('Pond\011Bl\00ED, 12.\00A0ledna 2016')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240856802025934)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'cs'
,p_message_text=>'Leden'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124240927916025934)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'cs'
,p_message_text=>unistr('p\0159ed 16\00A0hodinami')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124241003030025934)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'cs'
,p_message_text=>'za 16 hodin'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059047293025881)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'cs'
,p_message_text=>unistr('Pou\017E\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051003911025879)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>P\0159et\00E1hn\011Bte obr\00E1zek a\00A0pou\017Eijte posuvn\00EDk lupy ke zm\011Bn\011B jeho um\00EDst\011Bn\00ED v\00A0r\00E1mci.</p>'),
'',
unistr('<p>P\0159i zam\011B\0159en\00ED na o\0159ez\00E1va\010D obr\00E1zku jsou k\00A0dispozici n\00E1sleduj\00EDc\00ED kl\00E1vesov\00E9 zkratky:</p>'),
'<ul>',
unistr('    <li>\0160ipka vlevo: P\0159em\00EDstit obr\00E1zek doleva*</li>'),
unistr('    <li>\0160ipka nahoru: P\0159em\00EDstit obr\00E1zek nahoru*</li>'),
unistr('    <li>\0160ipka vpravo: P\0159em\00EDstit obr\00E1zek doprava*</li>'),
unistr('    <li>\0160ipka dol\016F: P\0159em\00EDstit obr\00E1zek dol\016F*</li>'),
unistr('    <li>I: P\0159ibl\00ED\017Eit</li>'),
unistr('    <li>O: Odd\00E1lit</li>'),
unistr('    <li>L: Oto\010Dit doleva</li>'),
unistr('    <li>R: Oto\010Dit doprava</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*P\0159idr\017Een\00EDm kl\00E1vesy Shift p\0159esun zrychl\00EDte</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051295883025879)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k\00A0o\0159\00EDznut\00ED obr\00E1zku')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059129205025881)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'cs'
,p_message_text=>'Obnovit'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051524082025879)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('O\0159ez obr\00E1zku')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059299704025881)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159em\00EDst\011Bn\00EDm posuvn\00EDku upravte \00FArove\0148 lupy')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088867815025890)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD typ souboru. Podporovan\00E9 typy soubor\016F jsou %0.')
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223228223025929)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'cs'
,p_message_text=>unistr('Proch\00E1zet')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222911931025929)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'cs'
,p_message_text=>'Vybrat soubor'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223031430025929)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'cs'
,p_message_text=>'Vybrat soubory'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088602157025890)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159et\00E1hnout')
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089037025025890)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159et\00E1hnout soubory')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090487660025890)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte soubor, nebo jej p\0159et\00E1hn\011Bte sem.')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090511209025890)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte, nebo p\0159et\00E1hn\011Bte soubor sem.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090688797025890)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte soubor, nebo jej p\0159et\00E1hn\011Bte sem.')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090706977025890)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte, nebo p\0159et\00E1hn\011Bte soubor sem.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088961129025890)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('%0\00A0soubor\016F')
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088723572025890)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'cs'
,p_message_text=>unistr('Soubor je p\0159\00EDli\0161 velk\00FD. Maxim\00E1ln\00ED velikost souboru je %0.')
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069291799025884)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nahr\00E1v\00E1n\00ED v\00EDce soubor\016F nen\00ED podporov\00E1no.')
,p_is_js_message=>true
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052113070025879)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'cs'
,p_message_text=>'Odebrat'
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057649639025880)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Vy\017Eadov\00E1na adresa.')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056508034025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'cs'
,p_message_text=>unistr('M\011Bsto')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056958991025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'cs'
,p_message_text=>unistr('K\00F3d zem\011B')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056633807025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'cs'
,p_message_text=>unistr('\010C\00EDslo domu')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057523409025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zem\011Bpisn\00E1 \0161\00ED\0159ka')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057484107025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zem\011Bpisn\00E1 d\00E9lka')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057395435025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit na map\011B')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057026664025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'cs'
,p_message_text=>unistr('Sk\00F3re')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056734618025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'cs'
,p_message_text=>unistr('PS\010C')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056834048025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'cs'
,p_message_text=>'Stav'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056494584025880)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'cs'
,p_message_text=>'Ulice'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056305906025880)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDsledky geografick\00E9ho k\00F3dov\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087821914025889)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'cs'
,p_message_text=>unistr('S geografick\00FDmi \00FAdaji')
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087966914025889)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'cs'
,p_message_text=>unistr('Bez geografick\00FDch \00FAdaj\016F')
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057248092025880)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'cs'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057104860025880)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyly nalezeny \017E\00E1dn\00E9 adresy.')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057765073025880)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je povinn\00E9.')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124163976336025911)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nebo %1 je povinn\00E9.')
,p_is_js_message=>true
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253412353025938)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit text n\00E1pov\011Bdy pro %0.')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059410170025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zvolit obr\00E1zek')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059533268025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'cs'
,p_message_text=>unistr('Zvolit obr\00E1zky')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059365955025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('St\00E1hnout')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059697400025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159et\00E1hnout')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059700288025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'cs'
,p_message_text=>unistr('Obr\00E1zky p\0159et\00E1hn\011Bte kurzorem')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059813282025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte obr\00E1zek nebo ho sem p\0159et\00E1hn\011Bte kurzorem.')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124059913913025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte obr\00E1zky nebo je sem p\0159et\00E1hn\011Bte kurzorem.')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060024144025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte obr\00E1zek nebo ho sem p\0159et\00E1hn\011Bte kurzorem.')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060187788025881)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte obr\00E1zky nebo je sem p\0159et\00E1hn\011Bte kurzorem.')
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144807483025906)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'cs'
,p_message_text=>unistr('Za\0161krtnuto')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144969851025906)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'cs'
,p_message_text=>unistr('Neza\0161krtnuto')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172403141025914)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'cs'
,p_message_text=>unistr('Pr\00E1zdn\00E9 pole se seznamem jen pro \010Dten\00ED')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170222809025913)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'cs'
,p_message_text=>unistr('Pr\00E1zdn\00FD seznam jen pro \010Dten\00ED')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170099701025913)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'cs'
,p_message_text=>unistr('Pole se seznamem jen pro \010Dten\00ED')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124170121515025913)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'cs'
,p_message_text=>unistr('Seznam jen pro \010Dten\00ED')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085851404025889)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# nen\00ED v platn\00E9m rozsahu %0 a\017E %1.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085959563025889)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# nen\00ED n\00E1sobkem %0.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173264828025914)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ep\00EDna\010D Pouze pro \010Dten\00ED')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113866509025897)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'cs'
,p_message_text=>unistr('Jen pro \010Dten\00ED/\00FApravy s odkazem')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085496892025889)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# se mus\00ED shodovat s hodnotami %0 a %1.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085650479025889)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'cs'
,p_message_text=>'Ne'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171928922025914)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'cs'
,p_message_text=>'Vypnuto'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172061014025914)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'cs'
,p_message_text=>'Zapnuto'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085504085025889)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'cs'
,p_message_text=>'Ano'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093436827025891)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDb\011Br jazyka')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029816830025872)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat polo\017Eku')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206651956025924)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206769652025924)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'cs'
,p_message_text=>'Odebrat'
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029944036025872)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybran\00E9 polo\017Eky')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210483976025925)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'cs'
,p_message_text=>unistr('Roz\0161\00ED\0159en\00E9')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210739020025925)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161it')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210540652025925)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'cs'
,p_message_text=>unistr('Spole\010Dn\00E9')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210845429025925)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Volby \017Eiv\00E9 \0161ablony')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211473077025926)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Volby \0161ablony nejsou k\00A0dispozici, proto\017Ee tato komponenta nen\00ED na str\00E1nce vykreslena.')
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210300874025925)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyly nalezeny \017E\00E1dn\00E9 mo\017Enosti \0161ablony.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210675656025925)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064448120025883)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'cs'
,p_message_text=>'Vymazat kruh'
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066855943025883)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'cs'
,p_message_text=>unistr('Vlastn\00ED styly nejsou platn\00FDm JSON.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064757278025883)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1stroj vzd\00E1lenost')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064550771025883)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'cs'
,p_message_text=>'Nakreslit kruh'
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044348191025877)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktu\00E1ln\00ED m\00EDsto')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050736212025878)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Sou\0159adnice v\00FDchoz\00ED pozice jsou neplatn\00E9.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039743464025875)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED pozice mus\00ED b\00FDt bod geometrie.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048359952025878)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'cs'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043561726025876)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'cs'
,p_message_text=>'Vrstva'
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213919490025926)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'cs'
,p_message_text=>'Vrstva: %0'
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062718920025882)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'cs'
,p_message_text=>'Mapovat'
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032441024025873)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'cs'
,p_message_text=>unistr('Zpr\00E1vy')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048595242025878)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'cs'
,p_message_text=>unistr('m\00EDle')
,p_is_js_message=>true
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212983441025926)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Data obsahuj\00ED v\00EDce ne\017E %0 \0159\00E1dek, co\017E p\0159esahuje maxim\00E1ln\00ED povolen\00FD po\010Det.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042825580025876)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Podm\00EDnky</a> &nbsp;&nbsp; Data mapy &copy; 2021 ZDE')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039475298025875)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Datov\00FD typ SDO_GEOMETRY nen\00ED v t\00E9to datab\00E1zi dostupn\00FD.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042979395025876)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; p\0159isp\011Bvatel\00E9 OpenStreetMap </a>')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067572092025883)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; p\0159isp\011Bvatel\00E9 OpenStreetMap </a>')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043716895025876)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'cs'
,p_message_text=>'Body'
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214072891025926)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 bod\016F')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064622138025883)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'cs'
,p_message_text=>unistr('Obd\00E9ln\00EDkov\00E1 lupa')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064321847025882)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>'Odebrat'
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044136233025877)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'cs'
,p_message_text=>'Resetovat orientaci na sever'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158957034025910)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159epnout do re\017Eimu 2D')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159094219025910)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159epnout do re\017Eimu 3D')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064280805025882)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159epnout upozorn\011Bn\00ED na autorsk\00E1 pr\00E1va')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064821063025883)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Celkov\00E1 vzd\00E1lenost')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043882339025876)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ibl\00ED\017Eit')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044010665025877)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'cs'
,p_message_text=>unistr('Odd\00E1lit')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208528599025925)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'cs'
,p_message_text=>unistr('Tu\010Dn\00E9')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209471959025925)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Obr\00E1zek')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209064046025925)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'cs'
,p_message_text=>unistr('Inline k\00F3d')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221705255025929)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vlo\017Eit obr\00E1zek')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221893070025929)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'cs'
,p_message_text=>unistr('Vlo\017Eit odkaz')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208617095025925)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'cs'
,p_message_text=>unistr('Kurz\00EDva')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222467665025929)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'cs'
,p_message_text=>'Odkaz'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209395661025925)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'cs'
,p_message_text=>'Seznam'
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209201982025925)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159azen\00FD seznam')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208773777025925)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1hled')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208868108025925)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'cs'
,p_message_text=>unistr('Nic k n\00E1hledu')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208965401025925)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159e\0161krtnut\00E9')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209195319025925)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Nese\0159azen\00FD seznam')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188018708025919)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'cs'
,p_message_text=>unistr('aktu\00E1ln\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124244204689025935)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00EDce...')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124187972427025919)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDt\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102100979025893)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'cs'
,p_message_text=>unistr('Tla\010D\00EDtko Rozd\011Blit')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102035467025893)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'cs'
,p_message_text=>unistr('D\011Blen\00E1 nab\00EDdka')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219084835025928)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('Zpr\00E1va s upozorn\011Bn\00EDm')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043190185025876)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'cs'
,p_message_text=>unistr('\017D\00E1dn\00E1 %0 nebyla nalezena')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193025404025920)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# mus\00ED b\00FDt \010D\00EDslo men\0161\00ED nebo rovno %0.')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193116610025920)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# mus\00ED b\00FDt platn\00E9 \010D\00EDslo.')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193280054025920)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# neodpov\00EDd\00E1 form\00E1tu \010D\00EDsla %0 (P\0159\00EDklad: %1).')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192923458025920)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# mus\00ED b\00FDt \010D\00EDslo v\011Bt\0161\00ED nebo rovno %0.')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192877267025920)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# mus\00ED b\00FDt \010D\00EDslo od %0 do %1.')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188189433025919)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'cs'
,p_message_text=>unistr('otev\0159e se v nov\00E9m okn\011B')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137935096025904)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'cs'
,p_message_text=>unistr('Tato str\00E1nka ji\017E byla odesl\00E1na a nelze ji odeslat znovu.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119330312025898)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Aplikace "%0" Str\00E1nka "%1" nenalezena.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154817917025909)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('#LABEL# mus\00ED m\00EDt n\011Bjakou hodnotu.')
,p_is_js_message=>true
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045502777025877)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'cs'
,p_message_text=>unistr('Skr\00FDt heslo')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045499398025877)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit heslo'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093030534025891)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207015649025924)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zav\0159\00EDt')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206976583025924)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'cs'
,p_message_text=>unistr('Naj\00EDt %0')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207298484025924)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207152907025924)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083831382025888)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadejte hledan\00FD v\00FDraz o\00A0d\00E9lce alespo\0148 %0\00A0znak\016F.')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160199394025910)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Rozev\00EDrac\00ED seznam hodnot: %0')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083950576025888)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadejte hledan\00FD pojem.')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030904755025873)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'cs'
,p_message_text=>'Seznam hodnot'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083740114025888)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyly nalezeny \017E\00E1dn\00E9 v\00FDsledky.')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083621967025888)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'cs'
,p_message_text=>'Odebrat %0'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180805037025917)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'cs'
,p_message_text=>unistr('Hledat term\00EDn')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206810176025924)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033000058025873)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Vy\017Eaduje %0.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045369098025877)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('B\011Bhem tisku sestavy do\0161lo k\00A0chyb\011B.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124056181464025880)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'cs'
,p_message_text=>unistr('Pomoc\00ED nakonfigurovan\00E9ho tiskov\00E9ho serveru dokument nelze vytisknout.')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078846683025887)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Do\0161lo k chyb\011B b\011Bhem hodnocen\00ED parametru %0 p\0159i vol\00E1n\00ED %1. Detaily naleznete v\00A0protokolech chyb.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217589313025927)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'cs'
,p_message_text=>unistr('Prob\00EDh\00E1 zpracov\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076601825025886)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Zp\011Bt')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077795822025886)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'cs'
,p_message_text=>unistr('Tento web m\00E1 funkci aplikace. Instalujte jej na sv\00E9 za\0159\00EDzen\00ED, abyste dos\00E1hli nejlep\0161\00EDho z\00E1\017Eitku.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079039100025887)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080618387025887)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'cs'
,p_message_text=>'Instalovat tuto aplikaci'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065415730025883)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Zd\00E1 se, \017Ee va\0161e za\0159\00EDzen\00ED nebo prohl\00ED\017Ee\010D moment\00E1ln\011B nepodporuje instalaci progresivn\00EDch webov\00FDch aplikac\00ED.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060556551025881)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'cs'
,p_message_text=>unistr('1.\00A0Klepn\011Bte na ikonu <strong>Sd\00EDlet</strong>')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060613569025881)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'cs'
,p_message_text=>unistr('2. Posu\0148te dol\016F a klepn\011Bte na volbu <strong>P\0159idat na domovskou obrazovku</strong>')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077030155025886)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'cs'
,p_message_text=>unistr('3. Potvr\010Fte klepnut\00EDm na <strong style="color:#007AE1;">P\0159idat</strong>')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076132686025886)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'cs'
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
unistr('    <h1>Nelze se p\0159ipojit</h1>'),
unistr('    <p>Zd\00E1 se, \017Ee do\0161lo k\00A0probl\00E9mu se s\00EDt\00ED. Zkontrolujte p\0159ipojen\00ED a\00A0opakujte pokus.</p>'),
'    <button type="button">Opakovat pokus</button>',
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076073468025886)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze se p\0159ipojit')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122667147025899)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('Povolov\00E1n\00ED nab\00EDzen\00FDch upozorn\011Bn\00ED na tomto za\0159\00EDzen\00ED selhalo.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128197856025901)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Rychl\00E9 v\00FDb\011Bry pro %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128038271025901)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Odkaz rychl\00E9ho v\00FDb\011Bru')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124101885481025893)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'cs'
,p_message_text=>unistr('Vizu\00E1ln\011B skryt\00FD p\0159ep\00EDna\010D')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045937188025877)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Jedno\0159\00E1dkov\00E9 zobrazen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228670437025931)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173928696025914)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('Celodenn\00ED')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251546529025938)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'cs'
,p_message_text=>unistr('Odeslat pozv\00E1nku')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251320468025938)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'cs'
,p_message_text=>'Volby'
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175790363025915)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED dn\016F pro cel\00FD den')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175545679025915)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED dn\016F pro data s \010Dasem')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219710409025928)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'cs'
,p_message_text=>'Den'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214784715025927)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>'Popis'
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098276598025892)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'cs'
,p_message_text=>'CSV'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098088579025892)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'cs'
,p_message_text=>'iCal'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097906242025892)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'cs'
,p_message_text=>'PDF'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124098144348025892)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'cs'
,p_message_text=>'XML'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097697298025892)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Datum ukon\010Den\00ED')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097881312025892)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev ud\00E1losti')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251461903025938)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Pozv\00E1nka')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219899806025928)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'cs'
,p_message_text=>'Seznam'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219501183025928)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('M\011Bs\00EDc')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222132784025929)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236163000025933)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'cs'
,p_message_text=>unistr('\017D\00E1dn\00E9 ud\00E1losti')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251775325025938)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'cs'
,p_message_text=>unistr('Upravte st\00E1vaj\00EDc\00ED ud\00E1lost.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251623489025938)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'cs'
,p_message_text=>unistr('Odeslat pozv\00E1nku prost\0159ednictv\00EDm e-mailu.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222278788025929)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229949520025931)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'cs'
,p_message_text=>'Odeslat e-mail'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229741803025931)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'cs'
,p_message_text=>'Odeslat e-mail'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252310444025938)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Je t\0159eba vyplnit v\0161echna pole.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252262807025938)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Odeslat pozv\00E1nku')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251203712025938)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edm\011Bt')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229841555025931)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDjemce')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097783111025892)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Datum zah\00E1jen\00ED')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227944595025931)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'cs'
,p_message_text=>unistr('Formul\00E1\0159 na %0')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175373961025915)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'cs'
,p_message_text=>unistr('\010Cas')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222381294025929)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'cs'
,p_message_text=>'Dnes'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220307734025928)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219672780025928)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('T\00FDden')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175652368025915)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED t\00FDdn\016F pro cel\00FD den')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175436899025915)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED t\00FDdn\016F pro data s \010Dasem')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220285102025928)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'cs'
,p_message_text=>'Rok'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219957650025928)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'cs'
,p_message_text=>'Sloupce...'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220012605025928)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDst dal\0161\00ED...')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149478258025907)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'cs'
,p_message_text=>unistr('Zp\011Bt')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090940544025890)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDst dal\0161\00ED...')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093283838025891)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'cs'
,p_message_text=>'Vyhledat...'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220162899025928)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDst dal\0161\00ED...')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222088779025929)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>'ID oblasti %0 nebylo nalezeno.'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093141678025891)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nenalezena \017E\00E1dn\00E1 data')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120661254025899)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze vynulovat str\00E1nkov\00E1n\00ED oblasti.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084399203025888)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i nastaven\00ED str\00E1nkov\00E1n\00ED oblasti.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214130669025926)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'cs'
,p_message_text=>'Sloupce...'
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068641695025884)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Opo\017Ed\011Bn\00E9 na\010D\00EDt\00E1n\00ED nen\00ED kompatibiln\00ED se sloty v\00A0%0, co\017E je jedna (\010D\00E1ste\010Dn\00E1) oblast. Pro tuto oblast byste m\011Bli bu\010F zak\00E1zat opo\017Ed\011Bn\00E9 na\010D\00EDt\00E1n\00ED, nebo p\0159esunout komponenty slot\016F do jin\00E9 oblasti.')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063917969025882)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0komponent\011B \0161ablony chyb\00ED \0161ablona skupiny pro %0.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058937598025881)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je jedna (\010D\00E1ste\010Dn\00E1) oblast a vr\00E1tila v\00EDce \0159\00E1dek.')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221914721025929)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Typ oblasti %0 nen\00ED podporov\00E1n.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084273271025888)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i vykreslov\00E1n\00ED oblasti #COMPONENT_NAME#.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154904193025909)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('#COLUMN_HEADER# mus\00ED m\00EDt n\011Bjakou hodnotu.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036523662025874)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadejte rozvr\017Een\00ED sestavy.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250830740025937)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('%0, editor form\00E1tovan\00E9ho textu')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157052961025909)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00E9 zna\010Dky form\00E1tovan\00E9ho textu / HTML p\0159esahuje maxim\00E1ln\00ED d\00E9lku polo\017Eky (skute\010Dn\00E1 %0, povoleno %1 znak\016F)')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066484908025883)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Editor RTF - jen pro \010Dten\00ED')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066392805025883)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Editor form\00E1tu RTF')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066175254025883)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159izp\016Fsoben\00ED')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066245036025883)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'cs'
,p_message_text=>unistr('Mimo\0159\00E1dn\00E9 v\00FDdaje')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065995683025883)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\00EDsmo')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065827709025883)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'cs'
,p_message_text=>unistr('Form\00E1tov\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066016645025883)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'cs'
,p_message_text=>'Seznamy'
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219174488025928)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'cs'
,p_message_text=>'Odstranit'
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211686199025926)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'cs'
,p_message_text=>'Duplikovat'
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209981605025925)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00E9 sloupce')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209806999025925)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vylou\010Dit hodnoty null')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124219295671025928)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat')
,p_is_js_message=>true
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173582878025914)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout dol\016F')
,p_is_js_message=>true
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173644975025914)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout nahoru')
,p_is_js_message=>true
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209694674025925)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210202601025925)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED sloupce')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209794730025925)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210099644025925)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dka %0')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210129106025925)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dek %0 z %1')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211747763025926)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'cs'
,p_message_text=>'Aktualizovat'
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211824094025926)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vr\00E1tit zm\011Bny')
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124209566565025925)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastaven\00ED')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168777564025913)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Nap\0159\00EDklad %0')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173068817025914)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDklad: %0')
,p_is_js_message=>true
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085710096025889)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('1 v\00FDsledek')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082813918025888)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 v\00FDsledk\016F')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134611256025903)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Str\00E1nkov\00E1n\00ED')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134715594025903)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDsledky, %0 a\017E %1')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030456717025873)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Znovu p\0159ihl\00E1sit')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030350490025873)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Va\0161e relace skon\010Dila')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030519941025873)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'cs'
,p_message_text=>unistr('Prodlou\017Eit')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030119658025872)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'cs'
,p_message_text=>unistr('Va\0161e relace skon\010D\00ED v %0. Chcete ji prodlou\017Eit?')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030265823025873)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'cs'
,p_message_text=>unistr('Va\0161e relace skon\010D\00ED v %0 a\00A0nelze ji prodlou\017Eit. Ihned ulo\017Ete ve\0161kerou pr\00E1ci, aby nedo\0161lo ke ztr\00E1t\011B dat')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229564214025931)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED k\00F3du nastaven\00ED \00FAklidu relace datab\00E1ze.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119219574025898)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED k\00F3du nastaven\00ED relace datab\00E1ze.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089698077025890)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Va\0161e relace skon\010Dila.')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228705688025931)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'cs'
,p_message_text=>unistr('Zav\0159ete tento dialog a stiskem tla\010D\00EDtka op\011Btovn\00E9ho na\010Dten\00ED prohl\00ED\017Ee\010De z\00EDskejte novou relaci.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247604812025936)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('Chcete-li vytvo\0159it novou relaci, znovu se <a href="%0">p\0159ihlaste</a>.')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131904379025902)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Relace nen\00ED platn\00E1')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175037523025915)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'cs'
,p_message_text=>unistr('V relaci Real Application Security nelze aktivovat \017E\00E1dn\00E9 dynamick\00E9 role pro u\017Eivatele "%0".')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117100355025898)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('ERR-99900 Nelze vytvo\0159it jedine\010Dn\00E9 ID relace: %0')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046253970025877)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('Typ dat stavu relace CLOB nen\00ED povolen\00FD pro polo\017Eku %0.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065687199025883)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nahrazovac\00ED polo\017Eky typu dat stavu relace CLOB nejsou podporov\00E1ny.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134448965025903)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Poru\0161en\00ED ochrany stavu relace: m\016F\017Ee b\00FDt zp\016Fsobeno ru\010Dn\00ED zm\011Bnou chr\00E1n\011Bn\00E9 polo\017Eky str\00E1nky %0. Pokud si nejste jisti t\00EDm, co chybu zp\016Fsobilo, obra\0165te se na spr\00E1vce aplikace, kter\00FD v\00E1m poskytne pomoc.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255695880025939)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Poru\0161en\00ED ochrany str\00E1nky: m\016F\017Ee b\00FDt zp\016Fsobeno odesl\00E1n\00EDm str\00E1nky, jej\00ED\017E na\010D\00EDt\00E1n\00ED je\0161t\011B nebylo dokon\010Deno nebo ru\010Dn\00ED zm\011Bnou chr\00E1n\011Bn\00FDch polo\017Eek str\00E1nky. O dal\0161\00ED pomoc po\017E\00E1dejte spr\00E1vce aplikace.')
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254797830025939)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 obsahuje nejm\00E9n\011B jeden z n\00E1sleduj\00EDc\00EDch neplatn\00FDch znak\016F &<>"/;,*|=% nebo --')
,p_version_scn=>2692452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254823239025939)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 obsahuje nejm\00E9n\011B jeden z n\00E1sleduj\00EDc\00EDch neplatn\00FDch znak\016F &<>"/;,*|=% nebo -- nebo znak nov\00E9ho \0159\00E1dku.')
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254591007025939)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 obsahuje speci\00E1ln\00ED znaky. Povoleny jsou pouze znaky a-Z, 0-9 a mezery.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254686171025939)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 obsahuje <, > nebo ", co\017E jsou neplatn\00E9 znaky.')
,p_version_scn=>2692452
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092071477025890)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyl zad\00E1n \017E\00E1dn\00FD kontroln\00ED sou\010Det k zobrazen\00ED zpracov\00E1n\00ED pro str\00E1nku, kter\00E1 vy\017Eaduje kontroln\00ED sou\010Det, je-li p\0159id\00E1n nejm\00E9n\011B jeden po\017Eadavek, vymaz\00E1n\00ED pam\011Bti cache nebo hodnoty argument\016F jako parametry.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129383187025901)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Poru\0161en\00ED ochrany stavu relace: m\016F\017Ee b\00FDt zp\016Fsobeno ru\010Dn\00ED zm\011Bnou adresy URL obsahuj\00EDc\00ED kontroln\00ED sou\010Det, nebo pou\017Eit\00EDm odkazu s nespr\00E1vn\00FDm \010Di chyb\011Bj\00EDc\00EDm kontroln\00EDm sou\010Dtem. Pokud si nejste jisti t\00EDm, co chybu zp\016Fsobilo, obra\0165te se na spr\00E1vce aplikace, ')
||unistr('kter\00FD v\00E1m poskytne pomoc.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124210977374025925)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'cs'
,p_message_text=>unistr('Vypnout re\017Eim vysok\00E9ho kontrastu')
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211034277025926)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'cs'
,p_message_text=>unistr('Zapnout re\017Eim vysok\00E9ho kontrastu')
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075498272025886)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastaven\00ED aplikace %0 nelze aktualizovat, proto\017Ee je subskribov\00E1no z\00A0jin\00E9 aplikace.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125742779025900)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'cs'
,p_message_text=>'Na konec'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125935494025900)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'cs'
,p_message_text=>unistr('Dol\016F')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126080215025900)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126114620025900)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout v\0161e')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126233290025900)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'cs'
,p_message_text=>'Odebrat'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126325914025900)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Odebrat v\0161e')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126428243025900)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'cs'
,p_message_text=>'Obnovit'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125658891025900)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'cs'
,p_message_text=>unistr('Na za\010D\00E1tek')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125878820025900)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'cs'
,p_message_text=>'Nahoru'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237485363025933)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'cs'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238135089025934)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('za %0dn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237364611025933)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'cs'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238241777025934)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>'za %0hodin'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237165491025933)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'cs'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238369765025934)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>'za %0minut'
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237724972025933)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('%0m\011Bs\00EDc')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237936189025933)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('za %0m\011Bs\00EDc\016F')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237283612025933)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'cs'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238094551025934)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>'za %0sekund'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237565709025933)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'cs'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124238457356025934)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('za %0t\00FDdn\016F')
,p_is_js_message=>true
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237622690025933)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'cs'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237819473025933)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>'za %0let'
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038700175025875)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'cs'
,p_message_text=>unistr('[\010C\00E1ra]')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039305752025875)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'cs'
,p_message_text=>unistr('[V\00EDce \010Dar]')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039041993025875)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'cs'
,p_message_text=>unistr('[V\00EDce bod\016F]')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039510518025875)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'cs'
,p_message_text=>unistr('[V\00EDce mnoho\00FAheln\00EDk\016F]')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039672845025875)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'cs'
,p_message_text=>'[Objekt geometrie]'
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038630259025875)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'cs'
,p_message_text=>'[Bod (%0,%1)]'
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038943437025875)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'cs'
,p_message_text=>unistr('[Mnoho\00FAheln\00EDk]')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038121743025875)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'cs'
,p_message_text=>unistr('Sbalen\00E1 oblast: %0')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153204251025908)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'cs'
,p_message_text=>'Sbalit'
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037106146025875)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vodorovn\011B orientovan\00FD rozd\011Blovn\00EDk nelze posunout doleva ani doprava.')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037390621025875)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'cs'
,p_message_text=>unistr('Bylo dosa\017Eeno maxim\00E1ln\00ED velikosti %0\00A0px')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038338483025875)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'cs'
,p_message_text=>unistr('Bylo dosa\017Eeno minim\00E1ln\00ED velikosti %0\00A0px')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038234730025875)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'cs'
,p_message_text=>'Oblast je sbalena'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038077057025875)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'cs'
,p_message_text=>'Oblast je obnovena'
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037791453025875)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'cs'
,p_message_text=>unistr('Zm\011Bna velikosti na %0\00A0px')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037921260025875)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'cs'
,p_message_text=>unistr('Obnoven\00E1 oblast: %0')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153191958025908)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'cs'
,p_message_text=>'Obnovit'
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037299293025875)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'cs'
,p_message_text=>unistr('Svisle orientovan\00FD rozd\011Blovn\00EDk nelze posunout doleva ani doprava.')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202603536025923)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'cs'
,p_message_text=>unistr('Vymazat hodnocen\00ED')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192569686025920)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v platn\00E9m rozsahu hodnocen\00ED 1 - %1')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192635373025920)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED \010D\00EDslo')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188740655025919)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('Hl\00E1\0161en\00ED o\00A0\00FAsp\011Bchu')
,p_is_js_message=>true
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250588694025937)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250442582025937)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160623547025911)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Syst\00E9m spr\00E1vy z\00E1znam\016F p\0159i\0159azen\00FD k t\00E9to instanci \00FAlohy nebyl nalezen')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168934754025913)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Zpracov\00E1n\00ED akce \00FAlohy %0 selhalo - stav \00FAlohy je nastaven do chybov\00E9ho stavu. Zkontrolujte k\00F3d akce \00FAlohy')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049130989025878)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat koment\00E1\0159: Nem\00E1te opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048495123025878)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha je ji\017E p\0159i\0159azena')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041854757025876)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i\0159azeno u\017Eivateli %0')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048156583025878)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161it \00FAlohu: Nem\00E1te opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063757690025882)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze odebrat aktu\00E1ln\00EDho vlastn\00EDka t\00E9to \00FAlohy. P\0159ed opakov\00E1n\00EDm t\00E9to operace delegujte \00FAlohu jin\00E9mu \00FA\010Dastn\00EDkovi.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047775040025878)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadovat \00FAlohu: Nem\00E1te opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047888077025878)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Dokon\010Dit \00FAlohu: Nem\00E1te opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047991003025878)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Delegovat \00FAlohu: Nem\00E1te opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046301974025877)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'cs'
,p_message_text=>unistr('Datum pln\011Bn\00ED \00FAlohy nem\016F\017Ee b\00FDt v\00A0minulosti.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041671012025876)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Term\00EDn %0')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042059495025876)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Akce \00FAlohy %1 selhala. Chybov\00E1 zpr\00E1va\00A0\2013 %0')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041751641025876)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'cs'
,p_message_text=>'Selhalo'
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041317568025876)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAsp\011Bch')
,p_is_js_message=>true
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041588505025876)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Akce %1 usp\011Bla se zpr\00E1vou %0')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044800669025877)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed skon\010Den\00EDm platnosti')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070420164025884)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161it')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069913759025884)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha zru\0161ena')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070504657025884)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Dastn\00EDk nem\00E1 povoleno zru\0161it \00FAlohu')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069844208025884)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1rokovat')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070255002025884)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAlohu ji\017E po\017Eaduje jin\00FD u\017Eivatel nebo \00FA\010Dastn\00EDk nen\00ED opr\00E1vn\011Bn po\017Eadovat tuto \00FAlohu')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070013026025884)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAlohu po\017Eadoval(a) %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171116596025914)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'cs'
,p_message_text=>unistr('Dokon\010Dit')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069673634025884)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha je dokon\010Dena s v\00FDstupem %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070992584025884)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha bu\010F nen\00ED p\0159i\0159azena, nebo \00FA\010Dastn\00EDk nem\00E1 povoleno \00FAlohu dokon\010Dit')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031301238025873)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha dokon\010Dena bez v\00FDstupu')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171203167025914)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159it')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064174247025882)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha vytvo\0159ena s\00A0ID %0')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171319492025914)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'cs'
,p_message_text=>'Delegovat'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069723190025884)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha delegov\00E1na potenci\00E1ln\00EDmu vlastn\00EDkovi %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070323685025884)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Dastn\00EDk nen\00ED opr\00E1vn\011Bn nebo nov\00FD \00FA\010Dastn\00EDk nen\00ED potenci\00E1ln\00EDm vlastn\00EDkem t\00E9to \00FAlohy')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043411852025876)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ukon\010Dit platnost')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044555844025877)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Platnost \00FAlohy skon\010Dila.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171457459025914)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'cs'
,p_message_text=>unistr('Selh\00E1n\00ED')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040118618025875)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha bu\010F nen\00ED p\0159i\0159azena, nebo \00FA\010Dastn\00EDk nem\00E1 povoleno po\017Eadovat informace k\00A0\00FAloze')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040309361025875)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('Bu\010F nebyly po\017Eadov\00E1ny \017E\00E1dn\00E9 informace k \00FAloze, nebo \00FA\010Dastn\00EDk nem\00E1 povoleno odes\00EDlat informace k \00FAloze.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043994176025877)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ukon\010Den\00ED platnosti \00FAlohy, proto\017Ee bylo dosa\017Eeno maxim\00E1ln\00EDho po\010Dtu obnoven\00ED %0.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071201793025884)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha nen\00ED ve spr\00E1vn\00E9m stavu nebo \00FA\010Dastn\00EDk nen\00ED u\017Eivatel s\00A0opr\00E1vn\011Bn\00EDm pro spr\00E1vu \010Dinnost\00ED pro tuto \00FAlohu')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071361403025884)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Operace %0 je nezn\00E1m\00E1 nebo se na tuto \00FAlohu nevztahuje')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171537969025914)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'cs'
,p_message_text=>'Uvolnit'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157236550025910)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha byla uvoln\011Bna. Nyn\00ED si ji mohou n\00E1rokovat ostatn\00ED u\017Eivatel\00E9')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050105147025878)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('Uvoln\011Bn\00ED \00FAlohy nen\00ED povoleno - u\017Eivatel nen\00ED vlastn\00EDkem \00FAlohy')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067120508025883)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'cs'
,p_message_text=>unistr('Odebrat vlastn\00EDka')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067351956025883)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Dastn\00EDk %0 byl z\00A0t\00E9to \00FAlohy odebr\00E1n')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044768076025877)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'cs'
,p_message_text=>'Obnovit'
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043659905025876)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha obnovena s\00A0ID %0, maxim\00E1ln\00ED zb\00FDvaj\00EDc\00ED po\010Det obnoven\00ED p\0159ed vypr\0161en\00EDm platnosti je %1.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124044617909025877)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('ID \00FAlohy %0 obnoveno s\00A0ID \00FAlohy %1')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040634978025876)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadovat informace')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040541957025876)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadov\00E1no %0 pro dal\0161\00ED informace: %1')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038418107025875)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastavit, zda m\016F\017Ee inici\00E1tor dokon\010Dit, na  %0')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040792126025876)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'cs'
,p_message_text=>'Odeslat informace'
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040464717025875)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadovan\00E9 informace byly odesl\00E1ny %0: %1')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171660744025914)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizovat koment\00E1\0159')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068178141025884)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat koment\00E1\0159: %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071086188025884)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('Stav \00FAlohy koment\00E1\0159e nedovoluje')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078347765025887)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastavit datum pln\011Bn\00ED \00FAlohy na %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036473810025874)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizovat term\00EDn pln\011Bn\00ED')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171763387025914)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizovat vlastn\00EDka')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069486131025884)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat k \00FA\010Dastn\00EDk\016Fm \00FAlohy potenci\00E1ln\00EDho vlastn\00EDka %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068552705025884)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'cs'
,p_message_text=>'Aktualizovat parametry'
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171817895025914)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'cs'
,p_message_text=>'Priorita aktualizace'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070189976025884)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastavit prioritu \00FAlohy na %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067432194025883)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizov\00E1n parametr \201E%0\201C z\00A0\201E%1\201C na \201E%2\201C.')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050907577025879)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha byla zru\0161ena, proto\017Ee byla ukon\010Dena odpov\00EDdaj\00EDc\00ED instance pracovn\00EDho postupu.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048056469025878)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edat \00FAlohu: Nem\00E1te opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041460651025876)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zah\00E1jil %0 %1')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050332193025878)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Do\0161lo k neo\010Dek\00E1van\00E9 vnit\0159n\00ED chyb\011B')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048608242025878)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nepou\017Eiteln\00E1 operace \00FAlohy')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074204738025885)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'cs'
,p_message_text=>unistr('Tento potenci\00E1ln\00ED vlastn\00EDk neexistuje.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049945332025878)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'cs'
,p_message_text=>unistr('Schv\00E1leno')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050089965025878)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zam\00EDtnuto')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031416167025873)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'cs'
,p_message_text=>unistr('Dokon\010Den\00ED \00FAlohy vy\017Eaduje vytvo\0159en\00ED v\00FDstupu')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124031643267025873)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha nem\00E1 tvorbu v\00FDstupu povolenu')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067294791025883)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'cs'
,p_message_text=>'Parametr %0 nelze aktualizovat.'
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063559107025882)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Dastn\00EDk pro instanci t\00E9to \00FAlohy ji\017E existuje.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124165035306025912)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'cs'
,p_message_text=>unistr('Urgentn\00ED')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042143679025876)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Urgentn\00ED')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164961989025912)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'cs'
,p_message_text=>unistr('Vysok\00E1')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042250447025876)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Vysok\00E1 priorita')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164826606025912)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'cs'
,p_message_text=>unistr('M\00E9dium')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042302070025876)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('St\0159edn\00ED priorita')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164738347025912)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00EDzk\00E1')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042497195025876)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00EDzk\00E1 priorita')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164612422025912)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'cs'
,p_message_text=>unistr('Nejni\017E\0161\00ED')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042509780025876)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Nejni\017E\0161\00ED priorita')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048252603025878)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastavit prioritu \00FAlohy: Nem\00E1te opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049459707025878)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i\0159azeno')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049855751025878)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161eno')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049594404025878)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'cs'
,p_message_text=>unistr('Dokon\010Deno')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049773711025878)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'cs'
,p_message_text=>unistr('Chybov\00E9')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124043294422025876)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Platnost vypr\0161ela')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049670640025878)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'cs'
,p_message_text=>'Selhalo'
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039921164025875)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadov\00E1ny informace')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049340105025878)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nep\0159i\0159azeno')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071749783025885)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Vytvo\0159en\00ED nov\00E9 \00FAlohy pro definici \00FAlohy %0 v aplikaci %1 selhalo.'),
'SQLCODE: %2'))
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071650238025885)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'cs'
,p_message_text=>unistr('Pokus o vytvo\0159en\00ED \00FAlohy pro definici \00FAlohy %0 v aplikaci %1 selhal, proto\017Ee definice \00FAlohy neobsahuje \017E\00E1dn\00E9 potenci\00E1ln\00ED vlastn\00EDky. Upravte definici \00FAlohy a p\0159idejte nejm\00E9n\011B jednoho \00FA\010Dastn\00EDka typu potenci\00E1ln\00ED vlastn\00EDk')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048994398025878)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Definice \00FAlohy nebyla nenalezena')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048849234025878)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Dastn\00EDci pro \00FAlohu nebyli nalezeni')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050252737025878)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro dan\00E9 ID \00FAlohy existuje v\00EDce ne\017E jedna \00FAloha - po\017E\00E1dejte o ov\011B\0159en\00ED spr\00E1vce datab\00E1ze')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124049085092025878)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAloha nebyla nalezena')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124048710657025878)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Parametr \00FAlohy nebyl nalezen')
,p_version_scn=>2692413
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085043221025888)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'cs'
,p_message_text=>'Akce'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084983635025888)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Schv\00E1len\00ED')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032333772025873)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Spu\0161t\011Bn\00ED postupu pravidla pro dovolenou %2 pro definici \00FAlohy %0 v\00A0aplikaci %1 selhalo.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032573227025873)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Dastn\00EDk %1 p\0159id\00E1n jako n\00E1hrada za \00FA\010Dastn\00EDka %0. D\016Fvod\00A0\2013 %2.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236280727025933)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Panel n\00E1stroj\016F')
,p_is_js_message=>true
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089775754025890)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'cs'
,p_message_text=>'Aplikace'
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250942373025937)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'cs'
,p_message_text=>'Rozbalit/sbalit navigaci'
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251070605025937)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Rozbalit/sbalit bo\010Dn\00ED sloupec')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159421927025910)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Hlavn\00ED navigace')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060232861025881)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'cs'
,p_message_text=>unistr('"%0" je neplatn\00FD n\00E1zev z\00E1stupn\00E9ho znaku.')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167167293025912)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'cs'
,p_message_text=>'1 den'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166907952025912)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'cs'
,p_message_text=>'1 hodina'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167217256025912)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 dny/dn\00ED')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167021002025912)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'cs'
,p_message_text=>'%0 hodin(y)'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166879304025912)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'cs'
,p_message_text=>'%0 minut(y)'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167462733025912)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 t\00FDdny/t\00FDdn\016F')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124167351115025912)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('1 t\00FDden')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065102904025883)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det vybran\00FDch polo\017Eek: %0')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065375883025883)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat polo\017Eku')
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065207759025883)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'cs'
,p_message_text=>'Vybrat %0'
,p_is_js_message=>true
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254073893025938)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'cs'
,p_message_text=>unistr('Za\010D\00E1tek str\00E1nky')
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111685616025896)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'cs'
,p_message_text=>'Povoleno'
,p_is_js_message=>true
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080123856025887)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i zpracov\00E1n\00ED po\017Eadavku.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124065707146025883)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Textovou zpr\00E1vu %0 nelze aktualizovat, proto\017Ee je subskribov\00E1na z\00A0jin\00E9 aplikace.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168870024025913)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadovan\00E1 hodnota')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124085265121025889)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'cs'
,p_message_text=>unistr('Nadpis \00FArovn\011B %0, skryt\00FD')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213646552025926)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'cs'
,p_message_text=>unistr('Tato str\00E1nka m\00E1 neulo\017Een\00E9 zm\011Bny.')
,p_is_js_message=>true
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075223808025886)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Navig\00E1tor')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074908446025886)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ibl\00ED\017Eit')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075957980025886)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DArove\0148 p\0159ibl\00ED\017Een\00ED {0}\00A0%')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075074506025886)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'cs'
,p_message_text=>unistr('Odd\00E1lit')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075143256025886)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'cs'
,p_message_text=>unistr('Obnoven\00ED lupy')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050680523025878)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'cs'
,p_message_text=>unistr('Sch\00E9ma pracovn\00EDho postupu je v\00A0t\00E9to chv\00EDli nep\0159\00EDstupn\00E9.')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050562176025878)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Sch\00E9ma pracovn\00EDho postupu')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052451121025879)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance pracovn\00EDho postupu %0 je v\00A0sou\010Dasn\00E9 chv\00EDli ve stavu %1. Proto nen\00ED operace povolena')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055061961025880)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance %1 aktivity %2 v\00A0pracovn\00EDm postupu %0 byla opakov\00E1na')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054877649025880)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159ena nov\00E1 instance %1 aktivity %2 v\00A0pracovn\00EDm postupu %0')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046690511025877)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Dodate\010Dn\00FD datov\00FD \0159\00E1dek p\0159i\0159azen\00FD k\00A0t\00E9to instanci aktivity pracovn\00EDho postupu nebyl nalezen')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054906531025880)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'cs'
,p_message_text=>unistr('Chybn\00E1 instance %1 aktivity %2 v\00A0pracovn\00EDm postupu %0 byla opakov\00E1na')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036973935025874)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance aktivity %1 v\00A0pracovn\00EDm postupu %0 byla ukon\010Dena')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070724034025884)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance aktivity %1 v\00A0pracovn\00EDm postupu %0 vypr\0161ela a\00A0byla ukon\010Dena.')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055117259025880)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance %1 aktivity %2 v\00A0pracovn\00EDm postupu %0 je ve stavu \010Cek\00E1n\00ED')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036721274025874)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance pracovn\00EDho postupu %0 byla zm\011Bn\011Bna a\00A0obnovena v\00A0aktivit\011B %1')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054153454025879)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'cs'
,p_message_text=>unistr('\010Cekaj\00EDc\00ED instance %1 aktivity %2 v\00A0pracovn\00EDm postupu %0 byla \00FAsp\011B\0161n\011B dokon\010Dena')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053974499025879)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'cs'
,p_message_text=>unistr('\010Cekaj\00EDc\00ED aktivita %1 nastavena na stav Chybn\00E9, proto\017Ee pracovn\00ED postup %0 byl ve stavu Chybn\00E9 ji\017E p\0159ed dokon\010Den\00EDm aktivity')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054030697025879)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'cs'
,p_message_text=>unistr('\010Cekaj\00EDc\00ED aktivita %1 byla ukon\010Dena, proto\017Ee pracovn\00ED postup %0 byl ve stavu Ukon\010Deno ji\017E p\0159ed dokon\010Den\00EDm aktivity')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124037036434025875)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('Ukon\010Den\00ED aktivity %1 v\00A0pracovn\00EDm postupu %0 se nezda\0159ilo kv\016Fli v\00FDjimce %2')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052629602025879)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED postup je v\00A0sou\010Dasn\00E9 chv\00EDli vyt\00ED\017Een dokon\010Dov\00E1n\00EDm p\0159edchoz\00ED operace. Opakujte pokus pozd\011Bji')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068720928025884)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Dokon\010Deno %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051727081025879)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0pracovn\00EDm postupu %0 nelze pokra\010Dovat, proto\017Ee je v\00A0sou\010Dasn\00E9 chv\00EDli v\00A0aktivit\011B %1, kter\00E1 nen\00ED ve stavu \010Dek\00E1n\00ED')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063607242025882)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED platn\00FD kontext korelace pracovn\00EDho postupu pro proces zpracov\00E1van\00FD touto aktivitou pracovn\00EDho postupu. Kontext korelace mus\00ED b\00FDt text odd\011Blen\00FD dvojte\010Dkami obsahuj\00EDc\00ED APEX_APPL_WORKFLOW, za n\00EDm\017E n\00E1sleduje ID instance pracovn\00EDho postupu a\00A0ID in')
||'stance aktivity.'
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054342307025879)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159ena nov\00E1 instance %0 pracovn\00EDho postupu %1, verze %2')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046474952025877)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Dodate\010Dn\00FD datov\00FD \0159\00E1dek p\0159i\0159azen\00FD k\00A0t\00E9to instanci pracovn\00EDho postupu nebyl nalezen')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068900725025884)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Term\00EDn %0')
,p_version_scn=>2692418
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054215494025879)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED postup %0 byl ukon\010Den ve stavu %1')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051428590025879)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Typ dat %1 pro podm\00EDnky porovn\00E1van\00E9 v\00A0aktivit\011B p\0159ep\00EDna\010De pracovn\00EDho postupu %0 nen\00ED kompatibiln\00ED s\00A0oper\00E1torem podm\00EDnky')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041298422025876)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zah\00E1jil %0 %1')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124064021623025882)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159ena nov\00E1 instance %0 pracovn\00EDho postupu %1, verze %2 \2013 vyvol\00E1no z\00A0instance aktivity %4 instance pracovn\00EDho postupu %3')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124036812718025874)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktivita se statick\00FDm ID %1 nen\00ED aktivitou v\00A0pracovn\00EDm postupu %0. Zkontrolujte statick\00E9 ID aktivity odpov\00EDdaj\00EDc\00ED verze pracovn\00EDho postupu.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062126227025882)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je povinn\00FD parametr pro tento pracovn\00ED postup a\00A0nesm\00ED b\00FDt NULL.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054761130025880)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance pracovn\00EDho postupu %0 byla obnovena')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054600978025880)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance pracovn\00EDho postupu %0 byla opakov\00E1na')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069006960025884)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 opakov\00E1n\00ED')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069189544025884)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 opakov\00E1n\00ED')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068803104025884)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zah\00E1jeno %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063028174025882)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktivn\00ED')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063275960025882)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'cs'
,p_message_text=>unistr('Dokon\010Deno')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063301103025882)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Chybn\00E9')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063470066025882)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'cs'
,p_message_text=>'Pozastaveno'
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124063134962025882)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Ukon\010Deno')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078440204025887)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'cs'
,p_message_text=>unistr('\010Cek\00E1n\00ED')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054414211025880)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance pracovn\00EDho postupu %0 byla pozastavena')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060369930025881)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED \010Dinnost pro instanci pracovn\00EDho postupu %0 nelze ur\010Dit. P\0159ed opakov\00E1n\00EDm pracovn\00EDho postupu ov\011B\0159te a\00A0opravte podm\00EDnky definovan\00E9 pro aktu\00E1ln\00ED aktivitu p\0159ep\00EDna\010De.')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124054570490025880)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance pracovn\00EDho postupu %0 byla ukon\010Dena')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053658974025879)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0pracovn\00EDm postupu m\016F\017Ee pokra\010Dovat pouze u\017Eivatel s\00A0opr\00E1vn\011Bn\00EDm pro spr\00E1vu \010Dinnost\00ED pracovn\00EDho postupu %0')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053715446025879)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED postup %0 m\016F\017Ee opakovat u\017Eivatel s\00A0opr\00E1vn\011Bn\00EDm pro spr\00E1vu \010Dinnost\00ED anebo vlastn\00EDk')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053233824025879)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'cs'
,p_message_text=>unistr('Instanci pracovn\00EDho postupu %0 m\016F\017Ee pozastavit pouze u\017Eivatel s\00A0opr\00E1vn\011Bn\00EDmi pro spr\00E1vu \010Dinnost\00ED pracovn\00EDho postupu')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053542362025879)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED postup mohou ukon\010Dit pouze vlastn\00EDci a\00A0u\017Eivatel\00E9 s\00A0opr\00E1vn\011Bn\00EDm pro spr\00E1vu \010Dinnost\00ED instance pracovn\00EDho postupu %0')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051956733025879)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Prom\011Bnn\00E9 pracovn\00EDho postupu %0 m\016F\017Ee aktualizovat pouze u\017Eivatel s\00A0opr\00E1vn\011Bn\00EDmi pro spr\00E1vu \010Dinnost\00ED definovan\00FD pro tento pracovn\00ED postup')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066506134025883)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance pracovn\00EDho postupu %0 mus\00ED b\00FDt ve stavu Chybn\00E1 nebo Pozastaven\00E1, aby bylo mo\017En\00E9 aktualizovat jej\00ED prom\011Bnn\00E9.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058030070025881)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota prom\011Bnn\00E9 %0 pracovn\00EDho postupu byla aktualizov\00E1na na %1')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068256377025884)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED postup %0 nem\00E1 \017E\00E1dnou aktivn\00ED verzi')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068384238025884)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED postup %0 nem\00E1 \017E\00E1dnou verzi ve v\00FDvoji')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124068496225025884)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED postup %0 nem\00E1 \017E\00E1dnou aktivn\00ED verzi nebo verzi ve v\00FDvoji')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051379441025879)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance aktivity %1 pro instanci pracovn\00EDho postupu %0 nebyla nalezena')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051127295025879)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Instance pracovn\00EDho postupu %0 nebyla nalezena')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086291002025889)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0161it nem\00E1 \017E\00E1dn\00FD aktivn\00ED list.')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086192682025889)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0161it nen\00ED inicializov\00E1n.')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086003444025889)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Do\0161lo k intern\00ED chyb\011B p\0159i vytv\00E1\0159en\00ED souboru XSLX.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088514461025889)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'cs'
,p_message_text=>'List'
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099176163025893)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev pracovn\00EDho postupu \201E%0\201C byl ji\017E pou\017Eit. Zkuste pou\017E\00EDt jin\00FD.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227726394025930)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'cs'
,p_message_text=>'Akce'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142749750025905)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'cs'
,p_message_text=>unistr('Nab\00EDdka Akce')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138414838025904)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat funkci')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138352095025904)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat mo\017Enost Seskupit podle sloupce')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175982173025915)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat kontingen\010Dn\00ED sloupec')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176034218025915)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159idat sloupec \0159\00E1dku')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110471070025896)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'cs'
,p_message_text=>'Agregovat'
,p_is_js_message=>true
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148926613025907)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'cs'
,p_message_text=>'Agregace'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129825459025901)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'cs'
,p_message_text=>unistr('Pr\016Fm\011Br')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134173693025903)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129917412025901)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'cs'
,p_message_text=>'Maximum'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130113419025902)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'cs'
,p_message_text=>unistr('Medi\00E1n')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130099502025902)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'cs'
,p_message_text=>'Minimum'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129777168025901)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'cs'
,p_message_text=>unistr('Sou\010Det %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130858339025902)
,p_name=>'APEXIR_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('V\0161e')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109754719025896)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('V\0161echny sloupce')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089896874025890)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('V\0161echny \0159\00E1dky')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224721280025930)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Alternativn\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226309529025930)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'cs'
,p_message_text=>unistr('Alternativn\00ED v\00FDchoz\00ED: %0')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123912089025900)
,p_name=>'APEXIR_AND'
,p_message_language=>'cs'
,p_message_text=>'a'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158728697025910)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eenou sestavu nelze importovat. Jej\00ED obsah je po\0161kozen.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158836340025910)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eenou sestavu nelze importovat. Jej\00ED obsah je pr\00E1zdn\00FD.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111929745025896)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'cs'
,p_message_text=>unistr('Pou\017E\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105579237025894)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Vzestupn\011B')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127073898025901)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'cs'
,p_message_text=>'k datu %0'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226977355025930)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'cs'
,p_message_text=>unistr('Pr\016Fm\011Br %0')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218545084025928)
,p_name=>'APEXIR_BAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Li\0161ta')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111264158025896)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'cs'
,p_message_text=>'mezi'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104392461025894)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Barva pozad\00ED')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106278020025895)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'cs'
,p_message_text=>unistr('modr\00E1')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140362270025904)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'cs'
,p_message_text=>'Na konec'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071120504025884)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Tla\010D\00EDtka vedle vyhled\00E1vac\00EDho pruhu %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106895633025895)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zru\0161it')
,p_is_js_message=>true
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113133019025897)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'cs'
,p_message_text=>'Kategorie'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104252277025894)
,p_name=>'APEXIR_CELL'
,p_message_language=>'cs'
,p_message_text=>unistr('Bu\0148ka')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130762009025902)
,p_name=>'APEXIR_CHART'
,p_message_language=>'cs'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141294308025905)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'cs'
,p_message_text=>'Inicializace...'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124180933652025917)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Je nutn\00E9 zadat \0161t\00EDtek grafu.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193338845025920)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00E1\0161 dotaz p\0159ekra\010Duje maxim\00E1ln\00ED po\010Det %0\00A0datov\00FDch bod\016F na graf. Pou\017Eijte filtr ke sn\00ED\017Een\00ED po\010Dtu z\00E1znam\016F v\00A0z\00E1kladn\00EDm dotazu.')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192228253025920)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Maxim\00E1ln\00ED po\010Det \0159\00E1dek pro dotaz na Graf omezuje po\010Det \0159\00E1dek v\00A0z\00E1kladn\00EDm dotazu, nikoli po\010Det zobrazen\00FDch \0159\00E1dek. V\00E1\0161 z\00E1kladn\00ED dotaz p\0159ekra\010Duje maxim\00E1ln\00ED po\010Det \0159\00E1dek %0. Pou\017Eijte filtr, abyste sn\00ED\017Eili po\010Det z\00E1znam\016F v\00A0z\00E1kladn\00EDm dotazu.')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109859572025896)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'cs'
,p_message_text=>'Typ grafu'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073710825025885)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED grafu %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124188931752025919)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Za\0161krtnout v\0161e')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127494787025901)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte form\00E1t sestavy')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135251412025903)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'cs'
,p_message_text=>'vymazat'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106737505025895)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Sloupec'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146530319025906)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>'Sloupce'
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113724111025897)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'cs'
,p_message_text=>'Aliasy sloupce'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221378716025929)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'cs'
,p_message_text=>'Filtrovat...'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081524628025887)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'cs'
,p_message_text=>unistr('Z\00E1hlav\00ED sloupce')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095650464025892)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'cs'
,p_message_text=>'Akce sloupce'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095934973025892)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'cs'
,p_message_text=>'Akce pro sloupec "%0"'
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137322754025904)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'cs'
,p_message_text=>unistr('Nab\00EDdka nadpisu sloupce')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141080060025905)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'cs'
,p_message_text=>'Informace o sloupci'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223682962025929)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('\0160t\00EDtek sloupce')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138796180025904)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'cs'
,p_message_text=>'Sloupec %0'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121630359025899)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'cs'
,p_message_text=>'obsahuje'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122936093025899)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'cs'
,p_message_text=>'neobsahuje'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105227989025894)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'cs'
,p_message_text=>'v'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123181439025899)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED v\00A0posledn\00EDm')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132267197025902)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED v\00A0n\00E1sleduj\00EDc\00EDm')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123063858025899)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('je v\00A0posledn\00EDm')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132107732025902)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('je v\00A0n\00E1sleduj\00EDc\00EDm')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105183515025894)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('nem\00E1 hodnotu null')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105036584025894)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('m\00E1 hodnotu null')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104842131025894)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'cs'
,p_message_text=>'jako'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105385244025894)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED v')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104943346025894)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED jako')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121923896025899)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'cs'
,p_message_text=>unistr('shoduje se s\00A0regul\00E1rn\00EDm v\00FDrazem')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127368209025901)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDpo\010Det')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124191987424025920)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDpo\010Detn\00ED v\00FDraz')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146834619025906)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159te v\00FDpo\010Det pomoc\00ED alias\016F sloupc\016F.')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146997682025906)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'cs'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147083009025906)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'cs'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147181787025907)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'cs'
,p_message_text=>unistr('CASE WHEN A\00A0=10 THEN B\00A0+\00A0C ELSE B END')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088092020025889)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'cs'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131535811025902)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vypo\010D\00EDtat')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139314249025904)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159eru\0161en\00ED')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142300095025905)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159eru\0161en\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228969626025931)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupce p\0159eru\0161en\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084741461025888)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det jedine\010Dn\00FDch')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227439841025930)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det jedine\010Dn\00FDch')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227398910025930)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det %0')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200356193025922)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'cs'
,p_message_text=>unistr('Denn\011B')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124253601157025938)
,p_name=>'APEXIR_DATA'
,p_message_language=>'cs'
,p_message_text=>'Data'
,p_is_js_message=>true
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141171745025905)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Data sestavy jako p\0159ed %0\00A0minutami.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074178669025885)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Datov\00E9 zobrazen\00ED %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110554418025896)
,p_name=>'APEXIR_DATE'
,p_message_language=>'cs'
,p_message_text=>'Datum'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145083377025906)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224556674025930)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED typ sestavy')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106954062025895)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'cs'
,p_message_text=>'Odstranit'
,p_is_js_message=>true
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110841833025896)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'cs'
,p_message_text=>unistr('Chcete smazat toto nastaven\00ED sestav?')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211349874025926)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Odstranit v\00FDchoz\00ED sestavu')
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139025212025904)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'cs'
,p_message_text=>'Odstranit sestavu'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105621006025894)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Sestupn\011B')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113272728025897)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>'Popis'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137226652025904)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Jedno\0159\00E1dkov\00E9 zobrazen\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145502024025906)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Sm\011Br %0')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146445475025906)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'cs'
,p_message_text=>unistr('Zak\00E1z\00E1no')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106409753025895)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'cs'
,p_message_text=>'Zobrazeno'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109641014025896)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00E9 sloupce')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145443268025906)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit v\00A0sestav\011B')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140281886025904)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'cs'
,p_message_text=>unistr('Dol\016F')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131625519025902)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'cs'
,p_message_text=>unistr('St\00E1hnout')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145372505025906)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'cs'
,p_message_text=>'Nezobrazovat'
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214627259025927)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'cs'
,p_message_text=>unistr('Zv\00FDrazn\011Bn\00ED se stejnou podm\00EDnkou ji\017E existuje.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229116839025931)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Duplicitn\00ED kontingen\010Dn\00ED sloupec. Seznam kontingen\010Dn\00EDch sloupc\016F mus\00ED b\00FDt jedine\010Dn\00FD.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229340995025931)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'cs'
,p_message_text=>'Upravit'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141376134025905)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'cs'
,p_message_text=>unistr('Upravit nastaven\00ED grafu')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147908203025907)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'cs'
,p_message_text=>'Upravit graf'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111863073025896)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'cs'
,p_message_text=>unistr('Upravit p\0159eru\0161en\00ED')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148345227025907)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'cs'
,p_message_text=>'Upravit filtr'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114861120025897)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DAprava flashbacku')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206122045025924)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'cs'
,p_message_text=>'Upravit Seskupit podle'
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148201605025907)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('Upravit zv\00FDrazn\011Bn\00ED')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176294733025915)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'cs'
,p_message_text=>'Upravit operaci pivot'
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135647326025903)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'cs'
,p_message_text=>'Upravit sestavu'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224827116025930)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'cs'
,p_message_text=>'E-mail'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097012870025892)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'cs'
,p_message_text=>unistr('E-mailov\00E1 adresa')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225102952025930)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'cs'
,p_message_text=>unistr('Skryt\00E1 kopie')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225367655025930)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'cs'
,p_message_text=>unistr('Text zpr\00E1vy')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225015949025930)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'cs'
,p_message_text=>'Kopie'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225878021025930)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'cs'
,p_message_text=>'Frekvence'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102267663025893)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'cs'
,p_message_text=>unistr('E-mail nebyl pro tuto aplikaci konfigurov\00E1n. Obra\0165te se na sv\00E9ho spr\00E1vce.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199675059025922)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Je t\0159eba zadat e-mailovou adresu.')
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225416997025930)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'cs'
,p_message_text=>unistr('Viz p\0159\00EDloha')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225200215025930)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edm\011Bt')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200695359025922)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Je t\0159eba zadat p\0159edm\011Bt e-mailu.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224939576025930)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDjemce')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104048424025894)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'cs'
,p_message_text=>'Povoleno'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148186232025907)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'cs'
,p_message_text=>'Aktivovat/Deaktivovat'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147643086025907)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'cs'
,p_message_text=>'Chyba! %0'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147265277025907)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDklady')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148011140025907)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDklady:')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109519386025896)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vylou\010Dit hodnoty null')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148630927025907)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'cs'
,p_message_text=>'Rozbalit/sbalit'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146218679025906)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDraz')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131113456025902)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'cs'
,p_message_text=>'Filtrovat'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142297132025905)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'cs'
,p_message_text=>'Filtry'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152976827025908)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('Filtrovac\00ED v\00FDraz')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251177948025937)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDraz filtru je p\0159\00EDli\0161 dlouh\00FD.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095890229025892)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1vrhy filtru')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152817320025908)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'cs'
,p_message_text=>'Typ filtru'
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148870995025907)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyberte sloupce, kter\00E9 chcete vyhledat')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131415830025902)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'cs'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146046508025906)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Flashback v\00E1m umo\017En\00ED zobrazit data tak, jak existovala v\00A0konkr\00E9tn\00EDm okam\017Eiku v\00A0minulosti')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200044212025922)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Trv\00E1n\00ED flashbacku')
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201407748025923)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Form\00E1t')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127215206025901)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'cs'
,p_message_text=>unistr('Form\00E1tovac\00ED maska %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138995661025904)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>'Funkce'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146794967025906)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'cs'
,p_message_text=>'Funkce %0'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224434183025930)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'cs'
,p_message_text=>unistr('Funkce/Oper\00E1tory')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138645984025904)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'cs'
,p_message_text=>'Funkce %0'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130935632025902)
,p_name=>'APEXIR_GO'
,p_message_language=>'cs'
,p_message_text=>'Spustit'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104565548025894)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'cs'
,p_message_text=>unistr('zelen\00E1')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149547805025907)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Seskupit podle sloupc\016F')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149646571025907)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Seskupit podle funkc\00ED')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084803025025888)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'cs'
,p_message_text=>'Seskupit podle'
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225514506025930)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Seskupit podle sloupce %0'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181024612025917)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Je nutn\00E9 zadat sloupce seskupen\00ED podle.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192185591025920)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Maxim\00E1ln\00ED po\010Det \0159\00E1dek pro dotaz Seskupit podle omezuje po\010Det \0159\00E1dek v\00A0z\00E1kladn\00EDm dotazu, nikoli po\010Det zobrazen\00FDch \0159\00E1dek. V\00E1\0161 z\00E1kladn\00ED dotaz p\0159ekra\010Duje maxim\00E1ln\00ED po\010Det \0159\00E1dek\00A0%0. Pou\017Eijte filtr, abyste sn\00ED\017Eili po\010Det z\00E1znam\016F v\00A0z\00E1kladn\00EDm dotazu.')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172340925025914)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159azen\00ED seskupen\00ED')
,p_is_js_message=>true
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229032825025931)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\0159ad\00ED se\0159azen\00ED seskupen\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073954871025885)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED seskupen\00ED %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109935673025896)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Horizont\00E1ln\00ED sloupec')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143943918025906)
,p_name=>'APEXIR_HELP'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135709500025903)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Interaktivn\00ED sestavy koncov\00FDm u\017Eivatel\016Fm umo\017E\0148uj\00ED si sestavy p\0159izp\016Fsobit. U\017Eivatel\00E9 mohou zm\011Bnit rozlo\017Een\00ED dat sestavy v\00FDb\011Brem sloupc\016F, pou\017Eit\00EDm filtr\016F, zv\00FDrazn\011Bn\00EDm a se\0159azen\00EDm. U\017Eivatel\00E9 mohou tak\00E9 definovat p\0159eru\0161en\00ED, agregace, grafy, seskupen\00ED a\00A0p')
||unistr('\0159idat vlastn\00ED v\00FDpo\010Dty. U\017Eivatel\00E9 mohou tak\00E9 nastavit subskripce, aby jim byla ve stanoven\00E9m intervalu zas\00EDl\00E1na e-mailov\00E1 verze sestavy ve form\00E1tu HTML. U\017Eivatel\00E9 mohou vytvo\0159it v\00EDce variant sestavy a\00A0ulo\017Eit je jako pojmenovan\00E9 sestavy pro ve\0159ejn\00E9 neb')
||unistr('o soukrom\00E9 prohl\00ED\017Een\00ED '),
'<p/>',
unistr('N\00E1sleduj\00EDc\00ED \010D\00E1sti shrnuj\00ED zp\016Fsoby, jak si m\016F\017Eete interaktivn\00ED sestavu p\0159izp\016Fsobit. Dal\0161\00ED informace najdete v \010D\00E1sti \201EPou\017E\00EDv\00E1n\00ED interaktivn\00EDch zpr\00E1v\201C v\00A0<i>p\0159\00EDru\010Dce koncov\00E9ho u\017Eivatele aplikace Oracle APEX</i>.')))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142898909025905)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'cs'
,p_message_text=>unistr('Nab\00EDdka Akce se zobraz\00ED na li\0161t\011B Vyhled\00E1v\00E1n\00ED napravo od tla\010D\00EDtka P\0159ej\00EDt. Pomoc\00ED t\00E9to nab\00EDdky m\016F\017Eete p\0159izp\016Fsobit interaktivn\00ED sestavu.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136591202025903)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Agregace jsou matematick\00E9 v\00FDpo\010Dty proveden\00E9 na sloupci. Agregace se zobrazuj\00ED po ka\017Ed\00E9m p\0159eru\0161en\00ED a\00A0na konci sestavy ve sloupci, ve kter\00E9m jsou definov\00E1ny. Mo\017Enosti zahrnuj\00ED:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Agregace</strong> umo\017E\0148uje vybrat d\0159\00EDve'),
'definovanou agregaci, kterou chcete upravit.</li>',
unistr('<li><strong>Funkce</strong> je funkce, kter\00E1 m\00E1 b\00FDt provedena (nap\0159\00EDklad SUM, MIN).</li>'),
unistr('<li><strong>Sloupec</strong> se pou\017E\00EDv\00E1 k\00A0v\00FDb\011Bru sloupce, na kter\00FD se m\00E1 pou\017E\00EDt matematick\00E1 funkce. Zobraz\00ED se pouze'),
unistr('\010D\00EDseln\00E9 sloupce.</li>'),
'</ul>'))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136605441025903)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pro ka\017Ed\00FD ulo\017Een\00FD p\0159ehled m\016F\017Eete definovat jeden graf. Jakmile je'),
unistr('definovan\00FD, m\016F\017Eete p\0159ep\00EDnat mezi zobrazen\00EDm grafu a\00A0sestavy pomoc\00ED ikon zobrazen\00ED na li\0161t\011B Vyhled\00E1v\00E1n\00ED.'),
unistr('Volby zahrnuj\00ED:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Typ grafu</strong> ur\010Duje typ grafu, kter\00FD bude vybr\00E1n.'),
unistr('Vybrat m\016F\017Eete vodorovn\00FD sloupcov\00FD, svisl\00FD sloupcov\00FD, v\00FDse\010Dov\00FD nebo \010D\00E1rov\00FD.</li>'),
unistr('<li><strong>\0160t\00EDtek</strong> umo\017E\0148uje vybrat sloupec, kter\00FD bude pou\017Eit jako \0161t\00EDtek.</li>'),
unistr('<li><strong>N\00E1zev osy pro \0161t\00EDtek</strong> je n\00E1zev, kter\00FD se zobrazuje na ose p\0159idru\017Een\00E9 ke sloupci vybran\00E9mu pro'),
unistr('\0161t\00EDtek. Nen\00ED to k\00A0dispozici pro v\00FDse\010Dov\00FD graf.</li>'),
unistr('<li><strong>Hodnota</strong> umo\017E\0148uje vybrat sloupec, kter\00FD m\00E1 b\00FDt pou\017E\00EDt jako Hodnota. Pokud je va\0161e funkce'),
unistr('COUNT, Hodnotu nen\00ED nutn\00E9 vyb\00EDrat.</li>'),
unistr('<li><strong>N\00E1zev osy pro Hodnotu</strong> je n\00E1zev, kter\00FD se zobrazuje na ose p\0159idru\017Een\00E9 ke sloupci vybran\00E9mu pro'),
unistr('Hodnotu. Nen\00ED to k\00A0dispozici pro v\00FDse\010Dov\00FD graf.</li>'),
unistr('<li><strong>Funkce</strong> je voliteln\00E1 funkce, kterou lze prov\00E9st ve sloupci vybran\00E9m pro Hodnotu.</li>'),
unistr('<li><strong>\0158adit </strong> umo\017E\0148uje se\0159adit sadu v\00FDsledk\016F.</li></ul>')))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135970814025903)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kliknut\00EDm na z\00E1hlav\00ED kter\00E9hokoli sloupce se zobraz\00ED nab\00EDdka z\00E1hlav\00ED sloupce. Mo\017Enosti zahrnuj\00ED:'),
'<p></p>',
'<ul>',
unistr('<li>Ikona <strong>Se\0159adit vzestupn\011B</strong> se\0159ad\00ED sestavu ve vzestupn\00E9m po\0159ad\00ED podle sloupce.</li>'),
unistr('<li>Ikona <strong>Se\0159adit sestupn\011B</strong> se\0159ad\00ED sestavu v\00A0sestupn\00E9m po\0159ad\00ED podle sloupce.</li>'),
unistr('<li>Ikona <strong>Skr\00FDt sloupec</strong> skryje sloupec. Ne v\0161echny sloupce lze skr\00FDt. Pokud sloupec nelze skr\00FDt, ikona Skr\00FDt sloupec zde nebude.</li>'),
unistr('<li>Ikona <strong>Sloupec p\0159eru\0161en\00ED</strong> vytvo\0159\00ED na sloupci skupinu p\0159eru\0161en\00ED. T\00EDm se ze sloupec v sestav\011B stane hlavn\00ED z\00E1znam.</li>'),
unistr('<li><strong>Informace o\00A0sloupci</strong> zobraz\00ED text n\00E1pov\011Bdy ke sloupci, pokud je k\00A0dispozici.</li>'),
unistr('<li><strong>Textov\00E1 oblast</strong> se pou\017E\00EDv\00E1 k\00A0zad\00E1n\00ED krit\00E9ri\00ED vyhled\00E1v\00E1n\00ED bez rozli\0161en\00ED velk\00FDch a\00A0mal\00FDch p\00EDsmen'),
unistr('(z\00E1stupn\00E9 znaky nejsou t\0159eba). Zad\00E1n\00EDm hodnoty se redukuje seznam'),
unistr('hodnot v\00A0doln\00ED \010D\00E1sti nab\00EDdky. Pot\00E9 m\016F\017Eete zdola vybrat hodnotu'),
unistr('a\00A0vybran\00E1 hodnota bude pou\017Eita jako filtr s oper\00E1torem \201E=\201C'),
unistr('(p\0159\00EDklad: <code>column\00A0=\00A0''ABC''</code>). P\0159\00EDpadn\011B m\016F\017Eete kliknout na ikonu s baterkou a zadat hodnotu, kter\00E1 m\00E1 b\00FDt pou\017Eita jako filtr s oper\00E1torem \201ELIKE\201C (p\0159\00EDklad: <code>column LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>Seznam jedine\010Dn\00FDch hodnot</strong> obsahuje prvn\00EDch 500 jedine\010Dn\00FDch'),
unistr('hodnot, kter\00E9 spl\0148uj\00ED va\0161e krit\00E9ria filtru. Pokud je ve sloupci datum, zobraz\00ED se'),
unistr('m\00EDsto toho seznam rozsahu dat. Pokud vyberete hodnotu, vytvo\0159\00ED se filtr'),
unistr('s pou\017Eit\00EDm \201E=\201C (p\0159\00EDklad: <code>column\00A0=\00A0''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136468446025903)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Umo\017E\0148uje p\0159idat do sestavy vypo\010D\00EDtan\00E9 sloupce. Mohou to b\00FDt matematick\00E9 v\00FDpo\010Dty (p\0159\00EDklad: <code>NBR_HOURS/24</code>) nebo standardn\00ED funkce'),
unistr('Oracle p\0159i\0159azen\00E9 existuj\00EDc\00EDm sloupc\016Fm. N\011Bkter\00E9 se zobrazuj\00ED jako p\0159\00EDklady a\00A0jin\00E9 (nap\0159\00EDklad <code> TO_DATE) </code> lze pou\017E\00EDt tak\00E9. Mo\017Enosti zahrnuj\00ED:'),
'<p></p>',
'<ul>',
unistr('<li><strong>V\00FDpo\010Det</strong> umo\017E\0148uje vybrat d\0159\00EDve definovan\00FD v\00FDpo\010Det, kter\00FD chcete upravit.</li>'),
unistr('<li><strong>Nadpis sloupce</strong> je nadpis sloupce pro nov\00FD sloupec.</li>'),
unistr('<li><strong>Maska form\00E1tu</strong> je maska form\00E1tu Oracle, kter\00E1 se pou\017E\00EDv\00E1 na sloupce (p\0159\00EDklad: S9999).</li>'),
unistr('<li><strong>V\00FDpo\010Det</strong> je v\00FDpo\010Det, kter\00FD se m\00E1 prov\00E9st. V\00A0r\00E1mci v\00FDpo\010Dtu se na sloupce odkazuje pomoc\00ED zobrazen\00FDch alias\016F.</li>'),
'</ul>',
unistr('<p>Pod v\00FDpo\010Dtem se sloupce v\00A0dotazu zobraz\00ED s\00A0jejich'),
unistr('p\0159idru\017Een\00FDm aliasem. Kliknut\00ED na n\00E1zev sloupce nebo alias je zahrne'),
unistr('ve v\00FDpo\010Dtu. Vedle sloupc\016F je kl\00E1vesnice. Tato kl\00E1vesnice funguje jako'),
unistr('zkratka pro b\011B\017En\011B pou\017E\00EDvan\00E9 kl\00E1vesy. \00DApln\011B vpravo jsou funkce.</p>'),
unistr('<p>N\00E1sleduj\00EDc\00ED p\0159\00EDklad v\00FDpo\010Dtu ukazuje, jak zobrazit celkovou kompenzaci:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(kde A je ORGANIZACE, B je MZDA a\00A0C je PROVIZE)'),
''))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142946167025905)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'cs'
,p_message_text=>unistr('Slou\017E\00ED k\00A0vytvo\0159en\00ED skupiny p\0159eru\0161en\00ED na jednom nebo n\011Bkolika sloupc\00EDch. Tato funkce vyt\00E1hne sloupce z\00A0interaktivn\00ED sestavy a\00A0zobraz\00ED je jako hlavn\00ED z\00E1znam.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137102750025904)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Pokud chcete zobrazit v\0161echny podrobnosti jednoho \0159\00E1dku najednou, klikn\011Bte na ikonu Jedno\0159\00E1dkov\00E9 zobrazen\00ED pro \0159\00E1dek, kter\00FD chcete zobrazit. Pokud je k\00A0dispozici, bude jedno\0159\00E1dkov\00E9 zobrazen\00ED v\017Edy v\00A0prvn\00EDm sloupci. V\00A0z\00E1vislosti na p\0159izp\016Fsoben\00ED interak')
||unistr('tivn\00ED sestavy m\016F\017Ee b\00FDt jedno\0159\00E1dkov\00E9 zobrazen\00EDm standardn\00ED zobrazen\00ED nebo p\0159izp\016Fsoben\00E1 str\00E1nka, kter\00E1 m\016F\017Ee umo\017E\0148ovat aktualizaci.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137081495025904)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'cs'
,p_message_text=>unistr('Umo\017E\0148uje sta\017Een\00ED aktu\00E1ln\00ED sady v\00FDsledk\016F. Form\00E1ty ke sta\017Een\00ED zahrnuj\00ED PDF, Excel, HTML a CSV. Volby sta\017Een\00ED se li\0161\00ED v z\00E1vislosti na vybran\00E9m form\00E1tu. V\0161echny form\00E1ty lze tak\00E9 odeslat e-mailem.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136124524025903)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Zp\0159esn\00ED sestavu p\0159id\00E1n\00EDm nebo \00FApravou klauzule <code> WHERE </code> v\00A0dotazu. M\016F\017Eete filtrovat podle sloupce nebo podle \0159\00E1dku.'),
unistr('<p>Pokud filtrujete podle sloupce, vyberte sloupec (nemus\00ED b\00FDt zobrazen), vyberte standardn\00ED oper\00E1tor Oracle (=, !=, nen\00ED v, mezi) a\00A0zadejte v\00FDraz. Ve v\00FDrazech se rozli\0161uj\00ED velk\00E1 a\00A0mal\00E1 p\00EDsmena. Pou\017Eijte % jako z\00E1stupn\00FD znak (p\0159\00EDklad: <code>STATE_NAM')
||'E',
'like A%)</code>.</p>',
unistr('<p>Pokud filtrujete podle \0159\00E1dku, m\016F\017Eete vytv\00E1\0159et komplexn\00ED klauzule <code>WHERE</code> pomoc\00ED'),
unistr('alias\016F sloupc\016F a\00A0jin\00FDch funkc\00ED nebo oper\00E1tor\016F Oracle (p\0159\00EDklad: <code>G\00A0=\00A0''VA'' or G\00A0=\00A0''CT''</code>, kde'),
'<code>G</code> je alias pro <code>CUSTOMER_STATE</code>).</p>',
''))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136709201025903)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Flashback  v\00E1m umo\017En\00ED zobrazit data tak, jak existovala v\00A0minulosti'),
unistr('V\00FDchoz\00ED doba, kterou m\016F\017Eete zp\011Btn\011B vyvolat, jsou 3\00A0hodiny '),
unistr('(nebo 180\00A0minut), ale skute\010Dn\00E1 doba se bude u\00A0ka\017Ed\00E9 datab\00E1ze li\0161it.')))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201348140025923)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Form\00E1t umo\017E\0148uje p\0159izp\016Fsobit zobrazen\00ED sestavy.'),
unistr('Form\00E1t obsahuje n\00E1sleduj\00EDc\00ED podnab\00EDdku:</p>'),
unistr('<ul><li>\0158adit</li>'),
unistr('<li>P\0159eru\0161en\00ED</li>'),
unistr('<li>Zv\00FDraznit</li>'),
unistr('<li>Vypo\010D\00EDtat</li>'),
'<li>Agregace</li>',
'<li>Graf</li>',
unistr('<li>Seskupen\00ED</li>'),
'<li>Operace Pivot</li> ',
'</ul>',
''))
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199518627025922)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Na jedenu ulo\017Eenou sestavu m\016F\017Eete definovat jedno zobrazen\00ED seskupen\00ED. Jakmile je definov\00E1no, m\016F\017Eete pomoc\00ED ikon zobrazen\00ED na li\0161t\011B Vyhled\00E1v\00E1n\00ED p\0159ep\00EDnat mezi zobrazen\00EDm seskupen\00ED a\00A0zobrazen\00EDm sestavy. Pokud chcete vytvo\0159it zobrazen\00ED seskupen\00ED,'),
'vyberte:',
'<p></p><ul>',
unistr('<li>sloupce, kter\00E9 chcete seskupit</li>'),
unistr('<li>sloupce, kter\00E9 chcete agregovat spolu s\00A0funkc\00ED, kter\00E1 m\00E1 b\00FDt provedena (pr\016Fm\011Br, suma, po\010Det atd.)</li>'),
'</ul>'))
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136347032025903)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Umo\017E\0148uje definovat filtr. \0158\00E1dky, kter\00E9 spl\0148uj\00ED krit\00E9ria filtru, budou zv\00FDrazn\011Bny tak, jak je definov\00E1no ve filtru. Mo\017Enosti zahrnuj\00ED:</p>'),
'<ul>',
unistr('<li><strong>N\00E1zev</strong> je pou\017Eit jen pro zobrazen\00ED.</li>'),
unistr('<li><strong>Sekvence</strong> ur\010Duje po\0159ad\00ED, ve kter\00E9m jsou pravidla vyhodnocov\00E1na. </li>'),
unistr('<li><strong>Povoleno</strong> ur\010Duje, zda je pravidlo povoleno nebo zak\00E1z\00E1no.</li>'),
unistr('<li><strong>Typ zv\00FDrazn\011Bn\00ED</strong> ur\010Duje, zda by m\011Bla b\00FDt zv\00FDrazn\011Bna \0159\00E1dka nebo bu\0148ka.'),
unistr('Pokud je vybr\00E1na bu\0148ka, je zv\00FDrazn\011Bn sloupec,'),
unistr('pou\017Eit\00FD v\00A0podm\00EDnce zv\00FDrazn\011Bn\00ED.</li>'),
unistr('<li><strong>Barva pozad\00ED</strong> je nov\00E1 barva pozad\00ED zv\00FDrazn\011Bn\00E9 oblasti.</li>'),
unistr('<li><strong>Barva textu</strong> je nov\00E1 barva textu ve zv\00FDrazn\011Bn\00E9 oblasti.</li>'),
unistr('<li><strong>Podm\00EDnka zv\00FDrazn\011Bn\00ED</strong> definuje podm\00EDnku filtru.</li>'),
'</ul>',
''))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029765627025872)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Na ulo\017Een\00FD p\0159ehled m\016F\017Eete definovat jedno kontingen\010Dn\00ED zobrazen\00ED. Po definov\00E1n\00ED m\016F\017Eete p\0159ep\00EDnat mezi kontingen\010Dn\00EDm a\00A0p\0159ehledov\00FDm zobrazen\00EDm pomoc\00ED ikon zobrazen\00ED na vyhled\00E1vac\00EDm panelu. Pokud chcete vytvo\0159it kontingen\010Dn\00ED zobrazen\00ED, vyberete: '),
'<p></p>',
'<ul>',
unistr('<li>sloupce, na kter\00E9 m\00E1 b\00FDt pou\017Eita funkce pivot</li>'),
unistr('<li>sloupce, kter\00E9 maj\00ED b\00FDt zobrazeny jako \0159\00E1dky</li>'),
unistr('<li>sloupce, kter\00E9 maj\00ED b\00FDt agregov\00E1ny spolu s\00A0funkc\00ED, kter\00E1 m\00E1 b\00FDt provedena (pr\016Fm\011Br, suma, po\010Det atd.)</li>'),
'</ul>'))
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147410015025907)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pokud si p\0159izp\016Fsob\00EDte interaktivn\00ED sestavu, zobraz\00ED se jej\00ED nastaven\00ED'),
unistr('pod vyhled\00E1vac\00ED li\0161tou a\00A0nad sestavou. Tuto oblast lze sbalit a\00A0rozbalit pomoc\00ED ikony vlevo.'),
'<p>',
unistr('U ka\017Ed\00E9ho nastaven\00ED sestavy m\016F\017Eete:'),
'</p><ul>',
unistr('<li>Upravit nastaven\00ED kliknut\00EDm na n\00E1zev.</li>'),
unistr('<li>Zak\00E1zat nebo povolit nastaven\00ED za\0161krtnut\00EDm nebo od\0161krtnut\00EDm pol\00ED\010Dka Povolit/Zak\00E1zat. Pomoc\00ED tohoto ovl\00E1dac\00EDho prvku m\016F\017Eete nastaven\00ED do\010Dasn\011B zapnout nebo vypnout.</li>'),
unistr('<li>Odebrat nastaven\00ED kliknut\00EDm na ikonu Odebrat.</li>'),
'</ul>',
unistr('<p>Pokud jste vytvo\0159ili graf, seskupen\00ED nebo funkci pivot, m\016F\017Eete p\0159ep\00EDnat mezi nimi'),
unistr('a\00A0z\00E1kladn\00ED sestavou pomoc\00ED odkaz\016F Zobrazen\00ED sestavy, Zobrazen\00ED grafu, Zobrazen\00ED seskupen\00ED a\00A0Zobrazen\00ED pivot'),
unistr('zobrazen\00FDch vpravo. Pokud si prohl\00ED\017E\00EDte graf, seskupen\00ED nebo pivot,'),
unistr('m\016F\017Eete tak\00E9 upravit nastaven\00ED pomoc\00ED odkazu Upravit.</p>'),
''))
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136934163025904)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'cs'
,p_message_text=>unistr('Obnov\00ED sestavu zp\011Bt na v\00FDchoz\00ED nastaven\00ED a\00A0odebere ve\0161ker\00E1 p\0159izp\016Fsoben\00ED, kter\00E1 jste provedli.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201675072025923)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastav\00ED po\010Det z\00E1znam\016F, kter\00E9 se maj\00ED zobrazit na str\00E1nku.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136810038025903)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Ulo\017E\00ED p\0159izp\016Fsobenou sestavu pro budouc\00ED pou\017Eit\00ED. Poskytnete n\00E1zev a\00A0voliteln\00FD popis a\00A0m\016F\017Eete sestavu zp\0159\00EDstupnit ve\0159ejnosti (tj.\00A0v\0161em u\017Eivatel\016Fm, kte\0159\00ED maj\00ED p\0159\00EDstup k\00A0prim\00E1rn\00ED v\00FDchoz\00ED sestav\011B). M\016F\017Eete ulo\017Eit \010Dty\0159i typy interaktivn\00EDch sestav:</p>'),
'<ul>',
unistr('<li><strong>Prim\00E1rn\00ED v\00FDchoz\00ED</strong> (pouze pro v\00FDvoj\00E1\0159e). Prim\00E1rn\00ED v\00FDchoz\00ED je sestava, kter\00E1 se zobraz\00ED na za\010D\00E1tku. Prim\00E1rn\00ED v\00FDchoz\00ED sestavy nelze p\0159ejmenovat ani smazat.</li>'),
unistr('<li><strong>Alternativn\00ED sestava</strong> (pouze pro v\00FDvoj\00E1\0159e). Umo\017E\0148uje v\00FDvoj\00E1\0159\016Fm vytv\00E1\0159et v\00EDce rozvr\017Een\00ED sestavy. Alternativn\00ED sestavu mohou ulo\017Eit, p\0159ejmenovat nebo odstranit pouze v\00FDvoj\00E1\0159i.</li>'),
unistr('<li><strong>Ve\0159ejn\00E1 sestava</strong> (koncov\00FD u\017Eivatel). M\016F\017Ee b\00FDt ulo\017Eena, p\0159ejmenov\00E1na nebo odstran\011Bna koncov\00FDm u\017Eivatelem, kter\00FD ji vytvo\0159il. Ostatn\00ED u\017Eivatel\00E9 mohou rozlo\017Een\00ED zobrazit a\00A0ulo\017Eit jako novou sestavu.</li>'),
unistr('<li><strong>Soukrom\00E1 sestava</strong> (koncov\00FD u\017Eivatel). Pouze koncov\00FD u\017Eivatel, kter\00FD sestavu vytvo\0159il, ji m\016F\017Ee zobrazit, ulo\017Eit, p\0159ejmenovat nebo odstranit.</li>'),
'</ul>',
unistr('<p>Pokud p\0159izp\016Fsoben\00E9 sestavy ulo\017E\00EDte, zobraz\00ED se na li\0161t\011B Vyhled\00E1v\00E1n\00ED selektor Sestav vlevo od selektoru \0158\00E1dk\016F (pokud je tato funkce povolena).</p>'),
''))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135868784025903)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0horn\00ED \010D\00E1sti ka\017Ed\00E9 str\00E1nky sestavy je oblast vyhled\00E1v\00E1n\00ED. Tato oblast (nebo vyhled\00E1vac\00ED li\0161ta) poskytuje n\00E1sleduj\00EDc\00ED funkce:')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202296797025923)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'cs'
,p_message_text=>unistr('<li><strong>Nab\00EDdka Akce</strong> umo\017E\0148uje upravit sestavu. Viz n\00E1sleduj\00EDc\00ED \010D\00E1sti.</li>')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201722686025923)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'cs'
,p_message_text=>unistr('<li><strong>Ikona Vybrat sloupce </strong> umo\017E\0148uje ur\010Dit, ve kter\00E9m sloupci (p\0159\00EDpadn\011B ve v\0161ech) se m\00E1 hledat.</li>')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202064875025923)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'cs'
,p_message_text=>unistr('<li>Ikona <strong>Sestavy</strong> zobraz\00ED alternativn\00ED v\00FDchoz\00ED a\00A0ulo\017Een\00E9 soukrom\00E9 nebo ve\0159ejn\00E9 sestavy.</li>')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201997913025923)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('<li>Ikona <strong>\0158\00E1dky</strong> nastav\00ED po\010Det z\00E1znam\016F, kter\00E9 se maj\00ED zobrazit na str\00E1nku.</li>')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201879160025923)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li>Ikona <strong>Textov\00E1 oblast</strong> umo\017E\0148uje zadat krit\00E9ria vyhled\00E1v\00E1n\00ED bez rozli\0161ov\00E1n\00ED velk\00FDch a\00A0mal\00FDch p\00EDsmen (z\00E1stupn\00E9 znaky jsou zahrnuty).</li>'),
unistr('<li><strong>Tla\010D\00EDtko Spustit</strong> spust\00ED vyhled\00E1v\00E1n\00ED. Stisknut\00EDm kl\00E1vesy Enter lze tak\00E9 spustit vyhled\00E1v\00E1n\00ED, pokud je kurzor v\00A0oblasti vyhled\00E1n\00ED textu.</li>')))
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202187380025923)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('<li><strong>Ikony Zobrazen\00ED</strong> p\0159ep\00EDnaj\00ED mezi zobrazen\00EDm ikon, sestav, podrobnost\00ED, graf\016F, seskupen\00ED a\00A0kontingen\010Dn\00EDm zobrazen\00EDm sestav, pokud jsou tato zobrazen\00ED definov\00E1na.</li>')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136049842025903)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Slou\017E\00ED k\00A0\00FAprav\011B zobrazen\00FDch sloupc\016F. Sloupce vpravo se zobraz\00ED. Sloupce vlevo jsou skryt\00E9. Uspo\0159\00E1d\00E1n\00ED zobrazen\00FDch sloupc\016F m\016F\017Eete zm\011Bnit pomoc\00ED \0161ipek vpravo. P\0159ed po\010D\00EDtan\00FDmi sloupci je p\0159edpona <strong>**</strong>.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124136251714025903)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Slou\017E\00ED ke zm\011Bn\011B sloupc\016F, kter\00E9 se maj\00ED se\0159adit, a\00A0ur\010Duje, zda'),
unistr('se\0159adit vzestupn\011B nebo sestupn\011B. M\016F\017Eete tak\00E9 ur\010Dit, jak zach\00E1zet se znaky'),
unistr('<code>NULL</code>. V\00FDchoz\00ED nastaven\00ED v\017Edy zobraz\00ED znaky<code> NULL </code> posledn\00ED nebo je v\017Edy zobraz\00ED jako prvn\00ED. V\00FDsledn\00E9 t\0159\00EDd\011Bn\00ED se zobraz\00ED napravo od'),
unistr('z\00E1hlav\00ED sloupc\016F v\00A0sestav\011B.</p>')))
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199332298025922)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i p\0159id\00E1n\00ED subskripce, uv\00E1d\00EDte e-mailovou adresu (nebo v\00EDce e-mailov\00FDch adres odd\011Blen\00FDch \010D\00E1rkami), p\0159edm\011Bt e-mailu, frekvenci a\00A0datum zah\00E1jen\00ED a\00A0ukon\010Den\00ED. E-maily, kter\00E9 v\00E1m budou na z\00E1klad\011B subskripce doru\010Dov\00E1ny, obsahuj\00ED exportovanou verzi (PDF, E')
||unistr('xcel, HTML nebo CSV) interaktivn\00ED sestavy, kter\00E1 obsahuje aktu\00E1ln\00ED data vyu\017E\00EDvaj\00EDc\00ED nastaven\00ED sestavy, kter\00E1 byla k\00A0dispozici p\0159i p\0159id\00E1n\00ED subskripce.')
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140969068025905)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Skr\00FDt sloupec')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131390120025902)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('Zv\00FDraznit')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142413616025905)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'cs'
,p_message_text=>unistr('Zv\00FDrazn\011Bn\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112626972025896)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'cs'
,p_message_text=>unistr('Zv\00FDraznit bu\0148ku, %0 na %1')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147501299025907)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'cs'
,p_message_text=>unistr('Stav zv\00FDrazn\011Bn\00ED')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112586986025896)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'cs'
,p_message_text=>unistr('Zv\00FDraznit \0159\00E1dku, %0 na %1')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199915511025922)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Styl zv\00FDrazn\011Bn\00ED')
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104102536025894)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Typ zv\00FDrazn\011Bn\00ED')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218739238025928)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Horizont\00E1ln\00ED')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247754142025936)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'cs'
,p_message_text=>unistr('1\00A0neaktivn\00ED nastaven\00ED')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247871088025936)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 neaktivn\00ED(ch) nastaven\00ED')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137596075025904)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda interaktivn\00ED sestavy.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148511195025907)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E9')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141961623025905)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD v\00FDpo\010Detn\00ED v\00FDraz. %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097583296025892)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Koncov\00E9 datum mus\00ED n\00E1sledovat po po\010D\00E1te\010Dn\00EDm datu.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156751811025909)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD filtrovac\00ED v\00FDraz. %0')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226564491025930)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD dotaz na filtr')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247912137025937)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'cs'
,p_message_text=>unistr('1 neplatn\00E9 nastaven\00ED')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248063795025937)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 neplatn\00E1/neplatn\00FDch nastaven\00ED')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200176772025922)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'cs'
,p_message_text=>unistr('(v minut\00E1ch)')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217127050025927)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je v\00A0posledn\00ED %1')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217366476025927)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 je v\00A0n\00E1sleduj\00EDc\00ED %1')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217292529025927)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0posledn\00ED %1')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217445887025927)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nen\00ED v\00A0n\00E1sleduj\00EDc\00ED %1')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146686231025906)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'cs'
,p_message_text=>unistr('Kl\00E1vesnice')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110356539025896)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('\0160t\00EDtek %0')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140513110025905)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev osy pro \0161t\00EDtek')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132860658025902)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00ED den')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133061153025902)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00ED hodina')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132500411025902)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('Minul\00FD m\011Bs\00EDc')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132608419025902)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('Minul\00FD t\00FDden')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132796186025902)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0dn\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132997379025902)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0hodin')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132345979025902)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'cs'
,p_message_text=>unistr('Posledn\00EDch %0\00A0let')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132490879025902)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Minul\00FD rok')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110207874025896)
,p_name=>'APEXIR_LINE'
,p_message_language=>'cs'
,p_message_text=>unistr('\010C\00E1rov\00FD')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107082927025895)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'cs'
,p_message_text=>unistr('Spojnicov\00FD s plo\0161n\00FDm')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226446244025930)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'cs'
,p_message_text=>'Mapovat'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141481854025905)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'cs'
,p_message_text=>unistr('Zd\00E1 se, \017Ee dotaz p\0159esahuje maxim\00E1ln\00ED povolen\00E9 zdroje. Upravte nastaven\00ED sestavy a\00A0opakujte pokus.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122838614025899)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Maxim\00E1ln\00ED po\010Det \0159\00E1dk\016F pro tuto sestavu je %0\00A0\0159\00E1dk\016F. Pokud chcete sn\00ED\017Eit po\010Det z\00E1znam\016F v\00A0dotazu, pou\017Eijte filtr.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227009314025930)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'cs'
,p_message_text=>'Maximum %0'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227233934025930)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'cs'
,p_message_text=>unistr('Medi\00E1n %0')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069531517025884)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zpr\00E1va')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127148726025901)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('p\0159ed %0\00A0minutami')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227130547025930)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'cs'
,p_message_text=>'Minimum %0'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226190969025930)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('M\011Bs\00EDc')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200567110025922)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'cs'
,p_message_text=>unistr('M\011Bs\00ED\010Dn\011B')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139721589025904)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139605037025904)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout v\0161e')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252898593025938)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Mus\00ED b\00FDt zad\00E1no statick\00E9 ID oblasti, proto\017Ee str\00E1nka obsahuje v\00EDce interaktivn\00EDch sestav.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105794618025894)
,p_name=>'APEXIR_NAME'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135456525025903)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Nov\00E1 agregace')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248626059025937)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Nov\00E1 kategorie')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135509174025903)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Nov\00FD v\00FDpo\010Det')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130236402025902)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133311989025902)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1sleduj\00EDc\00ED den')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133156374025902)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1sleduj\00EDc\00ED hodina')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133656737025903)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00ED m\011Bs\00EDc')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133521538025903)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00ED t\00FDden')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133449925025902)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0dn\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133223248025902)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0hodin')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133833907025903)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00EDch %0\00A0let')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133790568025903)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00ED\0161t\00ED rok')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106095684025895)
,p_name=>'APEXIR_NO'
,p_message_language=>'cs'
,p_message_text=>'Ne'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148700632025907)
,p_name=>'APEXIR_NONE'
,p_message_language=>'cs'
,p_message_text=>unistr('-\00A0\017D\00E1dn\00E9\00A0-')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199727635025922)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E1 e-mailov\00E1 adresa.')
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071862173025885)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nejsou vybr\00E1ny \017E\00E1dn\00E9 sloupce k zobrazen\00ED. Pro zobrazen\00ED sloupc\016F pou\017Eijte volbu <strong>Sloupce</strong> v nab\00EDdce Akce.')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145278159025906)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnoty null v\017Edy jako prvn\00ED')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145146327025906)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnoty null v\017Edy jako posledn\00ED')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145662097025906)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158azen\00ED znak\016F null %0')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142071118025905)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'cs'
,p_message_text=>unistr('\010Cas flashbacku mus\00ED b\00FDt \010D\00EDseln\00FD.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141616090025905)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\0159ad\00ED mus\00ED b\00FDt \010D\00EDseln\00E9.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146157696025906)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Oper\00E1tor')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104690605025894)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'cs'
,p_message_text=>unistr('oran\017Eov\00E1')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218600361025928)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'cs'
,p_message_text=>'Orientace'
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106556456025895)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'cs'
,p_message_text=>unistr('Jin\00E9')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072750587025885)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Str\00E1nkov\00E1n\00ED %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086788902025889)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Orientace str\00E1nky')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087492531025889)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Na \0161\00ED\0159ku')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087523076025889)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Na v\00FD\0161ku')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086668760025889)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'cs'
,p_message_text=>unistr('Velikost str\00E1nky')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087247015025889)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'cs'
,p_message_text=>'A3'
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087181394025889)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'cs'
,p_message_text=>'A4'
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087325629025889)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'cs'
,p_message_text=>unistr('Vlastn\00ED')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086920582025889)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Pr\00E1vn\00ED informace')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086856781025889)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'cs'
,p_message_text=>'Dopis'
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087097585025889)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'cs'
,p_message_text=>'Tabloid'
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227515054025930)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'cs'
,p_message_text=>unistr('Procento z\00A0celkov\00E9ho po\010Dtu %0 (%)')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226789039025930)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'cs'
,p_message_text=>unistr('Procento z\00A0celkov\00E9ho sou\010Dtu %0 (%)')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225702240025930)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Procento z\00A0celkov\00E9ho po\010Dtu')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225653138025930)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'cs'
,p_message_text=>unistr('Procento z\00A0celkov\00E9ho sou\010Dtu')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110121906025896)
,p_name=>'APEXIR_PIE'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDse\010Dov\00FD')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175805717025915)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'cs'
,p_message_text=>'Operace pivot'
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177370591025915)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Je nutn\00E9 zadat agregaci.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177509469025916)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze agregovat na sloupci vybran\00E9m jako sloupec \0159\00E1dku.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176730993025915)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>'Sloupce operace pivot'
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176587799025915)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'cs'
,p_message_text=>'Sloupec operace pivot %0'
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177156950025915)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Je nutn\00E9 zadat sloupec operace pivot.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124029615944025872)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Maxim\00E1ln\00ED po\010Det \0159\00E1dk\016F pro dotaz operace pivot omezuje po\010Det \0159\00E1dk\016F v\00A0z\00E1kladn\00EDm dotazu, nikoli po\010Det zobrazen\00FDch \0159\00E1dk\016F. V\00E1\0161 z\00E1kladn\00ED dotaz p\0159ekra\010Duje maxim\00E1ln\00ED po\010Det \0159\00E1dk\016F\00A0%0. Pou\017Eijte filtr, abyste sn\00ED\017Eili po\010Det z\00E1znam\016F v\00A0z\00E1kladn\00EDm dotazu.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177082891025915)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159azen\00ED operace pivot')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143006749025905)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'cs'
,p_message_text=>unistr('Kontingen\010Dn\00ED sloupec obsahuje p\0159\00EDli\0161 mnoho odli\0161n\00FDch hodnot\00A0\2013 Nelze vygenerovat kontingen\010Dn\00ED SQL.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074008122025885)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED pivot %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199878727025922)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1hled')
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130353862025902)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224629518025930)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'cs'
,p_message_text=>unistr('Prim\00E1rn\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200846916025923)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Prim\00E1rn\00ED sestava')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086514890025889)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zahrnout tagy p\0159\00EDstupnosti')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047344340025877)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Odstranit form\00E1tovan\00FD text')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155785239025909)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Soukrom\00E9')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110764001025896)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'cs'
,p_message_text=>unistr('Ve\0159ejn\00E9')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106305215025895)
,p_name=>'APEXIR_RED'
,p_message_language=>'cs'
,p_message_text=>unistr('\010Derven\00E1')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252727860025938)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Statick\00E9 ID oblasti %0 neexistuje.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139889842025904)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'cs'
,p_message_text=>'Odebrat'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139930736025904)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Odebrat v\0161e')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248185091025937)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'cs'
,p_message_text=>'Odebrat graf'
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139446835025904)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'cs'
,p_message_text=>unistr('Odebrat P\0159eru\0161en\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139137136025904)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'cs'
,p_message_text=>'Odebrat filtr'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139246355025904)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'cs'
,p_message_text=>'Odebrat Flashback'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248278625025937)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'cs'
,p_message_text=>unistr('Odebrat seskupen\00ED podle')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124139589452025904)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('Odebrat zv\00FDrazn\011Bn\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248366873025937)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'cs'
,p_message_text=>'Odebrat Operaci pivot'
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229495490025931)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'cs'
,p_message_text=>'Odebrat sestavu'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211275658025926)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ejmenovat v\00FDchoz\00ED sestavu')
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149016891025907)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('p\0159ejmenovat sestavu')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130638152025902)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'cs'
,p_message_text=>'Sestava'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124227634271025930)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'cs'
,p_message_text=>'Sestavy'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102818390025894)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 interaktivn\00ED sestava s\00A0aliasem %0 neexistuje.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156096822025909)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>'Sestava neexistuje.'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102984721025894)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E9 ID interaktivn\00ED sestavy %0 neexistuje.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147343107025907)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastaven\00ED sestavy')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124071534755025885)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastaven\00ED sestavy %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127678064025901)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED sestavy')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131807575025902)
,p_name=>'APEXIR_RESET'
,p_message_language=>'cs'
,p_message_text=>'Obnovit'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110912035025896)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'cs'
,p_message_text=>unistr('Obnovte v\00FDchoz\00ED nastaven\00ED sestavy.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106160153025895)
,p_name=>'APEXIR_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dka')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223744218025929)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'cs'
,p_message_text=>unistr('ROWID nelze pou\017E\00EDt jako sloupec prim\00E1rn\00EDho kl\00ED\010De pro datov\00FD zdroj REST.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138544531025904)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dky')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201522891025923)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dk\016F na str\00E1nku')
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176831492025915)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupce \0159\00E1dku')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176688062025915)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec \0159\00E1dku %0')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177240725025915)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Je nutn\00E9 zadat sloupec \0159\00E1dku.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177488758025916)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec \0159\00E1dk\016F se mus\00ED li\0161it od sloupce operace pivot.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153039647025908)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Filtr \0159\00E1dk\016F')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127761681025901)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dek %0 z %1')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124132077424025902)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'cs'
,p_message_text=>unistr('Text \0159\00E1dky obsahuje')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105479519025894)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142618349025905)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 sestava')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142558944025905)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Een\00E1 sestava\00A0=\00A0\201E%0\201C')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144767989025906)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktu\00E1ln\00ED nastaven\00ED sestavy bude pou\017Eito jako v\00FDchoz\00ED pro v\0161echny u\017Eivatele.')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124211156586025926)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit v\00FDchoz\00ED sestavu')
,p_is_js_message=>true
,p_version_scn=>2692442
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131714897025902)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit sestavu')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248574726025937)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit sestavu *')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202539905025923)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137489909025904)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Panel hled\00E1n\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124070899270025884)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('Panel hled\00E1n\00ED %0')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124248446631025937)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED: %0')
,p_is_js_message=>true
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208056682025925)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'cs'
,p_message_text=>'Vyhledat sestavu'
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192072102025920)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybran\00E9 sloupce')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107175061025895)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('-\00A0Vybrat sloupec\00A0-')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131062456025902)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>'Vybrat sloupce'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110662705025896)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('-\00A0Vybrat funkci\00A0-')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138247009025904)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('-\00A0Vyberte volbu Seskupit podle sloupce\00A0-')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176303075025915)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('\2013\00A0Vybrat sloupec operace pivot\00A0\2013')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226602898025930)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat \0159\00E1dek')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176495661025915)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('\2013\00A0Vybrat sloupec \0159\00E1dku\00A0\2013')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124057918403025881)
,p_name=>'APEXIR_SEND'
,p_message_language=>'cs'
,p_message_text=>'Odeslat'
,p_is_js_message=>true
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080424056025887)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'cs'
,p_message_text=>'Odeslat jako e-mail'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105813417025894)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'cs'
,p_message_text=>'Sekvence'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124131235250025902)
,p_name=>'APEXIR_SORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159adit')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140730987025905)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159adit vzestupn\011B')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140884830025905)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Se\0159adit sestupn\011B')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228898642025931)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\0159ad\00ED \0159azen\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135175770025903)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'cs'
,p_message_text=>'mezera'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124146374857025906)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'cs'
,p_message_text=>'Status %0'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200296662025922)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'cs'
,p_message_text=>'Subskripce'
,p_is_js_message=>true
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226098391025930)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'cs'
,p_message_text=>unistr('Ukon\010Den\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045092492025877)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esko\010Dit, pokud Nebyly nalezeny \017E\00E1dn\00E9 \00FAdaje')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124225980980025930)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010D\00E1tek')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226876645025930)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'cs'
,p_message_text=>unistr('Sou\010Det %0')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217787522025928)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'cs'
,p_message_text=>unistr('%0, Sestava = %1, Zobrazen\00ED = %2')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104719511025894)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'cs'
,p_message_text=>'Barva textu'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123412101025900)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'cs'
,p_message_text=>'dny'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123374349025900)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'cs'
,p_message_text=>'hodiny'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123221474025900)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'cs'
,p_message_text=>'minuty'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123642132025900)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('m\011Bs\00EDce')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123577933025900)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('t\00FDdny')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124123760647025900)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'cs'
,p_message_text=>'roky'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124229272464025931)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159epnout')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140022590025904)
,p_name=>'APEXIR_TOP'
,p_message_language=>'cs'
,p_message_text=>unistr('Na za\010D\00E1tek')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222729428025929)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Neseskupen\00FD sloupec')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141517456025905)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev zv\00FDrazn\011Bn\00ED mus\00ED b\00FDt jedine\010Dn\00FD.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109411709025896)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('nepodporovan\00FD typ dat')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140105708025904)
,p_name=>'APEXIR_UP'
,p_message_language=>'cs'
,p_message_text=>'Nahoru'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141727987025905)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'cs'
,p_message_text=>'Zadejte platnou barvu.'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124141845549025905)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadejte platnou masku form\00E1tu.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124106674613025895)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'cs'
,p_message_text=>'Hodnota'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140604373025905)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev osy pro hodnotu')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124148426311025907)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadovan\00E1 hodnota')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124110054899025896)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Vertik\00E1ln\00ED sloupec')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124218827928025928)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Vertik\00E1ln\00ED')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147715848025907)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit graf'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206337738025924)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit detail'
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250657416025937)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0sestav\011B nen\00ED definov\00E1no zobrazen\00ED %0.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206493215025924)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit Seskupeno podle'
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206266503025924)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit ikony'
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176105312025915)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit operaci pivot'
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124147882267025907)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit sestavu'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200424425025922)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'cs'
,p_message_text=>unistr('T\00FDdn\011B')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130510687025902)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDkaz pr\00E1ce')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228274879025931)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 dny/dn\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228182016025931)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'cs'
,p_message_text=>'%0 hodin(y)'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228022290025931)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'cs'
,p_message_text=>'%0 minut(y)'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228435481025931)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 m\011Bs\00EDce/m\011Bs\00EDc\016F')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228397667025931)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 t\00FDdny/t\00FDdn\016F')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124228504721025931)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'cs'
,p_message_text=>'%0 roky/let'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124226272644025930)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'cs'
,p_message_text=>'Rok'
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124104413429025894)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'cs'
,p_message_text=>unistr('\017Elut\00E1')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124105964909025895)
,p_name=>'APEXIR_YES'
,p_message_language=>'cs'
,p_message_text=>'Ano'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124140457470025905)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 obsahuje < or > co\017E jsou neplatn\00E9 znaky.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124164391680025912)
,p_name=>'APEX_REGION'
,p_message_language=>'cs'
,p_message_text=>'Oblast'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055478069025880)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'cs'
,p_message_text=>'Nelze extrahovat soubor ZIP.'
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055382946025880)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'cs'
,p_message_text=>unistr('Podpis End-of-central-directory nebyl nalezen. Tento soubor nen\00ED souborem ZIP.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124086433369025889)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Podm\00EDnka API byla poru\0161ena')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108506570025895)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze z\00EDskat hodnotu pro nastaven\00ED aplikace %0, proto\017Ee mo\017Enost p\0159idru\017Een\00E9ho sestaven\00ED je zak\00E1z\00E1na.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108415166025895)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze nastavit hodnotu pro nastaven\00ED aplikace %0, proto\017Ee mo\017Enost p\0159idru\017Een\00E9ho sestaven\00ED je zak\00E1z\00E1na.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221034488025929)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota nastaven\00ED aplikace %0 je neplatn\00E1')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124220935996025929)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastaven\00ED po\017Eadovan\00E9 aplikac\00ED %0 nen\00ED definov\00E1no')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221156531025929)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Nastaven\00ED aplikace %0 z\0159ejm\011B nen\00ED nastaveno na hodnotu null')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095039234025891)
,p_name=>'BACK'
,p_message_language=>'cs'
,p_message_text=>unistr('Zp\011Bt')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077433104025886)
,p_name=>'BUILDER'
,p_message_language=>'cs'
,p_message_text=>'Tvorba'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151069023025908)
,p_name=>'BUTTON LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Popisek tla\010D\00EDtka')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074341200025885)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'cs'
,p_message_text=>unistr('T\0159\00EDdy CSS tla\010D\00EDtka')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112824355025897)
,p_name=>'BUTTON_ID'
,p_message_language=>'cs'
,p_message_text=>unistr('Generovan\00E9 ID tla\010D\00EDtka bude statick\00E9, pokud je definov\00E1no. Pokud nen\00ED, bude intern\011B generovan\00E9 ID ve form\00E1tu ''B'' || [Intern\00ED ID tla\010D\00EDtka]')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046898950025877)
,p_name=>'CANDLESTICK'
,p_message_language=>'cs'
,p_message_text=>unistr('Sv\00ED\010Dkov\00FD')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160853821025911)
,p_name=>'CENTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Na st\0159ed')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107492809025895)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadavek %0')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097416193025892)
,p_name=>'CHECK$'
,p_message_language=>'cs'
,p_message_text=>unistr('voli\010D \0159\00E1dek')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124222832486025929)
,p_name=>'CHECKED'
,p_message_language=>'cs'
,p_message_text=>unistr('za\0161krtnuto')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199256312025922)
,p_name=>'COLUMN'
,p_message_language=>'cs'
,p_message_text=>'Sloupec'
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156883077025909)
,p_name=>'COMMENTS'
,p_message_language=>'cs'
,p_message_text=>unistr('Koment\00E1\0159e')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137808829025904)
,p_name=>'CONTINUE'
,p_message_language=>'cs'
,p_message_text=>unistr('Pokra\010Dovat')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095367084025891)
,p_name=>'COPYRIGHT'
,p_message_language=>'cs'
,p_message_text=>unistr('Copyright &copy; 1999, %0, Oracle a jej\00ED p\0159idru\017Een\00E9 spole\010Dnosti.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143566616025905)
,p_name=>'COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('po\010Det')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150502421025907)
,p_name=>'CREATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159it')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205939901025924)
,p_name=>'CREATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159eno')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206025605025924)
,p_name=>'CREATED_BY'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159il(a)')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126927015025901)
,p_name=>'CREATED_ON'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159eno')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138034436025904)
,p_name=>'CUSTOM'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159izp\016Fsoben\00FD')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149253614025907)
,p_name=>'CUSTOMIZE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159izp\016Fsobit')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151258195025908)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'cs'
,p_message_text=>unistr('Obnoven\00ED p\0159edvoleb str\00E1nky pro u\017Eivatele %0.')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151365624025908)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edvolby zm\011Bn\011Bny pro u\017Eivatele %0.')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151133175025908)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'cs'
,p_message_text=>unistr('Obnoven\00ED p\0159edvoleb str\00E1nky pro u\017Eivatele %0.')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112272977025896)
,p_name=>'DAILY'
,p_message_language=>'cs'
,p_message_text=>unistr('Denn\011B')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075648615025886)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('Odeslan\00FD soubor je neplatn\00FD nebo m\00E1 nespr\00E1vnou p\0159\00EDponu.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107619384025895)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Byl pou\017Eit neplatn\00FD selektor XML nebo JSON.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052799021025879)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'cs'
,p_message_text=>unistr('Datov\00FD profil a\00A0nahran\00FD soubor neobsahuj\00ED \017E\00E1dn\00FD sloupec c\00EDlov\00E9 tabulky.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166652987025912)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0nahran\00E9m souboru nebyla nalezena \017E\00E1dn\00E1 data.')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166755630025912)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'cs'
,p_message_text=>unistr('V listu \201E%0\201C nebyla nalezena \017E\00E1dn\00E1 data.')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072563516025885)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00FD soubor nen\00ED ve form\00E1tu XLSX.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124038542790025875)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDt\00E1n\00ED dat dokon\010Deno: %0 \0159\00E1dek zpracov\00E1no.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040881142025876)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDt\00E1n\00ED dat dokon\010Deno: %0\00A0\0159\00E1dek zpracov\00E1no s\00A01\00A0chybou.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041186140025876)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDt\00E1n\00ED dat dokon\010Deno: %0\00A0\0159\00E1dek zpracov\00E1no s\00A0%1\00A0chybami.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124040931560025876)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDt\00E1n\00ED dat dokon\010Deno: zpracov\00E1na 1\00A0\0159\00E1dka.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055290470025880)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDt\00E1n\00ED dat dokon\010Deno: 1\00A0\0159\00E1dek zpracov\00E1n s\00A0chybou.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124041088831025876)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010D\00EDt\00E1n\00ED dat dokon\010Deno: 1\00A0\0159\00E1dka zpracov\00E1na bez chyby.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173799822025914)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'cs'
,p_message_text=>unistr('C\00EDlov\00FD sloupec')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080992597025887)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'cs'
,p_message_text=>unistr('Nenahr\00E1vat')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081004054025887)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159edb\011B\017En\00E9ho zpracov\00E1n\00ED')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173811811025914)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'cs'
,p_message_text=>unistr('Zdrojov\00FD sloupec')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174645697025915)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Form\00E1t data/\010D\00EDsla')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080797414025887)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vlo\017Eit \0159\00E1dek')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236802947025933)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010Dten\00ED vyhled\00E1vac\00ED hodnoty selhalo.')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124206544911025924)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'cs'
,p_message_text=>unistr('Mapov\00E1n\00ED dat/tabulek')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174785165025915)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dka')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081170628025887)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\0159ad\00ED : Akce')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168405524025913)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'cs'
,p_message_text=>'Pravidlo transformace selhalo'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080863589025887)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizovat \0159\00E1dek')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143142687025905)
,p_name=>'DATE'
,p_message_language=>'cs'
,p_message_text=>'Datum'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116032525025897)
,p_name=>'DAY'
,p_message_language=>'cs'
,p_message_text=>'den'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116154744025897)
,p_name=>'DAYS'
,p_message_language=>'cs'
,p_message_text=>'dny'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156585344025909)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'cs'
,p_message_text=>unistr('Lad\011Bn\00ED nen\00ED pro tuto aplikaci povoleno.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124208245577025925)
,p_name=>'DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116802107025898)
,p_name=>'DELETE'
,p_message_language=>'cs'
,p_message_text=>'odstranit'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092421680025891)
,p_name=>'DELETE_MSG'
,p_message_language=>'cs'
,p_message_text=>unistr('Chcete prov\00E9st tuto akci odstran\011Bn\00ED?')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072010413025885)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159episy relac\00ED')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072903812025885)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Povolit p\0159episy relac\00ED')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073897573025885)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i na\010D\00EDt\00E1n\00ED p\0159epis\016F relac\00ED do\0161lo k chyb\011B.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073684615025885)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159i ukl\00E1d\00E1n\00ED p\0159epis\016F relac\00ED do\0161lo k chyb\011B.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124073594791025885)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159episy relac\00ED byly ulo\017Eeny. Zav\0159en\00EDm tohoto dialogov\00E9ho okna zobrazte zm\011Bny.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046760778025877)
,p_name=>'DIAL_PCT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyt\00E1\010Den\00ED (v\00A0procentech)')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124087773416025889)
,p_name=>'DOWNLOAD'
,p_message_language=>'cs'
,p_message_text=>unistr('St\00E1hnout')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207350304025924)
,p_name=>'DUP_USER'
,p_message_language=>'cs'
,p_message_text=>unistr('Seznam obsahuje duplicitn\00ED u\017Eivatelsk\00E9 jm\00E9no.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096147007025892)
,p_name=>'EDIT'
,p_message_language=>'cs'
,p_message_text=>'Upravit'
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107300034025895)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('E-mailov\00E1 adresa \201E%0\201C nebyla nalezena.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090083511025890)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'cs'
,p_message_text=>'Tento e-mail odeslal(a) %0.'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207581511025924)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'cs'
,p_message_text=>unistr('E-mailov\00E1 adresa je p\0159\00EDli\0161 dlouh\00E1. Limit je 240\00A0znak\016F.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137729479025904)
,p_name=>'ERROR'
,p_message_language=>'cs'
,p_message_text=>'Chyba'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168526234025913)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze nastavit zdrojovou hodnotu polo\017Eky str\00E1nky pro oblast \010D\00E1ste\010Dn\00E9ho obnoven\00ED str\00E1nky')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129078165025901)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159il(a)')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090343962025890)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Platnost hesla vypr\0161ela')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124082713516025888)
,p_name=>'FILE_EMPTY'
,p_message_language=>'cs'
,p_message_text=>unistr('Soubor je pr\00E1zdn\00FD.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172594642025914)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Velikost nahran\00E9ho souboru je v\011Bt\0161\00ED ne\017E %0\00A0MB. Nahrajte men\0161\00ED soubor.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092658146025891)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Ov\011B\0159en\00ED u\017Eivatele selhalo a nebyl nahr\00E1n jeden nebo v\00EDce soubor\016F.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092794494025891)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Tato instance neumo\017E\0148uje u\017Eivatel\016Fm bez opr\00E1vn\011Bn\00ED nahr\00E1vat soubory.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172693879025914)
,p_name=>'FILTERS'
,p_message_language=>'cs'
,p_message_text=>'Filtry'
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150608788025908)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Do\0161lo k\00A01\00A0chyb\011B')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149834705025907)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Do\0161lo k\00A0%0\00A0chyb\00E1m')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095254293025891)
,p_name=>'FORM_OF'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 z\00A0%1')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134236611025903)
,p_name=>'GO'
,p_message_language=>'cs'
,p_message_text=>'Spustit'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236470083025933)
,p_name=>'HELP'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077558854025886)
,p_name=>'HOME'
,p_message_language=>'cs'
,p_message_text=>unistr('Dom\016F')
,p_is_js_message=>true
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115807185025897)
,p_name=>'HOUR'
,p_message_language=>'cs'
,p_message_text=>'hodina'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115981010025897)
,p_name=>'HOURS'
,p_message_language=>'cs'
,p_message_text=>'hodiny'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124097363094025892)
,p_name=>'ICON'
,p_message_language=>'cs'
,p_message_text=>'Ikona %0'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074675938025885)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1pov\011Bda k o\0159\00EDznut\00ED ikony')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075816361025886)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>P\0159et\00E1hn\011Bte ikonu a pou\017Eijte posuvn\00EDk lupy ke zm\011Bn\011B jej\00EDho um\00EDst\011Bn\00ED v r\00E1mci.</p>'),
'',
unistr('<p>Kdy\017E p\0159i odes\00EDl\00E1n\00ED nov\00E9 ikony bude automaticky upravena tak, aby se ve\0161la do t\0159ech form\00E1t\016F: favicon, mal\00E1 a velk\00E1 ikona.</p>'),
'',
unistr('<p>P\0159i zam\011B\0159en\00ED na o\0159ez\00E1va\010D ikony jsou k dispozici n\00E1sleduj\00EDc\00ED kl\00E1vesov\00E9 zkratky:</p>'),
'<ul>',
unistr('    <li>\0160ipka vlevo: P\0159em\00EDstit obr\00E1zek doleva*</li>'),
unistr('    <li>\0160ipka nahoru: P\0159em\00EDstit obr\00E1zek nahoru*</li>'),
unistr('    <li>\0160ipka vpravo: P\0159em\00EDstit obr\00E1zek doprava*</li>'),
unistr('    <li>\0160ipka dol\016F: P\0159em\00EDstit obr\00E1zek dol\016F*</li>'),
unistr('    <li>I: P\0159ibl\00ED\017Eit</li>'),
unistr('    <li>O: Odd\00E1lit</li>'),
unistr('    <li>L: Oto\010Dit doleva</li>'),
unistr('    <li>R: Oto\010Dit doprava</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*P\0159idr\017Een\00EDm kl\00E1vesy Shift bude p\0159esun rychlej\0161\00ED</em></p>')))
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081384592025887)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159eta\017Een\00EDm zm\011Bnit um\00EDst\011Bn\00ED ikony')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081447303025887)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159em\00EDst\011Bn\00EDm posuvn\00EDku upravte \00FArove\0148 lupy')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074453282025885)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'cs'
,p_message_text=>'Ikona Upravit aplikaci'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074706739025885)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i ukl\00E1d\00E1n\00ED ikony')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157136616025909)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'cs'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> Tato aplikace pou\017E\00EDv\00E1 star\0161\00ED ikony. P\0159i odesl\00E1n\00ED nov\00E9 ikony dojde k nahrazen\00ED v\0161ech star\0161\00EDch ikon.</p>')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124075319309025886)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'cs'
,p_message_text=>'Odeslat novou ikonu'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151576555025908)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E9 ov\011B\0159ovac\00ED \00FAdaje pro p\0159ihl\00E1\0161en\00ED')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252609936025938)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E1 hodnota parametru: %0')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145844069025906)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'cs'
,p_message_text=>unistr('Jako v\00FDchoz\00ED nastaven\00ED sestavy')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145925514025906)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Jako uveden\00E1 sestava')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127897537025901)
,p_name=>'IR_ERROR'
,p_message_language=>'cs'
,p_message_text=>'Chyba %0. %1'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127561381025901)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze propo\010D\00EDtat navigaci ve formul\00E1\0159i. %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103103055025894)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Interaktivn\00ED sestava nebyla nalezena.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102562952025894)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Interaktivn\00ED oblast sestavy neexistuje v\00A0aplikaci %0, na str\00E1nce\00A0%1 a\00A0v oblasti %2.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124145797697025906)
,p_name=>'IR_STAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazeno pouze pro v\00FDvoj\00E1\0159e')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124133907380025903)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Dotaz na sestavu pot\0159ebuje jedine\010Dn\00FD kl\00ED\010D k\00A0identifikaci ka\017Ed\00E9 \0159\00E1dky. Zadan\00FD kl\00ED\010D nelze pro tento dotaz pou\017E\00EDt. Definujte jedine\010Dn\00FD kl\00ED\010Dov\00FD sloupec. %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134038256025903)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'cs'
,p_message_text=>unistr('Dotaz na sestavu pot\0159ebuje jedine\010Dn\00FD kl\00ED\010D k\00A0identifikaci ka\017Ed\00E9 \0159\00E1dky. Zadan\00FD kl\00ED\010D nelze pro tento dotaz pou\017E\00EDt. Upravte atributy sestavy a\00A0definujte jedine\010Dn\00FD kl\00ED\010Dov\00FD sloupec %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174956882025915)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'cs'
,p_message_text=>'Vybrat soubor'
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174864135025915)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159et\00E1hn\011Bte soubor sem nebo')
,p_is_js_message=>true
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095563319025892)
,p_name=>'ITEMS'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eky')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129260070025901)
,p_name=>'ITEM_VALUE'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota polo\017Eky')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143878575025906)
,p_name=>'LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('\0160t\00EDtek')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156496704025909)
,p_name=>'LANGUAGE'
,p_message_language=>'cs'
,p_message_text=>'Jazyk'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116584106025898)
,p_name=>'LAST'
,p_message_language=>'cs'
,p_message_text=>unistr('minul\00FD')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092595991025891)
,p_name=>'LENGTH'
,p_message_language=>'cs'
,p_message_text=>unistr('D\00E9lka')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150823916025908)
,p_name=>'LOGIN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ihl\00E1\0161en\00ED')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192444697025920)
,p_name=>'MANAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Prov\00E1d\011Bt spr\00E1vu')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124255554684025939)
,p_name=>'MAXIMIZE'
,p_message_language=>'cs'
,p_message_text=>'Maximalizovat'
,p_is_js_message=>true
,p_version_scn=>2692453
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115677743025897)
,p_name=>'MINUTE'
,p_message_language=>'cs'
,p_message_text=>'minuta'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115790025025897)
,p_name=>'MINUTES'
,p_message_language=>'cs'
,p_message_text=>'minuty'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207766721025925)
,p_name=>'MISSING_AT'
,p_message_language=>'cs'
,p_message_text=>unistr('V e-mailov\00E9 adrese chyb\00ED znak \201E@\201C.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207998007025925)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'cs'
,p_message_text=>unistr('Upozorn\011Bn\00ED: Pro Dialogovou str\00E1nku %0 v\00A0aplikaci %1 nebyla definov\00E1na \017E\00E1dn\00E1 \0161ablona Dialogov\00E9 str\00E1nky.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207697354025924)
,p_name=>'MISSING_DOT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0dom\00E9n\011B e-mailov\00E9 adresy chyb\00ED znak \201E.\201C.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153957094025908)
,p_name=>'MODULE'
,p_message_language=>'cs'
,p_message_text=>'Modul'
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108141978025895)
,p_name=>'MONTH'
,p_message_language=>'cs'
,p_message_text=>unistr('M\011Bs\00EDc')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112009755025896)
,p_name=>'MONTHLY'
,p_message_language=>'cs'
,p_message_text=>unistr('M\011Bs\00ED\010Dn\011B')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108241504025895)
,p_name=>'MONTHS'
,p_message_language=>'cs'
,p_message_text=>unistr('m\011Bs\00EDce')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143492520025905)
,p_name=>'MOVE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214233729025926)
,p_name=>'MOVE_FROM'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout z')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214384315025926)
,p_name=>'MOVE_TO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159esunout do')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124130445243025902)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba operace odstran\011Bn\00ED v\00EDce \0159\00E1dek: \0159\00E1dka\00A0=\00A0%0, %1, %2')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129431208025901)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'cs'
,p_message_text=>unistr('Nesm\00ED to b\00FDt ve\0159ejn\00FD u\017Eivatel')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078077707025886)
,p_name=>'NAME'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143664190025905)
,p_name=>'NEW'
,p_message_language=>'cs'
,p_message_text=>unistr('Vytvo\0159it')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107930822025895)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('M\016F\017Eete se p\0159ihl\00E1sit do %0 tak, \017Ee p\0159ejdete na:')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108007609025895)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Nov\00E1 upozorn\011Bn\00ED \00FA\010Dtu: %0')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236608339025933)
,p_name=>'NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153876193025908)
,p_name=>'NO'
,p_message_language=>'cs'
,p_message_text=>'Ne'
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124250716841025937)
,p_name=>'NOBODY'
,p_message_language=>'cs'
,p_message_text=>'nikdo'
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116970513025898)
,p_name=>'NOT'
,p_message_language=>'cs'
,p_message_text=>'Ne'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159817860025910)
,p_name=>'NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('nen\00ED null')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129586751025901)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'cs'
,p_message_text=>unistr('Nen\00ED %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149331517025907)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('nenalezena \017E\00E1dn\00E1 data')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159375502025910)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Nebyla nalezena \017E\00E1dn\00E1 aktualizovateln\00E1 sestava. V\00EDce\0159\00E1dkov\00E9 operace aktualizace a\00A0odstra\0148ovan\00ED lze prov\00E1d\011Bt pouze na tabulkov\00FDch formul\00E1\0159\00EDch typu \201EAktualizovateln\00E1 sestava\201C.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160206604025910)
,p_name=>'OK'
,p_message_language=>'cs'
,p_message_text=>'OK'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155580546025909)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'cs'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124254492082025939)
,p_name=>'ORA_06550'
,p_message_language=>'cs'
,p_message_text=>unistr('ORA-06550: \0159\00E1dka %0, sloupec %1')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205352275025924)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'cs'
,p_message_text=>unistr('Pou\017E\00EDv\00E1te zastaral\00FD webov\00FD prohl\00ED\017Ee\010D. Seznam podporovan\00FDch prohl\00ED\017Ee\010D\016F najdete v\00A0instala\010Dn\00ED p\0159\00EDru\010Dce Oracle APEX.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100321884025893)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E1 sada po\017Eadovan\00FDch \0159\00E1dek, zdrojov\00E1 data sestavy byla upravena.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122337382025899)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Je t\0159eba zadat platn\00E9 \010D\00EDslo str\00E1nky (P/N), nap\0159\00EDklad P/N\00A0=\00A01234.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126503651025901)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Dal\0161\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126634261025901)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1sleduj\00EDc\00ED sada')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126783461025901)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124126838264025901)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED sada')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236578924025933)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat str\00E1nkov\00E1n\00ED')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166564256025912)
,p_name=>'PASSWORD'
,p_message_language=>'cs'
,p_message_text=>'Heslo'
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107203661025895)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'cs'
,p_message_text=>unistr('Va\0161e heslo pro %0 bylo zm\011Bn\011Bno.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094961617025891)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo neodpov\00EDd\00E1 pravidl\016Fm pro slo\017Eitost hesla t\00E9to webov\00E9 aplikace.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094043490025891)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Nov\00E9 heslo se mus\00ED od star\00E9ho hesla li\0161it alespo\0148 %0 znaky.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094614567025891)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo nesm\00ED obsahovat u\017Eivatelsk\00E9 jm\00E9no.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094877584025891)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo obsahuje zak\00E1zan\00E9 jednoduch\00E9 slovo.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094709649025891)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo nesm\00ED obsahovat n\00E1zev pracovn\00EDho prostoru.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093936616025891)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo mus\00ED obsahovat alespo\0148 %0 znak\016F.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094196167025891)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo mus\00ED obsahovat alespo\0148 jedno p\00EDsmeno (%0).')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094589211025891)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo mus\00ED obsahovat alespo\0148 jedno mal\00E9 p\00EDsmeno.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094298966025891)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo mus\00ED obsahovat alespo\0148 jedeno \010D\00EDslo (0123456789).')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094368522025891)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo mus\00ED obsahovat alespo\0148 jeden interpunk\010Dn\00ED znak (%0).')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124094438298025891)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo mus\00ED obsahovat alespo\0148 jedno velk\00E9 p\00EDsmeno.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107744582025895)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Upozorn\011Bn\00ED na obnoven\00ED hesla')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092849049025891)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Heslo nem\016F\017Ee b\00FDt pou\017Eito, proto\017Ee ji\017E bylo pou\017Eito b\011Bhem posledn\00EDch %0 dn\00ED.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124089556275025890)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'cs'
,p_message_text=>unistr('Procentu\00E1ln\00ED graf')
,p_is_js_message=>true
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181104088025917)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eky')
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124181204728025917)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eka')
,p_version_scn=>2692436
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155396488025909)
,p_name=>'PERCENT'
,p_message_language=>'cs'
,p_message_text=>'Procenta'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124651097025900)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Obra\0165te se na spr\00E1vce.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236717577025933)
,p_name=>'PREVIOUS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159edchoz\00ED')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173329792025914)
,p_name=>'PRINT'
,p_message_language=>'cs'
,p_message_text=>'Tisk'
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154129633025909)
,p_name=>'PRIVILEGES'
,p_message_language=>'cs'
,p_message_text=>unistr('Opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122786677025899)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'cs'
,p_message_text=>'Odkazy na oblasti'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143726031025906)
,p_name=>'REPORT'
,p_message_language=>'cs'
,p_message_text=>'Sestava'
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154032106025909)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'cs'
,p_message_text=>unistr('Vykazovan\00E9 obdob\00ED')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124236935613025933)
,p_name=>'REPORT_LABEL'
,p_message_language=>'cs'
,p_message_text=>'Sestava: %0'
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154725184025909)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'cs'
,p_message_text=>'Sestava celkem'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100430386025893)
,p_name=>'RESET'
,p_message_language=>'cs'
,p_message_text=>unistr('Obnovit str\00E1nkov\00E1n\00ED')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129178970025901)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Obnovit str\00E1nkov\00E1n\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159264815025910)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'cs'
,p_message_text=>'Obnovit heslo'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135093277025903)
,p_name=>'RESTORE'
,p_message_language=>'cs'
,p_message_text=>'Obnovit'
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124168656460025913)
,p_name=>'RESULTS'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDsledky')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160304604025910)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1vrat do aplikace.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124160766099025911)
,p_name=>'RIGHT'
,p_message_language=>'cs'
,p_message_text=>'Vpravo'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192790888025920)
,p_name=>'ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158\00E1dka %0')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143363294025905)
,p_name=>'ROW_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\010Det \0159\00E1dek')
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033192579025873)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'cs'
,p_message_text=>'Funkce Ask Oracle'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033412902025873)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'cs'
,p_message_text=>'Funkce Close Ask Oracle'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033752562025874)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Seznam ozn\00E1men\00ED')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033376147025873)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Otev\0159\00EDt Ask Oracle?')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033666999025874)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'cs'
,p_message_text=>unistr('Mapov\00E1n\00ED produktu')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033534257025873)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Seznam n\00E1vrh\016F')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034441818025874)
,p_name=>'RW_CLEAR'
,p_message_language=>'cs'
,p_message_text=>'Vymazat'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034390605025874)
,p_name=>'RW_CLOSE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zav\0159\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034124571025874)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit v\00EDce')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034596797025874)
,p_name=>'RW_GO_TO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ej\00EDt na')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033952505025874)
,p_name=>'RW_GP_STEP'
,p_message_language=>'cs'
,p_message_text=>'Krok'
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034026892025874)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'cs'
,p_message_text=>'/'
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124033813494025874)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159epnout zobrazen\00ED krok\016F')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032958980025873)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'cs'
,p_message_text=>unistr('Skr\00FDt heslo')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034205124025874)
,p_name=>'RW_OPEN'
,p_message_language=>'cs'
,p_message_text=>unistr('Otev\0159\00EDt')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032770183025873)
,p_name=>'RW_ORACLE'
,p_message_language=>'cs'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124032833801025873)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit heslo'
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124034676429025874)
,p_name=>'RW_START'
,p_message_language=>'cs'
,p_message_text=>unistr('Za\010D\00E1tek')
,p_is_js_message=>true
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124159751762025910)
,p_name=>'SAVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ulo\017Eit')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155995460025909)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('Alternativn\00ED v\00FDchoz\00ED nastaven\00ED')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156308620025909)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'cs'
,p_message_text=>'Popis'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155801375025909)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('Prim\00E1rn\00ED v\00FDchoz\00ED nastaven\00ED')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156630130025909)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'cs'
,p_message_text=>unistr('K\00A0dispozici je v\00EDce ne\017E %0\00A0\0159\00E1dek. Nav\00FD\0161en\00EDm selektoru \0159\00E1dek zobraz\00EDte v\00EDce \0159\00E1dek.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124224025062025929)
,p_name=>'SEARCH'
,p_message_language=>'cs'
,p_message_text=>unistr('Vyhled\00E1v\00E1n\00ED')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115515932025897)
,p_name=>'SECONDS'
,p_message_language=>'cs'
,p_message_text=>'sekundy'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155484608025909)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'cs'
,p_message_text=>unistr('Viz p\0159\00EDloha')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216047966025927)
,p_name=>'SELECT_ROW'
,p_message_language=>'cs'
,p_message_text=>unistr('Vybrat \0159\00E1dek')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155151467025909)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'cs'
,p_message_text=>unistr('Vypn\011Bte re\017Eim \010Dte\010Dky obrazovky')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155257395025909)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'cs'
,p_message_text=>unistr('Zapn\011Bte re\017Eim \010Dte\010Dky obrazovky')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151482024025908)
,p_name=>'SHOW'
,p_message_language=>'cs'
,p_message_text=>'Zobrazit'
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217815489025928)
,p_name=>'SHOW_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit v\0161e')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124242634707025935)
,p_name=>'SIGN_IN'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ihl\00E1sit')
,p_version_scn=>2692447
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124193596884025920)
,p_name=>'SIGN_OUT'
,p_message_language=>'cs'
,p_message_text=>unistr('Odhl\00E1sit se')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144394568025906)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed %0\00A0dny')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151901308025908)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Od t\00E9to chv\00EDle za %0\00A0dn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144282409025906)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed %0\00A0hodinami')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151801854025908)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Od t\00E9to chv\00EDle za %0\00A0hodin')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144190070025906)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('p\0159ed %0\00A0minutami')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151759840025908)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Od t\00E9to chv\00EDle za %0\00A0minut')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144542568025906)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed %0\00A0m\011Bs\00EDci')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152114817025908)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Od t\00E9to chv\00EDle za %0\00A0m\011Bs\00EDc\016F')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152375943025908)
,p_name=>'SINCE_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Nyn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144015823025906)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('p\0159ed %0\00A0sekundami')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124151678079025908)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Od t\00E9to chv\00EDle za %0\00A0sekund')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144402614025906)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed %0\00A0t\00FDdny')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152000316025908)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Od t\00E9to chv\00EDle za %0\00A0t\00FDdn\016F')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124144603783025906)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ed %0\00A0lety')
,p_is_js_message=>true
,p_version_scn=>2692427
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152299123025908)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Od t\00E9to chv\00EDle za %0\00A0let')
,p_is_js_message=>true
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138110584025904)
,p_name=>'STANDARD'
,p_message_language=>'cs'
,p_message_text=>unistr('Standardn\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155091793025909)
,p_name=>'START_DATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Datum zah\00E1jen\00ED')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090258173025890)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'cs'
,p_message_text=>unistr('Tento e-mail jste obdr\017Eeli ze subskripce Interaktivn\00ED sestavy vytvo\0159en\00E9 u\017Eivatelem %0.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251815498025938)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'cs'
,p_message_text=>'Subskripce'
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201214321025923)
,p_name=>'TAB'
,p_message_language=>'cs'
,p_message_text=>'Karta'
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115471945025897)
,p_name=>'TITLE'
,p_message_language=>'cs'
,p_message_text=>'Nadpis'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095111145025891)
,p_name=>'TODAY'
,p_message_language=>'cs'
,p_message_text=>'Dnes'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154631828025909)
,p_name=>'TOTAL'
,p_message_language=>'cs'
,p_message_text=>'Celkem'
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096482924025892)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Lze vybrat maxim\00E1ln\011B %0\00A0sloupc\016F.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052298262025879)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Sbalit v\0161e')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052821003025879)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Sbalit v\0161e n\00ED\017Ee')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124051892219025879)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Rozbalit v\0161e')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052546706025879)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Rozbalit v\0161e n\00ED\017Ee')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124053031576025879)
,p_name=>'TREE.REPARENT'
,p_message_language=>'cs'
,p_message_text=>unistr('Nad\0159adit')
,p_is_js_message=>true
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175119740025915)
,p_name=>'TREES'
,p_message_language=>'cs'
,p_message_text=>unistr('Stromov\00E1 struktura')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217930944025928)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Povinn\00E9')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124138852380025904)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Neopr\00E1vn\011Bn\00FD')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124189021862025919)
,p_name=>'UNAVAILABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nen\00ED k\00A0dispozici')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152712104025908)
,p_name=>'UNKNOWN'
,p_message_language=>'cs'
,p_message_text=>unistr('Nezn\00E1m\00FD')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091175503025890)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Do\0161lo k\00A0nerozpoznan\00E9 chyb\011B ov\011B\0159ov\00E1n\00ED.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093371755025891)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'cs'
,p_message_text=>unistr('Pokud si ji\017E nep\0159ejete dost\00E1vat e-maily, m\016F\017Eete kliknut\00EDm na <a href="%0">zru\0161it subskripci</a> upravit svou subskripci.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124090175751025890)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Pokud si ji\017E nep\0159ejete dost\00E1vat e-maily, m\016F\017Eete prov\00E9st spr\00E1vu sv\00E9 subskripce v n\00E1sleduj\00EDc\00EDm odkazu:')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124129631507025901)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nepodporovan\00FD typ dat')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116775140025898)
,p_name=>'UPDATE'
,p_message_language=>'cs'
,p_message_text=>'aktualizace'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115378409025897)
,p_name=>'UPDATED'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizov\00E1no')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058555642025881)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'cs'
,p_message_text=>unistr('Prob\00EDh\00E1 upgrade')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124058838396025881)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'cs'
,p_message_text=>unistr('Prob\00EDh\00E1 p\0159echod na vy\0161\0161\00ED verzi \0159e\0161en\00ED Oracle APEX. Tento proces obvykle trv\00E1 do 3\00A0minut.')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122108995025899)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadovan\00E1 adresa URL byla zak\00E1z\00E1na. Kontaktujte sv\00E9ho spr\00E1vce.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124143247296025905)
,p_name=>'USER'
,p_message_language=>'cs'
,p_message_text=>unistr('U\017Eivatel')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124166436524025912)
,p_name=>'USERNAME'
,p_message_language=>'cs'
,p_message_text=>unistr('U\017Eivatelsk\00E9 jm\00E9no')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207890859025925)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'cs'
,p_message_text=>unistr('U\017Eivatelsk\00E9 jm\00E9no je p\0159\00EDli\0161 dlouh\00E9. Limit je %0\00A0znak\016F.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150385870025907)
,p_name=>'USERS'
,p_message_language=>'cs'
,p_message_text=>unistr('u\017Eivatel\00E9')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124207429416025924)
,p_name=>'USER_EXISTS'
,p_message_language=>'cs'
,p_message_text=>unistr('U\017Eivatelsk\00E9 jm\00E9no ji\017E existuje.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124221226143025929)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Profilov\00FD obr\00E1zek u\017Eivatele %0')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083143415025888)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'cs'
,p_message_text=>'Automatizace - %0'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081671356025887)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'cs'
,p_message_text=>'Strana %0 - %1'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084538528025888)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'cs'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124084674764025888)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'cs'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083556973025888)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'cs'
,p_message_text=>unistr('Konfigurace hled\00E1n\00ED - %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083452475025888)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'cs'
,p_message_text=>unistr('Sd\00EDlen\00FD dynamick\00FD seznam hodnot - %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124083282070025888)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'cs'
,p_message_text=>unistr('Definice \00FAlohy - %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081769105025888)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED postup - %0 ')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103817062025894)
,p_name=>'VALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Platn\00E9')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095417839025891)
,p_name=>'VALIDATIONS'
,p_message_language=>'cs'
,p_message_text=>unistr('Ov\011B\0159en\00ED')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156142936025909)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'cs'
,p_message_text=>unistr('Mus\00ED b\00FDt zad\00E1na hodnota')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202495077025923)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro %0 mus\00ED b\00FDt zad\00E1na hodnota')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125026309025900)
,p_name=>'VERTICAL'
,p_message_language=>'cs'
,p_message_text=>unistr('vertik\00E1ln\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116686398025898)
,p_name=>'VIEW'
,p_message_language=>'cs'
,p_message_text=>unistr('zobrazen\00ED')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150475610025907)
,p_name=>'VIEWS'
,p_message_language=>'cs'
,p_message_text=>unistr('zobrazen\00ED')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156984405025909)
,p_name=>'VIEW_ALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazit v\0161e')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096867707025892)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'cs'
,p_message_text=>unistr('Vizu\00E1ln\011B skryt\00FD odkaz')
,p_is_js_message=>true
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124137690248025904)
,p_name=>'WARNING'
,p_message_language=>'cs'
,p_message_text=>unistr('Upozorn\011Bn\00ED')
,p_is_js_message=>true
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116264689025898)
,p_name=>'WEEK'
,p_message_language=>'cs'
,p_message_text=>unistr('t\00FDden')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112193334025896)
,p_name=>'WEEKLY'
,p_message_language=>'cs'
,p_message_text=>unistr('T\00FDdn\011B')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116390662025898)
,p_name=>'WEEKS'
,p_message_language=>'cs'
,p_message_text=>unistr('t\00FDdny')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124156294361025909)
,p_name=>'WELCOME_USER'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00EDtejte: %0')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154456801025909)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'cs'
,p_message_text=>unistr('Nalezen\00E1 neplatn\00E1 hodnota, ov\011B\0159te zadan\00E1 data.')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154500913025909)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nalezen\00E1 neplatn\00E1 hodnota, ov\011B\0159te zadan\00E1 data.')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092343676025891)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'cs'
,p_message_text=>unistr('Nalezeno neplatn\00E9 datum, ov\011B\0159te form\00E1t data.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124154317038025909)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'cs'
,p_message_text=>unistr('Nalezena neplatn\00E1 hodnota \010D\00EDsla, ov\011B\0159te form\00E1t \010D\00EDsla.')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103422814025894)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'cs'
,p_message_text=>unistr('Nalezeno neplatn\00E9 \010Dasov\00E9 raz\00EDtko. Ov\011B\0159te form\00E1t \010Dasov\00E9ho raz\00EDtka.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124127970423025901)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('\201E%0\201C nelze v\00E1zat. Pro v\00EDcebajtov\00E9 polo\017Eky pou\017Eijte dvojit\00E9 uvozovky nebo ov\011B\0159te, \017Ee d\00E9lka polo\017Eky nen\00ED v\00EDce ne\017E 30\00A0bajt\016F. Pro odkaz na polo\017Eky del\0161\00ED ne\017E 30\00A0bajt\016F pou\017Eijte syntaxi v().')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117795565025898)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDstup byl odep\0159en kontrolou zabezpe\010Den\00ED %0')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120210552025899)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Aplikace nen\00ED dostupn\00E1')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118662031025898)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'cs'
,p_message_text=>'Aplikace nebyla nalezena.'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118770375025898)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('aplikace\00A0=\00A0%0 pracovn\00ED prostor\00A0=\00A0%1')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119116704025898)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDstup k\00A0t\00E9to aplikaci je omezen. Opakujte pokus pozd\011Bji.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119088416025898)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDstup k\00A0t\00E9to aplikaci je vyhrazen pouze pro v\00FDvoj\00E1\0159e aplikac\00ED. Opakujte pokus pozd\011Bji.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118296152025898)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-7744 Nelze zpracovat v\011Btev na funkci vracej\00EDc\00ED adresu URL.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118101150025898)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-7744 Nelze zpracovat v\011Btev na funkci vracej\00EDc\00ED str\00E1nku.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118427265025898)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-1430 Vol\00E1n\00ED zobrazen\00ED z\00A0procesu str\00E1nky nen\00ED podporov\00E1no: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119572631025898)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-1018 Chyba p\0159i maz\00E1n\00ED pam\011Bti krok\016F pam\011Bti cache.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117915185025898)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-1005 Nezn\00E1m\00FD typ v\00FDpo\010Dtu.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118828139025898)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-1201 ID relace nen\00ED nastaveno na p\0159izp\016Fsoben\00E9 ov\011B\0159ov\00E1n\00ED.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118910753025898)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('strana\00A0=\00A0%0')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118531380025898)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-7620 Nelze ur\010Dit pracovn\00ED prostor pro aplikaci (%0).')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099024738025893)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'cs'
,p_message_text=>'Upravit'
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117656920025898)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-1802 Nelze naj\00EDt ID polo\017Eky \201E%0\201C')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117312521025898)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-1002 v\00A0aplikaci \201E%1\201C nelze naj\00EDt ID polo\017Eky \201E%0\201C.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117478036025898)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'cs'
,p_message_text=>unistr('Neo\010Dek\00E1van\00E1 chyba. Na \00FArovni aplikace nebo str\00E1nky nelze naj\00EDt n\00E1zev polo\017Eky.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117850457025898)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Ji\017E jste na prvn\00ED str\00E1nce dat.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134309704025903)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'cs'
,p_message_text=>unistr('ID polo\017Eky (%0) nen\00ED polo\017Eka definovan\00E1 na aktu\00E1ln\00ED str\00E1nce.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091938890025890)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eka nemus\00ED b\00FDt nastavena p\0159ed\00E1n\00EDm argument\016F aplikaci.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092288196025891)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'cs'
,p_message_text=>unistr('(Nebyl poskytnut \017E\00E1dn\00FD kontroln\00ED sou\010Det)')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091705940025890)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eka m\016F\017Ee b\00FDt nastavena, pokud je doprov\00E1zena kontroln\00EDm sou\010Dtem \201Ez\00E1lo\017Eky na \00FArovni u\017Eivatele\201C.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091630522025890)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eka m\016F\017Ee b\00FDt nastavena, pokud je doprov\00E1zena kontroln\00EDm sou\010Dtem \201Ez\00E1lo\017Eky na \00FArovni aplikace\201C.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091848476025890)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eku lze nastavit, pokud je doprov\00E1zena kontroln\00EDm sou\010Dtem \201Erelace\201C.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091552237025890)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eka nem\00E1 \017E\00E1dnou ochranu.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119602280025898)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'cs'
,p_message_text=>unistr('\017D\00E1dn\00E1 n\00E1pov\011Bda str\00E1nky nen\00ED k\00A0dispozici.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124107513157025895)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED prostor %0 nem\00E1 \017E\00E1dn\00E1 opr\00E1vn\011Bn\00ED k\00A0anal\00FDze jako sch\00E9ma %1.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124118010156025898)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-1010 Byl p\0159ekro\010Den limit rekurze zpracov\00E1n\00ED v\011Btve na str\00E1nku. %0')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124074542552025885)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Str\00E1nka nen\00ED k\00A0dispozici. Vzor str\00E1nky nelze spustit.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092170753025891)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'cs'
,p_message_text=>unistr('Tuto str\00E1nku nelze vyvolat pomoc\00ED adresy URL nebo pomoc\00ED p\0159\00EDkazu GET nebo POST pro proceduru zobrazen\00ED. Str\00E1nka mus\00ED b\00FDt vol\00E1na pomoc\00ED typu v\011Btve "V\011Btev na str\00E1nku".')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124176969273025915)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i pokusu o\00A0ulo\017Een\00ED ne\010D\00EDseln\00E9 hodnoty v\00A0polo\017Ece %0.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109208844025896)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'cs'
,p_message_text=>unistr('Sch\00E9ma anal\00FDzy aplikace \201E%0\201C v\00A0datab\00E1zi neexistuje.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109339793025896)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'cs'
,p_message_text=>unistr('\00DA\010Dty na VNIT\0158N\00CDM pracovn\00EDm prostoru lze pou\017E\00EDt pouze pro p\0159\00EDstup do &PRODUCT_NAME. <a href="%0"> Slu\017Eby spr\00E1vy </a>.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117220146025898)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA\20111029 Nelze ulo\017Eit informace o\00A0relaci. Relace\00A0=\00A0%0 polo\017Eka\00A0=\00A0%1')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120350807025899)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze zastavit trasov\00E1n\00ED: %0')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124117588771025898)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Neo\010Dek\00E1van\00E1 chyba')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128380369025901)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba v\00A0update_substitution_cache: %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120470761025899)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('K\00A0zobrazen\00ED n\00E1pov\011Bdy je t\0159eba uv\00E9st aplikaci a\00A0str\00E1nku.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124142182743025905)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>'Automatizace nenalezena.'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077670685025886)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba automatick\00E9ho dotazu: %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121504480025899)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('Vymaz\00E1no %0\00A0relac\00ED')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062864195025882)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('K\00F3d %0 nelze spustit! Nen\00ED podporov\00E1n datab\00E1z\00ED nebo nen\00ED povolen parametrem instance MLE_LANGUAGES.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124060492692025881)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00EDcejazy\010Dn\00FD modul nen\00ED v\00A0t\00E9to verzi datab\00E1ze k\00A0dispozici!')
,p_version_scn=>2692416
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099685205025893)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Pole kolekce aplikac\00ED nesm\00ED m\00EDt hodnotu null')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099454801025893)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00E9 \010D\00EDslo atributu prvku %0 je neplatn\00E9. \010C\00EDslo atributu mus\00ED b\00FDt mezi 1 a\00A0%1')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099952041025893)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'cs'
,p_message_text=>unistr('Kolekce aplikac\00ED existuje')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099786881025893)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev kolekce nesm\00ED m\00EDt hodnotu null')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099845607025893)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'cs'
,p_message_text=>unistr('N\00E1zev kolekce nesm\00ED b\00FDt del\0161\00ED ne\017E 255\00A0znak\016F')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099269395025893)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Kolekce aplikac\00ED %0 neexistuje')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100058422025893)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'cs'
,p_message_text=>unistr('Kurzor je\0161t\011B nen\00ED otev\0159en\00FD')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099345768025893)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Sekvence prvk\016F %0 v\00A0kolekci aplikac\00ED %1 neexistuje'),
''))
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124099536201025893)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Sekvence prvk\016F %0 v\00A0kolekci aplikac\00ED \201E%1\201C neexistuje')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052343950025879)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'cs'
,p_message_text=>unistr('Algoritmus %0 nen\00ED pro ECDSA podporov\00E1n.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124052068061025879)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'cs'
,p_message_text=>unistr('Eliptick\00E1 k\0159ivka %0 nen\00ED podporov\00E1na.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177712475025916)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Kryptografick\00E1 funkce \201E%0\201C nen\00ED v\00A0tomto syst\00E9mu podporov\00E1na.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230034767025931)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159\00EDstupnost testov\00E1na')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121061605025899)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'cs'
,p_message_text=>unistr('Zav\0159\00EDt')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121119128025899)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'cs'
,p_message_text=>unistr('Volby p\0159izp\016Fsoben\00ED str\00E1nky')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121219476025899)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00FDchoz\00ED')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121345191025899)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'cs'
,p_message_text=>'Zobrazeno'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121412022025899)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'cs'
,p_message_text=>'Skryto'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120809755025899)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'cs'
,p_message_text=>unistr('Zkontrolujte oblasti, kter\00E9 chcete na t\00E9to str\00E1nce zahrnout. Za\0161krtnut\00E9 oblasti se nemus\00ED zobrazit, pokud nejste ve spr\00E1vn\00E9m kontextu aplikace nebo nem\00E1te spr\00E1vn\00E1 opr\00E1vn\011Bn\00ED.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120987991025899)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'cs'
,p_message_text=>unistr('Tuto str\00E1nku nelze p\0159izp\016Fsobit.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230378175025931)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'cs'
,p_message_text=>unistr('Vzhled t\00E9to aplikace si m\016F\017Eete p\0159izp\016Fsobit zm\011Bnou stylu motivu. Vyberte styl motivu ze seznamu n\00ED\017Ee a\00A0klikn\011Bte na Pou\017E\00EDt zm\011Bny.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124231172445025931)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'cs'
,p_message_text=>unistr('Zobrazen\00ED oblasti')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230295488025931)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'cs'
,p_message_text=>unistr('Pou\017E\00EDt v\00FDchoz\00ED styl aplikace')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124230157801025931)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'cs'
,p_message_text=>'Vzhled '
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174340485025915)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Index sloupce uveden\00FD v\00A0agregaci %0 neexistuje.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124067066611025883)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ipojen\00ED exportu dat nen\00ED pro form\00E1t %0 podporov\00E1no.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030088206025872)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('CLOB v\00FDstup nen\00ED podporov\00E1n pro form\00E1t %0.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174017116025915)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159eru\0161eni sloupce mus\00ED b\00FDt na za\010D\00E1tku pole sloupc\016F.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174122125025915)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Index skupiny sloupc\016F odkazovan\00FD v\00A0%0 neexistuje.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124081238500025887)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'cs'
,p_message_text=>'exportovat'
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124088427738025889)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'cs'
,p_message_text=>unistr('Form\00E1t exportu mus\00ED b\00FDt XML pomoc\00ED ORDS jako tiskov\00E9ho serveru.')
,p_version_scn=>2692420
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174465416025915)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Index sloupce uveden\00FD ve zv\00FDrazn\011Bn\00ED %0 neexistuje.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124077832276025886)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD form\00E1t exportu: %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124174267313025915)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Index nad\0159azen\00E9 skupiny uveden\00FD v\00A0%0 neexistuje.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124199495333025922)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec %1 tabulky %0 je sloupec identity \201EGENERATED ALWAYS\201C. Ujist\011Bte se, \017Ee \017E\00E1dn\00FD sloupec zdroje nen\00ED v\00A0dialogov\00E9m okn\011B Konfigurovat namapov\00E1n na sloupec %1.')
,p_version_scn=>2692438
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111047592025896)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00FD interval potvrzen\00ED je p\0159\00EDli\0161 n\00EDzk\00FD.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111175746025896)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro na\010D\00EDt\00E1n\00ED dat nebyly poskytnuty \017E\00E1dn\00E9 sloupce.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112462285025896)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro selektor \0159\00E1dek \201E%0\201C nebyly nalezeny \017E\00E1dn\00E9 sloupce. Zkuste automatickou detekci nebo zkontrolujte strukturu JSON.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121848349025899)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0souboru XLSX nebyly nalezeny \017E\00E1dn\00E9 listy.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066921831025883)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadovan\00E9 \00FArovn\011B hierarchie ke zji\0161t\011Bn\00ED (%0) p\0159esahuj\00ED maxim\00E1ln\00ED po\010Det %1.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124121749069025899)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00FD list v\00A0souboru XLSX neexistuje.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124100136756025893)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktu\00E1ln\00ED verze dat v\00A0datab\00E1zi se od zah\00E1jen\00ED procesu aktualizace u\017Eivatelem zm\011Bnila.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103035262025894)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i aktualizaci sloupc\016F sestavy: %0')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213542944025926)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 nelze p\0159ev\00E9st na SDO_GEOMETRY.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150012962025907)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec %0, kter\00FD je datov\00E9ho typu %1, nelze p\0159ev\00E9st na VARCHAR2!')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157449842025910)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec \201E%0\201C uveden\00FD pro atribut \201E%1\201C nebyl ve zdroji dat nalezen!')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093543963025891)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'cs'
,p_message_text=>unistr('Typ filtru %0 nen\00ED pro sloupce s\00A0v\00EDce hodnotami podporov\00E1n.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124217060778025927)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD filtr \201Emezi\201C.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124072669086025885)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Ve sloupci %0, \0159\00E1dku #%1 nebyla nalezena \017E\00E1dn\00E1 hodnota %2.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124069381441025884)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec %0 nebo \0159\00E1dek #%1 neexistuje.')
,p_version_scn=>2692418
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055903377025880)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Byl zad\00E1n neplatn\00FD typ seznamu hodnot.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055889030025880)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00FD typ dotazu. Typ dotazu mus\00ED b\00FDt Tabulka, SQL dotaz nebo funkce PL/SQL vracej\00EDc\00ED SQL dotaz.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124150169841025907)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Anal\00FDza dotazu SQL selhala!'),
'%0'))
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157535475025910)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00E1 pozice sloupce %0 pro atribut \201E%1\201C nebyla v\00A0p\0159\00EDkazu SQL nalezena!')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124047513511025878)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'cs'
,p_message_text=>unistr('Ve v\00EDcehodnotov\00E9m filtru bylo pou\017Eito p\0159\00EDli\0161 mnoho polo\017Eek.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124157301390025910)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro atribut \201E%0\201C nen\00ED zad\00E1n \017E\00E1dn\00FD sloupec.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055720405025880)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('T\011Blo funkce PL/SQL nevr\00E1tilo hodnotu.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124173163969025914)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'cs'
,p_message_text=>unistr('Datov\00FD zdroj REST neobsahuje operaci ke zpracov\00E1n\00ED po\017Eadovan\00E9 akce DML.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214868715025927)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('Filtry rozsahu jsou podporov\00E1ny pro typy dat NUMBER, DATE nebo TIMESTAMP.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124035715175025874)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Po\017Eadavek selhal s hl\00E1\0161en\00EDm %0')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124039261225025875)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159evod GeoJSON na SDO_GEOMETRY (sloupec\00A0%0) nen\00ED v\00A0t\00E9to datab\00E1zi k\00A0dispozici.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042691437025876)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159evod SDO_GEOMETRY (sloupec %0) nen\00ED pro datov\00E9 zdroje XML podporov\00E1n.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124066777436025883)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'cs'
,p_message_text=>unistr('Znak %0 nen\00ED podporov\00E1n jako odd\011Blova\010D v\00EDce hodnot.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124214958105025927)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Tuto funkci nelze v\00A0kontextu dotazu pou\017E\00EDt.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124042704881025876)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>'Neshoda typu dat sloupce.'
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124076281309025886)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'cs'
,p_message_text=>unistr('Tento datov\00FD zdroj nepodporuje zm\011Bnu v\00EDce \0159\00E1dk\016F.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055611579025880)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'cs'
,p_message_text=>unistr('Intern\00ED limity vazby ORDS OUT byly p\0159ekro\010Deny. Sni\017Ete po\010Det \0159\00E1dk\016F DML.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158395510025910)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Odpov\011B\010F JSON ze vzd\00E1len\00E9ho serveru nelze analyzovat: '),
'%0'))
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124055516421025880)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Nezn\00E1m\00FD nebo nespr\00E1vn\00FD typ kontextu.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124079667848025887)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'cs'
,p_message_text=>unistr('Nepodporovan\00E9 komponenty pro \010Diteln\00FD export: %0')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124177671350025916)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Analyz\00E1tor tento typ souboru nepodporuje.')
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128497080025901)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Neopr\00E1vn\011Bn\00FD p\0159\00EDstup (wwv_flow_api.set_credentials nen\00ED nastaveno).')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103376964025894)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'cs'
,p_message_text=>unistr('Pracovn\00ED prostor se nevytvo\0159il, proto\017Ee ji\017E existuje.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124103289334025894)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'cs'
,p_message_text=>unistr('Skupina u\017Eivatel\016F nebyla vytvo\0159ena, proto\017Ee ji\017E existuje.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114612224025897)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'cs'
,p_message_text=>unistr('Bylo nalezeno duplicitn\00ED u\017Eivatelsk\00E9 jm\00E9no pro %0.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114742529025897)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i na\010D\00EDt\00E1n\00ED u\017Eivatel\016F. Selhalo u\00A0u\017Eivatele %0.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125549405025900)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Na\010Detlo by %0\00A0u\017Eivatel\016F.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125331535025900)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'cs'
,p_message_text=>'Heslo'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125423553025900)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'cs'
,p_message_text=>unistr('Opr\00E1vn\011Bn\00ED')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125163051025900)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'cs'
,p_message_text=>unistr('U\017Eivatelsk\00E9 jm\00E9no')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205558154025924)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i vykreslov\00E1n\00ED polo\017Eky str\00E1nky #COMPONENT_NAME#.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120516978025899)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Polo\017Eku str\00E1nky nelze zobrazit, proto\017Ee formul\00E1\0159 HTML je\0161t\011B nebyl otev\0159en.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124078950602025887)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i v\00FDpo\010Dtu v\00FDchoz\00ED hodnoty polo\017Eky str\00E1nky #COMPONENT_NAME#.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119823356025899)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba v\00A0n\00E1sledn\00E9m v\00FDpo\010Dtu polo\017Eky pro polo\017Eku str\00E1nky #COMPONENT_NAME#.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119768099025899)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i v\00FDpo\010Dtu zdrojov\00E9 hodnoty polo\017Eky pro polo\017Eku str\00E1nky #COMPONENT_NAME#.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096500357025892)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'cs'
,p_message_text=>unistr('Neautorizovan\00FD p\0159\00EDstup.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124046010785025877)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota %0 z\00A0%1 nen\00ED platn\00FDm polem JSON.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120065685025899)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'cs'
,p_message_text=>unistr('JavaScript nen\00ED podporov\00E1n.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120172212025899)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'cs'
,p_message_text=>'Seznam'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124120784920025899)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'cs'
,p_message_text=>'Nelze inicializovat dotaz.'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128727858025901)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktualizace %0 nen\00ED podporov\00E1na.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122261909025899)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E9 ID polo\017Eky: %0')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149922679025907)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro tuto polo\017Eku neexistuje \017E\00E1dn\00E1 n\00E1pov\011Bda.')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111709232025896)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('Generov\00E1n\00ED dotazu pro graf selhalo. Zkontrolujte nastaven\00ED zdroje a mapov\00E1n\00ED sloupc\016F.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124113080494025897)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E1 hodnota parametru p_mail_id: %0')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149769460025907)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze pou\017E\00EDt "Komu" nebo "Odpov\011Bd\011Bt komu" jako adresu "Od koho", proto\017Ee obsahuj\00ED v\00EDce e-mailov\00FDch adres.')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124234675977025933)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ekro\010Dili jste maxim\00E1ln\00ED po\010Det e-mailov\00FDch zpr\00E1v na pracovn\00ED prostor. Obra\0165te se na sv\00E9ho spr\00E1vce.')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091230013025890)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'cs'
,p_message_text=>unistr('Tento postup mus\00ED b\00FDt vyvol\00E1n z\00A0relace aplikace.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112900581025897)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro parametr %0 byla zad\00E1na hodnota null.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124171006329025914)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('\0160ablona e-mailu \201E%0\201C nebyla v\00A0aplikaci %1 nalezena.')
,p_version_scn=>2692433
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124247552695025936)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro odes\00EDl\00E1n\00ED e-mail\016F mus\00ED b\00FDt nastaven parametr instance SMTP_HOST_ADDRESS.')
,p_version_scn=>2692448
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124112334896025896)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Pokud chcete odeslat po\0161tu, mus\00EDte zadat p\0159\00EDjemce zpr\00E1vy.')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124237032208025933)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze nav\00E1zat spojen\00ED SMTP pomoc\00ED konfigurovan\00E9ho e-mailov\00E9ho serveru.')
,p_version_scn=>2692446
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124212364786025926)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'cs'
,p_message_text=>unistr('Neplatn\00E9 vol\00E1n\00ED Ajax!')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096275429025892)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro modul plugin %0 nebyla definov\00E1na \017E\00E1dn\00E1 funkce Ajax')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202837774025923)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro modul plug-in %0 nebyla definov\00E1na \017E\00E1dn\00E1 funkce zpracov\00E1n\00ED')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096305293025892)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro modul plugin %0 nebyla definov\00E1na \017E\00E1dn\00E1 funkce vykreslen\00ED')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213228058025926)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Modul plugin \201E%0\201C datov\00E9ho zdroje REST neobsahuje funkci \201EMo\017Enosti"')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213130422025926)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Modul plugin \201E%0\201C datov\00E9ho zdroje REST neobsahuje funkci DML.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213388688025926)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Modul plugin \201E%0\201C datov\00E9ho zdroje REST neobsahuje funkci spu\0161t\011Bn\00ED.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124213494900025926)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'cs'
,p_message_text=>unistr('Modul plugin \201E%0\201C datov\00E9ho zdroje REST neobsahuje funkci na\010Dten\00ED.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093799239025891)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('B\011Bhem zpracov\00E1n\00ED modulu plugin do\0161lo k\00A0chyb\011B v\00A0k\00F3du PLSQL.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102362853025893)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Mus\00ED b\00FDt zad\00E1na hodnota.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124135385728025903)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'cs'
,p_message_text=>unistr('Typ dat %0 nelze p\0159ev\00E9st na VARCHAR2!')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223536283025929)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec \201E%0\201C uveden\00FD pro atribut \201E%1\201C nebyl v\00A0p\0159\00EDkazu SQL nalezen!')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124050837319025879)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'cs'
,p_message_text=>unistr('Hodnota %0 z\00A0%1 nen\00ED platn\00FDm polem JSON.')
,p_version_scn=>2692414
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200721126025923)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro %0 mus\00ED b\00FDt zad\00E1n dotaz na seznam hodnot nebo pojmenovan\00FD seznam hodnot.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124202338321025923)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'cs'
,p_message_text=>unistr('Chybn\00FD po\010Det sloupc\016F vybran\00FDch v\00A0dotazu LOV SQL pro %0. Viz p\0159\00EDklady platn\00FDch v\00FDrok\016F.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223306624025929)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro atribut \201E%0\201C nen\00ED zad\00E1n \017E\00E1dn\00FD sloupec.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252596442025938)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00E1 hodnota %0 pro atribut \201E%1\201C nen\00ED \010D\00EDseln\00E1.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124205876315025924)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('%0 m\00E1 ve v\00FDroku nespr\00E1vn\00FD typ dat. Sloupec#\00A0%1 je\00A0%2, ale o\010Dek\00E1v\00E1 se %3.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124223434477025929)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec \201E%0\201C uveden\00FD pro atribut \201E%1\201C m\00E1 typ dat %2, ale m\011Bl by m\00EDt %3.')
,p_version_scn=>2692445
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124092947196025891)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze naj\00EDt rozlo\017Een\00ED sestavy.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124080583724025887)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ekro\010Den limit zpracov\00E1n\00ED na pozad\00ED pro %0.')
,p_version_scn=>2692419
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030851664025873)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'cs'
,p_message_text=>unistr('Jin\00FD proces %0 ji\017E b\011B\017E\00ED.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124030742658025873)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'cs'
,p_message_text=>unistr('Pro kontext %1 ji\017E b\011B\017E\00ED jin\00FD proces %0.')
,p_version_scn=>2692410
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124045766034025877)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'cs'
,p_message_text=>unistr('Odeslan\00E9 soubory nejsou viditeln\00E9 v\00A0aktivn\00ED relaci pro zpracov\00E1n\00ED %0.')
,p_version_scn=>2692412
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158216298025910)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'cs'
,p_message_text=>unistr('Funkci Compute Sum nelze pou\017E\00EDt pro sestavy zalo\017Een\00E9 na zdroji dat REST.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124119974834025899)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('CHYBA-2904 Nelze nastavit hodnotu z\00E1stupce.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124124927007025900)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba: Nezn\00E1m\00FD typ z\00E1stupce.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124062605931025882)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'cs'
,p_message_text=>unistr('Dotaz hled\00E1n\00ED je p\0159\00EDli\0161 dlouh\00FD.')
,p_version_scn=>2692417
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114008101025897)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('V\00A0aplikaci %0 nelze na\010D\00EDst sch\00E9ma ov\011B\0159ov\00E1n\00ED.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124122000112025899)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Nelze na\010D\00EDst komponentu %0.')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124192318965025920)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'cs'
,p_message_text=>unistr('ID z\00E1kazn\00EDka ji\017E pro aktu\00E1ln\00ED relaci existuje.')
,p_version_scn=>2692437
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124125231398025900)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'cs'
,p_message_text=>'E-mail'
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252072207025938)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'cs'
,p_message_text=>unistr('Ov\011B\0159en\00ED selhalo.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124152628060025908)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'cs'
,p_message_text=>unistr('Jeden nebo v\00EDce soubor\016F cookie v\00A0apex_util.g_request_cookies obsahuj\00ED neplatnou hodnotu.')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124134517793025903)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'cs'
,p_message_text=>unistr('Odpov\011B\010F z\00A0registru UDDI byla neplatn\00E1.')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124093826066025891)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'cs'
,p_message_text=>unistr('Zadan\00E1 adresa URL nevr\00E1tila platn\00FD dokument WSDL.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096693452025892)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'cs'
,p_message_text=>unistr('Dokument WSDL obsahuje v\00EDce vazeb SOAP. &PRODUCT_NAME. podporuje pouze WSDL s\00A0jednou vazbou SOAP. Kliknut\00EDm na Vytvo\0159it odkaz na webovou slu\017Ebu ru\010Dn\011B pokra\010Dujte ve vytv\00E1\0159en\00ED reference pro tuto slu\017Ebu.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124172274346025914)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'cs'
,p_message_text=>unistr('Odpov\011B\010F slu\017Eby nebyla ve form\00E1tu XML.')
,p_version_scn=>2692434
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124251934504025938)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'cs'
,p_message_text=>unistr('Token p\0159\00EDstupu OAuth nen\00ED k\00A0dispozici nebo jeho platnost vypr\0161ela.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124216499384025927)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'cs'
,p_message_text=>unistr('P\0159ekro\010Dili jste maxim\00E1ln\00ED po\010Det po\017Eadavk\016F na webov\00E9 slu\017Eby pro pracovn\00ED prostor. Obra\0165te se na sv\00E9ho spr\00E1vce.')
,p_version_scn=>2692444
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124252110286025938)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'cs'
,p_message_text=>unistr('Server odpov\011Bd\011Bl nepodporovan\00FDm typem tokenu OAuth.')
,p_version_scn=>2692450
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124096051843025892)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'cs'
,p_message_text=>unistr('Dokument WSDL neobsahoval vazbu pro SOAP, kter\00E1 je nutn\00E1 pro p\0159id\00E1n\00ED odkazu.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124091474554025890)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'cs'
,p_message_text=>unistr('Toto WSDL vy\017Eaduje p\0159ihla\0161ovac\00ED \00FAdaje pro ov\011B\0159en\00ED. N\00ED\017Ee zadejte u\017Eivatelsk\00E9 jm\00E9no a\00A0heslo.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124102476589025893)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'cs'
,p_message_text=>unistr('Modul vykreslen\00ED nerozum\00ED dokumentu WSDL. Kliknut\00EDm na Vytvo\0159it odkaz na webovou slu\017Ebu ru\010Dn\011B pokra\010Dujte ve vytv\00E1\0159en\00ED reference pro tuto slu\017Ebu.')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124175223144025915)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'cs'
,p_message_text=>'Aktualizaci nelze zpracovat.'
,p_version_scn=>2692435
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124201016288025923)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'cs'
,p_message_text=>unistr('Sloupec v\00FDsledk\016F a\00A0zobrazen\00ED v\00A0seznamu hodnot jsou stejn\00E9!')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124200974794025923)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('Seznam hodnot neobsahuje sloupec v\00FDsledk\016F.')
,p_version_scn=>2692440
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128660714025901)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i na\010D\00EDt\00E1n\00ED hodnoty sloupce: %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153568471025908)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'cs'
,p_message_text=>unistr('Aktu\00E1ln\00ED data tabulkov\00E9ho formul\00E1\0159e jsou zastaral\00E1. Zdrojov\00E1 data byla upravena.<br/> Klikn\011Bte <strong><a href="%0">sem</a></strong> pro zru\0161en\00ED proveden\00FDch zm\011Bn a\00A0znovu na\010Dt\011Bte data z\00A0datab\00E1ze.')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108722087025895)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i ur\010Dov\00E1n\00ED str\00E1nkovac\00EDho \0159et\011Bzce')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108698978025895)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('nelze ur\010Dit z\00E1hlav\00ED dotaz\016F:'),
'%0'))
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108825432025895)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'cs'
,p_message_text=>unistr('chyba p\0159i prov\00E1d\011Bn\00ED v\00FDm\011Bny z\00E1pat\00ED zpr\00E1vy')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108972072025895)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('anal\00FDza dotazu SQL selhala:'),
'%0',
'%1'))
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115015656025897)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'cs'
,p_message_text=>unistr('Minim\00E1ln\00ED po\017Eadovan\00FD po\010Det \0159\00E1dek: %0, nalezen\00E9, ale nezobrazen\00E9 \0159\00E1dky: %1')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111488654025896)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'cs'
,p_message_text=>unistr('sloupec dotazu \010D\00EDslo %0 (%1) je neplatn\00FD, sloupce, kter\00E9 pou\017E\00EDvaj\00ED HTML, vy\017Eaduj\00ED aliasov\00E9 n\00E1zvy')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124128592121025901)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'cs'
,p_message_text=>unistr('Chyba p\0159i z\00EDsk\00E1v\00E1n\00ED z\00E1hlav\00ED dotazu: %0')
,p_version_scn=>2692426
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109079779025895)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'chyba sestavy:',
'%0'))
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124149135904025907)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'cs'
,p_message_text=>unistr('\0158adit podle tohoto sloupce')
,p_version_scn=>2692429
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111547606025896)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'cs'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dotaz nelze analyzovat, zkontrolujte syntaxi dotazu.',
'(%0)',
'</p>'))
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153626393025908)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'cs'
,p_message_text=>unistr('Tento formul\00E1\0159 obsahuje neulo\017Een\00E9 zm\011Bny. Klikn\011Bte na tla\010D\00EDtko \201EOk\201C pro pokra\010Dov\00E1n\00ED bez ulo\017Een\00ED zm\011Bn.')
,p_version_scn=>2692431
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124158166364025910)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'cs'
,p_message_text=>unistr('Sch\00E9ma str\00E1nkov\00E1n\00ED sestavy (%0) nen\00ED u\00A0vybran\00E9ho zdroje dat podporov\00E1no.')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124111314557025896)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'cs'
,p_message_text=>unistr('sloupec dotazu \010D\00EDslo %0 (%1) je neplatn\00FD, pou\017Eijte alias sloupce')
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124115109390025897)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'cs'
,p_message_text=>unistr('\0159\00E1dky\00A0%0\2013%1 z\00A0v\00EDce ne\017E %2')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124155625027025909)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'cs'
,p_message_text=>unistr('%0\2013%1 z\00A0v\00EDce ne\017E %2')
,p_version_scn=>2692432
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124114989928025897)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'cs'
,p_message_text=>unistr('\0159\00E1dky\00A0%0\2013%1 z\00A0%2')
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124095726700025892)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'cs'
,p_message_text=>unistr('%0\2013%1 z\00A0%2')
,p_version_scn=>2692422
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124109110715025895)
,p_name=>'Y'
,p_message_language=>'cs'
,p_message_text=>'Y'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124116413160025898)
,p_name=>'YEAR'
,p_message_language=>'cs'
,p_message_text=>'rok'
,p_version_scn=>2692425
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124108346270025895)
,p_name=>'YEARS'
,p_message_language=>'cs'
,p_message_text=>'let'
,p_version_scn=>2692423
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124153727513025908)
,p_name=>'YES'
,p_message_language=>'cs'
,p_message_text=>'Ano'
,p_version_scn=>2692431
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
 p_id=>wwv_flow_imp.id(109678305570583962.4496)
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
 p_id=>1.4496
,p_name=>unistr('Zpr\00E1vy')
,p_alias=>'MESSAGES'
,p_step_title=>unistr('Zpr\00E1vy')
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
