package todo.authz

default allow = false

# Admin can do anything
allow {
    input.user.role == "admin"
}

# Users can read their own todos
allow {
    input.action == "read"
    input.resource.owner_id == input.user.id
}

# Users can create todos
allow {
    input.action == "create"
    input.user.role == "user"
}

# Only owner can update
allow {
    input.action == "update"
    input.resource.owner_id == input.user.id
}