.. _bash:

====
Bash
====

.. highlight:: console

Redirection
===========

- stdout to ``command.stdout``::

    $ command > command.stdout

- stderr to ``command.stderr``::

    $ command 2> command.stderr

- stdout to stderr::

    $ command 1>&2

- stderr to stdout::

    $ command 2>&1

- stderr and stdout to ``command.out``::

    $ command &> command.out

- stdout to ``/dev/null`` and stderr to stdout::

    $ command 2>&1 >/dev/null



Expansion
=========

Bash Guide for Beginners: `Shell expansion <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04.html>`_

.. list-table:: Expansion types
    :widths: 50 10 50
    :header-rows: 1

    * - Type
      - Order
      - Example

    * - Brace expansion
      - 1
      - ``$ echo foo{A,B,C}bar``

    * - Tilde expansion
      - 2
      - ``$ ls ~/.vimrc``

    * - Shell parameter & variable subsitution
      - 3
      - ``$ echo $PATH``

    * - Command substitution
      - 4
      - ``$ readlink -f $(which python)``

    * - Arithmetic expansion
      - 5
      - ``$ echo $[ 365*24 ]``

    * - Process substitution
      - 6
      - ``$ diff <(date) <(sleep 1; date)``

    * - Word splitting
      - 7
      - See `wordsplitting <http://wiki.bash-hackers.org/syntax/expansion/wordsplit>`_ in Bash Hackers Wiki

    * - File name expansion
      - 8
      - See `globs <http://wiki.bash-hackers.org/syntax/expansion/globs>`_ in Bash Hackers Wiki



Tests
=====

Bash Guide for Beginners: `Test primitives <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html#sect_07_01_01_01>`_




File Descriptors
================

Wikipedia: `Standard streams <https://en.wikipedia.org/wiki/Standard_streams>`_

.. list-table::
    :header-rows: 1

    * - Number
      - Stream

    * - 0
      - stdin

    * - 1
      - stdout

    * - 2
      - stderr



Resources
=========

- `Bash Guide for Beginners <http://tldp.org/LDP/Bash-Beginners-Guide/html/>`_
