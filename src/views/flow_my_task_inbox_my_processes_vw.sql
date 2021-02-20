create or replace view flow_my_task_inbox_my_processes as 
 select sbfl.sbfl_dgrm_name
      , sbfl.sbfl_prcs_id
      , sbfl.sbfl_process_name
      , sbfl.sbfl_current_name
      , sbfl.sbfl_current_lane_name
      , sbfl.sbfl_reservation
      , sbfl.sbfl_last_update
      , sbfl.sbfl_status
      , sbfl.sbfl_prcs_init_ts
   from flow_task_inbox_vw sbfl
   join flow_process_variables prov
     on prov.prov_prcs_id = sbfl.sbfl_prcs_id
  where prov.prov_var_type = 'VARCHAR2'
    and prov.prov_var_name = 'Originator'
    and prov.prov_var_vc2 = SYS_CONTEXT('APEX$SESSION','APP_USER')
 UNION
 select prcs.dgrm_name
      , prcs.prcs_id
      , prcs.prcs_name
      , null
      , null 
      , null 
      , prcs.prcs_last_update 
      , prcs.prcs_status
      , prcs.prcs_init_ts
   from flow_instances_vw prcs
   join flow_process_variables prov
     on prov.prov_prcs_id = prcs.prcs_id
  where prcs_status = 'completed'
    and prov.prov_var_type = 'VARCHAR2'
    and prov.prov_var_name = 'Originator'
    and prov.prov_var_vc2 = SYS_CONTEXT('APEX$SESSION','APP_USER')
with read only
;