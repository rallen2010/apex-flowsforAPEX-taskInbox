# apex-flowsforAPEX-taskInbox

A Task Inbox application for Flows for APEX

This project creates a Task Inbox application in APEX for the Flows for APEX project.

This is designed to be a small (1-2 page) app that users have as a starting point when they are using several other APEX apps that have been instrumented for Flows for APEX.

- The Task Inbox shows you tasks that are currently waiting for you to work on.
- The My Processes Summary shows you the current status of any process instances that you originated.

## Dependancies

Currently supports Flows for APEX V5.0.1

## Setup

### Shared Authentication

The Flows for APEX My Task Inbox application is designed to be a starting point for the user, where she can see the task waiting for her, and can then click through to execute the tasks in other APEX applications.

The Flows for APEX My Task Inbox application and the other applications should be in the same APEX workspace, and should use shared authentication across all of the applications.  To set this, in each application, go to Shared Components > Authentication Scheme.  Select your authentication scheme and open it.  Scroll down to the Session Sharing tab, and select Workspace Sharing.

### Mapping APEX roles to BPMN Lanes

The Flows for APEX My Task Inbox application shows a user all of the current tasks that are in BPMN Lanes where the Lane Name matches an APEX role granted to the user.

As shipped, there are 2 BPMN Lanes that are treated specially.  These are:

- Lane 'Originator' which needs to match an APEX role granted to the user named 'Originator' PLUS the process instance needs to have a process variable defined with a variable name of 'Originator' and a content of type varchar2 containing the user's APEX login name.
- Lane 'Manager' which needs to match an APEX role granted to the user named 'Manager' PLUS the process instance needs to have a process defined with a variable name of 'Next Approver' and a content of type varchar2 containing the user's APEX login name.

The Originator special lane handle a process where a request can be originated by anyone, but only the oroginator of that process instance should be involved in the process.  For example, anybody in the organisation should be able to create an expense report, but once I create my expense report, the only person who should see it in the originator lane is me.

The Manager lane is used to route approvals to the originator's approving manager.  Again, this is driven by membership of the 'Manager' role PLUS having been defined as THE manager for the specific Originator's expense claims.

As part of initializing a process instance, the application would set the 'Originator' and 'Next Approver' process variables.

Feel free to customise these role names or add new 'special' lanes, as appropriate to your organization.  You will need to modify the roles in the APEX app, as well as in the underlying database views shipped with Flows for APEX My Task Inbox.


