
=====
Tests
=====

.. highlight:: bash

- Bash Guide for Beginners: `Test primitives <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html#sect_07_01_01_01>`_

Variables
=========

``VARIABLE`` is set::

    if [[ ! -z ${VARIABLE+notset} ]]
    then
        # VARIABLE is set
    else
        # VARIALBE is not set
    fi



Arguments
=========

Number of arguments::

    if [[ $# -eq 1 ]]
    then
        # 1 argument passed
    fi

::

    if [[ $# -eq 2 ]]
    then
        # 2 arguments passed
    fi

::

    if [[ $# -gt 1 ]]
    then
        # More than 1 argument passed
    fi
