create or replace package flow_my_task_inbox_app as 

  procedure process_action
  (
    pi_action  in varchar2
  , pi_prcs_id in flow_processes.prcs_id%type
  , pi_sbfl_id in flow_subflows.sbfl_id%type
  );

end flow_my_task_inbox_app;
/