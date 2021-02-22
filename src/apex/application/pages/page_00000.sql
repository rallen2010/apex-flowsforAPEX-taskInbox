prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(11041915601621420)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'FLOWSDEV'
,p_last_upd_yyyymmddhh24miss=>'20210219172445'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8606232871123146)
,p_plug_name=>'My Process'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="display:none"'
,p_plug_template=>wwv_flow_api.id(10957391055620952)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8606384688123147)
,p_name=>'P0_PROCESS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8606232871123146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8606421499123148)
,p_name=>'P0_SUBFLOW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8606232871123146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
