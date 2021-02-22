set define '^'
set concat '.'

PROMPT >> Database Objects Installation
PROMPT >> =============================

PROMPT >> No Tables to Install

PROMPT >> Installing Task Inbox Objects
PROMPT >> =============================
PROMPT >> Installing Package Specifications
@plsql/flow_my_task_inbox_app.pks

PROMPT >> Installing Views
@views/flow_my_task_inbox_vw.sql
@views/flow_my_task_inbox_my_processes_vw.sql
@views/flow_my_task_inbox_p0002_vw.sql

PROMPT >> Installing Package Bodies
@plsql/flow_my_task_inbox_app.pkb

PROMPT >> Checking for invalid Objects
  select object_type || ': ' || object_name as invalid_object
    from user_objects
   where status = 'INVALID'
order by object_type
       , object_name
;

PROMPT >> =====================
PROMPT >> Installation Finished
PROMPT >> =====================
