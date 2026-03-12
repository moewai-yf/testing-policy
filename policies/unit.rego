package unit

allow if  {
  role := data.rbac.user_roles[input.actor][_]
  perm := data.rbac.role_permissions[role][_]

  perm.resource == input.resource
  perm.action == input.action
}