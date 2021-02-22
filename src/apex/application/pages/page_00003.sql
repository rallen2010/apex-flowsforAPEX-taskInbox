prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(11041915601621420)
,p_name=>'Process Status Viewer'
,p_alias=>'PROCESS-STATUS-VIEWER'
,p_page_mode=>'MODAL'
,p_step_title=>'Process Status Viewer'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_max_width=>'1400'
,p_last_updated_by=>'FLOWSDEV'
,p_last_upd_yyyymmddhh24miss=>'20210125115836'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11600330957110006)
,p_plug_name=>'Process Status for &P3_PRCS_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10957391055620952)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FLOW_P0010_VW'
,p_query_where=>'prcs_id = :p3_prcs_id'
,p_include_rowid_column=>false
,p_plug_source_type=>'PLUGIN_COM.MTAG.APEX.BPMNVIEWER.REGION'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'DGRM_CONTENT'
,p_attribute_02=>'ALL_CURRENT'
,p_attribute_03=>':'
,p_attribute_04=>'ALL_COMPLETED'
,p_attribute_05=>':'
,p_attribute_06=>'LAST_COMPLETED'
,p_attribute_07=>':'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_attribute_10=>'Y'
,p_attribute_11=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8603883456123122)
,p_name=>'P3_PRCS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11600330957110006)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8603986365123123)
,p_name=>'P3_PRCS_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11600330957110006)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
