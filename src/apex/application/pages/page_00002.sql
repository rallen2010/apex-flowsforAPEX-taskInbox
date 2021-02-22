prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1300871798938927
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'FLOWSDEV'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(11041915601621420)
,p_name=>'Flows for APEX Process Inbox'
,p_alias=>'MY-PROCESS-INBOX'
,p_step_title=>'My Process Inbox'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'FLOWSDEV'
,p_last_upd_yyyymmddhh24miss=>'20210218202842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8604051849123124)
,p_plug_name=>'My Task Inbox'
,p_icon_css_classes=>'fa-inbox'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10942485866620920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11400895439989173)
,p_name=>'My Task Inbox'
,p_region_name=>'process_inbox'
,p_parent_plug_id=>wwv_flow_api.id(8604051849123124)
,p_template=>wwv_flow_api.id(10957391055620952)
,p_display_sequence=>30
,p_region_css_classes=>'js-react-on-refresh'
,p_icon_css_classes=>'fa-inbox'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with data as (',
'select /*+ MATERIALIZE */',
'       SBFL_ID,',
'       SBFL_PRCS_ID,',
'       SBFL_PROCESS_NAME,',
'       SBFL_DGRM_ID,',
'       SBFL_DGRM_NAME,',
'       SBFL_ROUTE,',
'       SBFL_ROUTE_NAME,',
'       SBFL_LAST_COMPLETED,',
'       SBFL_LAST_COMPLETED_NAME,',
'       SBFL_CURRENT,',
'       SBFL_CURRENT_NAME,',
'       LINK_TEXT,',
'       LINK_ICON,',
'       SBFL_LAST_UPDATE,',
'       SBFL_STATUS,',
'       SBFL_CURRENT_LANE,',
'       SBFL_CURRENT_LANE_NAME,',
'       SBFL_RESERVATION,',
'       RESERVATION_HTML',
'  from FLOW_MY_TASK_INBOX_P0002_VW',
')',
'select * from data'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(10983636092621020)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11404798472989456)
,p_query_column_id=>1
,p_column_alias=>'SBFL_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11405537763989458)
,p_query_column_id=>2
,p_column_alias=>'SBFL_PRCS_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11405993279989458)
,p_query_column_id=>3
,p_column_alias=>'SBFL_PROCESS_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Process Reference'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_PRCS_ID,P3_PRCS_NAME:#SBFL_PRCS_ID#,#SBFL_PROCESS_NAME#'
,p_column_linktext=>'#SBFL_PROCESS_NAME#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11406350294989458)
,p_query_column_id=>4
,p_column_alias=>'SBFL_DGRM_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11406747339989459)
,p_query_column_id=>5
,p_column_alias=>'SBFL_DGRM_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Business Process'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11407994201989460)
,p_query_column_id=>6
,p_column_alias=>'SBFL_ROUTE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11408310471989460)
,p_query_column_id=>7
,p_column_alias=>'SBFL_ROUTE_NAME'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11408792739989461)
,p_query_column_id=>8
,p_column_alias=>'SBFL_LAST_COMPLETED'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11409134622989461)
,p_query_column_id=>9
,p_column_alias=>'SBFL_LAST_COMPLETED_NAME'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11409515531989462)
,p_query_column_id=>10
,p_column_alias=>'SBFL_CURRENT'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11409933286989462)
,p_query_column_id=>11
,p_column_alias=>'SBFL_CURRENT_NAME'
,p_column_display_sequence=>13
,p_column_heading=>'Task'
,p_use_as_row_header=>'N'
,p_column_link=>'#LINK_TEXT#'
,p_column_linktext=>'#SBFL_CURRENT_NAME#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11410318777989462)
,p_query_column_id=>12
,p_column_alias=>'LINK_TEXT'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13400127463333801)
,p_query_column_id=>13
,p_column_alias=>'LINK_ICON'
,p_column_display_sequence=>15
,p_column_heading=>'Go To Task'
,p_use_as_row_header=>'N'
,p_column_link=>'#LINK_TEXT#'
,p_column_linktext=>'<button type="button" class="t-Button t-Button--noLabel t-Button--icon" title="Go to next step" aria-label="Go to next step" ><span aria-hidden="true" class="fa #LINK_ICON#"></span></button>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11411125380989463)
,p_query_column_id=>14
,p_column_alias=>'SBFL_LAST_UPDATE'
,p_column_display_sequence=>16
,p_column_heading=>'Last Update'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11411569683989463)
,p_query_column_id=>15
,p_column_alias=>'SBFL_STATUS'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11412368879989464)
,p_query_column_id=>16
,p_column_alias=>'SBFL_CURRENT_LANE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11412787620989464)
,p_query_column_id=>17
,p_column_alias=>'SBFL_CURRENT_LANE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Lane'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11413153212989465)
,p_query_column_id=>18
,p_column_alias=>'SBFL_RESERVATION'
,p_column_display_sequence=>18
,p_column_heading=>'Reserved By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11413551816989465)
,p_query_column_id=>19
,p_column_alias=>'RESERVATION_HTML'
,p_column_display_sequence=>19
,p_column_heading=>'Reserve'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11400940022989173)
,p_plug_name=>'My Task Inbox Finder'
,p_parent_plug_id=>wwv_flow_api.id(8604051849123124)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10957391055620952)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(11400895439989173)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_07=>'Y'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_12=>'10000'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25055468266224560)
,p_plug_name=>'Flows for APEX Task Inbox'
,p_icon_css_classes=>'fa-inbox fa-4x fam-play fam-is-success'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10938327256620917)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Flows for APEX Task Inbox'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11404252353989200)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11400895439989173)
,p_button_name=>'Refresh'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(11019533711621149)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR,2::'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13400775782333807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8604051849123124)
,p_button_name=>'MyProcesses'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(11019533711621149)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go To My Processes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-sitemap-horizontal fam-information '
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11401495847989186)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11400940022989173)
,p_prompt=>'Search'
,p_source=>'SBFL_PROCESS_NAME,SBFL_DGRM_NAME,SBFL_STARTING_OBJECT,SBFL_STARTING_OBJECT_NAME,SBFL_ROUTE,SBFL_ROUTE_NAME,SBFL_LAST_COMPLETED,SBFL_LAST_COMPLETED_NAME,SBFL_CURRENT,SBFL_CURRENT_NAME,LINK_TEXT,SBFL_CURRENT_TAG_NAME,SBFL_STATUS,SBFL_NEXT_STEP_TYPE,SBF'
||'L_CURRENT_LANE,SBFL_CURRENT_LANE_NAME,SBFL_RESERVATION,RESERVATION_HTML'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11401834248989191)
,p_name=>'P2_SBFL_PROCESS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11400940022989173)
,p_prompt=>'Process Reference'
,p_source=>'SBFL_PROCESS_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11402224254989192)
,p_name=>'P2_SBFL_DGRM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11400940022989173)
,p_prompt=>'Business Process'
,p_source=>'SBFL_DGRM_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11402684558989192)
,p_name=>'P2_SBFL_CURRENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11400940022989173)
,p_prompt=>'Task'
,p_source=>'SBFL_CURRENT_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11403099441989193)
,p_name=>'P2_SBFL_CURRENT_LANE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11400940022989173)
,p_prompt=>'Lane'
,p_source=>'SBFL_CURRENT_LANE_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11403414871989195)
,p_name=>'P2_SBFL_RESERVATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11400940022989173)
,p_prompt=>'Reservation'
,p_source=>'SBFL_RESERVATION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Not Reserved'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8604143480123125)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11404252353989200)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8604244601123126)
,p_event_id=>wwv_flow_api.id(8604143480123125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11400895439989173)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8604376732123127)
,p_name=>'clickable-action clicked'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.clickable-action'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8604468618123128)
,p_event_id=>wwv_flow_api.id(8604376732123127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var myElement = apex.jQuery( this.triggeringElement );',
'var myAction  = myElement.data( "action" );',
'var myProcess = myElement.data( "prcs" );',
'var mySubflow = myElement.data( "sbfl" );',
'',
'var result = apex.server.process( "PROCESS_ACTION", {',
'  x01: myAction,',
'  x02: myProcess,',
'  x03: mySubflow',
'});',
'result.',
'  done( function( data ) {',
'    if (!data.success) {',
'      apex.debug.error( "Something went wrong..." );',
'    } else {',
'      apex.region( "process_inbox" ).refresh();',
'    }',
'  }).fail( function( jqXHR, textStatus, errorThrown ) {',
'    apex.debug.error( "Total fail...", jqXHR, textStatus, errorThrown );',
'  });  '))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8604513665123129)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESS_ACTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'flow_my_task_inbox_app.process_action',
'(',
'  pi_action     => apex_application.g_x01',
', pi_prcs_id    => apex_application.g_x02',
', pi_sbfl_id    => apex_application.g_x03    ',
');'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
