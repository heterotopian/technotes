.. _sysdig:

======
sysdig
======

.. highlight:: bash

General
=======

- `Cheatsheet <https://sysdig.com/blog/linux-troubleshooting-cheatsheet/>`_
- `Filtering <https://github.com/draios/sysdig/wiki/Sysdig-User-Guide#filtering>`_



Options
=======

-c chiselname
    Run the specified chisel

-cl
    List chisels

-i chiselname
    Get description for specified chisel

-l
    List filter fields



Chisels
=======

ps
--

::

    $ sysdig -c ps proc.apid=120954


lsof
----

::

    $ sysdig -c lsof "fd.directory=/var/log"


netstat
-------

::

    $ sysdig -c netstat fd.port=80


echo_fds
--------

https://sysdig.com/blog/decode-your-http-traffic-with-sysdig/
