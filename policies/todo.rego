package todo

default allow = false

# Admin can do anything
allow if {
    input.user.role == "admin"
}

# Users can read their own todos
allow if {
    input.action == "read"
    input.resource.owner_id == input.user.id
}

# Users can create todos
allow if {
    input.action == "create"
    input.user.role == "user"
}

# Only owner can update
allow if {
    input.action == "update"
    input.resource.owner_id == input.user.id
}