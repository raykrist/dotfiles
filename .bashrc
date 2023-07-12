# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ta='tmux attach -d -t'
alias tl='tmux list-session'

if [ -f ~/bin/ssh-find-agent.sh ]; then
  . ~/bin/ssh-find-agent.sh
fi
if [ -f ~/bin/openstack_export.sh ]; then
  . ~/bin/openstack_export.sh
fi
