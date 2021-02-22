prompt --application/shared_components/security/app_access_control/finance
begin
--   Manifest
--     ACL ROLE: Finance
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
 p_id=>wwv_flow_api.id(11301322162941200)
,p_static_id=>'FINANCE'
,p_name=>'Finance'
,p_description=>'Members of Finance team.'
);
wwv_flow_api.component_end;
end;
/
