
=====
Tests
=====

.. highlight:: bash

- Bash Guide for Beginners: `Test primitives <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html#sect_07_01_01_01>`_

Variables
=========

Set/unset::

    if [[ ! -z ${VARIABLE+notset} ]]
    then
        # VARIABLE is set
    else
        # VARIALBE is not set
    fi

Length::

    if [[ -n ${VARIABLE} ]]
    then
        # VARIABLE has non-zero length
    fi

::

    if [[ -z ${VARIABLE} ]]
    then
        # VARIABLE has zero length   or is unset
    fi


Arguments
=========

Count::

    if [[ $# -eq 1 ]]
    then
        # 1 argument passed
    fi

::

    if [[ $# -gt 1 ]]
    then
        # More than 1 argument passed
    fi
