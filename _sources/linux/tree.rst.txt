
====
tree
====

.. highlight:: console

::

    $ tree /etc/apt
    /etc/apt
    ├── apt.conf.d
    │   ├── 00aptitude
    │   ├── 00cdrom
    │   ├── 00recommends
    │   ├── 00trustcdrom
    │   ├── 01autoremove
    │   ├── 01autoremove-kernels
    │   ├── 20changelog
    │   ├── 20dbus
    │   ├── 50unattended-upgrades
    │   ├── 70debconf
    │   └── 99synaptic
    ├── apt-file.conf
    ├── preferences.d
    │   ├── official-extra-repositories.pref
    │   └── official-package-repositories.pref
    ├── sources.list
    ├── sources.list.d
    │   ├── cernekee-ppa-trusty.list
    │   ├── getdeb.list
    │   ├── google-chrome.list
    │   ├── neovim-ppa-unstable-trusty.list
    │   ├── noobslab-icons-trusty.list
    │   ├── noobslab-themes-trusty.list
    │   ├── numix-ppa-trusty.list
    │   ├── official-package-repositories.list
    │   └── snwh-pulp-trusty.list
    ├── trustdb.gpg
    ├── trusted.gpg
    ├── trusted.gpg~
    └── trusted.gpg.d

    4 directories, 27 files

Options
=======

-a           Include hidden files beginning with ``.``
-L levels    Maximum number of levels to show
-I pattern   Ignore files matching pattern
--noreport   Suppress summary report
