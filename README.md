# mobile-delivery-tools
Scripts for the common mobile delivery developer.

# Getting Started
Running this script will put 2 global ENV variables that are being used by the rest of the scripts.
- Run setup.sh: ./setup.sh **_<USER_NAME>_ _<DOCKER_STACK_NAME>_**
  - You need to provide 2 parameters:
    - USER_NAME - your user name on the local machine (the name appears under Users/ dir)
    - DOCKER_STACK_NAME - docker stack you are using (global-sonic/local-dev/sonic-tests)
- Look inside `~/.zshrc` and search for `export USER_NAME=your_user_name` and `export DOCKER_STACK_NAME=docker_stack_name_you_use`
- If things looks fine, you can now reload zsh using: `source ~/.zshrc`

# Example
`./setup.sh nitaykufet global-sonic`