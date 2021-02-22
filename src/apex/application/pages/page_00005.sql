prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(11041915601621420)
,p_name=>'My Process Controller'
,p_alias=>'MY-PROCESS-CONTROLLER'
,p_page_mode=>'MODAL'
,p_step_title=>'My Process Controller'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'FLOWSDEV'
,p_last_upd_yyyymmddhh24miss=>'20210218215338'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17501998286537048)
,p_plug_name=>'My Current Task'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10957391055620952)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_plug_display_when_condition=>'P0_PROCESS_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17502241406537052)
,p_plug_name=>'Initiate New Process'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10957391055620952)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8605478239123138)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17501998286537048)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11019480274621149)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8605732674123141)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17501998286537048)
,p_button_name=>'task_complete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11019480274621149)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Task Complete'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8606162994123145)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17502241406537052)
,p_button_name=>'Initiate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11019480274621149)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start New Process'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17508551265758806)
,p_branch_name=>'Return to Home Page'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P0_PROCESS_ID,P0_SUBFLOW_ID:,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8605166900123135)
,p_name=>'P5_CURRENT_PROCESS_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17501998286537048)
,p_prompt=>'Current Process Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11018335745621143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8605219703123136)
,p_name=>'P5_CURRENT_STEP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17501998286537048)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11018335745621143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8605326966123137)
,p_name=>'P5_CURRENT_INSTANCE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17501998286537048)
,p_prompt=>'Current Instance Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11018335745621143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8605888287123142)
,p_name=>'P5_DGRM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17502241406537052)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dgrm_name d, dgrm_name r',
'from flow_diagrams'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11018335745621143)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8605958831123143)
,p_name=>'P5_INSTANCE_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17502241406537052)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11018335745621143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8606040260123144)
,p_name=>'P5_NEW_PRCS_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17502241406537052)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8605531042123139)
,p_name=>'Cancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8605478239123138)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8605618901123140)
,p_event_id=>wwv_flow_api.id(8605531042123139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8606557287123149)
,p_name=>'Initialize Page'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8606614467123150)
,p_event_id=>wwv_flow_api.id(8606557287123149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CURRENT_PROCESS_NAME,P5_CURRENT_INSTANCE_NAME,P5_CURRENT_STEP'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sbfl_dgrm_name,',
'       sbfl_process_name,',
'       sbfl_current_name',
'  from flow_subflows_vw',
' where sbfl_id =:P0_SUBFLOW_ID',
'   and sbfl_prcs_id = :P0_PROCESS_ID'))
,p_attribute_07=>'P0_PROCESS_ID, P0_SUBFLOW_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17508091066758801)
,p_name=>'Show Start New Process Button'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_INSTANCE_DESCRIPTION'
,p_condition_element=>'P5_INSTANCE_DESCRIPTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17508131477758802)
,p_event_id=>wwv_flow_api.id(17508091066758801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(8606162994123145)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17508247173758803)
,p_event_id=>wwv_flow_api.id(17508091066758801)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(8606162994123145)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17508342770758804)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Complete Step'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'flow_api_pkg.flow_complete_step',
'    ( p_process_id => :P0_PROCESS_ID',
'    , p_subflow_id => :P0_SUBFLOW_ID',
'    );'))
,p_process_error_message=>'Error Completing Process Step'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8605732674123141)
,p_process_success_message=>'Process Step Completed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17508455278758805)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initiate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' :p5_new_prcs_id := flow_api_pkg.flow_create( pi_dgrm_name => :p5_dgrm',
'                                            , pi_prcs_name => :p5_instance_description);',
' ',
' flow_api_pkg.flow_start(p_process_id => :p5_new_prcs_id);',
'     ',
' '))
,p_process_error_message=>'Error Creating New Process'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'New Process Initiated'
);
wwv_flow_api.component_end;
end;
/
