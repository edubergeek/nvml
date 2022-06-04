export PS1="[\u@\h \W]\$"
set -o vi
[ -f /tmp/Xauthority ] && cat /tmp/Xauthority >/root/.Xauthority
alias jrun='jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --no-browser .'

