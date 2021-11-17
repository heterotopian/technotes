
=========
systemctl
=========

.. highlight:: console

:systemd:`systemctl`

General
=======

List active units::

    $ systemctl list-units

List loaded units::

    $ systemctl list-units -a

List active service units::

    $ systemctl list-units -t service

List unit files::

    $ systemctl list-unit-files

Check if unit is running::

    $ systemctl is-active unit



Environment
===========

**System** service manager environment::

    $ systemctl show-environment
    LANG=en_US.UTF-8
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin

**User** service manager environment::

    $ systemctl --user show-environment
    HOME=/home/cstevens
    KRB5CCNAME=FILE:/tmp/krb5cc_641738498
    LANG=en_US.UTF-8
    LOGNAME=cstevens
    PATH=/usr/share/centrifydc/kerberos/bin:/usr/share/centrifydc/kerberos/bin:/home/cstevens/bin.local:/home/cstevens/bin:/home/cstevens/.okta/bin:/usr/share/centrifydc/kerberos/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/share/centrifydc/kerberos/bin:/usr/share/centrifydc/kerberos/sbin:/opt/puppetlabs/bin
    SHELL=/bin/bash
    USER=cstevens
    XDG_RUNTIME_DIR=/run/user/641738498
    QT_ACCESSIBILITY=1
    PYCONFIG_SETTING_CONSULADDR=https://consul.service.dev.acadian-asset.com:443
    VAULT_USER_ID=dd5aade0-868f-4911-ba00-7495f0097883
    SLURM_STRICT_MEMORY=TRUE
    KV_DJANGOREDISSTORE_ENVIRONMENT=production
    XDG_DATA_DIRS=/usr/local/share:/usr/share:/var/lib/snapd/desktop
    BROWSER=/home/cstevens/.vscode-server/bin/3a6960b964327f0e3882ce18fcebd07ed191b316/bin/helpers/browser.sh
    CDC_JOINED_DC=bos-dc02.acadian-asset.com
    CDC_JOINED_DOMAIN=acadian-asset.com
    CDC_JOINED_SITE=Boston
    CDC_JOINED_ZONE=DC=acadian-asset,DC=com
    CDC_LOCALHOST=bos-rnd3.acadian-asset.com
    CDC_PREW2KHOST=bos-rnd3
    COLORTERM=truecolor
    COLUMNS=199
    DA_SESSION_ID_AUTH=13b1dac5-1b8c-774f-b2a0-98cad8e95ebc
    DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/641738498/bus
    DISPLAY=localhost:22.0
    ELECTRON_NO_ATTACH_CONSOLE=1
    ELECTRON_RUN_AS_NODE=1
    GITLAB_TOKEN=zy24Ke6Z4xX5LnDvLr3E
    GIT_ASKPASS=/home/cstevens/.vscode-server/bin/3a6960b964327f0e3882ce18fcebd07ed191b316/extensions/git/dist/askpass.sh
    GNOME_TERMINAL_SCREEN=/org/gnome/Terminal/screen/4c9baae9_53e2_457f_b9f0_ac927cc48d47
    GNOME_TERMINAL_SERVICE=:1.15
    HISTFILESIZE=10000
    HISTSIZE=5000
    JAVA_HOME=/usr/lib/jvm/jdk1.7.0_11
    JFROG_APIKEY=AKCp5bB3N8LhrFmQuEaGQjiqmvEQW9pJ98yPL1pU8nJ7DtDcwycXv2PmZpB2tvWVd8mAxut2n
    JFROG_INDEXARG=--index=https://aam.jfrog.io/artifactory/api/pypi/pybuild/simple
    JFROG_INDEXURL=https://aam.jfrog.io/artifactory/api/pypi/pybuild/simple
    JFROG_PYPIARG=--extra-index-url=https://pypi-artifactory.sandbox.acadian.am/aam/api/pypi/pybuild/simple
    JFROG_PYPIURL=https://pypi-artifactory.sandbox.acadian.am/aam/api/pypi/pybuild/simple
    JFROG_USERPASS=cstevens%40acadian-asset.com%3AAKCp5bB3N8LhrFmQuEaGQjiqmvEQW9pJ98yPL1pU8nJ7DtDcwycXv2PmZpB2tvWVd8mAxut2n
    LESSCLOSE=$'/usr/bin/lesspipe %s %s'
    LESSOPEN=$'| /usr/bin/lesspipe %s'
    LINES=31
    LS_COLORS=$'no=00:fi=00:di=01;34:ln=01;36:pi=01;40;33:so=01;35:bd=01;40;33:cd=01;40;33:or=01;05;37;41:mi=01;05;37;41:ex=01;32'
    MANPATH=:/opt/puppetlabs/puppet/share/man
    MKL_NUM_THREADS=1
    MOTD_SHOWN=pam
    OLDPWD=/home/cstevens
    P4CLIENT=cstevens_ws
    P4CONFIG=.p4config
    P4PORT=tcp:bos-perforce01:1666
    PS1=$'\\[\\e[1;33m\\]\\u@\\h\\[\\e[m\\] \\[\\e[1;36m\\]\\w\\[\\e[m\\] $(parse_git_branch)$ '
    PWD=/home/cstevens
    PYTHONPATH=/home/cstevens/ws/aam/latest/coreengine/src:/home/cstevens/ws/aam/latest:/home/cstevens/ws/aam/latest/runner/src:/home/cstevens/ws/aam/latest/factors/src:/home/cstevens/ws/aam/latest/python-util/src:/home/cstevens/ws/aam/latest/datalib/src:/home/cstevens/ws/aam/latest/db/src:/home/cstevens/ws/aam/latest/macro/src:/home/cstevens/ws/aam/latest/neo/src
    PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring
    SHLVL=3
    SSH_CLIENT=$'10.10.30.18 55999 22'
    SSH_CONNECTION=$'10.10.30.18 55999 10.3.102.186 22'
    SSH_TTY=/dev/pts/44
    TERM=screen-256color
    TERM_PROGRAM=vscode
    TERM_PROGRAM_VERSION=1.62.2
    TMUX=/tmp/tmux-641738498/default,187990,0
    TMUX_PANE=%145
    USER_PRINCIPAL_NAME=cstevens@ACADIAN-ASSET.COM
    VSCODE_AGENT_FOLDER=/home/cstevens/.vscode-server
    VSCODE_CWD=/home/cstevens
    VSCODE_GIT_ASKPASS_EXTRA_ARGS=
    VSCODE_GIT_ASKPASS_MAIN=/home/cstevens/.vscode-server/bin/3a6960b964327f0e3882ce18fcebd07ed191b316/extensions/git/dist/askpass-main.js
    VSCODE_GIT_ASKPASS_NODE=/home/cstevens/.vscode-server/bin/3a6960b964327f0e3882ce18fcebd07ed191b316/node
    VSCODE_GIT_IPC_HANDLE=/run/user/641738498/vscode-git-27cf537747.sock
    VSCODE_INJECT_NODE_MODULE_LOOKUP_PATH=/home/cstevens/.vscode-server/bin/3a6960b964327f0e3882ce18fcebd07ed191b316/remote/node_modules
    VSCODE_IPC_HOOK_CLI=/run/user/641738498/vscode-ipc-a14cf277-446c-4080-8029-1dc2a0d01807.sock
    VTE_VERSION=6003
    WORKSPACE=/home/cstevens/ws
    XDG_SESSION_CLASS=user
    XDG_SESSION_ID=1080
    XDG_SESSION_TYPE=tty
    _=/usr/bin/dbus-update-activation-environment
    editor=vim
