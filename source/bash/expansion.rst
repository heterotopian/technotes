
=========
Expansion
=========

.. highlight:: console

Bash Guide for Beginners: `Shell expansion <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04.html>`_

.. list-table::
    :widths: 50 10 50
    :header-rows: 1

    * - Expansion type
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
