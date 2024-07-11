# Set the environment variables for my environment.
export MY_ENVIRONMENT_DIR=$HOME/Dropbox/Projetos/Ambiente/my-ubuntu-environment
export MY_ENVIRONMENT_CONFIG_DIR=$MY_ENVIRONMENT_DIR/config

# Set Oh My Zsh.
source $MY_ENVIRONMENT_CONFIG_DIR/oh-my-zsh

# Set shell environment.
source $MY_ENVIRONMENT_CONFIG_DIR/shell

# Activate asdf.
. $HOME/.asdf/asdf.sh

# Set the prompt.
source $MY_ENVIRONMENT_CONFIG_DIR/prompt

# Add aliases.
source $MY_ENVIRONMENT_CONFIG_DIR/aliases

# Add projects support.
source $MY_ENVIRONMENT_CONFIG_DIR/projects

# Add notes support.
source $MY_ENVIRONMENT_CONFIG_DIR/notes

# Add code snippets support.
source $MY_ENVIRONMENT_CONFIG_DIR/code-snippets

# Purging autojump database.
j --purge

clear
