
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

System Service Manager
----------------------

::

    $ systemctl show-environment
    LANG=en_US.UTF-8
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin


User Service Manager
--------------------

::

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
    ...


Environment Generators
----------------------

StackOverflow:
`How is the PATH environment variable set in systemd user instance? <https://superuser.com/questions/1649684/how-is-the-path-environment-variable-set-in-systemd-user-instance>`_

#. .. compound::

        Before ``systemd --user`` starts, all PAM 'session' modules from ``/etc/pam.d/systemd-user`` are called.

#. .. compound::

       When ``systemd --user`` starts, it runs a set of "environment generators" which are programs that output environment variables. They can be found in:

       - ``/etc/systemd/user-environment-generators/``
       - ``/usr/local/lib/systemd/user-environment-generators/``
       - ``/usr/lib/systemd/user-environment-generators/``

#. .. compound::

        Systemd by default comes with just one such "environment generator", which reads simple KEY=value files from environment.d directories:

        - ``~/.config/environment.d/*.conf``
        - ``/etc/environment.d/*.conf``
        - ``/run/environment.d/*.conf``
        - ``/usr/lib/environment.d/*.conf``
        - ``/etc/environment``

#. .. compound::

       When your graphical session starts (whether using startx or a display manager), there is usually some script in the chain that calls ``systemctl --user import-environment`` and copies your ``$PATH`` and everything else from your interactive environment into the systemd environment.

       The same is also done by ``dbus-update-activation-environment --systemd``, which copies environment variables into a running 'dbus-daemon --session', but with the extra option it'll also update systemd.

       The same is also done natively by gnome-session, for a selection of environment variables (I'm not sure whether $PATH is one of them).

       The "import" tools might be called from:

       - ``~/.xinitrc``
       - ``~/.xsession``
       - ``/etc/X11/xinit/xinitrc.d/50-systemd-user.sh``
