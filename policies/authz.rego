package authz

default allow := false

allow if {
  "admin" in input.user.roles
}

allow if {
  input.action == "read"
}