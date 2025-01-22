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
,p_default_application_id=>4545
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4545 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4545
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131492133685032302')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'is'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4545)
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
 p_id=>wwv_flow_imp.id(4545)
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
 p_id=>wwv_flow_imp.id(728504220438374.4545)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4545)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4545)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4545)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4545)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4545)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4545)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4545)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4545)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4545)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4545)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4545)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4545)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4545)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4545)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4545)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4545)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.is'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4545)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4545)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4545)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4545)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4545)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4545)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4545)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.is'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4545)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4545)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4545)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4545)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4545)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4545)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.is'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4545)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4545)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4545)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.is'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4545)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4545)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4545)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4545)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4545)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4545)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4545)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4545)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4545)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4545)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4545)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4545)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4545)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4545)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4545)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4545)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4545)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.is'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4545)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4545)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4545)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4545)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4545)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4545)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4545)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4545)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4545)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4545)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4545)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4545)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4545)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4545)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4545)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4545)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4545)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.is'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4545)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4545)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4545)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4545)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4545)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4545)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4545)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4545)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4545)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4545)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4545)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4545)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4545)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4545)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4545)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.is'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4545)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4545)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4545)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4545)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4545)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4545)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4545)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4545)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4545)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4545)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4545)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4545)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4545)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4545)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4545)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4545)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4545)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4545)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4545)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4545)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4545)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4545)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4545)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4545)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4545)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4545)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4545)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4545)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4545)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4545)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4545)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4545)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4545)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4545)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4545)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4545)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4545)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4545)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4545)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4545)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4545)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4545)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4545)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4545)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4545)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4545)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4545)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4545)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4545)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4545)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4545)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4545)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4545)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4545)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4545)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4545)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4545)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4545)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4545)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4545)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4545)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4545)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4545)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4545)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4545)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4545)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4545)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4545)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4545)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4545)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4545)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4545)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4545)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4545)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4545)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4545)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4545)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4545)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4545)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4545)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4545)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4545)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4545)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4545)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4545)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4545)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4545)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4545)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4545)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4545)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4545)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4545)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4545)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4545)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4545)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4545)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4545)
,p_page_name=>'winlov'
,p_page_title=>'Leitargluggi'
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
,p_find_button_text=>'Leita'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Loka'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('N\00E6sta &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Fyrra'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">R\00F6\00F0 (ra\00F0ir) #FIRST_ROW# - #LAST_ROW#</div>')
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
 p_id=>wwv_flow_imp.id(649611609668764506.4545)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4545)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4545)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4545)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4545)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4545)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4545)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4545)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4545)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4545)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4545)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4545)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4545)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4545)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4545)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4545)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4545)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4545)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4545)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4545)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4545)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4545)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4545)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4545)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4545)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4545)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4545)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4545)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4545)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4545)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4545)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4545)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4545)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4545)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4545)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4545)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4545)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4545)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4545)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4545)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4545)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4545)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4545)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4545)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4545)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4545)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4545)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4545)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4545)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4545)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4545)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4545)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4545)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4545)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4545)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4545)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4545)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4545)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4545)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4545)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4545)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4545)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4545)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4545)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4545)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4545)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4545)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4545)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4545)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4545)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4545)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4545)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4545)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4545)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4545)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4545)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4545)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4545)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4545)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4545)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4545)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4545)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4545)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4545)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4545)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4545)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4545)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4545)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4545)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4545)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4545)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4545)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4545)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4545)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4545)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4545)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4545)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4545)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4545)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4545)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4545)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4545)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4545)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4545)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4545)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4545)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4545)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4545)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4545)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4545)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4545)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4545)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4545)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4545)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4545)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4545)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4545)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4545)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4545)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4545)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4545)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4545)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4545)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4545)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4545)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4545)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4545)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4545)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4545)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4545)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4545)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4545)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4545)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4545)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4545)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4545)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4545)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4545)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4545)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4545)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4545)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4545)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4545)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4545)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4545)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4545)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4545)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4545)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4545)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4545)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4545)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4545)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4545)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4545)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4545)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4545)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4545)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4545)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4545)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4545)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4545)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4545)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4545)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4545)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4545)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4545)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4545)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4545)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4545)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4545)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4545)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4545)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4545)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4545)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4545)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4545)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4545)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4545)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4545)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4545)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4545)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4545)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4545)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4545)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4545)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4545)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4545)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4545)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4545)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4545)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4545)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4545)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4545)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4545)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4545)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4545)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4545)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4545)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4545)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4545)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4545)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4545)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4545)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4545)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4545)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4545)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4545)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4545)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4545)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4545)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4545)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4545)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4545)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4545)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4545)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4545)
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
 p_id=>wwv_flow_imp.id(126590854028026695)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur %0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575405343026690)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'is'
