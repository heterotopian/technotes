
=====
Tests
=====

.. highlight:: bash

- Bash Guide for Beginners: `Test primitives <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html#sect_07_01_01_01>`_


Test if ``VARIABLE`` is set::

    if [[ ! -z ${VARIABLE+notset} ]]; then
        # VARIABLE is set
    else
        # VARIALBE is not set
    fi
