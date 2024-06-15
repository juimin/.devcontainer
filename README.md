# devcontainers

A boilerplate devcontainer for various projects. Built off ubuntu since it's easy

# Intended usage.

Add this as a submodule to any project. Check out a specific branch for the desired environment
and reload the container

# Installation

- Enter the top level of your project
- Run `git submodule add git@github.com:juimin/devcontainers.git .devcontainer`
    - Optionally add `-b branch/name` if you want a specific branch on the remote
    - If you don't do this, you can add the branch under the submodule entry in the git submodule file later
- Refresh VS Code or whatever is attached to your devcontainer and reload.