,p_message_text=>unistr('Stj\00F3rnandi')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575366986026690)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'is'
,p_message_text=>'Notandanafn'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638018832026710)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangi hafna\00F0')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594961724026696)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'is'
,p_message_text=>unistr('%0 reikningurinn \00FEinn hefur veri\00F0 stofna\00F0ur.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578163517026691)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'is'
,p_message_text=>unistr('Reikningnum er l\00E6st.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562630468026686)
,p_name=>'AM_PM'
,p_message_language=>'is'
,p_message_text=>'AM / PM'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545420481026681)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'is'
,p_message_text=>unistr('tengill a\00F0ger\00F0ar')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545330293026680)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'is'
,p_message_text=>'tengill samtals'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709732238026732)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'is'
,p_message_text=>'Skipta %0'
,p_is_js_message=>true
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717531670026735)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'is'
,p_message_text=>'(Virkur)'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522360156026673)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'is'
,p_message_text=>unistr('Spjall hreinsa\00F0')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522274139026673)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'is'
,p_message_text=>'Hreinsa spjall'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518858620026672)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'is'
,p_message_text=>unistr('Sam\00FEykkja')
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518939904026672)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'is'
,p_message_text=>'Hafna'
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518647889026672)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'is'
,p_message_text=>'Samtalssaga'
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522053793026673)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita\00F0')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522166696026673)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita\00F0 \00E1 klemmuspjald')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521868108026673)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'is'
,p_message_text=>'Afrita'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521939571026673)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita \00E1 klemmuspjald')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519300302026672)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0sto\00F0arma\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519778585026672)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Gervigreind er \00F3virk \00E1 vinnusv\00E6\00F0is- e\00F0a tilviks\00FErepinu.')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559010292026685)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'is'
,p_message_text=>unistr('Skapandi gervigreindar\00FEj\00F3nusta me\00F0 tilgreint au\00F0kenni e\00F0a fast au\00F0kenni fannst ekki.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557766516026684)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0festingarvilla e\00F0a a\00F0gangur banna\00F0ur (HTTP-%1) fyrir sl\00F3\00F0 %0. Athuga\00F0u stillinguna \00E1 skapandi gervigreindar\00FEj\00F3nustu %2.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537580381026678)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('HTTP-bei\00F0nin til  skapandi gervigreinar\00FEj\00F3nustu \00ED %0 t\00F3kst ekki me\00F0 HTTP-%1: %2')
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561969723026686)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \00ED HTTP-bei\00F0ni til skapandi gervigreindar\00FEj\00F3nustu fyrir vi\00F0b\00F3t %0 \00ED ham%1. Athuga\00F0u stillinguna \00E1 skapandi gervigreindar\00FEj\00F3nustunni.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524713105026674)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E6mi')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523167786026673)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0sto\00F0arma\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524554816026674)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'is'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523032657026673)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00FA')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553705596026683)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('OCI skapandi gervigreindar\00FEj\00F3nusta sty\00F0ur ekki spjallupplifun me\00F0 m\00F6rgum skilabo\00F0um')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533679052026677)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa kom upp vi\00F0 vinnslu tilm\00E6la %0 fyrir kerfishluta %1. Athugi\00F0 hvort kerfishlutasmi\00F0urinn s\00E9 tilt\00E6kur \00ED \00FEessu tilviki.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538761588026678)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki unni\00F0 svar fyrir gervigreindar\00FEj\00F3nustu %0, svar %1')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544968286026680)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Senda skilabo\00F0')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533243354026677)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \00ED gervigreindar\00FEj\00F3nustu %0 \00E1 bakenda')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519072531026672)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Skilabo\00F0')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519166612026672)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'is'
,p_message_text=>unistr('Skrifa\00F0u skilabo\00F0in h\00E9r')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522440958026673)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'is'
,p_message_text=>unistr('Notendat\00E1knmynd')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522554798026673)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'is'
,p_message_text=>unistr('Nota \00FEetta')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519268525026672)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E9r eru \00F3send skilabo\00F0. Ertu viss?')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688238962026725)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Ajax-kall skila\00F0i villu %0 fr\00E1 \00FEj\00F3ni fyrir %1.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615319685026703)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 umbreyta samnefni kerfishlutans \201E%0\201C \00ED einkv\00E6mt au\00F0kenni kerfishluta.')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604156991026699)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1816 \00D3v\00E6nt villa vi\00F0 umreikning samnefnis kerfishluta p_flow_alias_or_id (%0).')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701568544026730)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('Pr\00F3fsumma kerfishlutans gefur au\00F0velda lei\00F0 til a\00F0 \00E1kvar\00F0a hvort sami kerfishluti nota\00F0ur \00E1 mismunandi vinnusv\00E6\00F0um. H\00E6gt er a\00F0 bera \00FEessa pr\00F3fsummu saman til a\00F0 \00E1kvar\00F0a hvort \00FE\00E6r samsvari s\00E9r.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588119655026694)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu au\00F0kenningara\00F0ger\00F0ar.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570127088026688)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu au\00F0kenningara\00F0ger\00F0ar.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126742086880026743)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'is'
,p_message_text=>unistr('Nafn leigjanda %0 sem au\00F0kennastj\00F3rnun Oracle Cloud skila\00F0i hefur ekki leyfi fyrir sl\00F3\00F0inni %1!<br/>Vinsamlegast <a href="&LOGOUT_URL.">skr\00E1i\00F0 inn aftur</a> og tilgreini\00F0 nafn leigjanda sem hefur leyfi e\00F0a breyttu sl\00F3\00F0inni \00FEinni.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566275946026687)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ganginn \00FEinn \201E%0\201C skortir nau\00F0synleg  \00FEr\00F3unarr\00E9ttindi (DB_DEVELOPER e\00F0a DB_ADMINISTRATOR)<br/>fyrir vinnusv\00E6\00F0i "%1"! <a href="&LOGOUT_URL.">Skr\00E1\00F0u \00FEig inn aftur</a> \00FEegar r\00E9ttindi hafa veri\00F0 veitt.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562825044026686)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'is'
,p_message_text=>unistr('Nafn leigjanda sem au\00F0kennastj\00F3rnun Oracle Cloud skila\00F0i hefur ekki leyfi til a\00F0 starfa \00E1 \00FEessu vinnusv\00E6\00F0i!<br/>Vinsamlegast <a href="&LOGOUT_URL.">skr\00E1\00F0u \00FEig inn aftur</a> og tilgreindu nafn leigjanda sem hefur leyfi.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566330734026687)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'is'
,p_message_text=>unistr('Af \00F6ryggis\00E1st\00E6\00F0um er ekki leyfilegt a\00F0 keyra kerfishluta \00FEessa vinnusv\00E6\00F0is \00ED gegnum l\00E9ni\00F0 \00ED sl\00F3\00F0inni.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587837503026694)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'is'
,p_message_text=>unistr('B\00EDddu gagnagrunnsstj\00F3rann um a\00F0 keyra $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587706936026694)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'is'
,p_message_text=>unistr('SYS.DBMS_LDAP-pakki er ekki til e\00F0a er \00F3gildur.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587616926026694)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu breytingar \00E1 LDAP-notendaa\00F0ger\00F0.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587929926026694)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu LDAP-au\00F0kenningar.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588764577026694)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \00ED p_flow_page frumbreytu til login_page a\00F0fer\00F0ar.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588318157026694)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt p_session \00ED wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639662475026710)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'is'
,p_message_text=>unistr('Vansk\00F6pu\00F0 frumbreyta til wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588400111026694)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'is'
,p_message_text=>unistr('Autt notandanafn sent til innskr\00E1ningara\00F0fer\00F0ar.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575236229026690)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'is'
,p_message_text=>unistr('B\00EDddu \00ED <span id="apex_login_throttle_sec">%0</span> sek\00FAndur \00E1\00F0ur en \00FE\00FA skr\00E1ir \00FEig inn aftur.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576515167026690)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Komi\00F0 var \00ED veg fyrir innskr\00E1ninguna.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637349093026710)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Au\00F0kenning \201E%0\201C fannst ekki')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577037019026691)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'is'
,p_message_text=>unistr('Au\00F0kenni \00F6ryggish\00F3ps er autt.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588274742026694)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 framkv\00E6md eftirau\00F0kenningarferlisins.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588057373026694)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu forau\00F0kenningarferlisins.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589797001026694)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('Opna\00F0u sl\00F3\00F0ina \00ED sama vafra og bei\00F0nin um a\00F0 endurstilla lykilor\00F0 var hafin \00ED. Ef smellt er \00E1 sl\00F3\00F0ina til a\00F0 endurstilla  lykilor\00F0 og innskr\00E1ningars\00ED\00F0an birtist skaltu hefja bei\00F0nina \00E1 n\00FD og hafa vafrann opinn.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739516390026742)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'is'
,p_message_text=>unistr('Sl\00F3\00F0 til a\00F0 endurstilla a\00F0gangsor\00F0')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566593309026687)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'is'
,p_message_text=>unistr('Notendah\00F3pur a\00F0fangastj\00F3ra %0 hefur ekki veri\00F0 veittur %1')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566679334026687)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'is'
,p_message_text=>unistr('Nota\00F0u DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP til a\00F0 veita r\00E9ttindin sem vantar.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601233570026698)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu setuvar\00F0ara\00F0ger\00F0ar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601306897026698)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu setusannreyningara\00F0ger\00F0ar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601595597026698)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'is'
,p_message_text=>unistr('Biddu %0 stj\00F3rnandann um a\00F0 stilla v\00E9lina fyrir Oracle Application Server Single Sign-On.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611978160026701)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3l\00F6glegu %0 \00ED %1 t\00E1kni skila\00F0 af sso.')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588627471026694)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'is'
,p_message_text=>unistr('Breyttu au\00F0kenningarskemanu og b\00E6ttu vi\00F0 nafni kerfishlutans.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611688332026701)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3l\00F6glegur kallandi fyrir a\00F0fer\00F0ina %0:')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611873070026701)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild kerfishlutaseta \00ED urlc-t\00E1kni: %0')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611462470026701)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \00ED portal_sso_redirect: skr\00E1ningaruppl\00FDsingar kerfishluta vantar: %0')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601432308026698)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'is'
,p_message_text=>unistr('WWSEC_SSO_ENABLER_PRIVATE pakki er ekki til e\00F0a er \00F3gildur.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588594197026694)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki h\00E6gt a\00F0 finna skr\00E1\00F0 nafn f\00E9lagakerfishluta \00ED au\00F0kenningarskema.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611563923026701)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'is'
,p_message_text=>unistr('Skr\00E1\00F0u \00FEennan kerfishluta eins og l\00FDst er \00ED uppsetningarhandb\00F3kinni.')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601642625026698)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu SSO-au\00F0kenningar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714943186026734)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3heimil sl\00F3\00F0:  %0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601068757026698)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu au\00F0kenningar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566471865026687)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnusv\00E6\00F0i\00F0 \201E%0\201C er \00F3virkt. Haf\00F0u samband vi\00F0 stj\00F3rnandann.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567100291026687)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'is'
,p_message_text=>'%0'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576216592026690)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangi hafna\00F0 af \00F6ryggisathugun kerfishluta')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576305744026690)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangi hafna\00F0 af \00F6ryggisathugun s\00ED\00F0u')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576484579026690)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu heimildarbei\00F0ni.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645517551026712)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'is'
,p_message_text=>unistr('Byggt me\00F0 %0 og %1 nota\00F0')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645611433026712)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'is'
,p_message_text=>unistr('\00E1st')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705427882026731)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('L\00FDsing atbur\00F0ar')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705231181026731)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'is'
,p_message_text=>'Lokadagsetning'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705587976026731)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'is'
,p_message_text=>unistr('Au\00F0kenni atbur\00F0ar')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705185895026731)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'is'
,p_message_text=>'Upphafsdagsetning'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705367155026731)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Titill atbur\00F0ar')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547989056026681)
,p_name=>'APEX.CARD'
,p_message_language=>'is'
,p_message_text=>'Kort'
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548157769026681)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'is'
,p_message_text=>unistr('Kortaa\00F0ger\00F0')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588853494026694)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'is'
,p_message_text=>'Falinn hakreitur'
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590748628026695)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \00ED innihaldi pr\00F3fsummu')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590636670026695)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \00E1 sni\00F0i pr\00F3fsummu')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660529443026717)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita\00F0 \00E1 klemmuspjald')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660011684026717)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi vafri sty\00F0ur ekki afritun fr\00E1 hnappi e\00F0a valmynd. Reyndu Ctrl+C e\00F0a Command+C.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646219448026712)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'is'
,p_message_text=>'Loka'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524660227026674)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'is'
,p_message_text=>unistr('Efni\00F0 \00ED k\00F3\00F0aritlinum fer yfir h\00E1markslengd atri\00F0is (raunveruleg lengd %0, leyf\00F0 lengd %1 stafir)')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704723776026731)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'is'
,p_message_text=>'Birtuskil'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699266042026729)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAverandi')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699103563026729)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'is'
,p_message_text=>'Upphaflegt'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703397063026730)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera gildur litur. D\00E6mi:: %0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565796702026687)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'is'
,p_message_text=>'Fleiri litir'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565879582026687)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'is'
,p_message_text=>'Opna litaval'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522934696026673)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'is'
,p_message_text=>unistr('Alpha-sle\00F0i, l\00E1r\00E9ttur sle\00F0i. Nota\00F0u \00F6rvalykla til a\00F0 f\00E6ra hann til.')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522626272026673)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'is'
,p_message_text=>unistr('Litr\00F3f, fj\00F3rstefnusle\00F0i. Nota\00F0u \00F6rvalykla til a\00F0 f\00E6ra hann til.')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522764268026673)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'is'
,p_message_text=>unistr('Bl\00E6sle\00F0i, l\00F3\00F0r\00E9ttur sle\00F0i. Nota\00F0u \00F6rvalykla til a\00F0 f\00E6ra hann til.')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699038644026729)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'is'
,p_message_text=>'Velja lit'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699386136026729)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta litasni\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737204249026741)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'is'
,p_message_text=>'Listi af gildum'
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737393490026741)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'is'
,p_message_text=>'Opna lista fyrir: %0'
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717632343026735)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'is'
,p_message_text=>unistr('(Loki\00F0)')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606549812026700)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'is'
,p_message_text=>unistr('Hafi\00F0 samband vi\00F0 stj\00F3rnanda kerfishlutans.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622032102026705)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Haf\00F0u samband vi\00F0 stj\00F3rnanda kerfishlutans.'),
unistr('Uppl\00FDsingar um \00FEetta atvik m\00E1 f\00E1 me\00F0 villuleitarau\00F0kenni \201E%0\201C.')))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703622000026730)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'is'
,p_message_text=>unistr('Lei\00F0r\00E9tti\00F0 villur \00E1\00F0ur en vista\00F0 er.')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548943655026682)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'is'
,p_message_text=>unistr('%0. \00DDti\00F0 \00E1 bakklykil til a\00F0 ey\00F0a.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647102055026713)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'is'
,p_message_text=>'%0 samsvarandi fannst'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529060083026675)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'is'
,p_message_text=>'1 samsvarandi fannst'
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647006462026713)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'is'
,p_message_text=>'Ekkert samsvarandi fannst'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523444019026674)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0rir')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523303963026673)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'is'
,p_message_text=>'%0 gildi valin'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718148114026735)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAverandi framvinda')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704087352026731)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Skr\00E1 tilgreind \00ED hlut %0 er ekki til \00ED APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692535442026727)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAverandi \00FAtg\00E1fa gagna \00ED gagnagrunninum hefur breyst s\00ED\00F0an notandi h\00F3f uppf\00E6rsluferli\00F0.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661609796026717)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki hla\00F0a')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707979668026732)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 forvinnslu')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707763413026732)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'is'
,p_message_text=>unistr('Setja inn r\00F6\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721320009026736)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 : A\00F0ger\00F0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707878869026732)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6ra r\00F6\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536369753026678)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563936553026686)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'is'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550054023026682)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ver\00F0ur a\00F0 vera dagsetningarval e\00F0a gild dagsetning, til d\00E6mis %1.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659294515026716)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'is'
,p_message_text=>'Hreinsa'
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567475953026688)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'is'
,p_message_text=>unistr('Loki\00F0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578453535026691)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('%0 hefur \00F3studda hluta \00ED sni\00F0shulunni: %1')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563643076026686)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('Klukkut\00EDmi')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647569386026713)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'is'
,p_message_text=>unistr('Fl\00FDtivalmynd me\00F0 dagatali: %0')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563433079026686)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'is'
,p_message_text=>'Vika'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563564561026686)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'is'
,p_message_text=>'VK'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563812733026686)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('M\00EDn\00FAtur')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564069477026686)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('M\00E1nu\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564495012026687)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sti m\00E1nu\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534060274026677)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'is'
,p_message_text=>unistr('Fl\00FDtivalmynd fyrir %0')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564308120026687)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asti m\00E1nu\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656819147026716)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'is'
,p_message_text=>'Skrifvarinn dagsetningarveljari'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565237693026687)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'is'
,p_message_text=>'Velja dagsetningu'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534102051026677)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'is'
,p_message_text=>unistr('Velja dagsetningu og t\00EDma')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531374705026676)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'is'
,p_message_text=>'Velja dag'
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534772639026677)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('Velja m\00E1nu\00F0 og \00E1r')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531517459026676)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'is'
,p_message_text=>unistr('Velja t\00EDma')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532085955026676)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'is'
,p_message_text=>unistr('\00CD dag')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549614406026682)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera gild dagsetning, til d\00E6mis %0.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549345501026682)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera \00E1 milli %0 og %1.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549491968026682)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera \00E1 e\00F0a eftir %0.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549563442026682)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera \00E1 e\00F0a fyrir %0.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540994713026679)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'is'
,p_message_text=>'Falin breyting'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564268707026687)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1r')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651256267026714)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# er st\00E6rra en tilgreind h\00E1marksdagsetning %0.')
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651614153026714)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# samsvarar ekki sni\00F0i %0.')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651188675026714)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# er minna en tilgreind l\00E1gmarksdagsetning %0.')
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651305285026714)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# er ekki \00E1 gildu bili fr\00E1 %0 til %1.')
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651594136026714)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# er ekki \00E1 gildu \00E1rabili fr\00E1 %0 til %1.')
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543321695026680)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Innri villa kom upp vi\00F0 vinnslu bei\00F0ninnar DBMS_CLOUD.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703956938026731)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tta vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729881633026739)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'is'
,p_message_text=>'Loka'
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591027116026695)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0festing')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731883198026740)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703740250026731)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'is'
,p_message_text=>unistr('\00CD LAGI')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703824601026731)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'is'
,p_message_text=>'Vista'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571598283026689)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'is'
,p_message_text=>'Gluggatitill'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611287569026701)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'is'
,p_message_text=>'Falinn titill glugga'
,p_is_js_message=>true
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532354636026676)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'is'
,p_message_text=>unistr('Forbygg\00F0 a\00F0ger\00F0 \00ED skjalager\00F0art\00E6ki Oracle')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543164587026680)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 prentun skjals.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520389143026673)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('%s sty\00F0ur ekki %1 sem \00FAttak.')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532289293026676)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \201E%0\201C vi\00F0 a\00F0 virkja forbygg\00F0a a\00F0ger\00F0 \00ED skjalager\00F0art\00E6ki Oracle:')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523781831026674)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0m\00E1ts er krafist')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549121071026682)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 ni\00F0urhle\00F0slu skr\00E1r.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549071786026682)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Engin g\00F6gn fundust sem h\00E6gt er hla\00F0a ni\00F0ur.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552668030026683)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi eiginleiki er ekki tilt\00E6kur \00ED umhverfi me\00F0 keyrslu eing\00F6ngu.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605460003026699)
,p_name=>'APEX.ERROR'
,p_message_language=>'is'
,p_message_text=>'Villa'
,p_is_js_message=>true
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565375430026687)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Eftirfarandi villa kom upp vi\00F0 framkv\00E6md vi\00F0brag\00F0s til villume\00F0h\00F6ndlunar: %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577994808026691)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa kom upp vi\00F0 a\00F0 m\00E1la villus\00ED\00F0una: %0')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567043951026687)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'is'
,p_message_text=>'Innri villa'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716711390026735)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Hafi\00F0 samband vi\00F0 stj\00F3rnandann.'),
unistr('Uppl\00FDsingar um \00FEetta atvik m\00E1 f\00E1 me\00F0 villuleitarau\00F0kenni \201E%0\201C.')))
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711332142026733)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnagrunnurinn er opinn fyrir skrifvarinn a\00F0gang.')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741438702026743)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'is'
,p_message_text=>unistr('ORA-28353: T\00F3kst ekki a\00F0 opna veski. G\00F6gn kerfishlutans eru ekki a\00F0gengilega sem stendur.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711440708026733)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEv\00ED mi\00F0ur, \00FEessi s\00ED\00F0a er ekki tilt\00E6k')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570005876026688)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'is'
,p_message_text=>unistr('T\00E6knilegar uppl\00FDsingar (a\00F0eins a\00F0gengilegar \00FEr\00F3unara\00F0ilum)')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675930883026722)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'is'
,p_message_text=>unistr('Villuskilabo\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689840263026726)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('V\00E6nt sni\00F0: %0')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654770247026715)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'is'
,p_message_text=>unistr('Notandi er \00FEegar \00E1 a\00F0gangsst\00FDringarlistanum.')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654615579026715)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'is'
,p_message_text=>unistr('Vinsamlegast sta\00F0festir vi\00F0b\00F3t eftirfarandi %0 notanda (notenda) vi\00F0 <strong>%1</strong> a\00F0gangsst\00FDringarlista.')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655149561026715)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'is'
,p_message_text=>unistr('Tv\00EDrita\00F0ur notandi er til')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654861771026715)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'is'
,p_message_text=>unistr('At-t\00E1kn (@) vantar \00ED t\00F6lvup\00F3stfang')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654975561026715)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'is'
,p_message_text=>unistr('Punkt (.) vantar \00ED t\00F6lvup\00F3stfang')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655011127026715)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'is'
,p_message_text=>'Notandanafn er of langt'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655398377026715)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0eins notendur sem skilgreindir eru \00ED a\00F0gangsst\00FDringarlista kerfishlutans hafa a\00F0gang a\00F0 \00FEessum kerfishluta')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655401940026715)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3v\00E6nt stillt gildi a\00F0gangsst\00FDringar: %0')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655221479026715)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'is'
,p_message_text=>unistr('Allir au\00F0kenndir notendur hafa a\00F0gang a\00F0 \00FEessum kerfishluta')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699735176026729)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Afvirkja\00F0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699611437026729)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Virkja\00F0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699956302026729)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'is'
,p_message_text=>unistr('%0: er afvirkja\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699899491026729)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'is'
,p_message_text=>unistr('%0: er virkja\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548443622026681)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>'Ekki stutt'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609649601026701)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'is'
,p_message_text=>unistr('Sl\00F6kkt')
,p_is_js_message=>true
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609545574026701)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'is'
,p_message_text=>'Kveikt'
,p_is_js_message=>true
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699583061026729)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'is'
,p_message_text=>'ekki tilgreint'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540015579026679)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'is'
,p_message_text=>unistr('%0 b\00E6ti')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540511539026679)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'is'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540278515026679)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'is'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540426835026679)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'is'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692761830026727)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a ni\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545832413026681)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'is'
,p_message_text=>'Valkostir'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545546907026681)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545710995026681)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'is'
,p_message_text=>unistr('Fela f\00EDnafm\00F6rkun')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570489017026688)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0 s\00EDu')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646704980026712)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDan %0 notu\00F0')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571131164026689)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'is'
,p_message_text=>'Virkja'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690373550026726)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'is'
,p_message_text=>'Virkja'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571252108026689)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tta vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555051894026684)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FAlurit')
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703073343026730)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0rir')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555158344026684)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'is'
,p_message_text=>unistr('K\00F6kurit')
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701672497026730)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'is'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554850003026684)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi')
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690854836026726)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'is'
,p_message_text=>'Hreinsa'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690974615026726)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'is'
,p_message_text=>'Hreinsa allt'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691008556026726)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'is'
,p_message_text=>'Hreinsa %0'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707557536026732)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur %1, sem f\00EDnafm\00F6rkun %0 v\00EDsar \00ED, er ekki a\00F0gengilegur e\00F0a ekki heimila\00F0ur')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518232270026672)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Veldu s\00EDur til a\00F0 s\00FDna')
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644785883026712)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ni\00F0urst\00F6\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644804097026712)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'is'
,p_message_text=>unistr('%0 vali\00F0')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647657748026713)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAverandi s\00EDur')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523254300026673)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'is'
,p_message_text=>unistr('F\00EDnafm\00F6rku\00F0 leit krefst gagnauppruna \00E1 sv\00E6\00F0isstigi.')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526917348026675)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'is'
,p_message_text=>unistr('Listi yfir s\00EDur')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706060175026731)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'is'
,p_message_text=>unistr('Fari\00F0 yfir leyfilegan fj\00F6lda \00F3l\00EDkra gilda (%0) fyrir f\00EDnafm\00F6rkun %1.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692351057026727)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('F\00EDnafm\00F6rkun %0 er ekki studd fyrir DATE e\00F0a TIMESTAMP d\00E1lka.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690454995026726)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDa %0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565061363026687)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'is'
,p_message_text=>unistr('%0 (s\00EDa notu\00F0)')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690589594026726)
,p_name=>'APEX.FS.GO'
,p_message_language=>'is'
,p_message_text=>'Hefja'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560539661026685)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'is'
,p_message_text=>'inniheldur %0'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691971769026727)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'is'
,p_message_text=>'jafnt og %0'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560275400026685)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'is'
,p_message_text=>unistr('st\00E6rra en %0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560338459026685)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'is'
,p_message_text=>unistr('st\00E6rra en e\00F0a jafnt og %0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559966472026685)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'is'
,p_message_text=>'minna en %0'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560119757026685)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'is'
,p_message_text=>unistr('minna en e\00F0a jafnt og %0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559438553026685)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'is'
,p_message_text=>'inniheldur ekki %0'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545214224026680)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'is'
,p_message_text=>'ekki jafnt og %0'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559532387026685)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'is'
,p_message_text=>unistr('hefst ekki \00E1 %0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560459110026685)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'is'
,p_message_text=>unistr('byrjar \00E1 %0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558571681026685)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'is'
,p_message_text=>unistr('Val f\00EDnafm\00F6rkunar')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534384391026677)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDuforskeyti "%0" gildir ekki fyrir f\00EDnafm\00F6rkun "%1".')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532717353026676)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDuforskeyti vantar fyrir f\00EDnafm\00F6rkun "%0".')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566907618026687)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'is'
,p_message_text=>'Reiknimerki'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548823425026682)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'is'
,p_message_text=>'inniheldur'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547820646026681)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'is'
,p_message_text=>'jafnt og'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548513279026681)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'is'
,p_message_text=>unistr('st\00E6rra en')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548660255026682)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'is'
,p_message_text=>unistr('st\00E6rra en e\00F0a jafnt og')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548213521026681)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'is'
,p_message_text=>'minna en'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548380423026681)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'is'
,p_message_text=>unistr('minna en e\00F0a jafnt og')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559326875026685)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'is'
,p_message_text=>'inniheldur ekki'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548085130026681)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'is'
,p_message_text=>'ekki jafnt og'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559236360026685)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'is'
,p_message_text=>unistr('hefst ekki \00E1')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126548739787026682)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'is'
,p_message_text=>unistr('hefst \00E1')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567365245026687)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnategundin %0 (%1) er ekki studd fyrir f\00EDnafm\00F6rkunina inntaksreitur.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534292896026677)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDan "%0" er ekki studd fyrir f\00EDnafm\00F6rkun "%1" (gagnategund %2).')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566806087026687)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'is'
,p_message_text=>'Gildi'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692129516026727)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'is'
,p_message_text=>unistr('Engir leitard\00E1lkar hafa veri\00F0 gefnir upp fyrir f\00EDnafm\00F6rkun %0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518334472026672)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'is'
,p_message_text=>unistr('Fleiri s\00EDur')
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644998551026712)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'is'
,p_message_text=>'Upphaf bils'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691650413026727)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'is'
,p_message_text=>'%0 til %1'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691782819026727)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'is'
,p_message_text=>'Fyrir ofan %0'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691899699026727)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrir ne\00F0an %0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645090619026712)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'is'
,p_message_text=>'Endir bils'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709652987026732)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('LOV-hlutur #%2 (\201E%1\201C) fyrir f\00EDnafm\00F6rkun bils %0 er \00F3gildur (\201E|\201C skilin vantar).')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692051196026727)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('Sem stendur er handvirkt inntak fyrir f\00EDnafm\00F6rkun bils %0 ekki stutt \00FEar sem d\00E1lkurinn er DATE e\00F0a TIMESTAMP.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691307020026727)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'is'
,p_message_text=>'til'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554942210026684)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja graf')
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641389233026711)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'is'
,p_message_text=>'Endurstilla'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690712287026726)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'is'
,p_message_text=>'Leita'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690644936026726)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'is'
,p_message_text=>'Leita...'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691511895026727)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'is'
,p_message_text=>'- Velja -'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554784489026683)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna rit')
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691184064026726)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna minna')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691211765026726)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna allt')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126691471479026727)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('%0 stj\00F6rnur og h\00E6rra')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646644282026712)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('Till\00F6gur a\00F0 s\00EDum')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692212685026727)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Sem stendur er f\00EDnafm\00F6rkun textasv\00E6\00F0is %0 a\00F0eins studd fyrir NUMBER d\00E1lka.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517735948026672)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Heildarfj\00F6ldi ra\00F0a')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707681002026732)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 gagnategundin (%1) er ekki studd fyrir f\00EDnafmarka\00F0a leit.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637848162026710)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'is'
,p_message_text=>unistr('Falin fyrirs\00F6gn')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700183025026729)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Fara a\00F0 villu')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656181920026715)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'is'
,p_message_text=>unistr('Sams\00F6fnun.')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584087033026693)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'is'
,p_message_text=>unistr('Au\00F0 fyrirs\00F6gn')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665486750026718)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'is'
,p_message_text=>unistr('Fella saman st\00FDriskil')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656234090026715)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'is'
,p_message_text=>unistr('St\00FDriskil.')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665366630026718)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'is'
,p_message_text=>unistr('V\00EDkka \00FAt st\00FDriskil')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665119763026718)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('%0 r\00F6\00F0um eytt')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734272510026740)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita au\00F0kenni')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527146516026675)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'is'
,p_message_text=>unistr('Fer \00ED breytiham')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653077408026714)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'is'
,p_message_text=>'Fyrsta'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525955123026674)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'is'
,p_message_text=>'Fela glugga'
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524994195026674)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Flj\00F3tandi yfirfyllingarefni reits')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526293761026674)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna yfirfyllingarefni')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600409432026698)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'is'
,p_message_text=>unistr('F\00F3tur grindar')
,p_is_js_message=>true
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656491645026716)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3phaus')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656320837026716)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'is'
,p_message_text=>'Haus.'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653189660026715)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asta')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527362031026675)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'is'
,p_message_text=>unistr('Fer \00FAr breytiham')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552002724026683)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a allt')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674987918026721)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna fleira')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652834350026714)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656579665026716)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0ir s\00ED\00F0u')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565657405026687)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0a %0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653263843026715)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'is'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653331988026715)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'is'
,p_message_text=>'%0 - %1 af %2'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710270027026733)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0uval')
,p_is_js_message=>true
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600733715026698)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0uskipting')
,p_is_js_message=>true
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652904774026714)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'is'
,p_message_text=>'Fyrra'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550953044026682)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'is'
,p_message_text=>'Bilmynd'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584367803026693)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0aval')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734062310026740)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6tt vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734125563026740)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'is'
,p_message_text=>'Breytt'
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126742452509026743)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 grindarl\00EDnu %0, d\00E1lkur %1.')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126742513808026743)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 grindarl\00EDnu %0.')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733960360026740)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'is'
,p_message_text=>'Eytt'
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656710771026716)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0arhaus')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584246915026693)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0arval')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552121746026683)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('%0 %1 vali\00F0')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652267884026714)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'is'
,p_message_text=>'%0 reitir valdir'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653408836026715)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ra\00F0ir valdar')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695509292026728)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'is'
,p_message_text=>'Velja allt'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589094348026694)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Velja allar ra\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665248749026718)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0a %0')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656620155026716)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Velja r\00F6\00F0')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656965227026716)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a\00F0 h\00E6kkandi %0')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657087397026716)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a\00F0 l\00E6kkandi %0')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652302627026714)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a h\00E6kkandi')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652626493026714)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a h\00E6kkandi %0')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652430646026714)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a l\00E6kkandi')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652791136026714)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a l\00E6kkandi %0')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652555187026714)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki ra\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518120804026672)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0unarkostir')
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600553725026698)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'is'
,p_message_text=>unistr('St\00F6\00F0ut\00E1kn')
,p_is_js_message=>true
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600611638026698)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0a grindar')
,p_is_js_message=>true
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530453550026676)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'is'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530159119026676)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'is'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665009062026718)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'is'
,p_message_text=>'Samtals %0'
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583849246026693)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('HTTP-bei\00F0nin til \201E%0\201C mist\00F3kst.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585423688026693)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur %0')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585637711026693)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur %0 og r\00F6\00F0 %1')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585961825026693)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FA \00FEegar \00E1 fyrsta d\00E1lknum. D\00E1lkur %0 og r\00F6\00F0 %1')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585891213026693)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FA \00FEegar \00E1 fyrstu r\00F6\00F0inni. D\00E1lkur %0 og r\00F6\00F0 %1')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731468080026739)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'is'
,p_message_text=>unistr('Birt \00ED %0 d\00E1lkum og %1 r\00F6\00F0um')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586042806026693)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FA \00FEegar \00E1 s\00ED\00F0asta d\00E1lknum. D\00E1lkur %0 og r\00F6\00F0 %1')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585724236026693)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FA \00FEegar \00E1 s\00ED\00F0ustu r\00F6\00F0inni. D\00E1lkur %0 og r\00F6\00F0 %1')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664953740026718)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'is'
,p_message_text=>unistr('Birt \00ED %0 r\00F6\00F0um')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585506225026693)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 %0')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126742298308026743)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'is'
,p_message_text=>'Gagnvirk grind %0'
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649305994026713)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650343997026714)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650262033026714)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta r\00F6\00F0 vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735813110026741)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'is'
,p_message_text=>unistr('Sams\00F6fnun')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721419735026736)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'is'
,p_message_text=>unistr('Sams\00F6fnun')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723165293026737)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'is'
,p_message_text=>'Allt'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680708717026723)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Allir d\00E1lkar me\00F0 texta')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681935169026724)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'is'
,p_message_text=>'Auka'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683044447026724)
,p_name=>'APEX.IG.AND'
,p_message_language=>'is'
,p_message_text=>'og'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702425038026730)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1\00E6tla\00F0ur fj\00F6ldi \00F3l\00EDkra')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736852659026741)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1\00E6tla\00F0ur heildarfj\00F6ldi \00F3l\00EDkra')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720055173026736)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'is'
,p_message_text=>unistr('Sv\00E6\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721967979026736)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6kkandi')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682081946026724)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'is'
,p_message_text=>'Heimild'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735999464026741)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfvirkt')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702889036026730)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'is'
,p_message_text=>unistr('Me\00F0altal')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736541815026741)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'is'
,p_message_text=>unistr('Heildarme\00F0altal')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719524279026736)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Merki fyrir titil \00E1ss')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719786902026736)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'is'
,p_message_text=>unistr('Tugas\00E6ti')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719665952026736)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Gildi fyrir titil \00E1ss')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725776726026738)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'is'
,p_message_text=>'Bakgrunnslitur'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720189364026736)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'is'
,p_message_text=>unistr('Sl\00E1')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677309404026722)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'is'
,p_message_text=>unistr('\00E1 milli')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726935811026738)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720258737026736)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'is'
,p_message_text=>unistr('B\00F3la')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650596589026714)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tta vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682927822026724)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'is'
,p_message_text=>unistr('Greinir milli h\00E1- og l\00E1gstafa')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737412324026741)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'is'
,p_message_text=>unistr('(Greinir milli h\00E1- og l\00E1gstafa)')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708736918026732)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'is'
,p_message_text=>unistr('Breytingar vista\00F0ar')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650980966026714)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta s\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684091923026724)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'is'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680593726026723)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrirspurnin fer yfir h\00E1marksfj\00F6lda %0 gagnapunkta fyrir hvert graf. Nota\00F0u s\00EDu til a\00F0 minnka fj\00F6lda f\00E6rslna \00ED fyrirspurninni.')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649243827026713)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Grafs\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657674628026716)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'is'
,p_message_text=>'Hreinsa'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719030439026735)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'is'
,p_message_text=>'Loka'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725963663026738)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'is'
,p_message_text=>'Litir'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703281693026730)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Forsko\00F0un')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682301135026724)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649431574026713)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkar')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611381968026701)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lka\00F0ger\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611106526026701)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir fyrir d\00E1lkinn \201E%0\201C')
,p_is_js_message=>true
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727791096026738)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Tilgangur d\00E1lks')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682459937026724)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'is'
,p_message_text=>unistr('Fl\00F3ki\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649620800026713)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'is'
,p_message_text=>unistr('Reikna \00FAt')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677980513026722)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'is'
,p_message_text=>'inniheldur'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684222306026724)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'is'
,p_message_text=>unistr('St\00FDriskil')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657498205026716)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita \00E1 klemmuspjald')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657533178026716)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita ni\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702236898026730)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702318457026730)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi \00F3l\00EDkra')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736760097026741)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'is'
,p_message_text=>unistr('Heildarfj\00F6ldi \00F3l\00EDkra')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736642337026741)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'is'
,p_message_text=>unistr('Heildarfj\00F6ldi')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734378096026740)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'is'
,p_message_text=>unistr('B\00FAa til %0')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680988857026723)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'is'
,p_message_text=>unistr('G\00F6gn')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727518321026738)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>'Gagnategund'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727188473026738)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'is'
,p_message_text=>'Dagsetning'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708533670026732)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt gildi dagsetningar')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678606435026722)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'is'
,p_message_text=>'dagar'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681669453026723)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfgefnar stillingar')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681415841026723)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfgefin tegund')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650411772026714)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'is'
,p_message_text=>unistr('Ey\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728633560026739)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1 \00F6rugglega a\00F0 ey\00F0a \00FEessari sk\00FDrslu?')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686037335026725)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Ey\00F0a r\00F6\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684869750026724)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Ey\00F0a r\00F6\00F0um')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722026599026736)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E6kkandi')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683793304026724)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'is'
,p_message_text=>unistr('Uppl\00FDsingar')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648992807026713)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Uppl\00FDsingas\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711014866026733)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'is'
,p_message_text=>'Stefna'
,p_is_js_message=>true
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683478415026724)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Afvirkja\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678010931026722)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'is'
,p_message_text=>'inniheldur ekki'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678216063026722)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'is'
,p_message_text=>unistr('hefst ekki \00E1')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720337738026736)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'is'
,p_message_text=>'Kleinuhringur'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684414611026724)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a ni\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574768452026690)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'is'
,p_message_text=>unistr('Eing\00F6ngu g\00F6gn')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729639940026739)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('Velja sni\00F0')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589881911026695)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Ni\00F0urhle\00F0slusni\00F0 %0 er ekki virkja\00F0.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722713588026737)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita sams\00F6fnun')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722807168026737)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita st\00FDriskil')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685938267026725)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita r\00F6\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684787995026724)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Afrita ra\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650071103026714)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'is'
,p_message_text=>'Breyta'
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721889790026736)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'is'
,p_message_text=>'Breyta grafi'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602381403026698)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'is'
,p_message_text=>'Breyta %0'
,p_is_js_message=>true
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733235377026740)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta h\00F3pun')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640496003026711)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00ED breytiham')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616045879026703)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('Grind \00ED breytingarham, afsmelltu til a\00F0 skipta yfir \00ED sko\00F0unarham')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729210517026739)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'is'
,p_message_text=>unistr('Fali\00F0 afrit (bcc)')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729447689026739)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'is'
,p_message_text=>unistr('Skilabo\00F0')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729180179026739)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'is'
,p_message_text=>'Afrit (cc)'
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728806001026739)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lvup\00F3stur sendur.')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729351287026739)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'is'
,p_message_text=>'Efni'
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729098393026739)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'is'
,p_message_text=>unistr('Vi\00F0takandi (til)')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683160567026724)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Virkja\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676360992026722)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'is'
,p_message_text=>'jafnt og'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683276900026724)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'is'
,p_message_text=>unistr('Seg\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728251811026738)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'is'
,p_message_text=>'Tegund'
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695429399026728)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'is'
,p_message_text=>unistr('Skr\00E1 undirb\00FAin. Hef ni\00F0urhle\00F0slu.')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657749637026716)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'is'
,p_message_text=>'Fylla'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659923366026717)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'is'
,p_message_text=>'Fylla val af'
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659801757026717)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'is'
,p_message_text=>'Fylla val'
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649508448026713)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682569254026724)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDur')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736291187026741)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDa...')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722283939026736)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'is'
,p_message_text=>'Fyrsta'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649704135026713)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'is'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681011501026723)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726878716026738)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0shula')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728593251026738)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'is'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728431573026738)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'is'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639580234026710)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'is'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573431328026689)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'is'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685670068026725)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'is'
,p_message_text=>'Frysta'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683348435026724)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir og reiknimerki')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720448634026736)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'is'
,p_message_text=>'Trekt'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702192769026730)
,p_name=>'APEX.IG.GO'
,p_message_language=>'is'
,p_message_text=>'Hefja'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676995306026722)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'is'
,p_message_text=>unistr('st\00E6rra en')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677059011026722)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'is'
,p_message_text=>unistr('st\00E6rra en e\00F0a jafnt og')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683678837026724)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'is'
,p_message_text=>'Grind'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648756596026713)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Grindars\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723034254026737)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pur')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683885643026724)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pa eftir')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649085414026713)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3punars\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727460875026738)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Tegund skilyr\00F0is')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726320340026738)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrirs\00F6gn')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726599703026738)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'is'
,p_message_text=>unistr('J\00F6fnun fyrirsagnar')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736173967026741)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731653581026740)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>H\00E6gt er a\00F0 setja inn, uppf\00E6ra og ey\00F0a g\00F6gnum beint innan \00FEessarar gagnvirku grindar.</p>'),
'',
unistr('<p>Setji\00F0 inn n\00FDja r\00F6\00F0 me\00F0 \00FEv\00ED a\00F0 smella \00E1 takkann b\00E6ta vi\00F0 r\00F6\00F0.</p>'),
'',
unistr('<p>Breyti\00F0 n\00FAverandi g\00F6gnum me\00F0 \00FEv\00ED a\00F0 tv\00EDsmella \00E1 tiltekinn reit. St\00E6rri breytingar m\00E1 gera me\00F0 \00FEv\00ED a\00F0 smella \00E1 breyta til a\00F0 komast \00ED breytingaham. \00CD breytingaham er h\00E6gt a\00F0 smella einu sinni e\00F0a nota lyklabor\00F0i\00F0 til a\00F0 breyta tilteknum reitum.</p>'),
'',
unistr('<p>Noti\00F0 breytingavalmyndina til a\00F0 afrita og ey\00F0a r\00F6\00F0um. Til a\00F0 virkja breytingavalmyndina m\00E1 nota hakreitina til a\00F0 velja eina e\00F0a fleiri ra\00F0ir.</p>'),
'',
unistr('<p>Afriti\00F0 valda r\00F6\00F0 me\00F0 \00FEv\00ED a\00F0 smella \00E1 breytingavalmyndina og velja afrita ra\00F0ir. Ey\00F0i\00F0 valinni r\00F6\00F0 me\00F0 \00FEv\00ED a\00F0 smella \00E1 breytingavalmyndina og velja ey\00F0a r\00F6\00F0.</p>')))
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733706361026740)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'is'
,p_message_text=>'Breytingargeta'
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733859008026740)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Gagnvirk grind setur fram gagnamengi \00ED leitanlegri og s\00E9rsn\00ED\00F0anlegri sk\00FDrslu. H\00E6gt er a\00F0 framkv\00E6ma \00F3tal a\00F0ger\00F0ir til a\00F0 takmarka f\00E6rslurnar sem er skila\00F0 og breyta hvernig g\00F6gnin eru birt.</p>'),
'',
unistr('<p>Noti\00F0 leitarsv\00E6\00F0i\00F0 til a\00F0 s\00EDa f\00E6rslurnar sem er skila\00F0. Smelli\00F0 \00E1 a\00F0ger\00F0ir til a\00F0 f\00E1 a\00F0gang a\00F0 \00F3tal valm\00F6guleikum til a\00F0 breyta uppbyggingu sk\00FDrslunnar e\00F0a noti\00F0 valmyndirnar \00ED d\00E1lkafyrirs\00F6gnum \00E1 birtum d\00E1lkum.</p>'),
'',
unistr('<p>Noti\00F0 sk\00FDrslustillingar til a\00F0 vista s\00E9rsni\00F0i\00F0 \00E1 sk\00FDrslunni. Einnig er h\00E6gt a\00F0 hla\00F0a ni\00F0ur g\00F6gnunum \00FAr sk\00FDrslunni \00ED ytri skr\00E1 e\00F0a senda sj\00E1lfum s\00E9r e\00F0a \00F6\00F0rum g\00F6gnin \00ED t\00F6lvup\00F3sti.</p>'),
'',
unistr('<p>Til a\00F0 l\00E6ra meira m\00E1 sj\00E1 \201EUsing Interactive Grids\201C \00ED <em>Handb\00F3k lokanotenda Oracle APEX</em>.')))
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733591525026740)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'is'
,p_message_text=>'Yfirlit'
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731531540026739)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>H\00E6gt er a\00F0 s\00E9rsn\00ED\00F0a gagnvirku grindina svo h\00FAn birti g\00F6gn \00E1 \00FDmsan h\00E1tt sem innbygg\00F0um eiginleikum.</p>'),
'',
unistr('<p>Noti\00F0 valmyndir d\00E1lkafyrirsagna e\00F0a a\00F0ger\00F0avalmyndirnar til a\00F0 \00E1kvar\00F0a hva\00F0a d\00E1lkar birtast, \00ED hva\00F0a r\00F6\00F0 og frysta d\00E1lka. Einnig er h\00E6gt a\00F0 skilgreina \00FDmiss konar gagnas\00EDur og ra\00F0a g\00F6gnunum sem er skila\00F0 .</p>'),
'',
unistr('<p>Noti\00F0 hnappinn sko\00F0a (vi\00F0 hli\00F0 leitarsv\00E6\00F0isins) til a\00F0 f\00E1 a\00F0gang a\00F0 \00F6\00F0rum gagnas\00FDnum sem \00FEr\00F3andi kerfishlutans g\00E6ti hafa skilgreint. Einnig er h\00E6gt a\00F0 b\00FAa til graf e\00F0a sko\00F0a n\00FAverandi graf.</p>  '),
'',
unistr('<p><em>Athugi\00F0: Smelli\00F0 \00E1 <strong>Hj\00E1lp</strong> gluggum gagnvirku grindanna til a\00F0 f\00E1 frekari uppl\00FDsingar um valda a\00F0ger\00F0.</em></p>')))
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733604679026740)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrsluger\00F0argeta')
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684630237026724)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 gagnvirka grind')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730452686026739)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 taka saman d\00E1lka. Sams\00F6fnu\00F0 gildi birtast fyrir ne\00F0an g\00F6gnin e\00F0a ef st\00FDriskil eru skilgreind, fyrir ne\00F0an hver skil.</p>'),
'',
unistr('<p><strong>Sams\00F6fnunarlisti</strong><br>'),
unistr('Sams\00F6fnunarlistinn birtir skilgreindar samsafnanir. Afvirki\00F0 n\00FAverandi sams\00F6fnun me\00F0 \00FEv\00ED a\00F0 afvelja hana.<br>'),
unistr('Smelli\00F0 \00E1 b\00E6ta vi\00F0 ( &plus; ) til a\00F0 b\00FAa til n\00FDja sams\00F6fnun e\00F0a ey\00F0a ( &minus; ) til a\00F0 fjarl\00E6gja n\00FAverandi sams\00F6fnun.</p>'),
'',
unistr('<p><strong>Sams\00F6fnunarstillingar</strong><br>'),
unistr('Noti\00F0 skj\00E1myndina h\00E6gra megin til a\00F0 skilgreina sams\00F6fnunina.<br>'),
unistr('Velji\00F0 nafn d\00E1lksins og tegund sams\00F6fnunar.<br>'),
unistr('Einnig m\00E1 sl\00E1 inn \00E1bendingu fyrir sams\00F6fnunina.<br>'),
unistr('Ef st\00FDriskil eru skilgreind, m\00E1 birta heildarme\00F0altal, samt\00F6lu e\00F0a svipu\00F0 gildi fyrir ne\00F0an g\00F6gnin me\00F0 \00FEv\00ED a\00F0 velja <strong>S\00FDna heildargildi</strong>.</p>'),
'',
unistr('<p><em>Athugi\00F0: H\00E6gt er a\00F0 f\00E1 upp sams\00F6fnunargluggann \00ED a\00F0ger\00F0avalmyndinni e\00F0a me\00F0 \00FEv\00ED a\00F0 smella \00E1 d\00E1lkafyrirs\00F6gnina og summu( &sum; ).</em></p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732643190026740)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 sams\00F6fnun')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731123203026739)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 skilgreina graf sem birtist sem a\00F0skilin gagnas\00FDn.<br>'),
unistr('Velji\00F0 tegund grafs og eigindir grafs.</p>'),
'<p><strong>Eigindir grafs</strong><br>',
unistr('Tilt\00E6kar eigindir grafs fara eftir tegund grafs.</p>'),
'<p>',
'<ul>',
unistr('  <li>Veljio\00F0 d\00E1lkinn sem inniheldur gildi\00F0 fyrir eigindina:'),
'    <ul>',
'      <li>Merki - Texti fyrir hvern gagnapunkt.</li>',
unistr('      <li>Gildi - G\00F6gnin sem \00E1 a\00F0 teikna.</li>'),
unistr('      <li>Ra\00F0ir - Til a\00F0 skilgreina breytilega fyrirspurn me\00F0 m\00F6rgum r\00F6\00F0um.</li>'),
unistr('      <li>Opnun - Daglegt ver\00F0 vi\00F0 opnun marka\00F0a (eing\00F6ngu hlutabr\00E9f).</li>'),
unistr('      <li>Lokun - Daglegt ver\00F0 vi\00F0 lokun marka\00F0a (eing\00F6ngu hlutabr\00E9f).</li>'),
unistr('      <li>H\00E1gildi - H\00E1gildi\00F0 (eing\00F6ngu bilgr\00F6f og hlutabr\00E9f).</li>'),
unistr('      <li>L\00E1ggildi - L\00E1ggildi\00F0 (eing\00F6ngu bilgr\00F6f og hlutabr\00E9f).</li>'),
unistr('      <li>Umfang - Daglegt umfang vi\00F0skipta me\00F0 hlutabr\00E9fi\00F0 (eing\00F6ngu hlutabr\00E9f).</li>'),
unistr('      <li>Mark - Markgildi\00F0 (eing\00F6ngu trekt).</li>'),
unistr('      <li>X - Gildi x-\00E1ssins (eing\00F6ngu b\00F3lurit og dreifirit).</li>'),
unistr('      <li>Y - Gildi y-\00E1ssins (eing\00F6ngu b\00F3lurit og dreifirit).</li>'),
unistr('      <li>Z - Breidd s\00FAlu e\00F0a rad\00EDus b\00F3lu (eing\00F6ngu s\00FAlurit, b\00F3lurit og bilgr\00F6f).</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Afsta\00F0a - L\00F3\00F0r\00E9tt e\00F0a l\00E1r\00E9tt.</li>'),
unistr('  <li>Sams\00F6fnun - Velji\00F0 hvernig \00E1 a\00F0 taka grafgildin saman.</li>'),
unistr('  <li>Stafli - Tilgreini\00F0 hvort g\00F6gnunum er stafla\00F0.</li>'),
unistr('  <li>Ra\00F0a eftir - Ra\00F0a eftir merkinu e\00F0a gildi (gildum).'),
'    <ul>',
unistr('      <li>\00C1tt - Ra\00F0a h\00E6kkandi e\00F0a l\00E6kkandi gildum.</li>'),
unistr('      <li>Null - Tilgreini\00F0 hvernig \00E1 a\00F0 ra\00F0a f\00E6rslum me\00F0 null gildum mi\00F0a\00F0 vi\00F0 f\00E6rslur sem hafa gildi sem eru ekki null.</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Tugas\00E6ti</li>'),
unistr('  <li>Merki fyrir titil \00E1ss</li>'),
unistr('  <li>Gildi fyrir titil \00E1ss</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733054186026740)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 gr\00F6f')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730169113026739)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 velja hva\00F0a d\00E1lkar birtast og \00ED hva\00F0a r\00F6\00F0.</p>'),
'',
unistr('<p>Feli\00F0 d\00E1lk me\00F0 \00FEv\00ED a\00F0 afvelja hann.<br>'),
unistr('Endurra\00F0i\00F0 d\00E1lkum me\00F0 \00FEv\00ED a\00F0 smella \00E1 flytja upp ( &uarr; ) e\00F0a flytja ni\00F0ur ( &darr; ).<br>'),
unistr('Noti\00F0 felliveljarann til a\00F0 lista alla d\00E1lka, birta d\00E1lka e\00F0a ekki birta d\00E1lka.</p>'),
'',
unistr('<p>Einnig m\00E1 nota formi\00F0 til a\00F0 tilgreina l\00E1marksv\00EDdd d\00E1lksins \00ED pixlum.</p>'),
'',
unistr('<p><em>Athugi\00F0: Einnig er h\00E6gt a\00F0 endurra\00F0a birtum d\00E1lkum me\00F0 \00FEv\00ED a\00F0 smell \00E1 draghaldi\00F0 (vi\00F0 byrjun d\00E1lkafyrirsagnarinnar) og draga d\00E1lkinn til vinstri e\00F0a h\00E6gri. Einnig er h\00E6gt a\00F0 breyta v\00EDdd birtra d\00E1lka me\00F0 \00FEv\00ED a\00F0 velja d\00E1lkskilin, \00E1 milli fyrirsa')
||unistr('gna, og f\00E6ra \00FEa\00F0 til vinstri e\00F0a h\00E6gri.</em></p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732938287026740)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 d\00E1lka')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730552623026739)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 skilgreina fleiri d\00E1lka bygg\00F0a \00E1 st\00E6r\00F0fr\00E6\00F0ilegum e\00F0a a\00F0ger\00F0arlegum \00FAtreikningum sem framkv\00E6mdir eru \00E1 n\00FAverandi d\00E1lkum.</p>'),
'',
unistr('<p><strong>\00DAtreikningalisti</strong><br>'),
unistr('\00DAtreikningalistinn birtir skilgreinda \00FAtreikninga. Afvirki\00F0 n\00FAverandi \00FAtreikning me\00F0 \00FEv\00ED a\00F0 afvelja hann.<br>'),
unistr('Smelli\00F0 \00E1 b\00E6ta vi\00F0 ( &plus; ) til a\00F0 b\00E6ta vi\00F0 n\00FDjum \00FAtreikningi e\00F0a ey\00F0a ( &minus; ) til a\00F0 fjarl\00E6gja n\00FAverandi \00FAtreikning.</p>'),
'',
unistr('<p><strong>\00DAtreikningastillingar</strong><br>'),
unistr('Noti\00F0 skj\00E1myndina til a\00F0 skilgreina \00FAtreikninginn.<br>'),
unistr('Sl\00E1i\00F0 inn uppl\00FDsingar um d\00E1lkinn eins og fyrirs\00F6gn, merki og velji\00F0 afst\00F6\00F0ustillingar.<br> '),
unistr('Noti\00F0 textasv\00E6\00F0i\00F0 fyrir seg\00F0 til a\00F0 sl\00E1 inn d\00E1lkinn (d\00E1lkana) og tengdar a\00F0ger\00F0ir fyrir \00FAtreikninginn.<br>'),
unistr('Velji\00F0 vi\00F0eigandi gagnategund og ef til vill l\00EDka sni\00F0shulu fyrir n\00FDja d\00E1lkinn.</p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732565859026740)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 \00FAtreikning')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730816974026739)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 skilgreina st\00FDriskil \00E1 einn e\00F0a fleiri d\00E1lka.</p>'),
'',
unistr('<p><strong>St\00FDriskilalisti</strong><br>'),
unistr('St\00FDriskilalistinn birtir skilgreind st\00FDriskil. Afvirki\00F0 n\00FAverandi st\00FDriskilad\00E1lk me\00F0 \00FEv\00ED a\00F0 afvelja hann.<br>'),
unistr('Smelli\00F0 \00E1 b\00E6ta vi\00F0( &plus; ) til a\00F0 b\00E6ta d\00E1lki vi\00F0 st\00FDriskilin e\00F0a ey\00F0a  ( &minus; ) til a\00F0 fjarl\00E6gja n\00FAverandi d\00E1lk \00FAr st\00FDriskilunum.<br>'),
unistr('Til a\00F0 endurra\00F0a d\00E1lkum, smelli\00F0 \00E1 flytja upp ( &uarr; ) e\00F0a flytja ni\00F0ur ( &darr; ) til a\00F0 flytja valinn d\00E1lk upp og ni\00F0ur mi\00F0a\00F0 vi\00F0 a\00F0ra d\00E1lka.</p>'),
'',
unistr('<p><strong>St\00FDriskilastillingar</strong><br>'),
unistr('Noti\00F0 skj\00E1myndina til a\00F0 skilgreina st\00FDriskilad\00E1lkinn.<br>'),
unistr('Velji\00F0 st\00FDriskilad\00E1lk, r\00F6\00F0unar\00E1tt og hvernig \00E1 a\00F0 ra\00F0a au\00F0um d\00E1lkum (d\00E1lkar sem hafa ekkert gildi).</p>'),
'',
unistr('<p><em>Athugi\00F0: \00DEegar horft er \00E1 gagnvirku grindina, er h\00E6gt a\00F0 skilgreina st\00FDriskil me\00F0 \00FEv\00ED a\00F0 smella d\00E1lkafyrirs\00F6gn og velja st\00FDriskilat\00E1kni\00F0.</em></p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732299930026740)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 st\00FDriskil')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731093187026739)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 hla\00F0a ni\00F0ur \00F6llum n\00FAverandi r\00F6\00F0um \00ED ytri skr\00E1. Skr\00E1in mun a\00F0eins innihalda n\00FAverandi birta d\00E1lka og nota allar s\00EDur og ra\00F0anir sem framkv\00E6mdar eru \00E1 g\00F6gnin.</p>'),
'',
unistr('<p>Velji\00F0 skr\00E1arsni\00F0 og smelli\00F0 \00E1 hla\00F0a ni\00F0ur.<br>'),
unistr('Athugi\00F0: CSV mun ekki innihalda textasni\00F0 eins og samsafnanir og st\00FDriskil.</p>'),
'',
unistr('<p>Til a\00F0 senda skr\00E1na \00ED t\00F6lvup\00F3sti skaltu velja senda sem t\00F6lvup\00F3st og sl\00E1 inn t\00F6lvup\00F3stuppl\00FDsingar (vi\00F0takandi, efni og skilabo\00F0).</p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732008839026740)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 a\00F0 hla\00F0a ni\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730261363026739)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 stilla gagnas\00EDur sem takmarka \00FE\00E6r ra\00F0ir sem er skila\00F0.</p>'),
'',
unistr('<p><strong>S\00EDulisti</strong><br>'),
unistr('S\00EDulistinn birtir skilgreindar afmarkanir. Afvirki\00F0 n\00FAverandi s\00EDu me\00F0 \00FEv\00ED a\00F0 afvelja hana.<br>'),
unistr('Smelli\00F0 \00E1 b\00E6ta vi\00F0 ( &plus; ) til a\00F0 b\00FAa til n\00FDja s\00EDu e\00F0a ey\00F0a ( &minus; ) til a\00F0 fjarl\00E6gja n\00FAverandi s\00EDu.</p>'),
'',
unistr('<p><strong>S\00EDustillingar</strong><br>'),
unistr('Noti\00F0 gluggann til a\00F0 skilgreina eiginleika s\00EDunnar.<br>'),
unistr('Velji\00F0 vi\00F0eigandi tegund s\00EDu:<br>'),
unistr('&nbsp;&nbsp;&nbsp;R\00F6\00F0 - s\00EDa fyrir skilm\00E1la \00ED einhverjum afmarkanlegum d\00E1lki.<br>'),
unistr('&nbsp;&nbsp;&nbsp;D\00E1lkur - s\00EDa tiltekinn d\00E1lk me\00F0 tilteknu reiknimerki og gildi.</p>'),
'',
unistr('<p><em>Athugi\00F0: \00DEegar horft er \00E1 gagnvirku grindina, er h\00E6gt a\00F0 skilgreina ra\00F0as\00EDur sem \00FEv\00ED a\00F0 skrifa beint \00ED leitarsv\00E6\00F0i\00F0. Smelli\00F0 \00E1 velja d\00E1lka til a\00F0 leita til a\00F0 takmarka leitina vi\00F0 \00E1kve\00F0inn d\00E1lk. Annars m\00E1 opna valmynd fyrir d\00E1lkafyrirs\00F6gn og v')
||unistr('elja gildi til a\00F0 b\00FAa til d\00E1lkafm\00F6rkun.</em></p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732844852026740)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp me\00F0 s\00EDur')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730617962026739)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\00DEennan glugga m\00E1 nota til a\00F0 sj\00E1 g\00F6gnin eins og \00FEau voru \00E1 fyrri t\00EDmapunkti.</p>'),
unistr('<p>Sl\00E1i\00F0 inn fj\00F6lda m\00EDn\00FAtna sem flashback-fyrirspurnin \00E1 a\00F0 n\00E1 aftur \00ED t\00EDmann.</p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732416817026740)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 flashback')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733149286026740)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 h\00F3pun')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730786661026739)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 \00E1herslumerkja ra\00F0ir e\00F0a d\00E1lka samkv\00E6mt innslegnum skilyr\00F0um.</p>'),
'',
unistr('<p><strong>\00C1herslumerkingarlisti</strong><br>'),
unistr('\00C1herslumerkingarlistinn birtir skilgreindar \00E1herslumerkingar. Afvirki\00F0 n\00FAverandi \00E1herslumerkingu me\00F0 \00FEv\00ED a\00F0 afvelja hana.<br>'),
unistr('Smelli\00F0 \00E1 b\00E6ta vi\00F0 ( &plus; ) til a\00F0 b\00FAa til n\00FDja \00E1herslumerkingu e\00F0a ey\00F0a ( &minus; ) til a\00F0 fjarl\00E6gja n\00FAverandi \00E1herslumerkingu.</p>'),
'',
unistr('<p><strong>\00C1herslumerkingarstillingar</strong><br>'),
unistr('Noti\00F0 skj\00E1myndina til a\00F0 skilgreina eiginleika \00E1herslumerkingarinnar.<br>'),
unistr('Sl\00E1i\00F0 inn nafn, velji\00F0 r\00F6\00F0 e\00F0a d\00E1lk og velji\00F0 HTML-litak\00F3\00F0a fyrir bakgrunninn og textann.<br>'),
unistr('Velji\00F0 vi\00F0eigandi <strong>Tegund skilyr\00F0is</strong> til a\00F0 \00E1herslumerkja tiltekin g\00F6gn:<br>'),
unistr('&nbsp;&nbsp;&nbsp;R\00F6\00F0 - \00E1herslumerkir skilm\00E1lann \00ED \00F6llum d\00E1lkum.<br>'),
unistr('&nbsp;&nbsp;&nbsp;D\00E1lkur - \00E1herslumerki innan tiltekins d\00E1lks samkv\00E6mt tilgreindu reiknimerki og gildi.</p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732327767026740)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 \00E1herslumerkingu')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730992175026739)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 vista breytingar sem ger\00F0ar hafa veri\00F0 \00E1 n\00FAverandi uppsetningu grindarinnar og stillingu hennar.<br>'),
unistr('\00DEr\00F3endur kerfishluta geta skilgreint margar uppsetningar fyrir aukask\00FDrslur \00DEar sem \00FEa\00F0 er leyfilegt, geta lokanotendur vista\00F0 sk\00FDrslu sem opna sk\00FDrslu, sem gerir sk\00FDrsluna a\00F0gengilega \00F6llum \00F6\00F0rum notendum grindarinnar. Einnig er h\00E6gt a\00F0 vista sk\00FDrsl')
||unistr('u sem loka\00F0a sk\00FDrslu sem a\00F0eins s\00E1 sem bj\00F3 hana til getur s\00E9\00F0.</p>'),
unistr('<p>Velji\00F0 \00FAr tilt\00E6kum tegundum og sl\00E1i\00F0 inn nafn fyrir vistu\00F0u sk\00FDrsluna.</p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732123465026740)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Hj\00E1lp vi\00F0 sk\00FDrslu'),
''))
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730350210026739)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Noti\00F0 \00FEennan glugga til a\00F0 stilla birtingarr\00F6\00F0.</p>'),
'',
unistr('<p><strong>R\00F6\00F0unarlisti</strong><br>'),
unistr('Ra\00F0a glugginn birtir lista yfir stilltar r\00F6\00F0unarreglur.<br>'),
unistr('Smelli\00F0 \00E1 b\00E6ta vi\00F0 ( &plus; ) til a\00F0 b\00FAa til r\00F6\00F0unard\00E1lk e\00F0a ey\00F0a ( &minus; ) til a\00F0 fjarl\00E6gja r\00F6\00F0unard\00E1lk.<br>'),
unistr('Smelli\00F0 \00E1 flytja upp ( &uarr; ) og flytja ni\00F0ur ( &darr; ) til a\00F0 flytja v\00F6ldu r\00F6\00F0unard\00E1lkana upp og ni\00F0ur mi\00F0a\00F0 vi\00F0 hina r\00F6\00F0unard\00E1lkana.</p>'),
'',
unistr('<p><strong>R\00F6\00F0unarstillingar</strong><br>'),
unistr('Velji\00F0  r\00F6\00F0unard\00E1lk, r\00F6\00F0unar\00E1tt og hvernig \00E1 a\00F0 ra\00F0a au\00F0um d\00E1lkum (d\00E1lkar sem hafa ekkert gildi).</p>'),
'',
unistr('<p><em>Athugi\00F0: H\00E6gt er a\00F0 ra\00F0a g\00F6gnum eftir d\00E1lkum sem eru ekki birtir; hins vegar er ekki v\00EDst a\00F0 allir d\00E1lkar s\00E9u ra\00F0anlegir.</em><br>'),
unistr('<em>H\00E6gt er a\00F0 ra\00F0a birtum d\00E1lkum me\00F0 \00FEv\00ED a\00F0 \00FDta upp (h\00E6kkandi) e\00F0a ni\00F0ur (l\00E6kkandi) \00F6rvarnar vi\00F0 endann \00E1 d\00E1lkafyrirs\00F6gninni. Haldi\00F0 inni shift-lyklinum og smelltu \00E1 upp e\00F0a ni\00F0ur \00F6rina til a\00F0 b\00E6ta \00F6\00F0rum d\00E1lki vi\00F0 n\00FAverandi r\00F6\00F0un.</em></p>')))
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126732733485026740)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 r\00F6\00F0un')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731990033026740)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 \00E1skrift')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685522566026725)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'is'
,p_message_text=>'Fela'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649918128026714)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1herslumerkja')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719141526026735)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1tt')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719934609026736)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1r\00E9tt')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678515357026722)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'is'
,p_message_text=>'klukkustundir'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683547370026724)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'is'
,p_message_text=>unistr('T\00E1kn')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648823857026713)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('T\00E1kns\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676767177026722)
,p_name=>'APEX.IG.IN'
,p_message_language=>'is'
,p_message_text=>unistr('\00ED')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685188601026725)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3virk stilling')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685298881026725)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3virkar stillingar')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692840139026727)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Innri villa kom upp vi\00F0 a\00F0 vinna fyrirspurnina fyrir gagnvirka grind.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580710316026692)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Tegund d\00E1lkas\00EDu \201E%0\201C er ekki studd fyrir d\00E1lk \201E%1\201C.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731798638026740)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt sni\00F0 dagsetningar')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706555065026731)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnvirk grind sty\00F0ur ekki a\00F0 skilgreina s\00EDu fyrir d\00E1lkinn %0.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706405310026731)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er ekki gild tegund s\00EDu til a\00F0 skilgreina afm\00F6rkun \00E1 gagnvirkri grind.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587353586026694)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt t\00F6lusni\00F0')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734426770026740)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild stilling')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734582295026740)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gildar stillingar')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725611805026738)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a eftir hefur veri\00F0 stillt \00E1 %0, en enginn d\00E1lkur hefur veri\00F0 valinn fyrir %0.')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722973132026737)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt gildi')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718022243026735)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'is'
,p_message_text=>'Ekki birt'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677551482026722)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'is'
,p_message_text=>unistr('\00ED s\00ED\00F0asta')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677717897026722)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('er \00ED n\00E6sta')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676629060026722)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('er ekki t\00F3mt')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676569235026722)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('er t\00F3mt')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726492397026738)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'is'
,p_message_text=>'Merki'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718427950026735)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'is'
,p_message_text=>'Merki'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722311178026736)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asta')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666869773026719)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asti dagur')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667079181026719)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asta klukkustund')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667570854026719)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu m\00EDn\00FAtu')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666590942026719)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asti m\00E1nu\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666603481026719)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asta vika')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666738090026719)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 dagar')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666951021026719)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 klukkustundir')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667639856026719)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 m\00EDn\00FAtur')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667453592026719)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 m\00E1nu\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667320213026719)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 vikur')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666392762026719)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 \00E1r')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666452375026719)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asta \00E1r')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726640878026738)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'is'
,p_message_text=>unistr('J\00F6fnun reits')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726700209026738)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'is'
,p_message_text=>unistr('Nota h\00F3p til a\00F0')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677121447026722)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'is'
,p_message_text=>'minna en'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677299510026722)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'is'
,p_message_text=>unistr('minna en e\00F0a jafnt og')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720544520026736)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'is'
,p_message_text=>unistr('L\00EDna')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720628117026736)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'is'
,p_message_text=>unistr('L\00EDna me\00F0 sv\00E6\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727026833026738)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'is'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719221893026735)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1gt')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729598474026739)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0skilji\00F0 m\00F6rg p\00F3stf\00F6ng me\00F0 kommum')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678389902026722)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'is'
,p_message_text=>unistr('samsvarar reglulegri seg\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702719388026730)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1mark')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737067729026741)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'is'
,p_message_text=>unistr('Heildarh\00E1mark')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702931901026730)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'is'
,p_message_text=>unistr('Mi\00F0gildi')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737147381026741)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'is'
,p_message_text=>unistr('Heildarmi\00F0gildi')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702690117026730)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1gmark')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678414216026722)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('m\00EDn\00FAtur')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703403056026730)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrir m\00EDn\00FAtum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736942625026741)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'is'
,p_message_text=>unistr('Heildarl\00E1gmark')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678819699026723)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('m\00E1nu\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685410335026725)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('G\00F6gnin innihaldi fleiri en %0 ra\00F0ir sem eru fleiri en leyfilegt er. Nota\00F0u fleiri s\00EDur til a\00F0 sj\00E1 ni\00F0urst\00F6\00F0urnar.')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711256079026733)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Fast sv\00E6\00F0isau\00F0kenni ver\00F0ur a\00F0 vera skilgreint \00FEar sem s\00ED\00F0an inniheldur margar gagnvirkar grindur.')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681529755026723)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'is'
,p_message_text=>'Nafn'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681724536026723)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Nefnd sk\00FDrsla')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665706844026718)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sti dagur')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665527564026718)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta klukkustund')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667730105026719)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu m\00EDn\00FAtu')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666028364026719)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sti m\00E1nu\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665922569026718)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta vika')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665837816026718)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 dagar')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126665657372026718)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 klukkustundir')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667852393026719)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 m\00EDn\00FAtur')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667114759026719)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 m\00E1nu\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667249756026719)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 vikur')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666274696026719)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 \00E1r')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126666165864026719)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta \00E1r')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677403749026722)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'is'
,p_message_text=>unistr('ekki \00E1 milli')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676432605026722)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'is'
,p_message_text=>'ekki jafnt og'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741222853026743)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Sv\00E6\00F0i me\00F0 au\00F0kenni %0 er ekki gagnvirk grind e\00F0a er ekki til \00ED kerfishlutanum %1.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676869844026722)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'is'
,p_message_text=>unistr('ekki \00ED')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677615325026722)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'is'
,p_message_text=>unistr('ekki \00ED s\00ED\00F0asta')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126677891866026722)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('ekki \00ED n\00E6sta')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685316811026725)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Engin g\00F6gn fundust')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722192714026736)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'is'
,p_message_text=>'Autt'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727232865026738)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lulegt')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722496966026737)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'is'
,p_message_text=>unistr('Sl\00F6kkt')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722536704026737)
,p_name=>'APEX.IG.ON'
,p_message_language=>'is'
,p_message_text=>'Kveikt'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675629218026722)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir 1 m\00EDn\00FAtu s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126730098265026739)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'is'
,p_message_text=>'Opna litaveljara: %0'
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718923070026735)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'is'
,p_message_text=>'Opna'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682645332026724)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'is'
,p_message_text=>'Reiknimerki'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718311605026735)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'is'
,p_message_text=>'Stefna'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720738424026736)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'is'
,p_message_text=>'Kaka'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126683959125026724)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'is'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649123830026713)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Pivot-s\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729926877026739)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0skilji\00F0 gildi me\00F0 \201E%0\201C')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720887126026736)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'is'
,p_message_text=>unistr('P\00F3l')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726170690026738)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'is'
,p_message_text=>unistr('Mi\00F0ja')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726278662026738)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'is'
,p_message_text=>'Endir'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126726079795026738)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'is'
,p_message_text=>'Upphaf'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681828227026723)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0al')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682170657026724)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Upphaflega sk\00FDrslan')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698611802026729)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0alsk\00FDrsla')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572228577026689)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'is'
,p_message_text=>unistr('Hafa a\00F0gengileikamerki me\00F0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569691191026688)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'is'
,p_message_text=>unistr('Langsni\00F0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569779833026688)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'is'
,p_message_text=>unistr('Skammsni\00F0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569585870026688)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'is'
,p_message_text=>unistr('Stefna s\00ED\00F0u')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569498080026688)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'is'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569320097026688)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'is'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572453256026689)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'is'
,p_message_text=>unistr('S\00E9rsni\00F0i\00F0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569105988026688)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'is'
,p_message_text=>'Lagalegt'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569041117026688)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'is'
,p_message_text=>unistr('Br\00E9f')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569219287026688)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'is'
,p_message_text=>unistr('Dagbla\00F0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568916806026688)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'is'
,p_message_text=>unistr('St\00E6r\00F0 s\00ED\00F0u')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534583278026677)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja m\00F3ta\00F0an texta')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126720903008026736)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'is'
,p_message_text=>'Radar'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721026149026736)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'is'
,p_message_text=>'Bil'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731273304026739)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'is'
,p_message_text=>'Endurvekja'
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686174847026725)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6ra r\00F6\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684950400026724)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6ra ra\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690127398026726)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnvirkt grindarsv\00E6\00F0i er ekki til \00ED kerfishluta %0, s\00ED\00F0u %1 og sv\00E6\00F0i %2.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650675709026714)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja %0')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681237948026723)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrsla')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740433261026742)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslu eytt')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740146430026742)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'is'
,p_message_text=>unistr('Aukask\00FDrsla vistu\00F0 fyrir alla notendur')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740002797026742)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfgefin sk\00FDrsla vistu\00F0 fyrir alla notendur')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740389402026742)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'is'
,p_message_text=>unistr('Loku\00F0 sk\00FDrsla vistu\00F0')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740259553026742)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'is'
,p_message_text=>unistr('Opin sk\00FDrsla vistu\00F0 fyrir alla notendur')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690260447026726)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Vistu\00F0 gagnvirk grind me\00F0 nafn %0 er ekki til.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675501556026722)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('G\00F6gn grindar eins og \00FEau voru fyrir %0 m\00EDn\00FAtum s\00ED\00F0an.')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675480918026721)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('G\00F6gn grindar eins og \00FEau voru fyrir 1 m\00EDn\00FAtu s\00ED\00F0an.')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610945555026701)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnvirk grindarsk\00FDrsla er ekki til.')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733419125026740)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrsla - breyta')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126690028763026726)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Vistu\00F0 gagnvirk grind me\00F0 au\00F0kenni %0 er ekki til.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126733396510026740)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrsla - vista sem')
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650781844026714)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'is'
,p_message_text=>'Grindarstillingar'
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741377140026743)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Vistu\00F0 gagnvirk grind me\00F0 fast au\00F0kenni %0 er ekki til.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736339103026741)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslus\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126649885701026713)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'is'
,p_message_text=>'Endurstilla'
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686205910026725)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'is'
,p_message_text=>unistr('Sn\00FAa breytingum tilbaka')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685084653026724)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Sn\00FAa r\00F6\00F0um tilbaka')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682256212026724)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681145224026723)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0ir \00E1 s\00ED\00F0u')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740926744026743)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a\00F0ger\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126742135183026743)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir fyrir r\00F6\00F0 %0')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650170859026714)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'is'
,p_message_text=>'Vista'
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695267598026728)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'is'
,p_message_text=>unistr('vista\00F0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599832457026698)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Vistu\00F0 sk\00FDrsla: %0')
,p_is_js_message=>true
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648391407026713)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'is'
,p_message_text=>unistr('Vista\00F0ar sk\00FDrslur')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648457008026713)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfgefi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621922190026705)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'is'
,p_message_text=>unistr('Vistu\00F0 sk\00FDrsla me\00F0 heitinu %0 er \00FEegar til. Sl\00E1\00F0u inn n\00FDtt heiti.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648553253026713)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'is'
,p_message_text=>unistr('Loka\00F0')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648608833026713)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'is'
,p_message_text=>unistr('Opi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736031255026741)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'is'
,p_message_text=>'Vista sem'
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684394235026724)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'is'
,p_message_text=>unistr('Vista sk\00FDrslustillingar')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721109660026736)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'is'
,p_message_text=>'Dreift'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648203678026713)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'is'
,p_message_text=>'Leita'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728383351026738)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Leita: \00D6llum textad\00E1lkum')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648155313026713)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'is'
,p_message_text=>'Leita: %0'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727626690026738)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'is'
,p_message_text=>unistr('Leita: \00D6llum textanum')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675312767026721)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'is'
,p_message_text=>unistr('Leita a\00F0 ''%0''')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717774899026735)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'is'
,p_message_text=>'- Velja -'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657803135026716)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'is'
,p_message_text=>'Val'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710914761026733)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'is'
,p_message_text=>unistr('Velja 1 r\00F6\00F0 \00ED yfirsv\00E6\00F0inu')
,p_is_js_message=>true
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126648070024026713)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'is'
,p_message_text=>unistr('Velja d\00E1lka til a\00F0 leita \00ED')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740603147026743)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('Vala\00F0ger\00F0ir')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658013371026716)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'is'
,p_message_text=>'Reitaval'
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657947354026716)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0arval')
,p_is_js_message=>true
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728991615026739)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'is'
,p_message_text=>unistr('Senda sem t\00F6lvup\00F3st')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721532527026736)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645715417026712)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700946840026730)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna heildargildi')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685896630026725)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDn fyrir einstaka r\00F6\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684149861026724)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721691563026736)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a eftir')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741071744026743)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('Einungis er h\00E6gt a\00F0 skilgreina eina r\00F6\00F0un fyrir hvern d\00E1lk.')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740813185026743)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'is'
,p_message_text=>'Breyta'
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126722673417026737)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'is'
,p_message_text=>'Stafli'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678147686026722)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'is'
,p_message_text=>unistr('hefst \00E1')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721200719026736)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'is'
,p_message_text=>'Lager'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640576424026711)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Teygja breidd d\00E1lks')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126684578415026724)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1skrift')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702581362026730)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'is'
,p_message_text=>'Summa'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126742303584026743)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnvirk grind. Sk\00FDrsla: %0, Yfirlit: %1.')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126736496600026741)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'is'
,p_message_text=>'Heildarsumma'
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719425077026736)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'is'
,p_message_text=>'Takmark'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725816505026738)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'is'
,p_message_text=>'Textalitur'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126650885481026714)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'is'
,p_message_text=>'Skipta'
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532928991026677)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'is'
,p_message_text=>'Grind'
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700887837026730)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1bending')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126681305924026723)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'is'
,p_message_text=>'Tegund'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126685745184026725)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00ED\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682820768026724)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'is'
,p_message_text=>'Eining'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728751356026739)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEa\00F0 eru \00F3vista\00F0ar breytingar. \00C1 a\00F0 halda \00E1fram?')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126682797145026724)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'is'
,p_message_text=>'Gildi'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718572226026735)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'is'
,p_message_text=>'Gildi'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723402745026737)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'is'
,p_message_text=>'Gildi er krafist.'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708611818026732)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'is'
,p_message_text=>unistr('Gildi (ekki er h\00E6gt a\00F0 breyta t\00EDmabelti)')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727343517026738)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'is'
,p_message_text=>'Texti'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719881969026736)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'is'
,p_message_text=>unistr('L\00F3\00F0r\00E9tt')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680804689026723)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDn')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615922348026703)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('Grind \00ED sko\00F0unarham, smelltu til a\00F0 breyta')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717835608026735)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'is'
,p_message_text=>'Birt'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126719338290026736)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('R\00FAmm\00E1l')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678732593026723)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'is'
,p_message_text=>'vikur'
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717924245026735)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1gmarksv\00EDdd d\00E1lks (pixlar)')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669984829026720)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 milli %1 og %2')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669689243026720)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'is'
,p_message_text=>'%0 inniheldur %1'
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669743845026720)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'is'
,p_message_text=>'%0 inniheldur ekki %1'
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645165308026712)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'is'
,p_message_text=>unistr('%0 byrjar ekki \00E1 %1')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668400365026719)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'is'
,p_message_text=>'%0 jafnt og %1'
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668691703026719)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'is'
,p_message_text=>unistr('%0 st\00E6rra en %1')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668781587026719)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'is'
,p_message_text=>unistr('%0 st\00E6rra en e\00F0a jafnt og %1')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669455248026720)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00ED %1')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670613113026720)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0num %1 d\00F6gum')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670440986026720)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0num %1 klukkustundum')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670283928026720)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0num %1 m\00EDn\00FAtum')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671025904026720)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0num %1 m\00E1nu\00F0um')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670827664026720)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0num %1 vikum')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671216375026720)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0num %1 \00E1rum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670527476026720)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0num degi')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670397852026720)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0inni klukkustund')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670120998026720)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0inni m\00EDn\00FAtu')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670978302026720)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0num m\00E1nu\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670771869026720)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0inni viku')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671157373026720)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 s\00ED\00F0astli\00F0nu \00E1ri')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673061904026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu %1 d\00F6gum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672840537026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu %1 klukkustundum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672609144026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu %1 m\00EDn\00FAtum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673468438026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu %1 m\00E1nu\00F0um')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673224859026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu %1 vikum')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673608086026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu %1 \00E1rum')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672954685026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6sta degi')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672744945026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu klukkustund')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672518317026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu m\00EDn\00FAtu')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673372505026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6sta m\00E1nu\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673180934026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6stu viku')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673546296026721)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1 n\00E6sta \00E1ri')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669159193026719)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er ekki t\00F3mt')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669022451026719)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er t\00F3mt')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668839644026719)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'is'
,p_message_text=>'%0 minna en %1'
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668967189026719)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'is'
,p_message_text=>unistr('%0 minna en e\00F0a jafnt og %1')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669262255026719)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'is'
,p_message_text=>'%0 eins og %1'
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669885664026720)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'is'
,p_message_text=>unistr('%0 samsvarar reglulegri seg\00F0 %1')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675730631026722)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir %0 m\00EDn\00FAtum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126670022568026720)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 milli %1 og %2')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668594214026719)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'is'
,p_message_text=>'%0 ekki jafnt og %1'
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669504751026720)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00ED %1')
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671816220026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0num %1 d\00F6gum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671601665026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0num %1 klukkustundum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671444319026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0num %1 m\00EDn\00FAtum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672288482026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0num %1 m\00E1nu\00F0um')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672069323026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0num %1 vikum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672454161026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0num %1 \00E1rum')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671779954026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0num degi')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671560666026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0inni klukkustund')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671358265026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0inni m\00EDn\00FAtu')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672109357026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0num m\00E1nu\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126671957378026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0inni viku')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126672307204026720)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 s\00ED\00F0astli\00F0nu \00E1ri')
,p_is_js_message=>true
,p_version_scn=>2692928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674269248026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu %1 d\00F6gum')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674095751026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu %1 klukkustundum')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673862434026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu %1 m\00EDn\00FAtum')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674672886026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu %1 m\00E1nu\00F0um')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674467591026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu %1 vikum')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674806747026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu %1 \00E1rum')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674155386026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6sta degi')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673967950026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu klukkustund')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126673730490026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu m\00EDn\00FAtu')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674554235026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6sta m\00E1nu\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674362873026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6stu viku')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126674729972026721)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ekki \00E1 n\00E6sta \00E1ri')
,p_is_js_message=>true
,p_version_scn=>2692930
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126669366653026720)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'is'
,p_message_text=>'%0 ekki eins og %1'
,p_is_js_message=>true
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676285177026722)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'is'
,p_message_text=>unistr('%0 hefst \00E1 %1')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718684784026735)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'is'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126678950797026723)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('\00E1r')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718702018026735)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'is'
,p_message_text=>'J'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718824800026735)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'is'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727804342026738)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'is'
,p_message_text=>unistr('M\00E1nudagur, 12. jan\00FAar, 2016')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126727931435026738)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'is'
,p_message_text=>unistr('Jan\00FAar')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728086795026738)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir 16 klukkustundum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126728156850026738)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'is'
,p_message_text=>'eftir 16klst'
,p_is_js_message=>true
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546171989026681)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'is'
,p_message_text=>'Virkja'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538141331026678)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Drag\00F0u myndina \00FE\00EDna og nota\00F0u \00FEysjunarsle\00F0ann til a\00F0 koma henni fyrir innan rammans.</p>'),
'',
unistr('<p>\00DEegar \00E1herslan er \00E1 st\00E6r\00F0art\00F3linu fyrir myndir eru eftirfarandi lyklabor\00F0sfl\00FDtilei\00F0ir \00ED bo\00F0i:</p>'),
'<ul>',
unistr('    <li>Vinstri \00F6r: F\00E6ra mynd til vinstri*</li>'),
unistr('    <li>Upp\00F6r: F\00E6ra mynd upp*</li>'),
unistr('    <li>H\00E6gri \00F6r: F\00E6ra mynd til h\00E6gri*</li>'),
unistr('    <li>Ni\00F0ur\00F6r: F\00E6ra mynd ni\00F0ur*</li>'),
unistr('    <li>I: \00DEysja inn</li>'),
unistr('    <li>O: \00DEysja \00FAt</li>'),
unistr('    <li>L: Sn\00FAa til vinstri</li>'),
unistr('    <li>R: Sn\00FAa til h\00E6gri</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Haltu Shift inni til a\00F0 f\00E6ra hra\00F0ar</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538392480026678)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0sto\00F0 vi\00F0 a\00F0 skera mynd')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546235760026681)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'is'
,p_message_text=>'Endurstilla'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538615953026678)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'is'
,p_message_text=>'Skera mynd'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546301148026681)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('F\00E6r\00F0u sle\00F0ann til stilla \00FEysjunarstig')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575915563026690)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild skr\00E1ategund. Studdar skr\00E1ategundir %0.')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710388053026733)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'is'
,p_message_text=>'Fletta'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710046576026732)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'is'
,p_message_text=>unistr('Velja skr\00E1')
,p_is_js_message=>true
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710167153026733)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'is'
,p_message_text=>unistr('Velja skr\00E1r')
,p_is_js_message=>true
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575778881026690)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'is'
,p_message_text=>'Draga og sleppa'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576158117026690)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'is'
,p_message_text=>unistr('Draga og sleppa skr\00E1m')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577586842026691)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 skr\00E1 e\00F0a sleppi\00F0 skr\00E1 h\00E9r')
,p_is_js_message=>true
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577601387026691)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 e\00F0a sleppi\00F0 skr\00E1m h\00E9r')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577748744026691)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 skr\00E1 e\00F0a sleppi\00F0 skr\00E1 h\00E9r')
,p_is_js_message=>true
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577850653026691)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 e\00F0a sleppi\00F0 skr\00E1m h\00E9r')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576078336026690)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('%0 skr\00E1r')
,p_is_js_message=>true
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575845973026690)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'is'
,p_message_text=>unistr('Skr\00E1in er of st\00F3r. H\00E1marksst\00E6r\00F0 skr\00E1a er %0.')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556315422026684)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 hla\00F0a upp m\00F6rgum skr\00E1m.')
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539226505026679)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544792290026680)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'is'
,p_message_text=>'Heimilisfangs er krafist.'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543676224026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'is'
,p_message_text=>'Borg'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544017593026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'is'
,p_message_text=>unistr('Landsk\00F3\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543759258026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'is'
,p_message_text=>unistr('H\00FAsn\00FAmer')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544616957026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'is'
,p_message_text=>unistr('Breiddargr\00E1\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544545472026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'is'
,p_message_text=>unistr('Lengdargr\00E1\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544438905026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna \00E1 korti')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544144411026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'is'
,p_message_text=>'Einkunn'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543880547026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'is'
,p_message_text=>unistr('P\00F3stn\00FAmer')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543951968026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E9ra\00F0')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543527587026680)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'is'
,p_message_text=>'Gata'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543445999026680)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0greinir ni\00F0urst\00F6\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574901644026690)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0greint')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575009125026690)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki sta\00F0greint')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544306182026680)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'is'
,p_message_text=>'Kort'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544274956026680)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'is'
,p_message_text=>'Ekkert heimilisfang fannst.'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126544832527026680)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'is'
,p_message_text=>'%0 er krafist.'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651040191026714)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 e\00F0a %1 er krafist.')
,p_is_js_message=>true
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740591040026742)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1 hj\00E1lpartexta fyrir %0.')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546578423026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'is'
,p_message_text=>'Velja mynd'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546621104026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'is'
,p_message_text=>'Velja myndir'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546444843026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a ni\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546720204026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'is'
,p_message_text=>'Draga og sleppa'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546844699026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'is'
,p_message_text=>'Draga og sleppa myndum'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546901578026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 mynd e\00F0a sleppi\00F0 mynd h\00E9r.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547094381026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 e\00F0a sleppi\00F0 myndum h\00E9r.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547158449026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 mynd e\00F0a sleppi\00F0 mynd h\00E9r.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547279327026681)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 e\00F0a sleppi\00F0 myndum h\00E9r.')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631925526026708)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'is'
,p_message_text=>unistr('Haka\00F0 vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632055009026708)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki haka\00F0 vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659561165026716)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F3mur skrifvarinn fj\00F6lvalsreitur')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657354669026716)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F3mur skrifvarinn listareitur')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657134983026716)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'is'
,p_message_text=>unistr('Skrifvarinn fj\00F6lvalsreitur')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126657235026026716)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'is'
,p_message_text=>'Skrifvarinn listareitur'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572969714026689)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# er ekki \00E1 gildu bili fr\00E1 %0 til %1.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573093263026689)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'is'
,p_message_text=>'#LABEL# er ekki margfeldi af %0.'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660303675026717)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'is'
,p_message_text=>'Skrifvarinn rofi'
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600927770026698)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'is'
,p_message_text=>unistr('Skrifvarin breyting me\00F0 hlekk')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572507371026689)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 samsvara gildunum %0 og %1.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572706666026689)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'is'
,p_message_text=>'Nei'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659015722026716)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Sl\00F6kkt')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659194279026716)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'is'
,p_message_text=>'Kveikt'
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572672981026689)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('J\00E1')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580532890026692)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'is'
,p_message_text=>unistr('Tungum\00E1laveljari')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126516953473026671)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0 f\00E6rslu')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693788917026727)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693869477026727)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517077913026672)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'is'
,p_message_text=>unistr('Valdar f\00E6rslur')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697580518026729)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'is'
,p_message_text=>unistr('\00CDtarlegt')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697825087026729)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tta vi\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697678543026729)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'is'
,p_message_text=>'Sameiginlegt'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697920482026729)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('Virkir sni\00F0m\00E1tsvalm\00F6guleikar')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698568805026729)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0m\00E1tsvalm\00F6guleikar eru ekki tilt\00E6ki\00F0 \00FEar sem \00EDhluturinn hefur ekki veri\00F0 birtur \00E1 s\00ED\00F0unni.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697444690026728)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Engir sni\00F0m\00E1tsvalm\00F6guleikar fundust.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697717143026729)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'is'
,p_message_text=>'Vista'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551525025026682)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'is'
,p_message_text=>'Hreinsa hring'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553994690026683)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'is'
,p_message_text=>'Custom Styles er ekki gilt JSON.'
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551854935026683)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6g\00F0art\00F3l')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551648590026682)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'is'
,p_message_text=>'Teikna hring'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531491211026676)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAverandi sta\00F0setning')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537812948026678)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('Upphafleg st\00F6\00F0uhnit eru \00F3gild.')
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526809234026675)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Upphafssta\00F0a ver\00F0ur a\00F0 vera punktur.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535490317026677)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'is'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530676009026676)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'is'
,p_message_text=>'Lag'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701056748026730)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'is'
,p_message_text=>'Lag: %0'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549892235026682)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'is'
,p_message_text=>'Kort'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519571491026672)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'is'
,p_message_text=>unistr('Skilabo\00F0')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535654055026677)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'is'
,p_message_text=>unistr('m\00EDlur')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700003087026729)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('G\00F6gnin innihalda fleiri en %0 ra\00F0ir sem eru fleiri en leyfilegt er.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529978218026676)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Skilm\00E1lar</a> &nbsp;&nbsp; Kortag\00F6gn &copy; 2021 H\00C9R')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526527128026675)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnategundin SDO_GEOMETRY er ekki tilt\00E6k \00ED \00FEessum gagnagrunni.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530048150026676)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-\00FE\00E1tttakendur </a>')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554623884026683)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-\00FE\00E1tttakendur </a>')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530818671026676)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'is'
,p_message_text=>'Punktar'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701125522026730)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'is'
,p_message_text=>'%0 punktar'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551756328026683)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'is'
,p_message_text=>unistr('R\00E9tthyrnings\00FEysjun')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551416535026682)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531245845026676)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'is'
,p_message_text=>unistr('Endurstilla vi\00F0mi\00F0un \00E1 nor\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646042698026712)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'is'
,p_message_text=>unistr('Skipta \00ED tv\00EDv\00EDddarham')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646156430026712)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'is'
,p_message_text=>unistr('Skipta \00ED \00FEr\00EDv\00EDddarham')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551329314026682)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna/fela h\00F6fundarr\00E9ttartilkynningu')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551991215026683)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'is'
,p_message_text=>unistr('Heildarfjarl\00E6g\00F0')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530931624026676)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEysja inn')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531117575026676)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEysja \00FAt')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695697946026728)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'is'
,p_message_text=>'Feitletra'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696504832026728)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'is'
,p_message_text=>'Mynd'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696117984026728)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'is'
,p_message_text=>unistr('Innskotsk\00F3\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708895950026732)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'is'
,p_message_text=>'Setja inn mynd'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708919046026732)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'is'
,p_message_text=>'Setja inn hlekk'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695763440026728)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00E1letra')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709514844026732)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'is'
,p_message_text=>'Hlekkur'
,p_is_js_message=>true
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696416018026728)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'is'
,p_message_text=>'Listi'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696377650026728)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a\00F0ur listi')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695885552026728)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Forsko\00F0un')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695998324026728)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'is'
,p_message_text=>unistr('Ekkert til a\00F0 forsko\00F0a')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696062437026728)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'is'
,p_message_text=>unistr('Strika \00ED gegn')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696276922026728)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3ra\00F0a\00F0ur listi')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675172002026721)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'is'
,p_message_text=>unistr('n\00FAverandi')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126731390349026739)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'is'
,p_message_text=>'Meira...'
,p_is_js_message=>true
,p_version_scn=>2692937
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675007815026721)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'is'
,p_message_text=>unistr('Hle\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589259321026694)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'is'
,p_message_text=>'Skipta hnappi'
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589101209026694)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'is'
,p_message_text=>'Skipta valmynd'
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706131006026731)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'is'
,p_message_text=>unistr('Tilkynningarskilabo\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530251319026676)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'is'
,p_message_text=>'Ekkert %0 fannst'
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680113779026723)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera tala minni en e\00F0a j\00F6fn og %0.')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680299619026723)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera gild tala..')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680364682026723)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# samsvarar ekki t\00F6lusni\00F0i %0 (d\00E6mi: %1).')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680008493026723)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera tala st\00E6rri en e\00F0a j\00F6fn og %0.')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679964223026723)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 vera \00E1 milli %0 og %1.')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675225372026721)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'is'
,p_message_text=>unistr('opnast \00ED n\00FDjum glugga')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625088235026706)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi s\00ED\00F0a hefur \00FEegar veri\00F0 send og ekki er h\00E6gt a\00F0 senda hana aftur.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606495426026700)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Kerfishluti \201E%0\201C, s\00ED\00F0a \201E%1\201C fannst ekki.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641954617026711)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('#LABEL# ver\00F0ur a\00F0 hafa gildi.')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532606964026676)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'is'
,p_message_text=>unistr('Fela a\00F0gangsor\00F0')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532537355026676)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna a\00F0gangsor\00F0')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580142430026692)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'is'
,p_message_text=>'Leita'
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694150985026727)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'is'
,p_message_text=>'Loka'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694034943026727)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'is'
,p_message_text=>'Finna%0'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694304992026727)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694208139026727)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'is'
,p_message_text=>'Fyrra'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570915426026689)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'is'
,p_message_text=>unistr('Sl\00E1\00F0u inn leitaror\00F0 sem er a\00F0 minnsta kosti %0 stafir.')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647204556026713)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'is'
,p_message_text=>unistr('Fl\00FDtivalmynd me\00F0 lista af gildum: %0')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571015865026689)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'is'
,p_message_text=>unistr('Sl\00E1\00F0u inn leitaror\00F0.')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518036847026672)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'is'
,p_message_text=>'Listi gilda'
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570895460026689)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'is'
,p_message_text=>unistr('Engar ni\00F0urst\00F6\00F0ur fundust.')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570785144026689)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja %0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126667931861026719)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'is'
,p_message_text=>unistr('Leitaror\00F0')
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693903640026727)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'is'
,p_message_text=>'Leita'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520120725026672)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEarfnast %0.')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532422727026676)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 a\00F0 prenta sk\00FDrslu.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543239887026680)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F3kst ekki a\00F0 prenta skjali\00F0 me\00F0 stilltum prent\00FEj\00F3n.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565954466026687)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 mat \00E1 f\00E6ribreytu %0 \00FEegar kalla\00F0 var \00E1 %1. Sj\00E1 uppl\00FDsingar \00ED villuskr\00E1.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704609354026731)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'is'
,p_message_text=>unistr('\00CD vinnslu')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563789495026686)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'is'
,p_message_text=>'Til baka'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564852054026687)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi vefs\00ED\00F0a hefur kerfishlutavirkni. Settu hana upp \00E1 t\00E6kinu \00FE\00EDnu til a\00F0 nj\00F3ta hennar sem best.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566118441026687)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567784028026688)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Setja upp \00FEennan kerfishluta')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552535437026683)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('T\00E6ki\00F0 \00FEitt e\00F0a vafri vir\00F0ist ekki sty\00F0ja uppsetningu frams\00E6kinna vefforrita \00ED augnablikinu.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547673941026681)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'is'
,p_message_text=>unistr('1. \00DDti\00F0 \00E1 <strong>Deila</strong>-t\00E1kni\00F0')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547764385026681)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'is'
,p_message_text=>unistr('2. Skruni\00F0 ni\00F0ur og \00FDti\00F0 \00E1 <strong>B\00E6ta \00E1 heimaskj\00E1</strong>')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564190047026686)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'is'
,p_message_text=>unistr('3. \00DDttu \00E1  <strong style="color:#007AE1;">B\00E6ta vi\00F0</strong> til a\00F0 sta\00F0festa')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563243633026686)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'is'
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
'    <h1>Gat ekki tengst</h1>',
unistr('    <p>Svo vir\00F0ist sem eitthva\00F0 s\00E9 a\00F0 nettengingunni. Athuga\00F0u nettenginguna og reyndu aftur.</p>'),
'    <button type="button">Reyna aftur</button>',
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563186891026686)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'is'
,p_message_text=>'Gat ekki tengst'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609741327026701)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessu t\00E6ki t\00F3kst ekki a\00F0 virkja sj\00E1lfvirkar tilkynningar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615223060026703)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Fl\00FDtival fyrir %0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615169191026703)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'is'
,p_message_text=>unistr('Fl\00FDtivaltenglar')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126588962141026694)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'is'
,p_message_text=>'Falinn valhnappur'
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533066743026677)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDn fyrir einstaka r\00F6\00F0')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715783313026734)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661001845026717)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'is'
,p_message_text=>'Allan daginn'
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738607660026742)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'is'
,p_message_text=>unistr('Senda bo\00F0')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738448807026742)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'is'
,p_message_text=>'Valkostir'
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662844941026717)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'is'
,p_message_text=>unistr('Dagleg s\00FDn fyrir allan daginn')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662654978026717)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'is'
,p_message_text=>unistr('Dagleg s\00FDn fyrir g\00F6gn me\00F0 t\00EDma')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706894951026731)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'is'
,p_message_text=>'Dagur'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701822777026730)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('L\00FDsing')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585363198026693)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'is'
,p_message_text=>'CSV'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585189660026693)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'is'
,p_message_text=>'iCal'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585093998026693)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'is'
,p_message_text=>'PDF'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126585256189026693)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'is'
,p_message_text=>'XML'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584710834026693)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'is'
,p_message_text=>'Lokadagsetning'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584958326026693)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'is'
,p_message_text=>unistr('Heiti atbur\00F0ar')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738538363026742)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'is'
,p_message_text=>unistr('Bo\00F0')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706922882026732)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'is'
,p_message_text=>'Listi'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706664678026731)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('M\00E1nu\00F0ur')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709240906026732)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723259035026737)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'is'
,p_message_text=>unistr('Engir atbur\00F0ir')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738804303026742)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta n\00FAverandi atbur\00F0i.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738786232026742)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'is'
,p_message_text=>unistr('Senda bo\00F0 \00ED t\00F6lvup\00F3sti.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709330459026732)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'is'
,p_message_text=>'Fyrra'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717029572026735)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'is'
,p_message_text=>unistr('Senda t\00F6lvup\00F3st')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716858698026735)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'is'
,p_message_text=>unistr('Senda t\00F6lvup\00F3st')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739498077026742)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Allir reitir eru nau\00F0synlegir.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739381028026742)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Senda bo\00F0')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738323467026742)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'is'
,p_message_text=>'Efni'
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716951188026735)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'is'
,p_message_text=>'Til'
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584808683026693)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'is'
,p_message_text=>'Upphafsdagsetning'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715097813026734)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'is'
,p_message_text=>unistr('Skj\00E1mynd \00E1 %0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662457498026717)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'is'
,p_message_text=>unistr('T\00EDmi')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709441846026732)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'is'
,p_message_text=>unistr('\00CD dag')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707428615026732)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDn')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706724699026731)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'is'
,p_message_text=>'Vika'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662700700026717)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'is'
,p_message_text=>unistr('Vikuleg s\00FDn fyrir allan daginn')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662505361026717)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'is'
,p_message_text=>unistr('Vikuleg s\00FDn fyrir g\00F6gn me\00F0 t\00EDma')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707386107026732)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1r')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707087945026732)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkar...')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707127051026732)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a meira...')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636595779026709)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'is'
,p_message_text=>'Til baka'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578080646026691)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a meira...')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580367155026692)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'is'
,p_message_text=>'Leita...'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126707269107026732)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a meira...')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709104908026732)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Sv\00E6\00F0isau\00F0kenni %0 fannst ekki.')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580224749026692)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Engin g\00F6gn fundust')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607719729026700)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki endurstillt s\00ED\00F0uskiptingu sv\00E6\00F0is.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571464481026689)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 a\00F0 stilla s\00ED\00F0uskiptingu sv\00E6\00F0is.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701211124026730)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkar...')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555786028026684)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6g hle\00F0sla samr\00E6mist ekki h\00F3lfum \00ED %0, sem er stakt (hlut-) sv\00E6\00F0i. Anna\00F0 hvort \00FEarf a\00F0 sl\00F6kkva \00E1 h\00E6gri hle\00F0slu fyrir \00FEetta sv\00E6\00F0i e\00F0a f\00E6ra \00EDhluti h\00F3lfsins \00E1 anna\00F0 sv\00E6\00F0i.')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551044199026682)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3psni\00F0m\00E1t vantar \00ED \00EDhlut sni\00F0m\00E1ts fyrir %0.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126546099402026681)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er stakt (hlut-) sv\00E6\00F0i og hefur skila\00F0 m\00F6rgum r\00F6\00F0um.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709042823026732)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('Sv\00E6\00F0istegund %0 er ekki studd.')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571387986026689)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 birtingu sv\00E6\00F0isins \201E#COMPONENT_NAME#\201C.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642082142026711)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('#COLUMN_HEADER# ver\00F0ur a\00F0 hafa gildi.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523623544026674)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00FA ver\00F0ur a\00F0 tilgreina sk\00FDrsluuppsetningu.')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737928935026742)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('%0, ritill fyrir m\00F3ta\00F0an texta')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644187021026712)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'is'
,p_message_text=>unistr('HTLM-\00EDvafi\00F0 me\00F0 m\00F3tu\00F0um texta er lengra en h\00E1markslengd hlutarins (raunveruleg %0, leyf\00F0 %1 stafir)')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553564104026683)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'is'
,p_message_text=>unistr('Ritill fyrir m\00F3ta\00F0an skrifvarinn texta')
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553431912026683)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'is'
,p_message_text=>unistr('Ritill fyrir m\00F3ta\00F0an texta')
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553239646026683)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'is'
,p_message_text=>unistr('J\00F6fnun')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553345303026683)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'is'
,p_message_text=>'Aukalegt'
,p_is_js_message=>true
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553029874026683)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'is'
,p_message_text=>unistr('Leturger\00F0')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552972215026683)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553139272026683)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'is'
,p_message_text=>'Listar'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706225438026731)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'is'
,p_message_text=>unistr('Ey\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698762872026729)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'is'
,p_message_text=>'Afrita'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697023251026728)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'is'
,p_message_text=>unistr('Birtir d\00E1lkar')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696964595026728)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtiloka au\00F0 gildi')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126706381365026731)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660670472026717)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'is'
,p_message_text=>unistr('Flytja ni\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660748650026717)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'is'
,p_message_text=>'Flytja upp'
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696745649026728)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697305046026728)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0rir d\00E1lkar')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696820305026728)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'is'
,p_message_text=>'Fyrra'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697119734026728)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 %0')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126697267061026728)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 %0 af %1')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698899704026729)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'is'
,p_message_text=>'Endurvekja'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698980081026729)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'is'
,p_message_text=>unistr('Sn\00FAa breytingum tilbaka')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126696682460026728)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'is'
,p_message_text=>'Stillingar'
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655869648026715)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('Til d\00E6mis, %0')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660161104026717)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E6mi: %0')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572822111026689)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('1 ni\00F0ursta\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569982015026688)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('%0 ni\00F0urst\00F6\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621766028026705)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0uskipting')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621887985026705)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'is'
,p_message_text=>unistr('Ni\00F0urst\00F6\00F0ur, %0 til %1')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517532189026672)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'is'
,p_message_text=>unistr('Skr\00E1 inn aftur')
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517446842026672)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Setunni \00FEinni er loki\00F0')
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517667470026672)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'is'
,p_message_text=>'Framlengja'
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517249578026672)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'is'
,p_message_text=>unistr('Setunni \00FEinni l\00FDkur %0. Viltu framlengja hana?')
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517358379026672)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'is'
,p_message_text=>unistr('Setunni \00FEinni l\00FDkur %0 og ekki er h\00E6gt a\00F0 framlengja hana. Vista\00F0u vinnuna n\00FAna til a\00F0 koma \00ED veg fyrir a\00F0 g\00F6gn tapist')
,p_is_js_message=>true
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716667936026735)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu tiltektark\00F3\00F0a gagnagrunnssetu.')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606329817026700)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu uppsetningark\00F3\00F0a gagnagrunnssetu.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576777927026690)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Setunni \00FEinni er loki\00F0')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715835158026734)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'is'
,p_message_text=>unistr('Vinsamlegast loki\00F0 \00FEessum glugga og \00FDti\00F0 \00E1 hnappinn endurhla\00F0a \00ED vafranum til a\00F0 f\00E1 n\00FDja setu.')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734775663026741)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'is'
,p_message_text=>unistr('<a href="%0">Skr\00E1i\00F0 inn</a> aftur til a\00F0 b\00FAa til n\00FDja setu.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619002443026704)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'is'
,p_message_text=>'Seta ekki gild'
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662167636026717)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki var h\00E6gt a\00F0 virkja nein breytileg hlutverk \00ED raunverulegu \00F6ryggissetu kerfishlutans fyrir notandann \201E%0\201C.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604262105026699)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-99900 Gat ekki stofna\00F0 einkv\00E6mt setuau\00F0kenni: %0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533355803026677)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnategundin CLOB fyrir setust\00F6\00F0u er ekki leyf\00F0 fyrir hlut %0.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552781459026683)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 skipta \00FAt hlutum af gagnategundinni CLOB fyrir setust\00F6\00F0u.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621576222026705)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'is'
,p_message_text=>unistr('Brot gegn verndun setust\00F6\00F0u: \00DEetta g\00E6ti stafa\00F0 af handvirkri breytingu \00E1 verndu\00F0um s\00ED\00F0uhlut %0. Ef vafi leikur hva\00F0 olli \00FEessari villu skaltu hafa samband vi\00F0 stj\00F3rnanda kerfishlutans til a\00F0 f\00E1 a\00F0sto\00F0.')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126742756113026743)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'is'
,p_message_text=>unistr('Broti\00F0 gegn vefs\00ED\00F0uvernd: \00DEa\00F0 g\00E6ti stafa\00F0 af \00FEv\00ED a\00F0 s\00ED\00F0a var send inn sem var ekki b\00FAin a\00F0 hla\00F0ast e\00F0a  a\00F0 verndu\00F0um s\00ED\00F0uhlutum var handvirkt breytt. Vinsamlegast hafi\00F0 samband vi\00F0 stj\00F3rnanda kerfishlutans til a\00F0 f\00E1 frekari uppl\00FDsingar.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741876084026743)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 inniheldur einn af eftirfarandi \00F3gildum st\00F6fum &<>"/;,*|=% e\00F0a --')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741985442026743)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'is'
,p_message_text=>unistr('%0 inniheldur einn af eftirfarandi \00F3gildum st\00F6fum &<>"/;,*|=% e\00F0a -- e\00F0a n\00FDja l\00EDnu.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741628530026743)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'is'
,p_message_text=>unistr('%0 inniheldur s\00E9rstaka stafi. A\00F0eins stafirnir a-Z, 0-9 og bil eru leyfir.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741786691026743)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 inniheldur <, > e\00F0a " sem eru \00F3gildir stafir.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579134662026691)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'is'
,p_message_text=>unistr('Engin pr\00F3fsumma var gefin til a\00F0 s\00FDna vinnslu \00E1 s\00ED\00F0u sem krefst pr\00F3fsummu \00FEegar eitt e\00F0a fleira bei\00F0ni, hreinsa skyndiminni e\00F0a frumgildi eru send sem f\00E6ribreytur.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616424787026703)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'is'
,p_message_text=>unistr('Brot gegn verndun setust\00F6\00F0u: \00DEetta g\00E6ti stafa\00F0 af handvirkri breytingu \00E1 sl\00F3\00F0 sem inniheldur pr\00F3fsummu e\00F0a e\00F0a hlekkur me\00F0 rangri pr\00F3fsummu e\00F0a hlekkur \00E1n pr\00F3fsummu er nota\00F0ur. Ef vafi leikur hva\00F0 olli \00FEessari villu skaltu hafa samband vi\00F0 stj\00F3rnanda')
||unistr(' kerfishlutans til a\00F0 f\00E1 a\00F0sto\00F0.')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698038263026729)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'is'
,p_message_text=>unistr('Stilla af ham me\00F0 miklum birtuskilum')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698158875026729)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'is'
,p_message_text=>unistr('Stilla \00E1 ham me\00F0 miklum birtuskilum')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562520775026686)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 uppf\00E6ra stillingu kerfishluta %0 \00FEar sem h\00FAn er skr\00E1\00F0 \00ED \00F6\00F0rum kerfishluta.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612858554026702)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'is'
,p_message_text=>unistr('Ne\00F0st')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613012007026702)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'is'
,p_message_text=>unistr('Ni\00F0ur')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613168800026702)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'is'
,p_message_text=>'Flytja'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613284191026702)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'is'
,p_message_text=>'Flytja allt'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613317647026702)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613457125026702)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja allt')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613566851026702)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'is'
,p_message_text=>'Endurstilla'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612730883026702)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'is'
,p_message_text=>'Efst'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612937496026702)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'is'
,p_message_text=>'Upp'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724518575026737)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'is'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725263434026737)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>'eftir %0d'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724416886026737)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'is'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725336792026737)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>'eftir %0klst'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724267458026737)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'is'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725481630026737)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>'eftir %0m'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724879318026737)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('%0m\00E1')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725034236026737)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>unistr('eftir %0m\00E1')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724365344026737)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'is'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725173603026737)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>'eftir %0s'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724629733026737)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'is'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126725547744026738)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>'eftir %0v'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724745974026737)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'is'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724957611026737)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>unistr('eftir %0\00E1')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525858960026674)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'is'
,p_message_text=>unistr('[L\00EDna]')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526423220026674)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'is'
,p_message_text=>unistr('[Margar l\00EDnur]')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526146732026674)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'is'
,p_message_text=>'[Margir punktar]'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526647932026675)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'is'
,p_message_text=>'[Margir marghyrningar]'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526713525026675)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'is'
,p_message_text=>unistr('[R\00FAmfr\00E6\00F0ihlutur]')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525744744026674)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'is'
,p_message_text=>'[Punktur (%0,%1)]'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526005403026674)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'is'
,p_message_text=>'[Marghyrningur]'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525245928026674)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'is'
,p_message_text=>unistr('Samanfellt sv\00E6\00F0i: %0')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640353985026711)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'is'
,p_message_text=>'Fella saman'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524260930026674)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1r\00E9tta skiptingu er ekki h\00E6gt a\00F0 f\00E6ra til vinstri e\00F0a h\00E6gri')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524469231026674)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1marksst\00E6r\00F0 sem nemur %0px n\00E1\00F0')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525450996026674)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1gmarksst\00E6r\00F0 sem nemur %0px n\00E1\00F0')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525323609026674)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'is'
,p_message_text=>unistr('Sv\00E6\00F0i er samanfellt')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525167190026674)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'is'
,p_message_text=>unistr('Sv\00E6\00F0i\00F0 er endurr\00E6st')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524861804026674)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'is'
,p_message_text=>unistr('St\00E6r\00F0 breytt \00ED %0px')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525026201026674)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'is'
,p_message_text=>unistr('Endurr\00E6st sv\00E6\00F0i: %0')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640286104026710)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'is'
,p_message_text=>'Endurstilla'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524301237026674)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'is'
,p_message_text=>unistr('L\00F3\00F0r\00E9tta skiptingu er ekki h\00E6gt a\00F0 f\00E6ra til upp e\00F0a ni\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689738489026726)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'is'
,p_message_text=>'Hreinsa mat'
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679676806026723)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er ekki \00E1 gildu bili 1 - %1')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679708552026723)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'is'
,p_message_text=>'%0 er ekki tala'
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126675805200026722)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'is'
,p_message_text=>unistr('Skilabo\00F0 um \00E1rangur')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737680229026741)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737549064026741)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'is'
,p_message_text=>'Fyrra'
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647736523026713)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Kerfi f\00E6rslna sem tengjast \00FEessu verktilviki fannst ekki')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126656017411026715)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Framkv\00E6md verkara\00F0ger\00F0ar %0 mist\00F3kst - verki\00F0 er stillt \00ED villust\00F6\00F0u, athuga\00F0u verka\00F0ger\00F0ark\00F3\00F0ann')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536274274026678)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0 athugasemd: Ekki heimila\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535588973026677)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'is'
,p_message_text=>unistr('Verki \00FEegar \00FAthluta\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528992174026675)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAthluta\00F0 %0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535229169026677)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tta vi\00F0 verk: Ekki heimila\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550877934026682)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'is'
,p_message_text=>unistr('Get ekki fjarl\00E6gt rauneiganda \00FEessa verk\00FE\00E1ttar. \00DAthluti\00F0 \00F6\00F0rum \00FE\00E1tttakanda verk\00FE\00E6ttinum \00E1\00F0ur en a\00F0ger\00F0in er reynd aftur.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534830230026677)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('Velja verk: Ekki heimila\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534902601026677)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('Lj\00FAka verki: Ekki heimila\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535028588026677)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAthluta verki: Ekki heimila\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533456421026677)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'is'
,p_message_text=>unistr('Skiladagur verks m\00E1 ekki vera li\00F0inn.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528795701026675)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'is'
,p_message_text=>unistr('Til afgrei\00F0slu %0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529185415026675)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0 %1 mist\00F3kst. Villuskilabo\00F0 - %0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528851352026675)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'is'
,p_message_text=>unistr('Mist\00F3kst')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528483363026675)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F3kst')
,p_is_js_message=>true
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528612553026675)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0 %1 t\00F3kst me\00F0 skilabo\00F0in %0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531953705026676)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1\00F0ur en rennur \00FAt')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557572589026684)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tta vi\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557087917026684)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tt vi\00F0 verk')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557606590026684)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00E1tttakandi m\00E1 ekki h\00E6tta vi\00F0 verki\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556935106026684)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'is'
,p_message_text=>'Velja'
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557377064026684)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'is'
,p_message_text=>unistr('Verk hefur \00FEegar veri\00F0 vali\00F0 af \00F6\00F0rum notanda e\00F0a \00FE\00E1tttakandi \00E1 ekki r\00E9tt \00E1 a\00F0 velja \00FEetta verk')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557109024026684)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 valdi verki\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658263971026716)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'is'
,p_message_text=>unistr('Lj\00FAka')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556796501026684)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Verki loki\00F0 me\00F0 \00FAtkomu %0')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558057066026685)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Anna\00F0hvort hefur verkinu ekki veri\00F0 \00FAthluta\00F0 e\00F0a \00FE\00E1tttakandinn hefur ekki leyfi til a\00F0 lj\00FAka verkinu')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518430306026672)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'is'
,p_message_text=>unistr('Verki loki\00F0 \00E1n \00FAtkomu')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658358450026716)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'is'
,p_message_text=>unistr('B\00FAa til')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551268100026682)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Verk stofna\00F0 me\00F0 au\00F0kenni %0')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658477876026716)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAthluta')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556813501026684)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Verki \00FAthluta\00F0 \00E1 m\00F6gulega eigandann %0')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557423144026684)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00E1tttakandi \00E1 ekki r\00E9tt e\00F0a n\00FDr \00FE\00E1tttakandi er ekki m\00F6gulegur eigandi \00FEessa verks')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530543074026676)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'is'
,p_message_text=>unistr('Renna \00FAt')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531638333026676)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Verk \00FAtrunni\00F0.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658568824026716)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'is'
,p_message_text=>'Mistakast'
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527205017026675)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Anna\00F0hvort hefur verkinu ekki veri\00F0 \00FAthluta\00F0 e\00F0a \00FE\00E1tttakandinn hefur ekki leyfi til a\00F0 \00F3ska eftir uppl\00FDsingum fyrir verki\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527421633026675)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Anna\00F0hvort hefur ekki veri\00F0 \00F3ska\00F0 eftir uppl\00FDsingum fyrir verki\00F0 e\00F0a \00FE\00E1tttakandinn hefur ekki leyfi til a\00F0 senda inn uppl\00FDsingar fyrir verki\00F0.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531018068026676)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1ta verk renna \00FAt \00FEegar h\00E1marksfj\00F6lda %0 endurn\00FDjana er n\00E1\00F0.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558343510026685)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'is'
,p_message_text=>unistr('Verk er ekki \00ED r\00E9ttri st\00F6\00F0u e\00F0a \00FE\00E1tttakandi er ekki rekstrarstj\00F3ri \00FEessa verks')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558401889026685)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0 %0 er \00F3\00FEekkt e\00F0a \00E1 ekki vi\00F0 \00FEetta verk')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658637177026716)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'is'
,p_message_text=>'Losa'
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644312037026712)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Verk losa\00F0ur, a\00F0rir geta n\00FA vali\00F0 \00FEa\00F0')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537294562026678)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Losun verks er ekki leyf\00F0 \2013 notandinn er ekki eigandi verksins')
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554228460026683)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja eiganda')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554465869026683)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00E1tttakandi %0 fjarl\00E6g\00F0ur \00FAr verk\00FE\00E6ttinum')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531826756026676)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'is'
,p_message_text=>unistr('Endurn\00FDja')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530761486026676)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Verk endurn\00FDja\00F0 me\00F0 au\00F0kenni %0, mesti fj\00F6ldi eftirstandandi endurn\00FDjana \00E1\00F0ur en \00FEa\00F0 rennur \00FAt er %1.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126531701128026676)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Verk me\00F0 au\00F0kenni %0 endurn\00FDja\00F0 me\00F0 verkkenni %1')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527739046026675)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3ska eftir uppl\00FDsingum')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527692966026675)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3ska\00F0i eftir frekari uppl\00FDsingum fr\00E1 %0: %1')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525596711026674)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6gt er a\00F0 lj\00FAka upphafsa\00F0ila h\00F3ps \00ED %0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527873171026675)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'is'
,p_message_text=>unistr('Senda inn uppl\00FDsingar')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527560984026675)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Umbe\00F0nar uppl\00FDsingar sendar til  %0: %1')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658774394026716)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6ra athugasemd')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555299683026684)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta athugasemd vi\00F0: %0')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558140909026685)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0a verksins leyfir ekki athugasemdir')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565435106026687)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Stilla lokadagsetningu verkefnis \00E1 %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523571395026674)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'is'
,p_message_text=>unistr('Lokafrestur uppf\00E6rslu')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658829624026716)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6ra eiganda')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556518906026684)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta m\00F6gulegum eiganda %0 vi\00F0 \00FE\00E1tttakendur \00ED verki')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555688146026684)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6ra f\00E6ribreytur')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658949695026716)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6ra forgang')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557249717026684)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Stilla forgang verks \00E1 %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554540603026683)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6r\00F0i f\00E6ribreytu "%0" \00FAr "%1" \00ED "%2".')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538074664026678)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tt var vi\00F0 verk\00FE\00E1ttinn \00FEar sem samsvarandi vinnslufl\00E6\00F0istilvik var st\00F6\00F0va\00F0.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535117681026677)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1framsenda verk: Ekki heimila\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528511548026675)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'is'
,p_message_text=>unistr('Hafi\00F0 af %0 %1')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537425818026678)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3v\00E6nt innri villa kom upp')
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535766646026677)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0 verks \00E1 ekki vi\00F0.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561353063026686)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi hugsanlegi eigandi er ekki til.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537001609026678)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'is'
,p_message_text=>unistr('Sam\00FEykkt')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537174924026678)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'is'
,p_message_text=>unistr('Hafna\00F0')
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518560817026672)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtkomu \00FEarf til a\00F0 geta loki\00F0 verki')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126518777152026672)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Verk m\00E1 ekki hafa \00FAtkomu')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554342946026683)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki uppf\00E6rt f\00E6ribreytu %0.')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550694289026682)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00E1tttakandinn er n\00FA \00FEegar til fyrir \00FEetta verk\00FE\00E1ttartilvik.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652156991026714)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'is'
,p_message_text=>unistr('Mikilv\00E6gt')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529231582026675)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('Mikilv\00E6gt')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126652066754026714)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1tt')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529372602026675)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1r forgangur')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651956583026714)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'is'
,p_message_text=>unistr('Mi\00F0lungs')
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529450875026675)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('Me\00F0alforgangur')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651878759026714)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1gt')
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529506385026675)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1gur forgangur')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651758964026714)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E6gsta')
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529683261026675)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E6gsti forgangur')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535321493026677)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('Stilla forgang verks: Ekki heimila\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536517927026678)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAthluta\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536964874026678)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tt vi\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536632954026678)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'is'
,p_message_text=>unistr('Loki\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536829057026678)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'is'
,p_message_text=>'Villa kom upp'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126530333403026676)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtrunni\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536784747026678)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Mist\00F3kst')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527047160026675)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3ska\00F0 eftir uppl\00FDsingum')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536497113026678)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki \00FAthluta\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558823723026685)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Stofnun n\00FDs verks \00FAt fr\00E1 skilgreiningu \00E1 verki %0 \00ED kerfi %1 mist\00F3kst.'),
'SQLCODE: %2'))
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558711249026685)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'is'
,p_message_text=>unistr('Tilraun til a\00F0 stofna verk \00FAt fr\00E1 skilgreiningu \00E1 verki %0 \00ED kerfi %1 mist\00F3kst vegna \00FEess a\00F0 skilgreining verksins inniheldur enga m\00F6gulega eigendur \2013 breyttu skilgreiningu verksins og b\00E6ttu vi\00F0 a\00F0 minnsta kosti einum \00FE\00E1tttakanda af tegundinni m\00F6gule')
||'gur eigandi'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536000905026677)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>'Skilgreining verks fannst ekki'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535945297026677)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00E1tttakendur fundust ekki fyrir verki\00F0')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537312319026678)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'is'
,p_message_text=>unistr('Fleiri en eitt verk me\00F0 uppgefi\00F0 verkkenni \2013 haf\00F0u samband vi\00F0 gagnagrunnsstj\00F3ra')
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126536134635026678)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>'Verk fannst ekki'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126535888857026677)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('F\00E6ribreyta verks fannst ekki')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572165970026689)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572074137026689)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'is'
,p_message_text=>unistr('Sam\00FEykki')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519429868026672)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki t\00F3kst a\00F0 framkv\00E6ma a\00F0fer\00F0 fyrir orlofsreglu %2 fyrir skilgreiningu %0 \00E1 verki \00ED kerfi %1.')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519616953026672)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00E1tttakanda %1 b\00E6tt vi\00F0 \00ED sta\00F0 \00FE\00E1tttakanda %0 . \00C1st\00E6\00F0a - %2 .')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723368147026737)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'is'
,p_message_text=>unistr('T\00E6kjasl\00E1')
,p_is_js_message=>true
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576814933026690)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'is'
,p_message_text=>'Kerfishluti'
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738040245026742)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtv\00EDkka/fella saman lei\00F0arkerfi')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738130512026742)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtv\00EDkka/fella saman hli\00F0ard\00E1lk')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646550849026712)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0allei\00F0arkerfi')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547333206026681)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'is'
,p_message_text=>unistr('\201E%0\201C er \00F3gilt sta\00F0gengilsheiti.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654250567026715)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'is'
,p_message_text=>'1 dagur'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654089223026715)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'is'
,p_message_text=>'1 klukkustund'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654391010026715)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'is'
,p_message_text=>'%0 dagar'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654146688026715)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'is'
,p_message_text=>'%0 klukkustundir'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653994158026715)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('%0 m\00EDn\00FAtur')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654512344026715)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'is'
,p_message_text=>'%0 vikur'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126654479846026715)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'is'
,p_message_text=>'1 vika'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552254100026683)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('%0 v\00F6rur valdar')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552421580026683)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Velja v\00F6ru')
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552368884026683)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'is'
,p_message_text=>'Velja %0'
,p_is_js_message=>true
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741192557026743)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'is'
,p_message_text=>unistr('Upphaf s\00ED\00F0u')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598711250026697)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Virkja\00F0')
,p_is_js_message=>true
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567218325026687)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 vinnslu bei\00F0ni.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126552844037026683)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 uppf\00E6ra textaskilabo\00F0 %0 \00FEar sem \00FEau eru skr\00E1\00F0 \00ED \00F6\00F0rum kerfishluta.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655923340026715)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'is'
,p_message_text=>'Gildi er krafist'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126572373599026689)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrirsagnarsti %0, fali\00F0')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700719628026730)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi s\00ED\00F0a hefur \00F3vista\00F0ar breytingar.')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562327279026686)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0alvalmynd')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562032058026686)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEysja inn')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563091597026686)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEysjunar\00FErep {0}%')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562146843026686)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEysja \00FAt')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562241347026686)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'is'
,p_message_text=>unistr('Endurstilling \00FEynsjunar')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537758552026678)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDringarmyndin af vinnslufl\00E6\00F0inu er ekki a\00F0gengileg a\00F0 sinni.')
,p_is_js_message=>true
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537634232026678)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDringarmynd af vinnslufl\00E6\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539531363026679)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0istilvik %0 er n\00FAna \00ED st\00F6\00F0u %1. A\00F0ger\00F0in er \00FEv\00ED ekki leyfileg')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542183997026679)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'is'
,p_message_text=>unistr('Tilviki %1 \00ED vinnslufl\00E6\00F0i %0 \00ED a\00F0ger\00F0 %2 var loki\00F0')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541952750026679)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'is'
,p_message_text=>unistr('Bj\00F3 til n\00FDtt tilvik %1 af a\00F0ger\00F0 %2 \00ED vinnslufl\00E6\00F0i %0')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533714691026677)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Vi\00F0b\00F3targagnar\00F6\00F0 sem tengist \00FEessu a\00F0ger\00F0artilviki fyrir vinnslufl\00E6\00F0i finnst ekki')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542070924026679)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'is'
,p_message_text=>unistr('Galla\00F0 tilvik %1 \00ED vinnslufl\00E6\00F0i %0 \00ED a\00F0ger\00F0 %2 var reynt aftur')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524032010026674)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'is'
,p_message_text=>unistr('Virknitilvik %1 \00ED vinnslufl\00E6\00F0i %0 var st\00F6\00F0va\00F0')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557831436026684)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'is'
,p_message_text=>unistr('Virknitilvik %1 \00ED vinnslufl\00E6\00F0i %0 rann \00FAt \00E1 t\00EDma og var loka\00F0.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542214057026679)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'is'
,p_message_text=>unistr('Tilvik %1 \00ED vinnslufl\00E6\00F0i %0 \00ED a\00F0ger\00F0 %2 er \00ED bi\00F0st\00F6\00F0u')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523829765026674)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0istilviki %0 var breytt og haldi\00F0 \00E1fram \00E1 a\00F0ger\00F0 %1')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541232712026679)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'is'
,p_message_text=>unistr('Bi\00F0tilviki %1 \00ED a\00F0ger\00F0 %2 \00ED vinnslufl\00E6\00F0i %0 var loki\00F0 vandr\00E6\00F0alaust')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541059445026679)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'is'
,p_message_text=>unistr('Bi\00F0a\00F0ger\00F0 %1 var g\00F6llu\00F0 \00FEar sem vinnslufl\00E6\00F0i %0 var \00FEegar \00ED galla\00F0ri st\00F6\00F0u \00E1\00F0ur loki\00F0 var vi\00F0 a\00F0ger\00F0ina')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541181319026679)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'is'
,p_message_text=>unistr('Bi\00F0a\00F0ger\00F0 %1 var st\00F6\00F0vu\00F0 \00FEar sem vinnslufl\00E6\00F0i %0 var \00FEegar \00ED st\00F6\00F0va\00F0ri st\00F6\00F0u \00E1\00F0ur en loki\00F0 var vi\00F0 a\00F0ger\00F0ina')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126524134675026674)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki t\00F3kst a\00F0 st\00F6\00F0va virkni %1 \00ED vinnslufl\00E6\00F0i %0 vegna undantekningar - %2')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539717325026679)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0i\00F0 er n\00FAna uppteki\00F0 vi\00F0 a\00F0 lj\00FAka fyrri a\00F0ger\00F0. Reyni\00F0 aftur s\00ED\00F0ar')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555810619026684)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'is'
,p_message_text=>unistr('Loki\00F0 %0')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538873545026678)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0i\00F0 %0 getur ekki haldi\00F0 \00E1fram \00FEar sem \00FEa\00F0 er n\00FA vi\00F0 a\00F0ger\00F0 %1 sem er ekki \00ED bi\00F0st\00F6\00F0u')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550738367026682)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er ekki gilt fylgnisamhengi vinnslufl\00E6\00F0is fyrir keyrsluna sem \00FEessi vinnslufl\00E6\00F0isa\00F0ger\00F0 framkv\00E6mir. Fylgnisamhengi\00F0 \00FEarf a\00F0 vera texti sem er skipt upp me\00F0 tv\00EDpunkti og inniheldur APEX_APPL_WORKFLOW. \00C1 eftir \00FEv\00ED skal koma au\00F0kenni vinnslufl\00E6\00F0istil')
||unistr('viksins og au\00F0kenni a\00F0ger\00F0artilviksins.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541483785026679)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'is'
,p_message_text=>unistr('Bj\00F3 til n\00FDtt tilvik %0 af vinnslufl\00E6\00F0i %1, \00FAtg\00E1fa %2')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533537758026677)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Vi\00F0b\00F3targagnar\00F6\00F0 sem tengist \00FEessu vinnslufl\00E6\00F0istilviki finnst ekki')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556001905026684)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'is'
,p_message_text=>unistr('Til afgrei\00F0slu %0')
,p_version_scn=>2692908
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541386687026679)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0i %0 lauk \00ED st\00F6\00F0u %1')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538548695026678)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnategundin %1 fyrir skilyr\00F0in sem borin eru saman \00ED skiptia\00F0ger\00F0 vinnslufl\00E6\00F0is %0 samr\00E6mist ekki skilyr\00F0isreiknimerkinu')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528365907026675)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'is'
,p_message_text=>unistr('Hafi\00F0 af %0 %1')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126551106138026682)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'is'
,p_message_text=>unistr('Bj\00F3 til n\00FDtt tilvik %0 af vinnslufl\00E6\00F0i %1, \00FAtg\00E1fa %2 \2013 kalla\00F0 \00E1 \00FEa\00F0 \00FAr virknitilviki %4 \00ED vinnslufl\00E6\00F0istilviki %3')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126523986658026674)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0 me\00F0 fast au\00F0kenni ID %1 er ekki a\00F0ger\00F0 \00ED Vinnslufl\00E6\00F0i %0. Athuga\00F0u fast au\00F0kenni a\00F0ger\00F0arinnar \00ED samsvarandi \00FAtg\00E1fu vinnslufl\00E6\00F0is.')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549245608026682)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er \00E1skilin f\00E6ribreyta fyrir \00FEetta vinnslufl\00E6\00F0i og m\00E1 ekki vera NULL.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541832661026679)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0istilviki %0 var haldi\00F0 \00E1fram')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541785053026679)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0istilvik %0 var reynt aftur')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556188296026684)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'is'
,p_message_text=>'%0 reyna aftur'
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556207363026684)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'is'
,p_message_text=>'%0 tilraunir'
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555964087026684)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'is'
,p_message_text=>unistr('Hafi\00F0 %0')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550132998026682)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'is'
,p_message_text=>'Virkt'
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550370526026682)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'is'
,p_message_text=>unistr('Loki\00F0')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550423298026682)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'is'
,p_message_text=>unistr('Galla\00F0')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550540876026682)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'is'
,p_message_text=>unistr('Fresta\00F0')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126550290353026682)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'is'
,p_message_text=>unistr('St\00F6\00F0va\00F0')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565501917026687)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'is'
,p_message_text=>unistr('B\00ED\00F0ur')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541509266026679)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0istilviki %0 var fresta\00F0')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547410139026681)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 \00E1kvar\00F0a n\00E6stu a\00F0ger\00F0 fyrir vinnslufl\00E6\00F0istilvik %0. Sta\00F0festi\00F0 og lei\00F0r\00E9tti\00F0 skilyr\00F0in sem skilgreind eru fyrir skiptia\00F0ger\00F0ina og reyni\00F0 svo vinnslufl\00E6\00F0i\00F0 aftur.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126541661460026679)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0istilvik %0 var st\00F6\00F0va\00F0')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540777022026679)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0eins rekstrarstj\00F3ri vinnslufl\00E6\00F0is %0 getur haldi\00F0 vinnslufl\00E6\00F0inu \00E1fram')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540893802026679)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0eins rekstrarstj\00F3ri og/e\00F0a eigandi getur reynt aftur vi\00F0 vinnslufl\00E6\00F0i %0')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540386234026679)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0eins rekstrarstj\00F3ri vinnslufl\00E6\00F0isins getur fresta\00F0 vinnslufl\00E6\00F0istilviki %0')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540604769026679)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0eins eigendur og rekstrarstj\00F3rar vinnslufl\00E6\00F0istilviks %0 geta st\00F6\00F0va\00F0 vinnslufl\00E6\00F0i\00F0')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539038221026678)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0eins skilgreindur rekstrarstj\00F3ri fyrir vinnslufl\00E6\00F0i\00F0 getur uppf\00E6rt breytur vinnslufl\00E6\00F0is %0')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553690141026683)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0istilviki\00F0 %0 ver\00F0ur a\00F0 vera \00ED st\00F6\00F0unni galla\00F0 e\00F0a fresta\00F0 \00E1\00F0ur en h\00E6gt er a\00F0 uppf\00E6ra breytur \00FEess.')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545125093026680)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'is'
,p_message_text=>unistr('Gildi vinnslufl\00E6\00F0isbreytu %0 uppf\00E6rt \00ED %1')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555367788026684)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0i %0 hefur enga virka \00FAtg\00E1fu')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555484044026684)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0i %0 hefur enga \00FEr\00F3unar\00FAtg\00E1fu')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126555537528026684)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0i %0 hefur enga virka \00FAtg\00E1fu e\00F0a \00FEr\00F3unar\00FAtg\00E1fu')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538401240026678)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0artilvik %1 fyrir vinnslufl\00E6\00F0istilvik %0 fannst ekki')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538230103026678)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0istilvik %0 fannst ekki')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573313072026689)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnub\00F3kin hefur ekkert virkt vinnubla\00F0.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573277146026689)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnub\00F3kin er ekki frumstillt.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573195783026689)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Innri villa kom upp vi\00F0 a\00F0 skapa XLSX-skr\00E1na.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575653494026690)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'is'
,p_message_text=>unistr('Bla\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586274376026693)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnubla\00F0snafni\00F0 "%0" er uppteki\00F0. Reyni\00F0 anna\00F0 nafn.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714889892026734)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629824643026707)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0avalmynd')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625580772026706)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0 a\00F0ger\00F0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625457111026706)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0 h\00F3p eftir d\00E1lki')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663082189026718)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0 pivot-d\00E1lki')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663152092026718)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('B\00E6ta vi\00F0 ra\00F0d\00E1lki')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597525979026697)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'is'
,p_message_text=>unistr('Sams\00F6fnun')
,p_is_js_message=>true
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636062623026709)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'is'
,p_message_text=>unistr('Sams\00F6fnun')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616948566026703)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'is'
,p_message_text=>unistr('Me\00F0altal')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621250382026704)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617059183026703)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1mark')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617220073026703)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'is'
,p_message_text=>unistr('Mi\00F0gildi')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617145301026703)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1gmark')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616808179026703)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'is'
,p_message_text=>'Summa %0'
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617934830026703)
,p_name=>'APEXIR_ALL'
,p_message_language=>'is'
,p_message_text=>'Allt'
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596865558026697)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Allir d\00E1lkar')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576951003026690)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Allar ra\00F0ir')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711866137026733)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'is'
,p_message_text=>'Auka'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713472755026734)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'is'
,p_message_text=>unistr('Aukask\00FDrsla:  %0 ')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611030769026701)
,p_name=>'APEXIR_AND'
,p_message_language=>'is'
,p_message_text=>'og'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645868248026712)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki flutt inn vista\00F0a sk\00FDrslu. Innihaldi\00F0 er skemmt.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645971513026712)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki flutt inn vista\00F0a sk\00FDrslu. Innihaldi\00F0 er t\00F3mt.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599009140026697)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'is'
,p_message_text=>'Virkja'
,p_is_js_message=>true
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592642311026695)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6kkandi')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614140744026702)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'is'
,p_message_text=>unistr('Fr\00E1 og me\00F0 %0')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714048778026734)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'is'
,p_message_text=>unistr('Me\00F0altal %0')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705646563026731)
,p_name=>'APEXIR_BAR'
,p_message_language=>'is'
,p_message_text=>unistr('Sl\00E1')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598306124026697)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'is'
,p_message_text=>unistr('\00E1 milli')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591461820026695)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'is'
,p_message_text=>'Bakgrunnslitur'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593371422026696)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'is'
,p_message_text=>unistr('bl\00E1r')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627402445026706)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'is'
,p_message_text=>unistr('Ne\00F0st')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558235794026685)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'is'
,p_message_text=>unistr('Hnappar vi\00F0 hli\00F0 leitarstiku fyrir %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593961246026696)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6tta vi\00F0')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600290488026698)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'is'
,p_message_text=>'Flokkur'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591336187026695)
,p_name=>'APEXIR_CELL'
,p_message_language=>'is'
,p_message_text=>'Reitur'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617862650026703)
,p_name=>'APEXIR_CHART'
,p_message_language=>'is'
,p_message_text=>'Graf'
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628352640026707)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'is'
,p_message_text=>'Frumstilli...'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668046871026719)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Grafmerki ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680488959026723)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrirspurnin fer yfir h\00E1marksfj\00F6lda %0 gagnapunkta fyrir hvert graf. Nota\00F0u s\00EDu til a\00F0 minnka fj\00F6lda f\00E6rslna \00ED fyrirspurninni.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679386213026723)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1marksfj\00F6ldi ra\00F0a fyrir graffyrirspurn takmarkar fj\00F6lda ra\00F0a \00ED grunnfyrirspurninni en ekki fj\00F6lda birtra ra\00F0a. Grunnfyrirspurnin hefur fleiri ra\00F0ir en h\00E1marksfj\00F6ldinn %0. B\00E6ttu vi\00F0 s\00EDu til a\00F0 minnka fj\00F6lda f\00E6rslna \00ED grunnfyrirspurninni.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596973311026697)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'is'
,p_message_text=>'Tegund grafs'
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560841979026685)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'is'
,p_message_text=>unistr('Grafs\00FDn af %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676076762026722)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'is'
,p_message_text=>unistr('Merkja vi\00F0 allt')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614589132026702)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('Velji\00F0 sk\00FDrslusni\00F0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622300332026705)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'is'
,p_message_text=>'hreinsa'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593811206026696)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633638371026708)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkar')
,p_is_js_message=>true
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600881929026698)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'is'
,p_message_text=>unistr('Samn\00F6fn d\00E1lka')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708472382026732)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDa...')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568662508026688)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkahaus')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582725392026692)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lka\00F0ger\00F0ir')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583000247026692)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir fyrir d\00E1lkinn \201E%0\201C')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624417873026706)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'is'
,p_message_text=>unistr('Valmynd d\00E1lkafyrirsagna')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628103991026707)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'is'
,p_message_text=>unistr('Uppl\00FDsingar um d\00E1lk')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710780618026733)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkmerki')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625847205026706)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur %0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608793623026700)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'is'
,p_message_text=>'inniheldur'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610046960026701)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'is'
,p_message_text=>'inniheldur ekki'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592309405026695)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'is'
,p_message_text=>unistr('\00ED')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610204171026701)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'is'
,p_message_text=>unistr('er ekki \00ED s\00ED\00F0asta')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619383457026704)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('er ekki \00ED n\00E6sta')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610105941026701)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'is'
,p_message_text=>unistr('er \00ED s\00ED\00F0asta')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619245300026704)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('er \00ED n\00E6sta')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592286164026695)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>'er ekki autt'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592148124026695)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'is'
,p_message_text=>'er autt'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591952309026695)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'is'
,p_message_text=>'eins og'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592423885026695)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'is'
,p_message_text=>unistr('ekki \00ED')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592073652026695)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'is'
,p_message_text=>'ekki eins og'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609010421026701)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'is'
,p_message_text=>unistr('samsvarar reglulegri seg\00F0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614451350026702)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtreikningur')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679020598026723)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'is'
,p_message_text=>unistr('Reikniseg\00F0')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633960344026709)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'is'
,p_message_text=>unistr('B\00FAa til \00FAtreikning me\00F0 samnefnum d\00E1lka.')
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634056557026709)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'is'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634162299026709)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'is'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634299713026709)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'is'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575140849026690)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'is'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618639935026704)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'is'
,p_message_text=>unistr('Reikna \00FAt')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626487712026706)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'is'
,p_message_text=>unistr('St\00FDriskil')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629403740026707)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'is'
,p_message_text=>unistr('St\00FDriskil')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716042724026734)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('St\00FDriskilad\00E1lkar')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571849514026689)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi \00F3l\00EDkra')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714501796026734)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi \00F3l\00EDkra')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714428998026734)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi %0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687480468026725)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'is'
,p_message_text=>'Daglega'
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126740717161026743)
,p_name=>'APEXIR_DATA'
,p_message_language=>'is'
,p_message_text=>unistr('G\00F6gn')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628205417026707)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'is'
,p_message_text=>unistr('G\00F6gn sk\00FDrslu eins og \00FEau voru fyrir %0 m\00EDn\00FAtum s\00ED\00F0an.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561202014026686)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnas\00FDn af %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597607200026697)
,p_name=>'APEXIR_DATE'
,p_message_language=>'is'
,p_message_text=>'Dagsetning'
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632136308026708)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfgefi\00F0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711654171026733)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfgefin sk\00FDrslutegund')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594047046026696)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'is'
,p_message_text=>unistr('Ey\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597901120026697)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1 a\00F0 ey\00F0a \00FEessum sk\00FDrslustillingum?')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698448817026729)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Ey\00F0a sj\00E1lfgefinni sk\00FDrslu')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626159690026706)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Ey\00F0a sk\00FDrslu')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592756838026695)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E6kkandi')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600351057026698)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('L\00FDsing')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624375771026705)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDn fyrir einstaka r\00F6\00F0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632646200026708)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'is'
,p_message_text=>'Stefna %0'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633534465026708)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Afvirkja\00F0')
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593592982026696)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'is'
,p_message_text=>'Birt'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596729998026697)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Birtir d\00E1lkar')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632506559026708)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Birta \00ED sk\00FDrslu')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627333388026706)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'is'
,p_message_text=>unistr('Ni\00F0ur')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618703550026704)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a ni\00F0ur')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632425890026708)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'is'
,p_message_text=>'Ekki birta'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701796410026730)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1herslumerki me\00F0 sama skilyr\00F0i er \00FEegar til.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716279757026735)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('Tv\00EDrita\00F0ur pivot-d\00E1lkur.  Pivot-d\00E1lkur ver\00F0ur a\00F0 vera einkv\00E6mur.')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716478016026735)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'is'
,p_message_text=>'Breyta'
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628441416026707)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'is'
,p_message_text=>'Breyta stillingum grafs'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635030633026709)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'is'
,p_message_text=>'Breyta grafi'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598966195026697)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta st\00FDriskilum')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635427799026709)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta s\00EDu')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601983154026698)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'is'
,p_message_text=>'Breyta Flashback'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693253485026727)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta h\00F3pun')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635368317026709)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta \00E1herslumerkingu')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663380976026718)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'is'
,p_message_text=>'Breyta pivot'
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622771750026705)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta sk\00FDrslu')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711936996026733)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lvup\00F3stur')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584151316026693)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lvup\00F3stfang')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712212434026733)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'is'
,p_message_text=>unistr('Fali\00F0 afrit')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712496121026733)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'is'
,p_message_text=>unistr('Meginm\00E1l')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712132257026733)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'is'
,p_message_text=>'Afrit'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712976237026733)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'is'
,p_message_text=>unistr('T\00ED\00F0ni')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589385522026694)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lvup\00F3stfang hefur ekki veri\00F0 stillt fyrir \00FEennan kerfishluta.  Vinsamlegast hafi\00F0 samband vi\00F0 stj\00F3rnandann.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686745812026725)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lvup\00F3stfang ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712555779026733)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1 vi\00F0hengi')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712345243026733)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'is'
,p_message_text=>'Efni'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687787930026725)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Efni t\00F6lvup\00F3sts ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712001096026733)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'is'
,p_message_text=>'Til'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591148121026695)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'is'
,p_message_text=>unistr('Virkja\00F0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635249269026709)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'is'
,p_message_text=>'Virkja/afvirkja'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634791591026709)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'is'
,p_message_text=>'Villa! %0'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634372991026709)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E6mi')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635137049026709)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E6mi:')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596670746026697)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtiloka au\00F0 gildi')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635719847026709)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtv\00EDkka/fella saman')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633331004026708)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'is'
,p_message_text=>unistr('Seg\00F0')
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618294531026704)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629395710026707)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDur')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640097824026710)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDuseg\00F0')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738269506026742)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDunarseg\00F0in er of l\00F6ng.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582988354026692)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('Till\00F6gur a\00F0 s\00EDum')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639971148026710)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Afm\00F6rkunartegund')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635954293026709)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'is'
,p_message_text=>unistr('Velja d\00E1lka til a\00F0 leita \00ED')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618535282026704)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'is'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633112570026708)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('Flashback-fyrirspurn gerir m\00F6gulegt a\00F0 sj\00E1 g\00F6gnin eins og \00FEau voru \00E1 fyrri t\00EDmapunkti.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687180709026725)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'is'
,p_message_text=>'Lengd flashback'
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688509683026726)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614334885026702)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0shula %0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626054751026706)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633892337026708)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir %0')
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711598720026733)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0ir/reiknimerki')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625717133026706)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0 %0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618059029026703)
,p_name=>'APEXIR_GO'
,p_message_language=>'is'
,p_message_text=>'Hefja'
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591608278026695)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'is'
,p_message_text=>unistr('gr\00E6nn')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636614188026709)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pa eftir d\00E1lkum')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636724044026709)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pa eftir a\00F0ger\00F0um')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571942960026689)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pa eftir')
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712602209026733)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pa eftir d\00E1lkum %0')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668112206026719)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pun eftir d\00E1lki ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679294961026723)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1marksfj\00F6ldi ra\00F0a fyrir h\00F3punarfyrirspurn takmarkar fj\00F6lda ra\00F0a \00ED grunnfyrirspurninni en ekki fj\00F6lda birtra ra\00F0a. Grunnfyrirspurnin hefur fleiri ra\00F0ir en h\00E1marksfj\00F6ldinn %0. B\00E6ttu vi\00F0 s\00EDu til a\00F0 minnka fj\00F6lda f\00E6rslna \00ED grunnfyrirspurninni.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659466695026716)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pa eftir r\00F6\00F0un')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716172006026734)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3pa eftir r\00F6\00F0un')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561089230026685)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F3punars\00FDn af %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597003216026697)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1r\00E9ttur d\00E1lkur')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631037815026708)
,p_name=>'APEXIR_HELP'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622841390026705)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Gagnvirkar sk\00FDrslur gera lokanotendum kleift a\00F0 s\00E9rsn\00ED\00F0a sk\00FDrslur. Notendur geta breytt uppsetningu sk\00FDrslugagna me\00F0 \00FEv\00ED a\00F0 velja d\00E1lka, beita s\00EDum, \00E1herslumerkja og ra\00F0a. Notendur geta einnig skilgreint skil, samsafnanir, gr\00F6f, h\00F3panir og b\00E6tt vi\00F0 e')
||unistr('igin \00FAtreikningum. Notendur geta einnig stillt upp \00E1skrift svo a\00F0 HTLM-\00FAtg\00E1fa sk\00FDrslunnar berst \00FEeim \00ED t\00F6lvup\00F3sti me\00F0 tilgreindu millibili. Notendur geta b\00FAi\00F0 til m\00F6rg fr\00E1vik af sk\00FDrslu og vista\00F0 sem nefndar sk\00FDrslur, \00FDmist til a\00F0 birta \00F6llum e\00F0a ein')
||unistr('ungis v\00F6ldum a\00F0ilum. '),
'<p/>',
unistr('Eftirfarandi hluti tekur saman lei\00F0ir til a\00F0 s\00E9rsn\00ED\00F0a gagnvirka sk\00FDrslu. Sj\00E1 \201EUsing Interactive Reports\201C \00ED <i>Oracle APEX End User''s Guide</i> til a\00F0 fr\00E6\00F0ast meira.')))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629960459026707)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0ger\00F0avalmyndin birtist h\00E6gra megin vi\00F0 hnappinn hefja \00E1 leitarstikunni. \00DEessa valmynd m\00E1 nota til a\00F0 s\00E9rsn\00ED\00F0a gagnvirka sk\00FDrslu.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623661913026705)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Samsafnanir eru st\00E6r\00F0fr\00E6\00F0ilegir \00FAtreikningar sem ger\00F0ir eru \00E1 d\00E1lk. Samsafnanir eru birtar eftir hver st\00FDriskil og \00ED lok sk\00FDrslunnar innan d\00E1lksins \00FEar sem \00FE\00E6r eru skilgreindar. Me\00F0al valm\00F6guleika eru:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Sams\00F6fnun</strong> gerir m\00F6gulegt a\00F0 velja \00E1\00F0ur'),
unistr('skilgreinda sams\00F6fnun til a\00F0 breyta.</li>'),
unistr('<li><strong>A\00F0ger\00F0</strong> er a\00F0ger\00F0in sem \00E1 a\00F0 framkv\00E6ma (til d\00E6mis, SUM, MIN).</li>'),
unistr('<li><strong>D\00E1lkur</strong> er nota\00F0 til a\00F0 velja d\00E1lkinn sem st\00E6r\00F0fr\00E6\00F0ilega a\00F0ger\00F0in er framkv\00E6md \00E1. A\00F0eins t\00F6lulegir'),
unistr('d\00E1lkar eru birtir.</li>'),
'</ul>'))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623752205026705)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('H\00E6gt er a\00F0 skilgreina eitt graf fyrir hverja vista\00F0a sk\00FDrslu. \00DEegar'),
unistr('\00FEa\00F0 hefur veri\00F0 skilgreint, er h\00E6gt a\00F0 skipta \00E1 milli grafs\00FDnar og sk\00FDrslus\00FDnar me\00F0 s\00FDnat\00E1knunum \00E1 Leitarsl\00E1nni.'),
unistr('Me\00F0al valm\00F6guleika eru:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>Tegund grafs</strong> tilgreinir \00FE\00E1 tegund grafs sem \00E1 a\00F0 hafa me\00F0.'),
unistr('H\00E6gt er a\00F0 velja \00E1 milli l\00E1r\00E9tts s\00FAlurits, l\00F3\00F0r\00E9tts s\00FAlurits, k\00F6kurits e\00F0a l\00EDnurits.</li>'),
unistr('<li><strong>Merki</strong> gerir m\00F6gulegt a\00F0 velja d\00E1lkinn sem \00E1 a\00F0 nota sem merki.</li>'),
unistr('<li><strong>Titill \00E1ss fyrir merki</strong> er titillinn sem birtist \00E1 \00E1snum sem tengist d\00E1lknum sem var valinn fyrir'),
unistr('merki. \00DEetta er ekki \00ED bo\00F0i fyrir k\00F6kurit.</li>'),
unistr('<li><strong>Gildi</strong> gerir m\00F6gulegt a\00F0 velja d\00E1lkinn sem nota\00F0ur er sem gildi.  Ef a\00F0ger\00F0in'),
unistr('er COUNT, \00FEarf ekki a\00F0 velja gildi.</li>'),
unistr('<li><strong>Titill \00E1ss fyrir gildi</strong> er titillinn sem birtist \00E1 \00E1snum sem tengist d\00E1lknum sem var valinn fyrir'),
unistr('gildi. \00DEetta er ekki \00ED bo\00F0i fyrir k\00F6kurit.</li>'),
unistr('<li><strong>A\00F0ger\00F0</strong> er valkv\00E6\00F0 a\00F0ger\00F0 sem framkv\00E6md er \00E1 d\00E1lkinn sem var valinn fyrir gildi.</li>'),
unistr('<li><strong>Ra\00F0a</strong> gerir m\00F6gulegt a\00F0 ra\00F0a menginu me\00F0 ni\00F0urst\00F6\00F0unum.</li></ul>')))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623025732026705)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ef smellt er \00E1 einhverja d\00E1lkafyrirs\00F6gn birtist valmynd d\00E1lkafyrirsagnar. Me\00F0al valm\00F6guleika eru:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Vaxandi r\00F6\00F0</strong> t\00E1kni\00F0 ra\00F0ar sk\00FDrslunni eftir d\00E1lknum \00ED vaxandi r\00F6\00F0.</li>'),
unistr('<li><strong>Minnkandi r\00F6\00F0</strong> t\00E1kni\00F0 ra\00F0ar sk\00FDrslunni eftir d\00E1lkinum \00ED minnkandi r\00F6\00F0.</li>'),
unistr('<li><strong>Fela d\00E1lk</strong> felur d\00E1lkinn.  Ekki er h\00E6gt a\00F0 fela alla d\00E1lka.  Ef ekki er h\00E6gt a\00F0 fela d\00E1lkinn, er ekkert Fela d\00E1lk t\00E1kn.</li>'),
unistr('<li><strong>Skilja d\00E1lk</strong> stofnar skilh\00F3p \00E1 d\00E1lknum.  \00DEetta tekur d\00E1lkinn \00FAr sk\00FDrslunni sem h\00F6fu\00F0f\00E6rslu.</li>'),
unistr('<li><strong>Uppl\00FDsingar um d\00E1lk</strong> s\00FDnir hj\00E1lpartexta um d\00E1lkinn ef hann er til.</li>'),
unistr('<li><strong>Textasv\00E6\00F0i</strong> er nota\00F0 til sl\00E1 leitaror\00F0 \00FEar sem ekki er greint \00E1 milli h\00E1- og l\00E1gstafa'),
unistr('(engin \00FE\00F6rf fyrir algildi). \00DEegar gildi er slegi\00F0 inn minnkar listinn'),
unistr('af gildum ne\00F0st \00E1 valmyndinni. \00DE\00FA getur svo vali\00F0 gildi af'),
unistr('botninum og valda gildi\00F0 er svo nota\00F0 til a\00F0 b\00FAa til afm\00F6rkun me\00F0 ''='''),
unistr('(til d\00E6mis, <code>d\00E1lkur = ''ABC''</code>). A\00F0 \00F6\00F0rum kosti er h\00E6gt a\00F0 smella \00E1 Vasalj\00F3s t\00E1kni\00F0 og sl\00E1 inn gildi sem ver\00F0ur svo b\00FAi\00F0 til sem afm\00F6rkun me\00F0 breytinum ''LIKE'''),
unistr('(til d\00E6mis, <code>d\00E1lkur LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>Listi yfir einkv\00E6m gildi</strong> inniheldur fyrstu 500 einkv\00E6mu'),
unistr('gildin sem uppfylla skilyr\00F0i afm\00F6rkunarinnar. Ef d\00E1lkurinn er dagsetning, birtist listi af t\00EDmabilum'),
unistr('\00ED sta\00F0inn. Ef \00FE\00FA velur gildi, ver\00F0ur afm\00F6rkun'),
unistr('b\00FAin til me\00F0 ''='' (til d\00E6mis, <code>d\00E1lkur = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623513822026705)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Gerir m\00F6gulegt a\00F0 b\00E6ta vi\00F0 \00FAtreiknu\00F0um d\00E1lkum vi\00F0 sk\00FDrsluna. \00DEetta geta veri\00F0 st\00E6r\00F0fr\00E6\00F0ilegir \00FAtreikningar (til d\00E6mis, <code>NBR_HOURS/24</code>) e\00F0a sta\00F0la\00F0ar Oracle'),
unistr('a\00F0ger\00F0ir sem beitt er \00E1 n\00FAverandi d\00E1lkinn. Sumar birtast eins og d\00E6mi og a\00F0rar (eins og <code>TO_DATE)</code> er einnig h\00E6gt a\00F0 nota). Me\00F0al valkosta eru:'),
'<p></p>',
'<ul>',
unistr('<li><strong>\00DAtreikningur</strong> gerir m\00F6gulegt a\00F0 velja \00E1\00F0ur skilgreindan \00FAtreikning til a\00F0 breyta.</li>'),
unistr('<li><strong>D\00E1lkafyrirs\00F6gn</strong> er d\00E1lkafyrirs\00F6gnin fyrir n\00FDja d\00E1lkinn.</li>'),
unistr('<li><strong>Sni\00F0shula</strong> er Oracle sni\00F0shula sem \00E1 a\00F0 nota \00E1 d\00E1lkinn (til d\00E6mis,S9999).</li>'),
unistr('<li><strong>\00DAtreikningur</strong> er \00FAtreikningurinn sem \00E1 a\00F0 framkv\00E6ma. \00CD \00FAtreikningnum er v\00EDsa\00F0 til d\00E1lka me\00F0 birtu samnefni.</li>'),
'</ul>',
unistr('<p>Fyrir ne\00F0an \00FAtreikning birtast d\00E1lkarnir \00ED fyrirspurninni me\00F0'),
unistr('s\00EDnu samnefni. Ef smellt er \00E1 nafn d\00E1lksins e\00F0a samnefni eru \00FEeir'),
unistr('teknir me\00F0 \00ED \00FAtreikninginn. Vi\00F0 hli\00F0 d\00E1lkar er takkabor\00F0. \00DEetta takkabor\00F0 virkar sem'),
unistr('fl\00FDtilei\00F0 \00E1 algenga takka. Lengst til h\00E6gri eru a\00F0ger\00F0ir.</p>'),
unistr('<p>Eftirfarandi d\00E6mi um \00FAtreikning s\00FDnir hvernig \00E1 birta heildarlaun:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(\00FEar sem A er ORGANIZATION, B er SALARY og C er COMMISSION)'),
''))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630003685026707)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'is'
,p_message_text=>unistr('Nota\00F0 til a\00F0 b\00FAa til skilah\00F3p \00E1 einum e\00F0a fleiri d\00E1lkum. \00DEetta tekur d\00E1lkana \00FAt \00FAr gagnvirku sk\00FDrslunni og birtir \00FE\00E1 sem h\00F6fu\00F0f\00E6rslu.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624284447026705)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6gt er a\00F0 smella \00E1 t\00E1kni\00F0 s\00FDn fyrir einstaka r\00F6\00F0 \00E1 r\00F6\00F0inni sem \00E1 a\00F0 sko\00F0a til a\00F0 sj\00E1 uppl\00FDsingar um eina r\00F6\00F0 \00ED einu. Ef \00FEa\00F0 er a\00F0gengilegt er s\00FDn fyrir einstaka r\00F6\00F0 alltaf fyrsti d\00E1lkurinn. \00DEa\00F0 fer eftir \00FEv\00ED hvernig gagnvirka sk\00FDrslan hefur veri\00F0 s\00E9')
||unistr('rsni\00F0in hvort s\00FDn fyrir einstaka r\00F6\00F0 er st\00F6\00F0lu\00F0 s\00FDn e\00F0a s\00E9rsni\00F0in s\00ED\00F0a sem g\00E6ti leyft uppf\00E6rslur.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624168879026705)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'is'
,p_message_text=>unistr('Gerir m\00F6gulegt a\00F0 hla\00F0a ni\00F0ur n\00FAverandi mengi ni\00F0ursta\00F0a. Me\00F0al sni\00F0a sem h\00E6gt er a\00F0 hla\00F0a ni\00F0ur eru PDF, Excel, HTML, og CSV. M\00F6guleikar vi\00F0 ni\00F0urhle\00F0slu fara eftir v\00F6ldu sni\00F0i. \00D6ll sni\00F0 m\00E1 einnig senda \00ED t\00F6lvup\00F3sti.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623218665026705)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('F\00F3kuserar sk\00FDrsluna me\00F0 \00FEv\00ED a\00F0 b\00E6ta vi\00F0 e\00F0a breyta <code>WHERE</code> \00E1kv\00E6\00F0inu \00ED fyrirspurninni. H\00E6gt er a\00F0 s\00EDa eftir d\00E1lki e\00F0a r\00F6\00F0.  '),
unistr('<p>Ef s\00EDa\00F0 er eftir d\00E1lki er d\00E1lkur valinn (\00FEa\00F0 \00FEarf ekki a\00F0'),
unistr('vera s\00E1 sem s\00FDnir), sta\00F0la\00F0 Oracle reiknimerki  (=, !=, ekki \00ED, \00E1 milli), og seg\00F0 slegin inn til a\00F0 bera saman vi\00F0. Seg\00F0ir gera greinarmun \00E1 h\00E1- og l\00E1gst\00F6fum. Noti\00F0 % sem algildi (til d\00E6mis, <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>Ef s\00EDa\00F0 er eftir r\00F6\00F0, er h\00E6gt a\00F0 b\00FAa til fl\00F3kin <code>WHERE</code> \00E1kv\00E6\00F0i me\00F0'),
unistr('samn\00F6fnum d\00E1lka og \00F6llum a\00F0ger\00F0um Oracle e\00F0a reiknimerkjum (til d\00E6mis, <code>G = ''VA'' e\00F0a G = ''CT''</code>, \00FEar sem'),
'<code>G</code>er samnefni fyrir <code>CUSTOMER_STATE</code>).</p>',
''))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623897679026705)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Flashback-fyrirspurn gerir m\00F6gulegt a\00F0 sj\00E1 g\00F6gnin eins og \00FEau voru \00E1 fyrri'),
unistr('t\00EDmapunkti. Sj\00E1lfgefinn t\00EDmalengd sem h\00E6gt er a\00F0 nota flashback er 3 klukkustundir (e\00F0a 180'),
unistr('m\00EDn\00FAtur) en raunveruleg t\00EDmalengd mun vera mismunandi milli gagnagrunna.')))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688415459026726)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Sni\00F0 gera m\00F6gulegt a\00F0 s\00E9rsn\00ED\00F0a birtingu sk\00FDrslunnar.'),
unistr('Sni\00F0 inniheldur eftirfarandi undirvalmyndir:</p>'),
unistr('<ul><li>Ra\00F0a</li>'),
unistr('<li>St\00FDriskil</li>'),
unistr('<li>\00C1herslumerking</li>'),
unistr('<li>Reikna \00FAt</li>'),
'<li>Taka saman</li>',
'<li>Graf</li>',
unistr('<li>H\00F3pa eftir</li>'),
'<li>Pivot</li>',
'</ul>',
''))
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686665757026725)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00DE\00FA getur skilgreint eina h\00F3punars\00FDn fyrir hverja vista\00F0a'),
unistr('sk\00FDrslu. \00DEegar h\00FAn hefur veri\00F0 skilgreind, getur \00FE\00FA flakka\00F0 \00E1 milli h\00F3punar- og sk\00FDrslus\00FDnarinnar'),
unistr('me\00F0 s\00FDnat\00E1knunum \00E1 Leitarsl\00E1nni. Til a\00F0 b\00FAa til h\00F3punars\00FDn,'),
unistr('velur \00FE\00FA:'),
'<p></p>',
'<ul>',
unistr('<li>d\00E1lkarnir sem \00E1 a\00F0 h\00F3pa</li>'),
unistr('<li>d\00E1lkana sem \00FE\00FA vilt taka saman \00E1samt a\00F0ger\00F0inni sem \00FE\00FA vilt nota (average, sum, count, o.s.frv.)</li>'),
'</ul>'))
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623450771026705)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Gerir m\00F6gulegt a\00F0 skilgreina s\00EDu. Ra\00F0irnar sem uppfylla skilyr\00F0i s\00EDunnar eru birtar me\00F0 \00E1herslumerkingu me\00F0 einkennunum sem tengd eru s\00EDunni. Me\00F0al valm\00F6guleika eru:</p>'),
'<ul>',
unistr('<li><strong>Nafn</strong> er a\00F0eins nota\00F0 fyrir birtingu.</li>'),
unistr('<li><strong>R\00F6\00F0</strong> tilgreinir r\00F6\00F0ina sem reglurnar eru metnar \00ED.</li>'),
unistr('<li><strong>Virkja\00F0</strong> tilgreinir hvort reglan er virkju\00F0 e\00F0a \00F3virkju\00F0.</li>'),
unistr('<li><strong>Tegund \00E1herslumerkingar</strong> tilgreinir hvort r\00F6\00F0ina e\00F0a reiturinn eigi'),
unistr('a\00F0 vera \00E1herslumerktur. Ef reitur er valinn er d\00E1lkurinn sem v\00EDsa\00F0 er til \00ED'),
unistr('skilyr\00F0i \00E1herslumerkingarinnar, \00E1herslumerktur.</li>'),
unistr('<li><strong>Bakgrunnslitur</strong> er n\00FDi bakgrunnsliturinn fyrir \00E1herslumerkta sv\00E6\00F0i\00F0.</li>'),
unistr('<li><strong>Textalitur</strong> er n\00FDi textaliturinn fyrir \00E1herslumerkta sv\00E6\00F0i\00F0.</li>'),
unistr('<li><strong>Skilyr\00F0i \00E1herslumerkingar</strong>  skilgreinir skilyr\00F0i afm\00F6rkunarinnar.</li>'),
'</ul>',
''))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126516820103026671)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00DE\00FA getur skilgreint eina Pivot-s\00FDn fyrir hverja vista\00F0a sk\00FDrslu. \00DEegar h\00FAn hefur veri\00F0 skilgreind getur \00FE\00FA flakka\00F0 \00E1 milli Pivot- og sk\00FDrslus\00FDnarinnar me\00F0 s\00FDnat\00E1knunum \00E1 Leitarsl\00E1nni. Til a\00F0 b\00FAa til Pivot-s\00FDn velur \00FE\00FA:'),
'<p></p>',
'<ul>',
unistr('<li>d\00E1lkana \00FEar sem \00FE\00FA vilt hafa Pivot</li>'),
unistr('<li>d\00E1lkana sem \00FE\00FA vilt birta sem ra\00F0ir</li>'),
unistr('<li>d\00E1lkana sem \00FE\00FA vilt taka saman \00E1samt a\00F0ger\00F0inni sem \00FE\00FA vilt nota (average, sum, count, o.s.frv.)</li>'),
'</ul>'))
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634528323026709)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ef gagnvirk sk\00FDrsla er s\00E9rsni\00F0in birtast sk\00FDrslustillingarnar fyrir ne\00F0an leitarsl\00E1na og fyrir ofan sk\00FDrsluna. H\00E6gt er a\00F0 fella \00FEetta sv\00E6\00F0i saman og \00FAtv\00EDkka me\00F0 t\00E1kninu til vinstri.'),
'<p>',
unistr('Fyrir hverja sk\00FDrslustillingu er h\00E6gt a\00F0:'),
'</p><ul>',
unistr('<li>Breyta stillingu me\00F0 \00FEv\00ED a\00F0 smella \00E1 nafni\00F0.</li>'),
unistr('<li>Virkja/afvirkja stillingu me\00F0 \00FEv\00ED a\00F0 haka vi\00F0 e\00F0a ekki virkja/afvirkja hakreitinn. \00DEetta st\00FDrit\00E6ki m\00E1 nota til a\00F0 sl\00F6kkva e\00F0a kveikja t\00EDmabundi\00F0 \00E1 stillingu.</li>'),
unistr('<li>Fjarl\00E6gja stillingu me\00F0 \00FEv\00ED a\00F0 smella \00E1 fjarl\00E6gja t\00E1kni\00F0.</li>'),
'</ul>',
unistr('<p>Ef b\00FAi\00F0 hefur veri\00F0 til graf, h\00F3pun e\00F0a pivot er h\00E6gt a\00F0 skipta \00E1 milli \00FEeirra og grunnsk\00FDrslunnar me\00F0 \00FEv\00ED a\00F0 nota hlekkina sk\00FDrslus\00FDn, grafs\00FDn, h\00F3punars\00FDn og pivot-s\00FDn sem s\00FDndir eru til h\00E6gri. Ef grafi\00F0, h\00F3punin e\00F0a pivot er sko\00F0a\00F0, er einnig h\00E6')
||unistr('gt a\00F0 nota hlekkinn breyta til a\00F0 breyta stillingunum.</p>'),
''))
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624081849026705)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'is'
,p_message_text=>unistr('Endursetur sk\00FDrsluna aftur \00ED sj\00E1lfgefnar stillingar, fjarl\00E6gir allar s\00E9ra\00F0laganir sem hafa veri\00F0 ger\00F0ar.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688731533026726)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Stillir fj\00F6lda f\00E6rslna til a\00F0 birta \00E1 hverri s\00ED\00F0u.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623969251026705)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Vistar s\00E9rsni\00F0na sk\00FDrsluna til framt\00ED\00F0a nota. Nafn og valkv\00E6\00F0 l\00FDsing er l\00F6g\00F0 til og h\00E6gt er a\00F0 velja hvort sk\00FDrslan ver\00F0i a\00F0gengileg \00F6llum (\00FEa\00F0 er, \00F6llum notendum sem hafa a\00F0gang a\00F0 upphaflegu sk\00FDrslunni). H\00E6gt er a\00F0 vista fj\00F3ra tegundir gagnvirkr')
||unistr('a sk\00FDrslna:</p>'),
'<ul>',
unistr('<li><strong>Upphaflega sk\00FDrslan</strong> (eing\00F6ngu \00FEr\00F3endur). Upphaflega sk\00FDrslan er sk\00FDrslan sem birtist \00ED upphafi. Ekki er h\00E6gt a\00F0 breyta nafni upphaflegra sk\00FDrslna e\00F0a ey\00F0a \00FEeim.</li>'),
unistr('<li><strong>Aukask\00FDrsla</strong> (eing\00F6ngu \00FEr\00F3endur). Gerir \00FEr\00F3endum m\00F6gulegt a\00F0 b\00FAa til margar sk\00FDrsluuppsetningar. Eing\00F6ngu \00FEr\00F3endur geta vista\00F0, breytt nafni e\00F0a eytt aukask\00FDrslu.</li>'),
unistr('<li><strong>Opin sk\00FDrsla</strong> (lokanotandi). Lokanotandinn sem bj\00F3 hana til getur vista\00F0, breytt nafni og eytt henni. A\00F0rir notendur geta s\00E9\00F0 og vista\00F0 uppsetninguna sem a\00F0ra sk\00FDrslu.</li>'),
unistr('<li><strong>Loku\00F0 sk\00FDrsla</strong> (lokanotandi). Eing\00F6ngu lokanotandinn sem bj\00F3 sk\00FDrsluna til getur s\00E9\00F0, vista\00F0, breytt nafni e\00F0a eytt sk\00FDrslunni.</li>'),
'</ul>',
unistr('<p>Ef s\00E9rsni\00F0in sk\00FDrsla er vistu\00F0, birtist sk\00FDrsluveljari \00ED leitarsl\00E1nni vinstra megin vi\00F0 ra\00F0veljarann (ef \00FEessi eiginleiki er virkja\00F0ur).</p>'),
''))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622916237026705)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'is'
,p_message_text=>unistr('Efst \00E1 hverri sk\00FDrslu er leitarsv\00E6\00F0i. \00DEetta sv\00E6\00F0i (e\00F0a leitarsl\00E1) veitir eftirfarandi eiginleika:')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689310572026726)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'is'
,p_message_text=>unistr('<li><strong>A\00F0ger\00F0avalmynd</strong> gerir m\00F6gulegt a\00F0 s\00E9rsn\00ED\00F0a sk\00FDrslu. Sj\00E1 eftirfarandi hluta.</li>')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688888765026726)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'is'
,p_message_text=>unistr('<li><strong>Velja d\00E1lkat\00E1kn</strong> gerir m\00F6gulegt a\00F0 tilgreina hva\00F0a d\00E1lkum \00E1 a\00F0 leita \00ED (e\00F0a alla).</li>')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689157369026726)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'is'
,p_message_text=>unistr('<li><strong>Sk\00FDrslur</strong> birtir \00FDmist sj\00E1lfgefnar og vista\00F0ar loka\00F0ar e\00F0a opnar sk\00FDrslur.</li>')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689021287026726)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('<li><strong>Ra\00F0ir</strong> stillir fj\00F6lda f\00E6rslna til a\00F0 birta \00E1 hverri s\00ED\00F0u.</li>')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688967173026726)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Textasv\00E6\00F0i</strong> gerir m\00F6gulegt a\00F0 sl\00E1 inn leitarskilyr\00F0i sem gerir ekki greinarmun \00E1 h\00E1- og l\00E1gst\00F6fum (algildir stafir eru \00EDf\00F3lgnir).</li>'),
unistr('<li><strong>Hnapurinn Hefja</strong> framkv\00E6mir leitina. \00DEegar bendillinn er textaleitarsv\00E6\00F0inu, er einnig h\00E6gt a\00F0 framkv\00E6ma leitina me\00F0 \00FEv\00ED a\00F0 \00FDta \00E1 enter-lykilinn.</li>')))
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689299818026726)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('<li><strong>S\00FDnat\00E1kn</strong> skipta \00E1 milli t\00E1kn-, sk\00FDrslu-, uppl\00FDsinga-, graf-, h\00F3punar- og pivot-s\00FDna sk\00FDrslunnar ef \00FE\00E6r eru skilgreindar.</li>')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623127511026705)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Nota\00F0 til a\00F0 breyta birtum d\00E1lkum. D\00E1lkarnir eru \00E1 skj\00E1num h\00E6gra megin. D\00E1lkarnir til vinstri eru faldir. \00DE\00FA getur endurra\00F0a\00F0 birtum d\00E1lkum me\00F0 \00F6rvunum lengst til h\00E6gri. \00DAtreikna\00F0ir d\00E1lkar hafa forskeyti\00F0  <strong>**</strong>.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126623337103026705)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Nota\00F0 til a\00F0 breyta d\00E1lkunum sem ra\00F0a\00F0 er eftir og \00E1kvar\00F0a hvort'),
unistr('ra\00F0a\00F0 er \00ED vaxandi e\00F0a minnkandi r\00F6\00F0. Einnig er h\00E6gt a\00F0 tilgreina hvernig teki\00F0 er \00E1'),
unistr('<code>NULL</code>. Sj\00E1lfgefin stilling synir alltaf <code>NULL</code> s\00ED\00F0ast e\00F0a s\00FDnir \00FE\00E1 alltaf fyrst. R\00F6\00F0unin sem kemur \00FAt er s\00FDnd h\00E6gra megin vi\00F0'),
unistr('fyrirs\00F6gn d\00E1lksins \00ED sk\00FDrslunni.</p>')))
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686417966026725)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEegar b\00E6tt er vi\00F0 \00E1skrift er gefi\00F0 upp t\00F6lvup\00F3stfang (e\00F0a m\00F6rg t\00F6lvup\00F3stf\00F6ng, a\00F0skilin me\00F0 kommum), efni t\00F6lvup\00F3sts, t\00ED\00F0ni og upphafs-og lokadagsetningar. T\00F6lvup\00F3starnir sem berast innihalda \00FAtflutta \00FAtg\00E1fu (PDF, Excel, HTML e\00F0a CSV) af gagnvirku sk\00FD')
||unistr('rslunni sem inniheldur n\00FAverandi g\00F6gnin og notar sk\00FDrslustillingarnar sem voru til sta\00F0ar \00FEegar \00E1skriftinni var b\00E6tt vi\00F0.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628088053026707)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('Fela d\00E1lk')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618484537026704)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1herslumerkja')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629552738026707)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1herslumerkingar')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599756205026698)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1herslumerkja reit, %0 \00E1 %1')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634642349026709)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'is'
,p_message_text=>unistr('Skilyr\00F0i \00E1herslumerkingar')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599608974026698)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1herslumerkja r\00F6\00F0, %0 \00E1 %1')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687091047026725)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'is'
,p_message_text=>unistr('St\00EDll \00E1herslumerkingar')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591266492026695)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1herslumerkja tegund')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705824311026731)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1r\00E9tt')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734810639026741)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'is'
,p_message_text=>unistr('1 \00F3virk stilling')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734946618026741)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00F3virk stilling')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624675464026706)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp vi\00F0 gagnvirka sk\00FDrslu')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635618729026709)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629010718026707)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild reikniseg\00F0. %0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584616235026693)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'is'
,p_message_text=>unistr('Lokadagsetningin ver\00F0ur a\00F0 vera st\00E6rri en upphafsdagsetningin.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643884550026712)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild s\00EDuseg\00F0. %0')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713674840026734)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild s\00EDufyrirspurn')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735006625026741)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'is'
,p_message_text=>unistr('1 \00F3gild stilling')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735154727026741)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00F3gildar stillingar')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687201415026725)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('(\00ED m\00EDn\00FAtum)')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704205436026731)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er \00ED s\00ED\00F0ustu %1')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704430294026731)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er \00ED n\00E6stu %1')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704300584026731)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er ekki \00ED s\00ED\00F0ustu %1')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704579266026731)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('%0 er ekki \00ED n\00E6stu %1')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633794031026708)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'is'
,p_message_text=>unistr('Takkabor\00F0')
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597427539026697)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'is'
,p_message_text=>'Merki %0'
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627650465026707)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Titill \00E1ss fyrir merki')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619947552026704)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asti dagur')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620147459026704)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asta klukkustund')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619612368026704)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asti m\00E1nu\00F0ur')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619709844026704)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asta vika')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619873939026704)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 dagar')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620039983026704)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 klukkustundir')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619489840026704)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ustu %0 \00E1r')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619508474026704)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0asta \00E1r')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597302838026697)
,p_name=>'APEXIR_LINE'
,p_message_language=>'is'
,p_message_text=>unistr('L\00EDna')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594197569026696)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'is'
,p_message_text=>unistr('L\00EDna me\00F0 sv\00E6\00F0i')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713504595026734)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'is'
,p_message_text=>unistr('Varpa \00FEv\00ED')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628514349026707)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1\00E6tla\00F0 er a\00F0 fyrirspurnin fari yfir leyfilegt h\00E1mark tilfanga.  Vinsamlegast breyti\00F0 stillingum sk\00FDrslunnar og reyni\00F0 aftur.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609963440026701)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1marksfj\00F6ldi ra\00F0a fyrir \00FEessa sk\00FDrslu er %0 ra\00F0ir.  Nota\00F0u s\00EDu til a\00F0 minnka fj\00F6lda f\00E6rslna \00ED fyrirspurninni.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714148202026734)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1mark %0')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714390483026734)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'is'
,p_message_text=>unistr('Mi\00F0gildi %0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556670431026684)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Skilabo\00F0')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614278770026702)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir %0 m\00EDn\00FAtum s\00ED\00F0an')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714228894026734)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'is'
,p_message_text=>unistr('L\00E1gmark %0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713238742026734)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('M\00E1nu\00F0ur')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687645853026725)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'is'
,p_message_text=>unistr('M\00E1na\00F0arlega')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626885631026706)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'is'
,p_message_text=>'Flytja'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626743570026706)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'is'
,p_message_text=>'Flytja allt'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739926390026742)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Fast sv\00E6\00F0isau\00F0kenni ver\00F0ur a\00F0 vera skilgreint \00FEar sem s\00ED\00F0an inniheldur margar gagnvirkar sk\00FDrslur.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592817854026695)
,p_name=>'APEXIR_NAME'
,p_message_language=>'is'
,p_message_text=>'Nafn'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622524860026705)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FD sams\00F6fnun')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735739276026741)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FDr flokkur')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622667860026705)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FDr \00FAtreikningur')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617333915026703)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620421563026704)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sti dagur')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620227722026704)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta klukkustund')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620762369026704)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sti m\00E1nu\00F0ur')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620695936026704)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta vika')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620557008026704)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 dagar')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620387525026704)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 klukkustundir')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620983474026704)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6stu %0 \00E1r')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126620899382026704)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta \00E1r')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593186356026696)
,p_name=>'APEXIR_NO'
,p_message_language=>'is'
,p_message_text=>'Nei'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635842421026709)
,p_name=>'APEXIR_NONE'
,p_message_language=>'is'
,p_message_text=>'- Ekkert -'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686897017026725)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki gilt t\00F6lvup\00F3stfang.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558927147026685)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'is'
,p_message_text=>unistr('Engir d\00E1lkar valdir til a\00F0 s\00FDna. Nota\00F0u <strong>D\00E1lkar</strong> \00ED a\00F0ger\00F0avalmyndinni til a\00F0 gera d\00E1lka s\00FDnilega.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632378150026708)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'is'
,p_message_text=>'Autt alltaf fyrst'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632229971026708)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'is'
,p_message_text=>unistr('Autt alltaf s\00ED\00F0ast')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632798549026708)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0un au\00F0ra %0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629110869026707)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'is'
,p_message_text=>unistr('T\00EDmi fyrir flashback ver\00F0ur a\00F0 vera t\00F6lulegur.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628788151026707)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0in ver\00F0ur a\00F0 vera t\00F6luleg.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633281289026708)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'is'
,p_message_text=>'Reiknimerki'
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591764939026695)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'is'
,p_message_text=>unistr('appels\00EDnugulur')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705778796026731)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'is'
,p_message_text=>'Stefna'
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593688771026696)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'is'
,p_message_text=>unistr('Anna\00F0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559880496026685)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0uskipting %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573865384026689)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'is'
,p_message_text=>unistr('Stefna s\00ED\00F0u')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574527396026690)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'is'
,p_message_text=>unistr('Langsni\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574688845026690)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'is'
,p_message_text=>unistr('Skammsni\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573718138026689)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'is'
,p_message_text=>unistr('St\00E6r\00F0 s\00ED\00F0u')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574344093026690)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'is'
,p_message_text=>'A3'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574246811026690)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'is'
,p_message_text=>'A4'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574429837026690)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'is'
,p_message_text=>unistr('S\00E9rsni\00F0i\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574069113026690)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'is'
,p_message_text=>'Lagalegt'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573987391026690)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'is'
,p_message_text=>unistr('Br\00E9f')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574147983026690)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'is'
,p_message_text=>unistr('Dagbla\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714687056026734)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'is'
,p_message_text=>unistr('Pr\00F3sent af heildafj\00F6lda %0 (%)')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713875244026734)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'is'
,p_message_text=>unistr('Pr\00F3sent af heildarsummu %0 (%)')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712829521026733)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('Pr\00F3sent af heildafj\00F6lda')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126712771471026733)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'is'
,p_message_text=>unistr('Pr\00F3sent af heildarsummu')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597237116026697)
,p_name=>'APEXIR_PIE'
,p_message_language=>'is'
,p_message_text=>'Kaka'
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662944779026718)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'is'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664469413026718)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Sams\00F6fnun ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664698160026718)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 taka sams\00F6fnun \00E1 d\00E1lki sem er valinn sem ra\00F0d\00E1lkur.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663892557026718)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Pivot-d\00E1lkar')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663674197026718)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'is'
,p_message_text=>unistr('Pivot-d\00E1lkur %0')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664294067026718)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Pivot-d\00E1lk ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126516789766026671)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1marksfj\00F6ldi ra\00F0a fyrir Pivot-fyrirspurn takmarkar fj\00F6lda ra\00F0a \00ED grunnfyrirspurninni en ekki fj\00F6ldi birtra ra\00F0a. Grunnfyrirspurnin hefur fleiri ra\00F0ir en h\00E1marksfj\00F6ldann %0. B\00E6ttu vi\00F0 afm\00F6rkun til a\00F0 minnka fj\00F6lda f\00E6rslna \00ED grunnfyrirspurninni.')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664121745026718)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'is'
,p_message_text=>unistr('Pivot-r\00F6\00F0un')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630143248026707)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'is'
,p_message_text=>unistr('Pivot-d\00E1lkurinn inniheldur of m\00F6rg \00F3l\00EDk gildi - ekki er h\00E6gt a\00F0 b\00FAa til pivot SQL.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561190333026686)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'is'
,p_message_text=>unistr('Pivot-s\00FDn af %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686905853026725)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Forsko\00F0un')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617415226026703)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'is'
,p_message_text=>'Fyrra'
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711751314026733)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0al')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687956817026725)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0alsk\00FDrsla')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573685482026689)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'is'
,p_message_text=>unistr('Hafa a\00F0gengileikamerki me\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534431075026677)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja m\00F3ta\00F0an texta')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642856847026711)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'is'
,p_message_text=>unistr('Loka\00F0')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597891739026697)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'is'
,p_message_text=>unistr('Opi\00F0')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593452209026696)
,p_name=>'APEXIR_RED'
,p_message_language=>'is'
,p_message_text=>unistr('rau\00F0ur')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739856957026742)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Fast sv\00E6\00F0isau\00F0kenni %0 er ekki til.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626932311026706)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627021497026706)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja allt')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735237697026741)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja graf')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626585218026706)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja st\00FDriskil')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626209675026706)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja s\00EDu')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626336181026706)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja Flashback')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735384135026741)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja h\00F3pun')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126626609320026706)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja \00E1herslumerkingu')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735490618026741)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja Pivot')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716579244026735)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Fjarl\00E6gja sk\00FDrslu')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698392502026729)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta nafni sj\00E1lfgefinnar sk\00FDrslu')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636151839026709)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta nafni sk\00FDrslu')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617730503026703)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrsla')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126714718730026734)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslur')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589920197026695)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Vistu\00F0 gagnvirk sk\00FDrsla me\00F0 samnefni %0 er ekki til.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643178410026711)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrsla er ekki til.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590071336026695)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Au\00F0kenni vista\00F0rar gagnvirkrar sk\00FDrslu %0 er ekki til.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634427378026709)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslustillingar')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126558619497026685)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslustillingar fyrir %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614730768026702)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslus\00FDn')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618943773026704)
,p_name=>'APEXIR_RESET'
,p_message_language=>'is'
,p_message_text=>'Endurstilla'
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598057638026697)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta stillingum sk\00FDrslu aftur \00ED sj\00E1lfgefnar stillingar.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593217889026696)
,p_name=>'APEXIR_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710878610026733)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 nota ROWID sem a\00F0allykild\00E1lk fyrir REST-gagnauppruna.')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625630333026706)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0ir')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688661536026726)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0ir \00E1 s\00ED\00F0u')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663996080026718)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0d\00E1lkar')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663761901026718)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0d\00E1lkur %0')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664353885026718)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0d\00E1lk ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664554333026718)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0d\00E1lkur ver\00F0ur a\00F0 vera fr\00E1brug\00F0inn pivot-d\00E1lknum.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640178304026710)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0as\00EDa')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614825927026702)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 %0 af %1')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126619121024026704)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'is'
,p_message_text=>unistr('Texti ra\00F0ar inniheldur')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592571775026695)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'is'
,p_message_text=>'Vista'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629778733026707)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Vistu\00F0 sk\00FDrsla')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629696736026707)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'is'
,p_message_text=>unistr('Vista sk\00FDrslu = \201E%0\201C')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631821068026708)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAverandi sk\00FDrslustillingar ver\00F0a nota\00F0ar sem sj\00E1lfgefnar stillingar fyrir alla notendur.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126698291618026729)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Vista sj\00E1lfgefna sk\00FDrslu')
,p_is_js_message=>true
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618824245026704)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Vista sk\00FDrslu')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735636006026741)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Vista sk\00FDrslu *')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689691121026726)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'is'
,p_message_text=>'Leita'
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624557351026706)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'is'
,p_message_text=>unistr('Leitarsl\00E1')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126557915687026684)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'is'
,p_message_text=>'Leitarstika fyrir %0'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126735585238026741)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'is'
,p_message_text=>'Leita: %0'
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695163167026728)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Leita a\00F0 sk\00FDrslu')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679149948026723)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Valdir d\00E1lkar')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594239724026696)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('- Velja d\00E1lk -')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618188630026703)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Velja d\00E1lka')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597711482026697)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('- Velja a\00F0ger\00F0 -')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625324171026706)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('- Velja h\00F3p eftir d\00E1lki -')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663439477026718)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('- Velja pivot-d\00E1lk -')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713714627026734)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Velja r\00F6\00F0')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663557388026718)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('- Velja ra\00F0d\00E1lk -')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545037850026680)
,p_name=>'APEXIR_SEND'
,p_message_language=>'is'
,p_message_text=>'Senda'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567534708026688)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'is'
,p_message_text=>unistr('Senda sem t\00F6lvup\00F3st')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126592954553026695)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126618384747026704)
,p_name=>'APEXIR_SORT'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627807942026707)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a h\00E6kkandi')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627935962026707)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a l\00E6kkandi')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715908049026734)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0un')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622269911026705)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'is'
,p_message_text=>unistr('r\00FDmi')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633458962026708)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0a %0')
,p_version_scn=>2692920
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687385093026725)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1skrift')
,p_is_js_message=>true
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713147558026733)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'is'
,p_message_text=>'Endar'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532193134026676)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'is'
,p_message_text=>unistr('Sleppa ef engin g\00F6gn finnast')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713086126026733)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'is'
,p_message_text=>'Hefst'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713974473026734)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'is'
,p_message_text=>'Summa %0'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704812885026731)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'is'
,p_message_text=>unistr('%0, Sk\00FDrsla = %1, S\00FDn = %2')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591899467026695)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'is'
,p_message_text=>'Textalitur'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610590726026701)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'is'
,p_message_text=>'dagar'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610425682026701)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'is'
,p_message_text=>'klukkustundir'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610360367026701)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'is'
,p_message_text=>unistr('m\00EDn\00FAtur')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610704593026701)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('m\00E1nu\00F0ir')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610647107026701)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'is'
,p_message_text=>'vikur'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126610891449026701)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('\00E1r')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126716334263026735)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'is'
,p_message_text=>'Skipta'
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627103269026706)
,p_name=>'APEXIR_TOP'
,p_message_language=>'is'
,p_message_text=>'Efst'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709860667026732)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3h\00F3pa\00F0ur d\00E1lkur')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628639736026707)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'is'
,p_message_text=>unistr('Nafn \00E1herslumerkingar ver\00F0ur a\00F0 vera einkv\00E6mt.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596558041026697)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('\00F3studd gagnategund')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627215998026706)
,p_name=>'APEXIR_UP'
,p_message_language=>'is'
,p_message_text=>'Upp'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628831519026707)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'is'
,p_message_text=>unistr('Vinsamlegast skr\00E1i\00F0 gildan lit.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126628903430026707)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'is'
,p_message_text=>unistr('Vinsamlegast skr\00E1i\00F0 gilda sni\00F0shulu.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593711287026696)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'is'
,p_message_text=>'Gildi'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627789589026707)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Titill \00E1ss fyrir gildi')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126635537028026709)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'is'
,p_message_text=>'Gildi er krafist'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126597106785026697)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('L\00F3\00F0r\00E9ttur d\00E1lkur')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705931369026731)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'is'
,p_message_text=>unistr('L\00F3\00F0r\00E9tt')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634899631026709)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'is'
,p_message_text=>unistr('Sko\00F0a graf')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693481218026727)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'is'
,p_message_text=>unistr('Sko\00F0a uppl\00FDsingar')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737781746026742)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslan hefur ekki %0 s\00FDn skilgreinda.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693510113026727)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'is'
,p_message_text=>unistr('Sko\00F0a h\00F3pun')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693355319026727)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDnat\00E1kn')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126663259595026718)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'is'
,p_message_text=>unistr('Sko\00F0a pivot')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126634948312026709)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Sko\00F0a sk\00FDrslu')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687522739026725)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'is'
,p_message_text=>'Vikulega'
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617675451026703)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnusk\00FDrsla')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715348567026734)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'is'
,p_message_text=>'%0 dagar'
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715213202026734)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'is'
,p_message_text=>'%0 klukkustundir'
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715181959026734)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 m\00EDn\00FAtur')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715556364026734)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 m\00E1nu\00F0ir')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715433779026734)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'is'
,p_message_text=>'%0 vikur'
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126715657808026734)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('%0 \00E1r')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126713371096026734)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1r')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126591545947026695)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'is'
,p_message_text=>'gulur'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126593067997026696)
,p_name=>'APEXIR_YES'
,p_message_language=>'is'
,p_message_text=>unistr('J\00E1')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126627581648026706)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 inniheldur < e\00F0a > sem eru \00F3gild t\00E1kn.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126651498967026714)
,p_name=>'APEX_REGION'
,p_message_language=>'is'
,p_message_text=>unistr('Sv\00E6\00F0i ')
,p_version_scn=>2692923
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542541037026680)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki var h\00E6gt a\00F0 draga \00FAr ZIP-skr\00E1.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542474286026680)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'is'
,p_message_text=>unistr('Undirskrift fyrir lok mi\00F0l\00E6gs skr\00E1asafns fannst ekki. \00DEessi skr\00E1 er ekki ZIP-skr\00E1.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126573564008026689)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'is'
,p_message_text=>unistr('Broti\00F0 gegn API-skilyr\00F0i')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595619602026696)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'is'
,p_message_text=>unistr('Get ekki n\00E1\00F0 \00ED gildi fyrir stillingar kerfishluta %0 \00FEar sem tengdur byggingarkostur er \00F3virkur.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595584180026696)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'is'
,p_message_text=>unistr('Get ekki stillt gildi fyrir stillingar kerfishluta %0 \00FEar sem tengdur byggingarkostur er \00F3virkur.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708181134026732)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 gildi stillingar kerfishluta er \00F3gilt ')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708082640026732)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'is'
,p_message_text=>unistr('Umbe\00F0in stilling kerfishluta%0 er ekki skilgreind')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708250194026732)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Stilling kerfishluta %0 g\00E6ti veri\00F0 stillt \00E1 anna\00F0 en au\00F0 gildi')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582104187026692)
,p_name=>'BACK'
,p_message_language=>'is'
,p_message_text=>'Til baka'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564592119026687)
,p_name=>'BUILDER'
,p_message_language=>'is'
,p_message_text=>unistr('Smi\00F0ur')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638125890026710)
,p_name=>'BUTTON LABEL'
,p_message_language=>'is'
,p_message_text=>'Hnappsmerki'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561441768026686)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'is'
,p_message_text=>'CSS-flokkar hnapps'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599978886026698)
,p_name=>'BUTTON_ID'
,p_message_language=>'is'
,p_message_text=>unistr('Mynda\00F0 au\00F0kenni hnapps ver\00F0ur anna\00F0hvort fast au\00F0kenni hnappsins ef \00FEa\00F0 er skilgreint e\00F0a ver\00F0ur annars mynda\00F0 innra \00E1 sni\00F0inu ''B'' || [Innra au\00F0kenni hnapps]')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533933850026677)
,p_name=>'CANDLESTICK'
,p_message_language=>'is'
,p_message_text=>'Kertastjaki'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647921607026713)
,p_name=>'CENTER'
,p_message_language=>'is'
,p_message_text=>unistr('Mi\00F0ja')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594565867026696)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'is'
,p_message_text=>unistr('%0 bei\00F0ni')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584577608026693)
,p_name=>'CHECK$'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0veljari')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126709994678026732)
,p_name=>'CHECKED'
,p_message_language=>'is'
,p_message_text=>unistr('haka\00F0 vi\00F0')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686369646026725)
,p_name=>'COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643948578026712)
,p_name=>'COMMENTS'
,p_message_language=>'is'
,p_message_text=>'Athugasemdir'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624957030026706)
,p_name=>'CONTINUE'
,p_message_language=>'is'
,p_message_text=>unistr('Halda \00E1fram')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582428768026692)
,p_name=>'COPYRIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('H\00F6fundarr\00E9ttur &copy; 1999, %0, Oracle og/e\00F0a tengd f\00E9l\00F6g.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630669606026707)
,p_name=>'COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637614148026710)
,p_name=>'CREATE'
,p_message_language=>'is'
,p_message_text=>unistr('B\00FAa til')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693019779026727)
,p_name=>'CREATED'
,p_message_language=>'is'
,p_message_text=>unistr('B\00FAi\00F0 til')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693161138026727)
,p_name=>'CREATED_BY'
,p_message_language=>'is'
,p_message_text=>unistr('B\00FAi\00F0 til af')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614035697026702)
,p_name=>'CREATED_ON'
,p_message_language=>'is'
,p_message_text=>unistr('Stofna\00F0')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625169205026706)
,p_name=>'CUSTOM'
,p_message_language=>'is'
,p_message_text=>unistr('S\00E9rsni\00F0i\00F0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636389847026709)
,p_name=>'CUSTOMIZE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00E9rsn\00ED\00F0a')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638368864026710)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ukostir endurstilltir fyrir notenda %0.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638430972026710)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'is'
,p_message_text=>'Kostum breytt fyrir notenda %0.'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638293938026710)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0ukostir endurstilltir fyrir notenda %0.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599375465026697)
,p_name=>'DAILY'
,p_message_language=>'is'
,p_message_text=>'Daglega'
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562778466026686)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'is'
,p_message_text=>unistr('Upphla\00F0in skr\00E1 er \00F3gild e\00F0a hefur rangan skr\00E1arendingu.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594763452026696)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gildur XML- e\00F0a JSON-veljari nota\00F0ur.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539802008026679)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnaforstilling og skr\00E1 sem var hla\00F0i\00F0 upp innihalda engan markt\00F6flud\00E1lk.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653752433026715)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'is'
,p_message_text=>unistr('Engin g\00F6gn fundust \00ED skr\00E1 sem var hla\00F0i\00F0 upp.')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653875928026715)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'is'
,p_message_text=>unistr('Engin g\00F6gn fundust \00E1 vinnubla\00F0i \201E%0\201C.')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559691253026685)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'is'
,p_message_text=>unistr('Tilgreinda skr\00E1in er ekki XLSX-skr\00E1.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126525672619026674)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'is'
,p_message_text=>unistr('Hle\00F0slu gagna loki\00F0: %0 ra\00F0ir unnar.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126527997805026675)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Hle\00F0slu gagna loki\00F0: %0 ra\00F0ir unnar me\00F0 1 villu.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528224486026675)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Hle\00F0slu gagna loki\00F0: %0 ra\00F0ir unnar me\00F0 %1 villum.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528063251026675)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'is'
,p_message_text=>unistr('Hle\00F0slu gagna loki\00F0: 1 r\00F6\00F0 unnin.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542322947026680)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Hle\00F0slu gagna loki\00F0: 1 r\00F6\00F0 unnin me\00F0 villu.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126528132563026675)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Hle\00F0slu gagna loki\00F0: 1 r\00F6\00F0 unnin \00E1n villna.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660896268026717)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'is'
,p_message_text=>unistr('Markd\00E1lkur')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568025685026688)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki hla\00F0a')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568117905026688)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 forvinnslu')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660951584026717)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'is'
,p_message_text=>unistr('Upprunad\00E1lkur')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661736042026717)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0 dagsetninga/talna')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567893661026688)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'is'
,p_message_text=>unistr('Setja inn r\00F6\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723913966026737)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F3kst ekki a\00F0 s\00E6kja uppflettigildi\00F0.')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126693601433026727)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'is'
,p_message_text=>unistr('V\00F6rpun fyrir g\00F6gn/t\00F6flu')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661888780026717)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568297415026688)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 : A\00F0ger\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655501724026715)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Umbreytingarreglan mist\00F3kst')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567987504026688)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6ra r\00F6\00F0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630235110026707)
,p_name=>'DATE'
,p_message_language=>'is'
,p_message_text=>'Dagsetning'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603170505026699)
,p_name=>'DAY'
,p_message_language=>'is'
,p_message_text=>'dagur'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603234851026699)
,p_name=>'DAYS'
,p_message_language=>'is'
,p_message_text=>'dagar'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643690480026712)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'is'
,p_message_text=>unistr('Villuleit er ekki virkju\00F0 fyrir \00FEennan kerfishluta.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695361361026728)
,p_name=>'DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfgefi\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603948553026699)
,p_name=>'DELETE'
,p_message_language=>'is'
,p_message_text=>unistr('ey\00F0a')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579597783026691)
,p_name=>'DELETE_MSG'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1 a\00F0 framkv\00E6ma \00FEessa ey\00F0ingara\00F0ger\00F0?')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559123508026685)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'is'
,p_message_text=>'Setuyfirskrifanir'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560058678026685)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'is'
,p_message_text=>'Virkja setuyfirskrifanir'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560940448026685)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'is'
,p_message_text=>unistr('Villa kom upp vi\00F0 a\00F0 hla\00F0a setuyfirskrifanir.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560701712026685)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'is'
,p_message_text=>unistr('Villa kom upp vi\00F0 a\00F0 vista setuyfirskrifanir.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126560694720026685)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'is'
,p_message_text=>unistr('Setuyfirskrifanir vista\00F0ar. Loka\00F0u \00FEessum glugga til a\00F0 sj\00E1 breytingar.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533856399026677)
,p_name=>'DIAL_PCT'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00EDfa (pr\00F3sent)')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126574825406026690)
,p_name=>'DOWNLOAD'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a ni\00F0ur')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694482355026728)
,p_name=>'DUP_USER'
,p_message_language=>'is'
,p_message_text=>unistr('Tv\00EDrita\00F0 notandanafn innan lista.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583260129026692)
,p_name=>'EDIT'
,p_message_language=>'is'
,p_message_text=>'Breyta'
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594403169026696)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lvup\00F3stfang \201E%0\201C fannst ekki.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577159021026691)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi t\00F6lvup\00F3stur er sendur af %0.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694641143026728)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lvup\00F3stfang er of langt.  H\00E1marki\00F0 er 240 stafir.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624868503026706)
,p_name=>'ERROR'
,p_message_language=>'is'
,p_message_text=>'Villa'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655617452026715)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki stillt upprunagildi s\00ED\00F0uhlutar fyrir uppf\00E6rslusv\00E6\00F0i \00E1 hluta s\00ED\00F0u')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616150382026703)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'is'
,p_message_text=>unistr('B\00FAi\00F0 til af')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577498750026691)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0 \00FAtrunni\00F0')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126569830839026688)
,p_name=>'FILE_EMPTY'
,p_message_language=>'is'
,p_message_text=>unistr('Skr\00E1in er t\00F3m.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659667694026717)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'is'
,p_message_text=>unistr('St\00E6r\00F0 skr\00E1rinnar sem var hla\00F0i\00F0 upp var meiri en %0 MB. Vinsamlegast hla\00F0i\00F0 upp minni skr\00E1.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579770464026691)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki t\00F3kst a\00F0 au\00F0kenna notandann og einni e\00F0a fleiri skr\00E1m var ekki hla\00F0i\00F0 upp.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579836136026691)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEetta tilvik leyfir ekki \00F3au\00F0kenndum notendum a\00F0 hla\00F0a upp skr\00E1m.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659728534026717)
,p_name=>'FILTERS'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDur')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637780001026710)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'is'
,p_message_text=>'1 villa komu upp'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636953629026709)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'is'
,p_message_text=>'%0 villur komu upp'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582345873026692)
,p_name=>'FORM_OF'
,p_message_language=>'is'
,p_message_text=>'%0 af %1'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621321522026705)
,p_name=>'GO'
,p_message_language=>'is'
,p_message_text=>'Hefja'
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723551597026737)
,p_name=>'HELP'
,p_message_language=>'is'
,p_message_text=>unistr('Hj\00E1lp')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564641226026687)
,p_name=>'HOME'
,p_message_language=>'is'
,p_message_text=>'Heim'
,p_is_js_message=>true
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602921112026699)
,p_name=>'HOUR'
,p_message_language=>'is'
,p_message_text=>'klukkustund'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603080173026699)
,p_name=>'HOURS'
,p_message_language=>'is'
,p_message_text=>'klukkustundir'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126584492636026693)
,p_name=>'ICON'
,p_message_language=>'is'
,p_message_text=>unistr('T\00E1kn %0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561770828026686)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0sto\00F0 vi\00F0 a\00F0 minnka t\00E1kn')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562933851026686)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Drag\00F0u t\00E1kni\00F0 \00FEitt og nota\00F0u \00FEysjunarsle\00F0ann til koma \00FEv\00ED fyrir innan rammans.</p>'),
'',
unistr('<p>\00DEegar n\00FDju t\00E1kni er hla\00F0i\00F0 upp ver\00F0ur st\00E6r\00F0 \00FEess breytt til a\00F0 falla a\00F0 \00FEremur sni\00F0um: favicon, l\00EDti\00F0 og st\00F3rt t\00E1kn.</p>'),
'',
unistr('<p>\00DEegar \00E1herslan er \00E1 st\00E6r\00F0art\00F3linu fyrir t\00E1kn eru eftirfarandi lyklabor\00F0sfl\00FDtilei\00F0ir \00ED bo\00F0i:</p>'),
'<ul>',
unistr('    <li>Vinstri \00F6r: F\00E6ra mynd til vinstri*</li>'),
unistr('    <li>Upp \00F6r: F\00E6ra mynd upp*</li>'),
unistr('    <li>H\00E6gri \00F6r: F\00E6ra mynd til h\00E6gri*</li>'),
unistr('    <li>Ni\00F0ur \00F6r: F\00E6ra mynd ni\00F0ur*</li>'),
unistr('    <li>I: \00DEysja inn</li>'),
unistr('    <li>O: \00DEysja \00FAt</li>'),
unistr('    <li>L: Sn\00FAa til vinstri</li>'),
unistr('    <li>R: Sn\00FAa til h\00E6gri</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Haltu Shift inni til a\00F0 f\00E6ra hra\00F0ar</em></p>')))
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568493030026688)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Drag\00F0u til a\00F0 endursta\00F0setja t\00E1kn')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568574614026688)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('F\00E6r\00F0u sle\00F0ann til stilla \00FEysjunarstig')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561559840026686)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'is'
,p_message_text=>unistr('Breyta t\00E1kni kerfishluta')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561892719026686)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'is'
,p_message_text=>unistr('T\00E1kn fyrir villu vi\00F0 vistun')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644257829026712)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'is'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> \00DEessi kerfishluti notar g\00F6mul t\00E1kn. Ef n\00FDjum t\00E1knum er hla\00F0i\00F0 upp koma \00FEau \00ED sta\00F0 allra gamalla t\00E1kna.</p>')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126562476691026686)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'is'
,p_message_text=>unistr('Hla\00F0a upp n\00FDju t\00E1kni')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638646141026710)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild innskr\00E1ningarskilr\00EDki')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739770420026742)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt gildi fyrir f\00E6ribreytu %0')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632988580026708)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'is'
,p_message_text=>unistr('Sem sj\00E1lfgefnar sk\00FDrslustillingar')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126633083747026708)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Sem nefnd sk\00FDrsla')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614975302026702)
,p_name=>'IR_ERROR'
,p_message_language=>'is'
,p_message_text=>'%0 villa. %1'
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126614600295026702)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki reikna\00F0 \00FAt lei\00F0arkerfi forms. %0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590292838026695)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnvirk sk\00FDrsla fannst ekki.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589600151026694)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Gagnvirkt sk\00FDrslusv\00E6\00F0i er ekki til \00ED kerfishluta %0, s\00ED\00F0u %1 og sv\00E6\00F0i %2.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126632806121026708)
,p_name=>'IR_STAR'
,p_message_language=>'is'
,p_message_text=>unistr('Eing\00F6ngu birt hj\00E1 \00FEr\00F3endum')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621058957026704)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslufyrirspurnin \00FEarf einkv\00E6man lykil til au\00F0kenna hverja r\00F6\00F0.  Ekki er h\00E6gt a\00F0 nota uppgefinn lykil fyrir \00FEessa fyrirspurn.  Skilgreindu d\00E1lk me\00F0 einkv\00E6mum lykli. %0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621123598026704)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslufyrirspurnin \00FEarf einkv\00E6man lykil til au\00F0kenna hverja r\00F6\00F0.  Ekki er h\00E6gt a\00F0 nota uppgefinn lykil fyrir \00FEessa fyrirspurn.  Breyttu eigindum sk\00FDrslunnar til a\00F0 skilgreina d\00E1lk me\00F0 einkv\00E6mum lykli. %0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662082392026717)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'is'
,p_message_text=>unistr('Velja skr\00E1')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661922248026717)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'is'
,p_message_text=>unistr('Dragi\00F0 og sleppi\00F0 skr\00E1m h\00E9r e\00F0a')
,p_is_js_message=>true
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582693088026692)
,p_name=>'ITEMS'
,p_message_language=>'is'
,p_message_text=>'Hlutir'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616334894026703)
,p_name=>'ITEM_VALUE'
,p_message_language=>'is'
,p_message_text=>'Gildi hlutar'
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630968384026708)
,p_name=>'LABEL'
,p_message_language=>'is'
,p_message_text=>'Merki'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643562612026712)
,p_name=>'LANGUAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Tungum\00E1l')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603601563026699)
,p_name=>'LAST'
,p_message_language=>'is'
,p_message_text=>unistr('s\00ED\00F0asta')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579660383026691)
,p_name=>'LENGTH'
,p_message_language=>'is'
,p_message_text=>'Lengd'
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637945287026710)
,p_name=>'LOGIN'
,p_message_language=>'is'
,p_message_text=>unistr('Innskr\00E1ning')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679581947026723)
,p_name=>'MANAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Stj\00F3rna')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126742638818026743)
,p_name=>'MAXIMIZE'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E1marka')
,p_is_js_message=>true
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602795213026699)
,p_name=>'MINUTE'
,p_message_language=>'is'
,p_message_text=>unistr('m\00EDn\00FAta')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602875065026699)
,p_name=>'MINUTES'
,p_message_language=>'is'
,p_message_text=>unistr('m\00EDn\00FAtur')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694872802026728)
,p_name=>'MISSING_AT'
,p_message_language=>'is'
,p_message_text=>unistr('Vantar \201E@\201C \00ED t\00F6lvup\00F3stfang.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126695082460026728)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'is'
,p_message_text=>unistr('Vi\00F0v\00F6run: Ekkert sni\00F0m\00E1t fyrir gluggas\00ED\00F0u hefur veri\00F0 skilgreint fyrir gluggas\00ED\00F0u %0 \00ED kerfishluta %1.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694748424026728)
,p_name=>'MISSING_DOT'
,p_message_language=>'is'
,p_message_text=>unistr('Vantar \201E.\201C \00ED l\00E9ni t\00F6lvup\00F3stfangs.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641032272026711)
,p_name=>'MODULE'
,p_message_language=>'is'
,p_message_text=>'Eining'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595265281026696)
,p_name=>'MONTH'
,p_message_language=>'is'
,p_message_text=>unistr('M\00E1nu\00F0ur')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599135095026697)
,p_name=>'MONTHLY'
,p_message_language=>'is'
,p_message_text=>unistr('M\00E1na\00F0arlega')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595301930026696)
,p_name=>'MONTHS'
,p_message_language=>'is'
,p_message_text=>unistr('m\00E1nu\00F0ir')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630585627026707)
,p_name=>'MOVE'
,p_message_language=>'is'
,p_message_text=>'Flytja'
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701368508026730)
,p_name=>'MOVE_FROM'
,p_message_language=>'is'
,p_message_text=>unistr('Flytja \00FAr')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701486837026730)
,p_name=>'MOVE_TO'
,p_message_language=>'is'
,p_message_text=>unistr('Flytja \00ED')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126617506618026703)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 margra\00F0aey\00F0ingara\00F0ger\00F0: r\00F6\00F0= %0, %1, %2')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616583365026703)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'is'
,p_message_text=>unistr('M\00E1 ekki vera almennur notandi')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126565190060026687)
,p_name=>'NAME'
,p_message_language=>'is'
,p_message_text=>'Nafn'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630765338026707)
,p_name=>'NEW'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FDtt')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595073947026696)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00FA getur skr\00E1\00F0 \00FEig inn \00E1 %0 me\00F0 \00FEv\00ED a\00F0 fara \00E1:')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595104744026696)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'is'
,p_message_text=>unistr('Tilkynning um n\00FDjan %0 reikning')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723797194026737)
,p_name=>'NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640924801026711)
,p_name=>'NO'
,p_message_language=>'is'
,p_message_text=>'Nei'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126737821725026742)
,p_name=>'NOBODY'
,p_message_language=>'is'
,p_message_text=>'enginn'
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604064314026699)
,p_name=>'NOT'
,p_message_language=>'is'
,p_message_text=>'Ekki'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646985744026713)
,p_name=>'NOT_NULL'
,p_message_language=>'is'
,p_message_text=>'Ekki autt'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616617511026703)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'is'
,p_message_text=>'Ekki %0'
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636409193026709)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('engin g\00F6gn fundust')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646474976026712)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Engin uppf\00E6ranleg sk\00FDrsla fannst. A\00F0eins er h\00E6gt a\00F0 framkv\00E6ma uppf\00E6rslu- og ey\00F0ingara\00F0ger\00F0ir yfir margar ra\00F0ir \00E1 t\00F6flusni\00F0 af tegund ''uppf\00E6ranleg sk\00FDrsla''.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647394972026713)
,p_name=>'OK'
,p_message_language=>'is'
,p_message_text=>unistr('\00CD LAGI')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642625734026711)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'is'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126741553937026743)
,p_name=>'ORA_06550'
,p_message_language=>'is'
,p_message_text=>unistr('ORA-06550: l\00EDna %0, d\00E1lkur %1')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692481372026727)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAreldur vafri er nota\00F0ur. Vinsamlegast athugi\00F0 uppsetningarhandb\00F3k Oracle APEX fyrir lista yfir studda vafra.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587408694026694)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'is'
,p_message_text=>unistr('Be\00F0i\00F0 um \00F3gilt mengi ra\00F0a, upprunag\00F6gnum sk\00FDrslunnar hefur veri\00F0 breytt.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609417649026701)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEa\00F0 \00FEarf a\00F0 tilgreina gilt s\00ED\00F0un\00FAmer, til d\00E6mis p?n=1234.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613682884026702)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sta')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613703125026702)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'is'
,p_message_text=>unistr('N\00E6sti h\00F3pur')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613831948026702)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'is'
,p_message_text=>'Fyrra'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126613978857026702)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrri h\00F3pur')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723675008026737)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'is'
,p_message_text=>unistr('Velja s\00ED\00F0uskiptingu')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653616340026715)
,p_name=>'PASSWORD'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594369394026696)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0inu \00FE\00EDnu fyrir %0 hefur veri\00F0 breytt.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582056498026692)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0i\00F0 uppfyllir ekki reglur \00FEessarar s\00ED\00F0u um fl\00E6kjustig a\00F0gangsor\00F0a.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581127405026692)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FDtt a\00F0gangsor\00F0 ver\00F0ur a\00F0 hafa a\00F0 minnsta kosti %0 stafi fr\00E1brug\00F0na gamla a\00F0gangsor\00F0inu.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581788345026692)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0 m\00E1 ekki innihalda notandanafn.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581915928026692)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0i\00F0 inniheldur banna\00F0 einfalt or\00F0.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581870846026692)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0 m\00E1 ekki innihalda heiti vinnusv\00E6\00F0isins.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581077164026692)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0 ver\00F0ur a\00F0 innihalda a\00F0 minnsta kosti %0 stafi.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581221600026692)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0i\00F0 ver\00F0ur a\00F0 innihalda a\00F0 minnsta kosti einn stafr\00F3fsstaf (%0).')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581653121026692)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0i\00F0 ver\00F0ur a\00F0 innihalda a\00F0 minnsta kosti einn l\00EDtinn stafr\00F3fsstaf.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581342075026692)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0 ver\00F0ur a\00F0 innihalda a\00F0 minnsta kosti einn t\00F6lustaf (0123456789).')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581425426026692)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0 ver\00F0ur a\00F0 innihalda a\00F0 minnsta kosti eitt greinarmerki (%0).')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126581534423026692)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0i\00F0 ver\00F0ur a\00F0 innihalda a\00F0 minnsta kosti einn st\00F3ran stafr\00F3fsstaf.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594812386026696)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'is'
,p_message_text=>unistr('Tilkynning um endurstillingu a\00F0gangsor\00F0s')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579980286026691)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki m\00E1 nota a\00F0gangsor\00F0i\00F0 vegna \00FEess a\00F0 \00FEa\00F0 hefur veri\00F0 noti\00F0 undanfarna %0 daga.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126576609535026690)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Pr\00F3sentugraf')
,p_is_js_message=>true
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668289374026719)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'is'
,p_message_text=>'Hlutir'
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126668348950026719)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'is'
,p_message_text=>'Hlutur'
,p_version_scn=>2692926
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642463233026711)
,p_name=>'PERCENT'
,p_message_language=>'is'
,p_message_text=>unistr('Pr\00F3sent')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126611786246026701)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'is'
,p_message_text=>unistr('Haf\00F0u samband vi\00F0 stj\00F3rnandann.')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126723863590026737)
,p_name=>'PREVIOUS'
,p_message_language=>'is'
,p_message_text=>'Fyrra'
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660451906026717)
,p_name=>'PRINT'
,p_message_language=>'is'
,p_message_text=>'Prenta'
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641259166026711)
,p_name=>'PRIVILEGES'
,p_message_language=>'is'
,p_message_text=>unistr('R\00E9ttindi')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609864804026701)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'is'
,p_message_text=>unistr('Sv\00E6\00F0istilv\00EDsanir')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630828956026708)
,p_name=>'REPORT'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrsla')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641137248026711)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslut\00EDmabil')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724019812026737)
,p_name=>'REPORT_LABEL'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrsla: %0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641896590026711)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'is'
,p_message_text=>unistr('Sk\00FDrslusamtala')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587559309026694)
,p_name=>'RESET'
,p_message_language=>'is'
,p_message_text=>unistr('Endurstilla s\00ED\00F0uskiptingu')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616212608026703)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'is'
,p_message_text=>unistr('Endurstilla s\00ED\00F0uskiptingu')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646337171026712)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'is'
,p_message_text=>unistr('Endurstilla a\00F0gangsor\00F0')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622101632026705)
,p_name=>'RESTORE'
,p_message_language=>'is'
,p_message_text=>'Endurstilla'
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126655771730026715)
,p_name=>'RESULTS'
,p_message_language=>'is'
,p_message_text=>unistr('Ni\00F0urst\00F6\00F0ur')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647421959026713)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'is'
,p_message_text=>unistr('Fara \00ED kerfishluta.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126647857674026713)
,p_name=>'RIGHT'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6gri')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679856883026723)
,p_name=>'ROW'
,p_message_language=>'is'
,p_message_text=>unistr('R\00F6\00F0 %0')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630494689026707)
,p_name=>'ROW_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('Fj\00F6ldi ra\00F0a')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520276251026673)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'is'
,p_message_text=>'Spyrja Oracle'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520577295026673)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'is'
,p_message_text=>'Loka Spyrja Oracle'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520842825026673)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'is'
,p_message_text=>'Tilkynningalisti'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520474036026673)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'is'
,p_message_text=>'Opna Spyrja Oracle'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520704235026673)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'is'
,p_message_text=>unistr('V\00F6rukort')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520623459026673)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'is'
,p_message_text=>unistr('Till\00F6gulisti')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521591208026673)
,p_name=>'RW_CLEAR'
,p_message_language=>'is'
,p_message_text=>'Hreinsa'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521493719026673)
,p_name=>'RW_CLOSE'
,p_message_language=>'is'
,p_message_text=>'Loka'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521288347026673)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'is'
,p_message_text=>unistr('Sko\00F0a meira')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521697707026673)
,p_name=>'RW_GO_TO'
,p_message_language=>'is'
,p_message_text=>unistr('Fara \00ED')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521044636026673)
,p_name=>'RW_GP_STEP'
,p_message_language=>'is'
,p_message_text=>unistr('\00DErep')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521128644026673)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'is'
,p_message_text=>'af'
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520991019026673)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'is'
,p_message_text=>unistr('Skipta um birtingu \00E1 \00FErepum')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126520031221026672)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'is'
,p_message_text=>unistr('Fela a\00F0gangsor\00F0')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521383734026673)
,p_name=>'RW_OPEN'
,p_message_language=>'is'
,p_message_text=>'Opna'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519824365026672)
,p_name=>'RW_ORACLE'
,p_message_language=>'is'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126519985379026672)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna a\00F0gangsor\00F0')
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126521759630026673)
,p_name=>'RW_START'
,p_message_language=>'is'
,p_message_text=>'Upphaf'
,p_is_js_message=>true
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126646802242026713)
,p_name=>'SAVE'
,p_message_language=>'is'
,p_message_text=>'Vista'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643039313026711)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Aukask\00FDrsla')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643401331026711)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'is'
,p_message_text=>unistr('L\00FDsing')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642927990026711)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Upphaflega sk\00FDrslan')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643738593026712)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'is'
,p_message_text=>unistr('Fleiri en %0 ra\00F0ir tilt\00E6kar. Auki\00F0 ra\00F0veljara til a\00F0 sj\00E1 fleiri ra\00F0ir.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126711118262026733)
,p_name=>'SEARCH'
,p_message_language=>'is'
,p_message_text=>'Leita'
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602617228026698)
,p_name=>'SECONDS'
,p_message_language=>'is'
,p_message_text=>unistr('sek\00FAndur')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642582033026711)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1 vi\00F0hengi')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703117295026730)
,p_name=>'SELECT_ROW'
,p_message_language=>'is'
,p_message_text=>unistr('Velja r\00F6\00F0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642241735026711)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'is'
,p_message_text=>unistr('Stilla skj\00E1lesaraham af')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642376158026711)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'is'
,p_message_text=>unistr('Stilla skj\00E1lesaraham \00E1')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638534391026710)
,p_name=>'SHOW'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704910586026731)
,p_name=>'SHOW_ALL'
,p_message_language=>'is'
,p_message_text=>unistr('S\00FDna allt')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126729751975026739)
,p_name=>'SIGN_IN'
,p_message_language=>'is'
,p_message_text=>unistr('Innskr\00E1ning')
,p_version_scn=>2692935
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126680679014026723)
,p_name=>'SIGN_OUT'
,p_message_language=>'is'
,p_message_text=>unistr('Skr\00E1 \00FAt')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631475354026708)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir %0 d\00F6gum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639056969026710)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>'Eftir %0 daga'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631334837026708)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir %0 klukkustundum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638948034026710)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>'Eftir %0 klukkustundir'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631265572026708)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir %0 m\00EDn\00FAtum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638869072026710)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>unistr('Eftir %0 m\00EDn\00FAtur')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631630986026708)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrir %0 m\00E1nu\00F0um s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639293516026710)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>unistr('Eftir %0 m\00E1nu\00F0i')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639452534026710)
,p_name=>'SINCE_NOW'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAna')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631117789026708)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir %0 sek\00FAndum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126638740695026710)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>unistr('Eftir %0 sek\00FAndur')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631565532026708)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('fyrir %0 vikum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639127512026710)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>'Eftir %0 vikur'
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126631791034026708)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrir %0 \00E1rum s\00ED\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639359586026710)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'is'
,p_message_text=>unistr('Eftir %0 \00E1r')
,p_is_js_message=>true
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625226475026706)
,p_name=>'STANDARD'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0la\00F0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642182839026711)
,p_name=>'START_DATE'
,p_message_language=>'is'
,p_message_text=>'Upphafsdagsetning'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577395155026691)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi t\00F6lvup\00F3stur berst fr\00E1 gagnvirkri sk\00FDrslu\00E1skrift sem sk\00F6pu\00F0 var af %0.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126738904026026742)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'is'
,p_message_text=>unistr('\00C1skriftir')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688334512026726)
,p_name=>'TAB'
,p_message_language=>'is'
,p_message_text=>'Flipi'
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602510816026698)
,p_name=>'TITLE'
,p_message_language=>'is'
,p_message_text=>'Titill'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582266686026692)
,p_name=>'TODAY'
,p_message_language=>'is'
,p_message_text=>unistr('\00CD dag')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641720391026711)
,p_name=>'TOTAL'
,p_message_language=>'is'
,p_message_text=>'Samtals'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583567693026693)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0 h\00E1marki m\00E1 velja %0 d\00E1lka.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539367316026679)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'is'
,p_message_text=>'Fella allt saman'
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539918393026679)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'is'
,p_message_text=>unistr('Fella allt saman a\00F0 ne\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126538984417026678)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtv\00EDkka allt')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539638870026679)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtv\00EDkka allt a\00F0 ne\00F0an')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126540199774026679)
,p_name=>'TREE.REPARENT'
,p_message_language=>'is'
,p_message_text=>unistr('Endur\00FAthluta')
,p_is_js_message=>true
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662275085026717)
,p_name=>'TREES'
,p_message_language=>'is'
,p_message_text=>unistr('Tr\00E9')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126705043239026731)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Nau\00F0synlegt')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126625917829026706)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki heimila\00F0')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126676170334026722)
,p_name=>'UNAVAILABLE'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3tilt\00E6kt')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639874904026710)
,p_name=>'UNKNOWN'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3\00FEekkt')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578267433026691)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3\00FEekkt au\00F0kenningarvilla kom upp.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580429899026692)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'is'
,p_message_text=>unistr('Ef \00FE\00FA vilt ekki f\00E1 frekari t\00F6lvup\00F3sta skaltu smella \00E1 <a href="%0">afskr\00E1</a>  til a\00F0 stj\00F3rna \00E1skriftinni.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126577265602026691)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'is'
,p_message_text=>unistr('Ef ekki er \00F3ska\00F0 eftir frekari t\00F6lvup\00F3stum skaltu fara \00E1 eftirfarandi sl\00F3\00F0 til a\00F0 stj\00F3rna \00E1skriftinni:')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126616785940026703)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('\00F3studd gagnategund')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603870520026699)
,p_name=>'UPDATE'
,p_message_language=>'is'
,p_message_text=>unistr('uppf\00E6ra')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602437345026698)
,p_name=>'UPDATED'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6rt')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545645389026681)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6rsla stendur yfir')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126545901231026681)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'is'
,p_message_text=>unistr('Veri\00F0 er a\00F0 uppf\00E6ra Oracle APEX \00ED n\00FDrri \00FAtg\00E1fu. Ferli\00F0 tekur yfirleitt allt a\00F0 3 minutes.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609293785026701)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'is'
,p_message_text=>unistr('Umbe\00F0in sl\00F3\00F0 hefur veri\00F0 b\00F6nnu\00F0. Haf\00F0u samband vi\00F0 stj\00F3rnandann.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126630338054026707)
,p_name=>'USER'
,p_message_language=>'is'
,p_message_text=>'Notandi  '
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126653513561026715)
,p_name=>'USERNAME'
,p_message_language=>'is'
,p_message_text=>'Notandanafn'
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694966957026728)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'is'
,p_message_text=>unistr('Notandanafn er of langt.  H\00E1marki\00F0 er %0 stafir.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637418357026710)
,p_name=>'USERS'
,p_message_language=>'is'
,p_message_text=>'notendur'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126694561721026728)
,p_name=>'USER_EXISTS'
,p_message_language=>'is'
,p_message_text=>unistr('Notandanafn er \00FEegar til.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126708314839026732)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Pr\00F3f\00EDlmynd fyrir notendur %0')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570281503026688)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfvirkni \2013 %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568738022026688)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0a %0\2013%1 ')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571637207026689)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'is'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126571764361026689)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'is'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570600660026689)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'is'
,p_message_text=>unistr('Leitarstilling \2013 %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570540136026688)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'is'
,p_message_text=>unistr('Sameiginlegur breytilegur vallisti \2013 %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126570336884026688)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'is'
,p_message_text=>unistr('Verkskilgreining \2013 %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568851905026688)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnslufl\00E6\00F0i \2013 %0 ')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590934573026695)
,p_name=>'VALID'
,p_message_language=>'is'
,p_message_text=>'Gilt'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582564280026692)
,p_name=>'VALIDATIONS'
,p_message_language=>'is'
,p_message_text=>unistr('Sta\00F0festingar')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643242690026711)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'is'
,p_message_text=>unistr('Gildi ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689537152026726)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'is'
,p_message_text=>unistr('Gildi ver\00F0ur a\00F0 tilgreina fyrir %0')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612147821026702)
,p_name=>'VERTICAL'
,p_message_language=>'is'
,p_message_text=>unistr('l\00F3\00F0r\00E9tt')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603770581026699)
,p_name=>'VIEW'
,p_message_language=>'is'
,p_message_text=>unistr('sko\00F0a')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637550228026710)
,p_name=>'VIEWS'
,p_message_language=>'is'
,p_message_text=>unistr('s\00FDnir')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644063310026712)
,p_name=>'VIEW_ALL'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1 allt')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583944050026693)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'is'
,p_message_text=>'Falinn hlekkur'
,p_is_js_message=>true
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126624714534026706)
,p_name=>'WARNING'
,p_message_language=>'is'
,p_message_text=>unistr('Vi\00F0v\00F6run')
,p_is_js_message=>true
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603307948026699)
,p_name=>'WEEK'
,p_message_language=>'is'
,p_message_text=>'vika'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599217651026697)
,p_name=>'WEEKLY'
,p_message_language=>'is'
,p_message_text=>'Vikulega'
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603492418026699)
,p_name=>'WEEKS'
,p_message_language=>'is'
,p_message_text=>'vikur'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126643351413026711)
,p_name=>'WELCOME_USER'
,p_message_language=>'is'
,p_message_text=>'Velkomin(n): %0'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641523912026711)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'is'
,p_message_text=>unistr('Fann \00F3gilt gildi, vinsamlegast sannreyni\00F0 sni\00F0 gagna.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641621805026711)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Fann \00F3gilt gildi, vinsamlegast sannreyni\00F0 sni\00F0 gagna.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579436738026691)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'is'
,p_message_text=>unistr('Fann \00F3gilda dagsetningu, sannreyndu sni\00F0 dagsetninga.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126641444927026711)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'is'
,p_message_text=>unistr('Fann \00F3gilt t\00F6lugildi, vinsamlegast sannreyni\00F0 sni\00F0 talna.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590545307026695)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'is'
,p_message_text=>unistr('Fann \00F3gildan t\00EDmastimpil, vinsamlegast sannreyni\00F0 sni\00F0 t\00EDmastimpils.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615055984026702)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki bundi\00F0 \201E%0\201C. Nota\00F0u tv\00F6faldar g\00E6salappir fyrir hluti sem eru lengri en eitt b\00E6ti e\00F0a sannreyni\00F0 a\00F0 lengd hlutar er minni en e\00F0a j\00F6fn og 30 b\00E6ti. Nota\00F0u uppbygginguna v() til a\00F0 v\00EDsa til hluta sem eru lengri en 30 b\00E6ti.')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604843718026699)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangi hafna\00F0 af \00F6ryggisathugun %0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607382965026700)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'is'
,p_message_text=>unistr('Kerfishluti ekki a\00F0gengilegur')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605766979026699)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'is'
,p_message_text=>'Kerfishluti fannst ekki.'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605851320026700)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('kerfishluti=%0  vinnusv\00E6\00F0i=%1')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606290268026700)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangur a\00F0 \00FEessum kerfishluta er takmarka\00F0ur, reyndu aftur s\00ED\00F0ar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606113292026700)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangur a\00F0 \00FEessum kerfishluta er takmarka\00F0ur vi\00F0 \00FEr\00F3endur kerfishlutans, reyndu aftur s\00ED\00F0ar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605380636026699)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-7744 Gat ekki unni\00F0 legg til a\00F0ger\00F0ar endurkomusl\00F3\00F0.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605296969026699)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-7744 Gat ekki unni\00F0 legg til a\00F0ger\00F0ar endurkomus\00ED\00F0u.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605570135026699)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1430 Kall til a\00F0 s\00FDna framgang s\00ED\00F0u er \00F3stutt: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606679169026700)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1018 Villa vi\00F0 a\00F0 hreinsa skyndiminni skrefs.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605054747026699)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1005 \00D3\00FEekkt tegund \00FAtreiknings.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605960527026700)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1201 setuau\00F0kenni er ekki stillt \00E1 s\00E9rsni\00F0na au\00F0kenningu.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606064347026700)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('s\00ED\00F0a=%0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605649248026699)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-7620 Gat ekki \00E1kvar\00F0a\00F0 vinnusv\00E6\00F0i fyrir kerfishluta (%0).')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586119356026693)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'is'
,p_message_text=>'Breyta'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604731159026699)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1802 Gat ekki fundi\00F0 au\00F0kenni hlutar \201E%0\201C')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604484615026699)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1002 Gat ekki fundi\00F0 au\00F0kenni hlutar fyrir hlut \201E%0\201C \00ED kerfishluta \201E%1\201C.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604512324026699)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3v\00E6nt villa, gat ekki fundi\00F0 nafn hlutar \00ED kerfishluta e\00F0a s\00ED\00F0u.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604945059026699)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00FA ert \00FEegar \00E1 fyrstu gagnas\00ED\00F0unni.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621472768026705)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'is'
,p_message_text=>unistr('Hlutarau\00F0kenni (%0) er ekki hlutur sem er skilgreindur \00E1 \00FEessari s\00ED\00F0u.')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579026758026691)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 stilla v\00F6ru me\00F0 \00FEv\00ED a\00F0 senda frumbreytu til kerfishlutans.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579309584026691)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'is'
,p_message_text=>unistr('(Engin pr\00F3fsumma var gefin upp)')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578860802026691)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6gt er a\00F0 stilla v\00F6ru \00FEegar henni fylgir pr\00F3fsumma me\00F0 \201Eb\00F3karmerki \00E1 notendastigi\201C.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578792460026691)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6gt er a\00F0 stilla v\00F6ru\00FEegar henni fylgir pr\00F3fsumma me\00F0 \201Eb\00F3karmerki \00E1 kerfishlutastigi\201C.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578943603026691)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6gt er a\00F0 stilla v\00F6ru \00FEegar henni fylgir \201Esetu-\201Cpr\00F3fsumma.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578607150026691)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'is'
,p_message_text=>unistr('Vara hefur enga v\00F6rn.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606725883026700)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'is'
,p_message_text=>unistr('Engin s\00ED\00F0uhj\00E1lp er tilt\00E6k.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126594654731026696)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnusv\00E6\00F0i %0 hefur ekki r\00E9ttindi til a\00F0 \00FE\00E1tta sem skema %1.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126605140623026699)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1010 Fari\00F0 yfir leyfilegan fj\00F6lda endurkoma vi\00F0 vinnslu sam\00FEykktar legg til s\00ED\00F0u. %0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126561669830026686)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0an er ekki tilt\00E6k, ekki er h\00E6gt a\00F0 keyra s\00ED\00F0umynstur.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126579271534026691)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessa s\00ED\00F0u m\00E1 ekki kalla fram me\00F0 sl\00F3\00F0 e\00F0a me\00F0 \00FEv\00ED a\00F0 nota GET e\00F0a POST til a\00F0 s\00FDna undirforrit. \00DEa\00F0 \00FEarf a\00F0 kalla \00E1 hana me\00F0 \00FEv\00ED a\00F0 nota \201Elegg til s\00ED\00F0u\201C leggtegund.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664097292026718)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 tilraun til a\00F0 vista gildi sem er ekki t\00F6lustafur \00ED hlut %0. ')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596391627026697)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'is'
,p_message_text=>unistr('\00DE\00E1ttunarskema kerfishlutans \201E%0\201C er ekki til \00ED gagnagrunninum.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596416148026697)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'is'
,p_message_text=>unistr('Reikningar \00ED INNRA vinnusv\00E6\00F0i m\00E1 a\00F0eins nota til a\00F0 f\00E1 a\00F0gang a\00F0 &PRODUCT_NAME.-<a href="%0">stj\00F3rnunar\00FEj\00F3nustu</a>.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604305196026699)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-1029 Gat ekki geymt uppl\00FDsingar um setu.  seta=%0 hlutur=%1')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607471683026700)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki st\00F6\00F0va\00F0 rakningu: %0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126604609599026699)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3v\00E6nt villa')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615459190026703)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \00ED update_substitution_cache: %0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607559948026700)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Gefa \00FEarf upp kerfishluta og s\00ED\00F0u til a\00F0 sj\00E1 hj\00E1lp.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126629215549026707)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfvirkni fannst ekki.')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564714829026687)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 sj\00E1lfvirknifyrirspurn: %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608674766026700)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'is'
,p_message_text=>unistr('Hreinsa\00F0i %0 setur.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549923616026682)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('Getur ekki keyrt k\00F3\00F0ann %0! Gagnagrunnurinn sty\00F0ur hann ekki e\00F0a hann er ekki virkja\00F0ur me\00F0 tilviksf\00E6ribreytunni MLE_LANGUAGES.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126547581562026681)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('Margm\00E1la v\00E9l er ekki tilt\00E6k \00ED \00FEessari \00FAtg\00E1fu af gagnagrunninum!')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586746210026694)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Fylki kerfishlutasafns m\00E1 ekki vera autt')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586577962026693)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'is'
,p_message_text=>unistr('Tilgreint n\00FAmer me\00F0limaeigindar %0 er \00F3gilt.  N\00FAmer eigindar ver\00F0ur a\00F0 vera \00E1 milli 1 og %1')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587090362026694)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'is'
,p_message_text=>'Kerfishlutasafn er til'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586832767026694)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Nafn safnsins m\00E1 ekki vera autt')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586977467026694)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'is'
,p_message_text=>unistr('Nafn safnsins m\00E1 ekki vera lengra en 255 stafir')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586311763026693)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>'Kerfishlutasafn %0 er ekki til'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587134195026694)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'is'
,p_message_text=>'Bendill er ekki enn opinn'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586406159026693)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Me\00F0limar\00F6\00F0 %0 er ekki til \00ED kerfishlutasafni %1'),
''))
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126586635003026694)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('Me\00F0limar\00F6\00F0 %0 er ekki til \00ED kerfishlutasafni \201E%1\201C')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539442457026679)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'is'
,p_message_text=>unistr('Algr\00EDm %0 er ekki stutt fyrir ECDSA.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126539132469026679)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'is'
,p_message_text=>'Sporbaugsferill %0 er ekki studdur.'
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664851631026718)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('Dulritunara\00F0ger\00F0in \201E%0\201C er ekki studd \00E1 \00FEessu kerfi.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717138861026735)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gengi pr\00F3fa\00F0')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608162897026700)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'is'
,p_message_text=>'Loka'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608280287026700)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'is'
,p_message_text=>unistr('Valkostir til a\00F0 s\00E9rsn\00ED\00F0a s\00ED\00F0u')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608355297026700)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'is'
,p_message_text=>unistr('Sj\00E1lfgefi\00F0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608414496026700)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'is'
,p_message_text=>'Birt'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608535071026700)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'is'
,p_message_text=>unistr('Fali\00F0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607940629026700)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'is'
,p_message_text=>unistr('Athuga\00F0u sv\00E6\00F0in sem eiga a\00F0 vera \00E1 \00FEessari s\00ED\00F0u.  Sv\00E6\00F0i sem haka\00F0 hefur veri\00F0 vi\00F0 g\00E6tu ekki birst ef kerfishlutasamhengi\00F0 er ekki r\00E9tt e\00F0a vi\00F0eigandi r\00E9ttindi eru ekki til sta\00F0ar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608087325026700)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 s\00E9rsn\00ED\00F0a \00FEessa s\00ED\00F0u.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717489211026735)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'is'
,p_message_text=>unistr('H\00E6gt er einstaklingsstilla \00FAtlit \00FEessa kerfishluta me\00F0 \00FEv\00ED a\00F0 breyta \00FEemast\00EDlnum. Vinsamlegast velji\00F0 \00FEemast\00EDl af listanum h\00E9r fyrir ne\00F0an og smelli\00F0 \00E1 virkja breytingar.')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126718279028026735)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'is'
,p_message_text=>unistr('Birt sv\00E6\00F0i')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717323513026735)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'is'
,p_message_text=>unistr('Nota sj\00E1lfgefinn st\00EDl kerfishlutans')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126717293907026735)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtlit ')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661428597026717)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('V\00EDsir d\00E1lksins sem v\00EDsa\00F0 er til \00ED sams\00F6fnuninni %0 er ekki til.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554186039026683)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er stutt vi\00F0 a\00F0 b\00E6ta vi\00F0 gagna\00FAtflutningi fyrir sni\00F0i\00F0 %0.')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517127636026672)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('CLOB-\00FAttak er ekki stutt fyrir %0 sni\00F0.')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661158979026717)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkskilin ver\00F0a a\00F0 vera \00ED upphafi d\00E1lkafylkisins.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661213559026717)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('V\00EDsir d\00E1lkah\00F3psins sem v\00EDsa\00F0 er til \00ED %0 er ekki til.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126568328692026688)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'is'
,p_message_text=>unistr('flytja \00FAt')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126575584031026690)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'is'
,p_message_text=>unistr('\00DAtflutningssni\00F0i\00F0 ver\00F0ur a\00F0 vera XML me\00F0 ORDS sem prent\00FEj\00F3n.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661572250026717)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('V\00EDsir d\00E1lksins sem v\00EDsa\00F0 er til \00ED \00E1herslumerkingunni %0 er ekki til.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126564984882026687)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt \00FAtflutningssni\00F0: %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126661393935026717)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('V\00EDsir foreldrah\00F3psins sem v\00EDsa\00F0 er til \00ED %0 er ekki til.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126686597532026725)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur %1 \00ED t\00F6flu %0er \201EGENERATED ALWAYS\201C kennid\00E1lkur. Vinsamlegast g\00E6ti\00F0 \00FEess a\00F0 engum upprunad\00E1lk s\00E9 varpa\00F0 \00E1 d\00E1lkinn %1 \00ED stilla glugganum.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598162715026697)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'is'
,p_message_text=>unistr('Tilgreint sta\00F0festingarbil er of l\00E1gt.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598213471026697)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'is'
,p_message_text=>unistr('Enginn d\00E1lkur hefur veri\00F0 gefinn upp til a\00F0 hla\00F0a g\00F6gn.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599581936026698)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Engir d\00E1lkar fundust fyrir ra\00F0veljarar \201E%0\201C. Reyndu a\00F0 finna sj\00E1lfkrafa e\00F0a fari\00F0 yfir JSON-uppbygginguna.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608996281026700)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Engin vinnubl\00F6\00F0 fundust \00ED XLSX-skr\00E1nni.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126554030639026683)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'is'
,p_message_text=>unistr('Stigskipting sem \00F3ska\00F0 var eftir a\00F0 sj\00E1 (%0) er umfram h\00E1marki\00F0 sem nemur %1.')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126608859748026700)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'is'
,p_message_text=>unistr('Tilgreint vinnubla\00F0 er ekki til \00ED XLSX-skr\00E1nni.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126587210946026694)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAverandi \00FAtg\00E1fa gagna \00ED gagnagrunninum hefur breyst s\00ED\00F0an notandi h\00F3f uppf\00E6rsluferli\00F0.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590185746026695)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 uppf\00E6rslu sk\00FDrslud\00E1lks: %0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700634477026729)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'is'
,p_message_text=>unistr('Get ekki umbreytt %0 \00ED SDO_GEOMETRY.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637130212026710)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lk %0 sem er af gagnategund %1 er ekki h\00E6gt a\00F0 breyta \00ED VARCHAR2!')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644501714026712)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur \201E%0\201C tilgreindur fyrir eigindina \201E%1\201C finnst ekki \00ED gagnauppruna!')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580661284026692)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'is'
,p_message_text=>unistr('S\00EDutegundin %0 er ekki studd fyrir d\00E1lka me\00F0 m\00F6rgum gildum.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126704189934026731)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild \201Ebetween\201C s\00EDa.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126559756431026685)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'is'
,p_message_text=>unistr('Ekkert gildi %2 fannst \00ED d\00E1lk %0, r\00F6\00F0 nr. %1.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126556467430026684)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur %0 e\00F0a r\00F6\00F0 nr. %1 er ekki til.')
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126543013295026680)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild LOV-tegund tilgreind.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542977882026680)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gild fyrirspurnartegund. Fyrirspurnartegund ver\00F0ur a\00F0 vera tafla, SQL-fyrirspurn e\00F0a PL/SQL-a\00F0ger\00F0 sem skilar SQL-fyrirspurn.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637223986026710)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ekki t\00F3kst a\00F0 \00FE\00E1tta SQL-fyrirspurn:'),
'%0'))
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644621016026712)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Tilgreind sta\00F0a %0 \00ED d\00E1lki fyrir eigindina \201E%1\201C finnst ekki \00ED SQL-setningu!')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126534606082026677)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'is'
,p_message_text=>unistr('Of margir hlutir nota\00F0ir \00ED s\00EDu me\00F0 m\00F6rgum gildum.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126644487618026712)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'is'
,p_message_text=>unistr('Enginn d\00E1lkur tiltekinn fyrir eigindina \201E%0\201C.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542825266026680)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('Meginm\00E1l PL/SQL-a\00F0ger\00F0arinnar skila\00F0i engu gildi.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126660267481026717)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'is'
,p_message_text=>unistr('REST-gagnauppsprettan inniheldur ekki a\00F0ger\00F0 til a\00F0 me\00F0h\00F6ndla umbe\00F0na DML-a\00F0ger\00F0.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126701929093026730)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'is'
,p_message_text=>unistr('Eing\00F6ngu er h\00E6gt a\00F0 nota s\00EDubil fyrir gagnategundirnar NUMBER, DATE e\00F0a TIMESTAMP.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126522874959026673)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Bei\00F0ni mist\00F3kst me\00F0 %0')
,p_version_scn=>2692901
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126526386496026674)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'is'
,p_message_text=>unistr('\00CD \00FEessum gagnagrunni er umbreyting \00FAr GeoJSON \00ED SDO_GEOMETRY (d\00E1lkur %0) ekki m\00F6guleg.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529712160026676)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'is'
,p_message_text=>unistr('Umbreyting \00E1 SDO_GEOMETRY (d\00E1lkur %0) er ekki m\00F6guleg fyrir XML-gagnauppruna.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126553832898026683)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'is'
,p_message_text=>'Stafurinn %0 er ekki studdur sem skil milli gilda.'
,p_version_scn=>2692908
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126702025175026730)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessa a\00F0ger\00F0 er ekki h\00E6gt a\00F0 nota \00ED fyrirspurnarsamhengi.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126529808284026676)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3samr\00E6mi \00ED gagnategundum d\00E1lka.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126563358715026686)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi gagnauppruni sty\00F0ur ekki a\00F0 m\00F6rgum r\00F6\00F0um s\00E9 breytt.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542735579026680)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'is'
,p_message_text=>unistr('Innri ORDS OUT-bindingar eru umfram m\00F6rk. F\00E6kka\00F0u fj\00F6lda DML-ra\00F0a.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645428953026712)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ekki var h\00E6gt a\00F0 \00FE\00E1tta JSON-svari\00F0 fr\00E1 fjar\00FEj\00F3ninum: '),
'%0'))
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126542657926026680)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3\00FEekkt e\00F0a r\00F6ng tegund samhengis.')
,p_version_scn=>2692905
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566750500026687)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3studdir \00EDhlutir fyrir lesanlegan \00FAtflutning: %0')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126664767303026718)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi skr\00E1artegund er ekki studd af \00FE\00E1ttaranum.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615575784026703)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3heimill a\00F0gangur (wwv_flow_api.set_credentials ekki stillt).')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590434943026695)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'is'
,p_message_text=>unistr('Vinnusv\00E6\00F0i var ekki stofna\00F0 \00FEv\00ED \00FEa\00F0 er \00FEegar til.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126590305870026695)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'is'
,p_message_text=>unistr('Notendah\00F3pur var ekki stofna\00F0ur \00FEv\00ED hann er \00FEegar til.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601733327026698)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'is'
,p_message_text=>unistr('Tv\00EDrita\00F0 notandanafn fannst fyrir %0.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601854648026698)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 a\00F0 hla\00F0a notendum. Mist\00F3kst \00E1 notenda %0.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612668689026702)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'is'
,p_message_text=>unistr('Hef\00F0i hla\00F0i\00F0 %0 notendur.')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612432217026702)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'is'
,p_message_text=>unistr('A\00F0gangsor\00F0')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612526840026702)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'is'
,p_message_text=>unistr('R\00E9ttindi')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612257580026702)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'is'
,p_message_text=>'Notandanafn'
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692676701026727)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 birtingu s\00ED\00F0uhlutar #COMPONENT_NAME#.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607632432026700)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Get ekki birt s\00ED\00F0uhlut vegna \00FEess a\00F0 HTML-formi\00F0 er \00F3opna\00F0.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126566066415026687)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 \00FAtreikning sj\00E1lfgefins gildis hlutar fyrir s\00ED\00F0uhluti #COMPONENT_NAME#.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606976904026700)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 eftir\00FAtreikning hlutar fyrir s\00ED\00F0uhlut #COMPONENT_NAME#.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126606881656026700)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villi vi\00F0 \00FAtreikning uppsprettugildis hlutar fyrir s\00ED\00F0uhlut #COMPONENT_NAME#.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583624899026693)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3heimill a\00F0gangur.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126533161929026677)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'is'
,p_message_text=>'Gildi %0 af %1 er ekki gilt JSON-fylki.'
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607106264026700)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'is'
,p_message_text=>'JavaScript ekki stutt.'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607252807026700)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'is'
,p_message_text=>'Listi'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607838031026700)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'is'
,p_message_text=>'Gat ekki frumstillt fyrirspurn.'
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615872275026703)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Uppf\00E6rsla %0 er ekki studd.')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609310838026701)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt au\00F0kenni hlutar: %0 ')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126637029336026709)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'is'
,p_message_text=>unistr('Engin hj\00E1lp er til fyrir \00FEennan hlut.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598883129026697)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Myndun graffyrirspurnar mist\00F3kst. Athuga\00F0u stillingar fyrir uppruna og d\00E1lkav\00F6rpun.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600117741026698)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt gildi fyrir f\00E6ribreytu p_mail_id: %0')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636869522026709)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 nota \201ETo\201C or \201EReply-To\201C sem \201EFrom\201C p\00F3stfang \00FEar sem \00FEessi innihalda m\00F6rg t\00F6lvup\00F3stf\00F6ng.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126721746125026736)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'is'
,p_message_text=>unistr('Fari\00F0 hefur veri\00F0 fram yfir h\00E1marksfj\00F6lda t\00F6lvup\00F3sta fyrir hvert vinnusv\00E6\00F0i. Vinsamlegast hafi\00F0 samband vi\00F0 stj\00F3rnandann.')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578331233026691)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEetta undirforrit \00FEarf a\00F0 kalla \00E1 innan kerfishlutasetu.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126600018846026698)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'is'
,p_message_text=>unistr('Autt gildi gefi\00F0 sem f\00E6ribreyta %0.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126658138580026716)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Sni\00F0m\00E1t fyrir t\00F6lvup\00F3st \201E%0\201C fannst ekki \00ED ums\00F3kninni %1.')
,p_version_scn=>2692924
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126734602896026741)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Tilviksf\00E6ribreytan SMTP_HOST_ADDRESS ver\00F0ur a\00F0 vera stillt til a\00F0 senda p\00F3sta.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126599491609026698)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Vi\00F0takenda skilabo\00F0a \00FEarf til a\00F0 senda p\00F3st.')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126724120455026737)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F3kst ekki a\00F0 koma \00E1 SMTP-tengingu vi\00F0 stilltan t\00F6lvup\00F3st\00FEj\00F3n.')
,p_version_scn=>2692934
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126699452214026729)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3gilt Ajax-kall!')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583391088026693)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('Engin Ajax-a\00F0ger\00F0 hefur veri\00F0 skilgreind fyrir \00EDb\00F3t %0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689972128026726)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('Engin framkv\00E6mdara\00F0ger\00F0 hefur veri\00F0 skilgreind fyrir \00EDb\00F3t %0')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583458249026693)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('Engin birtingara\00F0ger\00F0 hefur veri\00F0 skilgreind fyrir \00EDb\00F3t %0')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700346593026729)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('REST-gagnauppspretta \00EDb\00F3tar \201E%0\201C inniheldur ekki \201Ecapabilities\201C-a\00F0ger\00F0.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700246743026729)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('REST-gagnauppspretta \00EDb\00F3tar \201E%0\201C inniheldur ekki DML-a\00F0ger\00F0.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700455047026729)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('REST-gagnauppspretta \00EDb\00F3tar \201E%0\201C inniheldur ekki framkv\00E6mdara\00F0ger\00F0.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126700509865026729)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'is'
,p_message_text=>unistr('REST-gagnauppspretta \00EDb\00F3tar \201E%0\201C inniheldur ekki s\00E6kja-a\00F0ger\00F0.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580842116026692)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa \00ED PLSQL-k\00F3\00F0a kom upp vi\00F0 vinnslu \00EDb\00F3tar.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589401876026694)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Gildi ver\00F0ur a\00F0 tilgreina.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126622447061026705)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki er h\00E6gt a\00F0 breyta gagnategund %0 \00ED VARCHAR2!')
,p_version_scn=>2692919
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710637481026733)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur \201E%0\201C tilgreindur fyrir eigindina \201E%1\201C finnst ekki \00ED SQL-setningu!')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126537929100026678)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'is'
,p_message_text=>'Gildi %0 af %1 er ekki gilt JSON fylki.'
,p_version_scn=>2692904
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126687864536026725)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'is'
,p_message_text=>unistr('Fyrirspurn me\00F0 lista af gildum (LOV) e\00F0a nefndan lista af gildum ver\00F0ur a\00F0 tilgreina fyrir %0.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126689451329026726)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'is'
,p_message_text=>unistr('Rangur fj\00F6ldi d\00E1lka valinn \00ED LOV SQL-fyrirspurninni fyrir %0. Sj\00E1 d\00E6mi um gildar setningar.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710496044026733)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'is'
,p_message_text=>unistr('Enginn d\00E1lkur tiltekinn fyrir eigindina \201E%0\201C.')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739649680026742)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('Innslegi\00F0 gildi %0 fyrir eigindina \201E%1\201C er ekki t\00F6lulegt.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126692983068026727)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('%0 hefur ranga gagnategund \00ED SQL-setningu. D\00E1lkur# %1 er %2 en bj\00F3st vi\00F0 %3.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126710500519026733)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'is'
,p_message_text=>unistr('D\00E1lkur \201E%0\201C tilgreindur fyrir eigindina \201E%1\201C hefur gagnategund %2 en \00E6tti a\00F0 hafa %3.')
,p_version_scn=>2692933
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580050948026691)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'is'
,p_message_text=>unistr('Engin sk\00FDrsluuppsetning finnst.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126567683581026688)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'is'
,p_message_text=>unistr('Fari\00F0 yfir leyfilegan fj\00F6lda framkv\00E6mda \00ED bakgrunni fyrir %0.')
,p_version_scn=>2692909
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517982808026672)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'is'
,p_message_text=>unistr('\00D6nnur keyrsla \00E1 %0 er \00FEegar \00ED gangi.')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126517824215026672)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'is'
,p_message_text=>unistr('\00D6nnur keyrsla \00E1 %0 er \00FEegar \00ED gangi fyrir samhengi %1.')
,p_version_scn=>2692900
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126532826746026676)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'is'
,p_message_text=>unistr('Skr\00E1r sem hla\00F0i\00F0 var upp eru ekki s\00FDnilegar \00ED vinnusetu fyrir framkv\00E6md \00E1 %0.')
,p_version_scn=>2692903
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645359048026712)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'is'
,p_message_text=>unistr('Eiginleikann Compute Sum er ekki h\00E6gt a\00F0 nota me\00F0 sk\00FDrslum sem byggjast \00E1 REST-gagnauppruna.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126607027295026700)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('ERR-2904 Gat ekki stillt gildi fl\00FDtilei\00F0ar.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612055688026702)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa: \00D3\00FEekkt tegund fl\00FDtilei\00F0ar.')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126549740822026682)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'is'
,p_message_text=>unistr('Leitarfyrirspurnin er of l\00F6ng.')
,p_version_scn=>2692907
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126601124375026698)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki t\00F3kst a\00F0 s\00E6kja authentication_scheme \00ED kerfishluta %0.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126609128543026701)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Gat ekki s\00F3tt \00EDhlut %0.')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126679469818026723)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'is'
,p_message_text=>unistr('Au\00F0kenni leigjanda er n\00FA \00FEegar til fyrir n\00FAverandi setu.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126612387816026702)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'is'
,p_message_text=>unistr('T\00F6lvup\00F3stfang')
,p_version_scn=>2692916
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739145240026742)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'is'
,p_message_text=>unistr('Au\00F0kenning mist\00F3kst.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126639720197026710)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'is'
,p_message_text=>unistr('Ein e\00F0a fleiri k\00F6kur stilltar \00ED apex_util.g_request_cookies innihalda \00F3gild gildi.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126621614405026705)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'is'
,p_message_text=>unistr('Svari\00F0 fr\00E1 UDDI-skr\00E1nni var \00F3gilt.')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126580984358026692)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'is'
,p_message_text=>unistr('Uppgefin sl\00F3\00F0 v\00EDsar ekki \00E1 gilt WSDL-skjal.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583757811026693)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'is'
,p_message_text=>unistr('WSDL-skjali\00F0 inniheldur margar SOAP-bindingar. &PRODUCT_NAME. sty\00F0ur bara WSDL me\00F0 eina SOAP-bindingu. Smelltu \00E1 Stofna vef\00FEj\00F3nustu me\00F0 handvirkum tilv\00EDsunum til a\00F0 halda \00E1fram a\00F0 stofna tilv\00EDsun fyrir \00FEessa \00FEj\00F3nustu.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126659396885026716)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'is'
,p_message_text=>unistr('Svari\00F0 fr\00E1 \00FEj\00F3nustunni var ekki XML.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739005292026742)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'is'
,p_message_text=>unistr('OAuth-a\00F0gangst\00E1kn er ekki tilt\00E6kt e\00F0a \00FAtrunni\00F0.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126703530535026730)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'is'
,p_message_text=>unistr('Fari\00F0 hefur veri\00F0 fram yfir h\00E1marksfj\00F6lda fyrirspurna til vef\00FEj\00F3nustu fyrir hvert vinnusv\00E6\00F0i. Vinsamlegast hafi\00F0 samband vi\00F0 stj\00F3rnandann.')
,p_version_scn=>2692932
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126739226686026742)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEj\00F3nn svara\00F0i me\00F0 \00F3studdri tegund OAuth-t\00E1kns.')
,p_version_scn=>2692939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126583173795026692)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'is'
,p_message_text=>unistr('WSDL-skjali\00F0 innih\00E9lt ekki bindingu fyrir SOAP sem er krafist til a\00F0 b\00E6ta vi\00F0 tilv\00EDsuninni.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126578509275026691)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEetta WSDL krefst au\00F0kenningarskilr\00EDkja. Gef\00F0u upp notandanafn og a\00F0gangsor\00F0 a\00F0 ne\00F0an.')
,p_version_scn=>2692910
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126589520465026694)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'is'
,p_message_text=>unistr('Birtingarv\00E9lin gat ekki skili\00F0 WSDL-skjali\00F0. Smelltu \00E1 Stofna vef\00FEj\00F3nustu me\00F0 handvirkum tilv\00EDsunum til a\00F0 halda \00E1fram a\00F0 stofna tilv\00EDsun fyrir \00FEessa \00FEj\00F3nustu.')
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126662394984026717)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'is'
,p_message_text=>unistr('Ekki h\00E6gt a\00F0 keyra uppf\00E6rslu.')
,p_version_scn=>2692925
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688131935026725)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'is'
,p_message_text=>unistr('Skilad\00E1lkur og birtingard\00E1lkur lista af gildum eru s\00E1 sami!')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126688098751026725)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('Listi af gildum hefur ekki skilad\00E1lk.')
,p_version_scn=>2692931
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615769136026703)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 a\00F0 s\00E6kja gildi d\00E1lks: %0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640616690026711)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'is'
,p_message_text=>unistr('N\00FAverandi g\00F6gn \00E1 t\00F6flusni\00F0i eru of g\00F6mul; upprunag\00F6gnunum hefur veri\00F0 breytt.<br/> Smelli\00F0 <strong><a href="%0">h\00E9r</a></strong> til a\00F0 hafna breytingunum og hla\00F0a aftur g\00F6gnin \00FAr gagnagrunninum.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595800471026696)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 \00E1kv\00F6r\00F0un s\00ED\00F0uskiptingarstrengs')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595743277026696)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('get ekki \00E1kvar\00F0a\00F0 fyrirs\00F6gn fyrirspurnarinnar:'),
'%0'))
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595933405026696)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'is'
,p_message_text=>unistr('villa vi\00F0 a\00F0 skipta \00FAt sk\00FDrsluf\00F3tum')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596033747026696)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('ekki t\00F3kst a\00F0 \00FE\00E1tta SQL-fyrirspurn:'),
'%0',
'%1'))
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602195615026698)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'is'
,p_message_text=>unistr('\00D3ska\00F0 eftir minnstu r\00F6\00F0 %0, ra\00F0ir fundust en eru ekki s\00FDndar: %1')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598526138026697)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'is'
,p_message_text=>unistr('d\00E1lkur fyrirspurnar #%0 (%1) er \00F3gildur, d\00E1lkar sem nota HTML \00FEurfa  samnefni')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126615610862026703)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'is'
,p_message_text=>unistr('Villa vi\00F0 a\00F0 s\00E6kja fyrirsagnir fyrirspurnar: %0')
,p_version_scn=>2692917
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596185204026696)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('sk\00FDrsluvilla:'),
'%0'))
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126636294029026709)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'is'
,p_message_text=>unistr('Ra\00F0a eftir \00FEessum d\00E1lki')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598623913026697)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'is'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Ekki er h\00E6gt a\00F0 \00FE\00E1tta fyrirspurn, athuga\00F0u uppbyggingu fyrirspurnarinnar.'),
'(%0)',
'</p>'))
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640796251026711)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'is'
,p_message_text=>unistr('\00DEessi skj\00E1mynd inniheldur \00F3vista\00F0ar breytingar. \00DDti\00F0 \00E1 \201EOk\201C til a\00F0 halda \00E1fram \00E1n \00FEess a\00F0 vista breytingarnar. ')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126645204613026712)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'is'
,p_message_text=>unistr('S\00ED\00F0uskiptingarskema sk\00FDrslu (%0) er ekki stutt me\00F0 v\00F6ldum gagnauppruna.')
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126598442127026697)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'is'
,p_message_text=>unistr('d\00E1lkur fyrirspurnar #%0 (%1) er \00F3gildur, noti\00F0 samnefni d\00E1lks \00ED sta\00F0inn')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602259137026698)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'is'
,p_message_text=>unistr('r\00F6\00F0 (ra\00F0ir) %0 - %1 af fleiri en %2')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126642742423026711)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'is'
,p_message_text=>'%0 - %1 af fleiri en %2'
,p_version_scn=>2692922
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126602024927026698)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'is'
,p_message_text=>unistr('r\00F6\00F0 (ra\00F0ir) %0 - %1 af %2')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126582869470026692)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'is'
,p_message_text=>'%0 - %1 af %2'
,p_version_scn=>2692912
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126596278594026697)
,p_name=>'Y'
,p_message_language=>'is'
,p_message_text=>'J'
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126603579483026699)
,p_name=>'YEAR'
,p_message_language=>'is'
,p_message_text=>unistr('\00E1r')
,p_version_scn=>2692914
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126595411264026696)
,p_name=>'YEARS'
,p_message_language=>'is'
,p_message_text=>unistr('\00E1r')
,p_version_scn=>2692913
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(126640883287026711)
,p_name=>'YES'
,p_message_language=>'is'
,p_message_text=>unistr('J\00E1')
,p_version_scn=>2692922
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
 p_id=>wwv_flow_imp.id(109678305570583962.4545)
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
 p_id=>1.4545
,p_name=>unistr('Skilabo\00F0')
,p_alias=>'MESSAGES'
,p_step_title=>unistr('Skilabo\00F0')
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
