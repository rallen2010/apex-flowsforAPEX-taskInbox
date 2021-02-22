CREATE OR REPLACE  VIEW  FLOW_MY_TASK_INBOX_p0002_VW as
select sbfl_id
        , sbfl_sbfl_id
        , sbfl_prcs_id
        , sbfl_process_name
        , sbfl_dgrm_id
        , sbfl_dgrm_name
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
        , case sbfl_current_tag_name
            when 'bpmn:userTask' then 
                'fa-box-arrow-in-ne'
            else
                'fa-share-alt'
          end link_icon
        , sbfl_current_tag_name
        , sbfl_last_update
        , sbfl_status
        , sbfl_next_step_type
        , sbfl_current_lane
        , sbfl_current_lane_name
        , sbfl_reservation
        , case 
            when sbfl.sbfl_status = 'running' then 
                '<button type="button" class="clickable-action t-Button t-Button--noLabel t-Button--icon" ' ||
                case 
                    when sbfl.sbfl_reservation is null then 'title="Reserve Step" aria-label="Reserve Step" '
                    when sbfl.sbfl_reservation is not null then 'title="Release Reservation" aria-label="Release Reservation" '
                end || 'data-prcs="' || sbfl.sbfl_prcs_id || '" data-sbfl="' || sbfl.sbfl_id || '" data-action="' ||
                case 
                    when sbfl.sbfl_reservation is null then 'reserve'
                    when sbfl.sbfl_reservation is not null then 'release'
                end || '"><span aria-hidden="true" class="' ||
                case
                    when sbfl.sbfl_reservation is null then  'fa fa-lock'
                    when sbfl.sbfl_reservation is not null then 'fa fa-unlock'
                end || '"></span></button>'  
            else
                null  
            end reservation_html
     from flow_subflows_vw sbfl, apex_appl_acl_user_roles roles
    where sbfl_status = 'running'
      and (sbfl.sbfl_current_lane_name = roles.role_name
            and roles.user_name = SYS_CONTEXT('APEX$SESSION','APP_USER')
            and roles.workspace_id = SYS_CONTEXT('APEX$SESSION','WORKSPACE_ID')
            and roles.role_name not in ('Originator', 'Manager'))
       or 
        (sbfl.sbfl_current_lane_name = roles.role_name
        and roles.user_name = SYS_CONTEXT('APEX$SESSION','APP_USER')
        and roles.workspace_id = SYS_CONTEXT('APEX$SESSION','WORKSPACE_ID')
        and roles.role_name = 'Originator'
        and exists (select prov_var_vc2
                    from  flow_process_variables prov
                    where prov.prov_prcs_id = sbfl.sbfl_prcs_id
                        and prov.prov_var_vc2 = SYS_CONTEXT('APEX$SESSION','APP_USER')
                        and prov.prov_var_name = 'Originator'))
       or
      (sbfl.sbfl_current_lane_name = roles.role_name
      and roles.user_name = SYS_CONTEXT('APEX$SESSION','APP_USER')
      and roles.workspace_id = SYS_CONTEXT('APEX$SESSION','WORKSPACE_ID')
      and roles.role_name = 'Manager'
      and exists (select prov_var_vc2
                  from  flow_process_variables prov
                  where prov.prov_prcs_id = sbfl.sbfl_prcs_id
                    and prov.prov_var_vc2 = SYS_CONTEXT('APEX$SESSION','APP_USER')
                    and prov.prov_var_name = 'Next_Approver')
        )
with read only;
/
