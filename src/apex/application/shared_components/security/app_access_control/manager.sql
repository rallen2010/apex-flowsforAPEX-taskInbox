prompt --application/shared_components/security/app_access_control/manager
begin
--   Manifest
--     ACL ROLE: Manager
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1300871798938927
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'FLOWSDEV'
);
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(11301217168939442)
,p_static_id=>'MANAGER'
,p_name=>'Manager'
,p_description=>'All approving managers'
);
wwv_flow_api.component_end;
end;
/
