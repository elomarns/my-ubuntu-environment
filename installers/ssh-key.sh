# Create a new SSH key.
ssh-keygen -t ed25519 -C $EMAIL -f ~/.ssh/id_ed25519 -N "$PASSWORD"

# Start the ssh-agent in the background.
eval "$(ssh-agent -s)"

# Add the SSH key to the ssh-agent.
ssh-add ~/.ssh/id_ed25519
