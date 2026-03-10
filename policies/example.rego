package authz

default allow := false

allow if {
  "example" in input.user.roles
}

allow if {
  input.action == "read"
}