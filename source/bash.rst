.. _bash:

====
Bash
====

.. highlight:: console

.. contents::
    :local:
    :depth: 1

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


Expansion
=========

`Shell expansion <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04.html>`_ in Bash Guide for Beginners

.. list-table:: Expansion evaluation types by order
    :header-rows: 1

    * - Type
      - Example

    * - Brace expansion
      - ``$ echo foo{A,B,C}bar``

    * - Tilde expansion
      - ``$ ls ~/.vimrc``

    * - Shell parameter & variable subsitution
      - ``$ echo $PATH``

    * - Command substitution
      - ``$ readlink -f $(which python)``

    * - Arithmetic expansion
      - ``$ echo $[ 365*24 ]``

    * - Process substitution
      - ``$ diff <(date) <(sleep 1; date)``

    * - Word splitting
      - See `wordsplitting <http://wiki.bash-hackers.org/syntax/expansion/wordsplit>`_ in Bash Hackers Wiki

    * - File name expansion
      - See `globs <http://wiki.bash-hackers.org/syntax/expansion/globs>`_ in Bash Hackers Wiki


File Descriptors
================

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

- `Standard streams on Wikipedia <https://en.wikipedia.org/wiki/Standard_streams>`_
