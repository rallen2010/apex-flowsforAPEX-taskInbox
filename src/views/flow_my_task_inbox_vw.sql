create or replace view flow_my_task_inbox_vw
as 
   select sbfl_id
        , sbfl_sbfl_id
        , sbfl_prcs_id
        , sbfl_process_name
        , sbfl_dgrm_id
        , sbfl_dgrm_name
        --, sbfl_dgrm_version
        --, sbfl_dgrm_status
        --, sbfl_dgrm_category
        , sbfl_starting_object
        , sbfl_starting_object_name
        , sbfl_route
        , sbfl_route_name
        , sbfl_last_completed
        , sbfl_last_completed_name
        , sbfl_current
        , sbfl_current_name
        , case sbfl_current_tag_name
            when 'bpmn:userTask' then
              flow_usertask_pkg.get_url
              (
                pi_prcs_id => sbfl_prcs_id
              , pi_sbfl_id => sbfl_id
              , pi_objt_id => sbfl_current_objt_id
              )
            else null
          end link_text
        , sbfl_current_tag_name
        , sbfl_last_update
        , sbfl_status
        , sbfl_current_lane
        , sbfl_current_lane_name
        , sbfl_reservation
     from flow_subflows_vw sbfl
     join apex_appl_acl_user_roles roles
       on sbfl.sbfl_current_lane_name = roles.role_static_id
    where sbfl_status = 'running'
      and roles.user_name = SYS_CONTEXT('APEX$SESSION','APP_USER')
      and roles.workspace_id = SYS_CONTEXT('APEX$SESSION','WORKSPACE_ID')
with read only;
/