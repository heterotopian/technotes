
=========
Expansion
=========

.. highlight:: bash

- `Documentation <https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html>`_
- Bash Guide for Beginners: `Shell expansion <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04.html>`_

.. list-table::
    :widths: 10 30 50
    :header-rows: 1

    * - Order
      - Expansion type
      - Example

    * - 1
      - `Brace expansion`_
      - ::

            echo foo{A,B,C}bar

    * - 2
      - `Tilde expansion`_
      - ::

            ls ~/.vimrc

    * - 3
      - `Parameter/variable subsitution`_
      - ::

            echo ${PATH}

    * - 4
      - `Command substitution`_
      - ::

            readlink -f $(which python)

    * - 5
      - `Arithmetic expansion`_
      - ::

            echo $(( 365 * 24 ))

    * - 6
      - `Process substitution`_
      - ::

            diff <(date) <(sleep 1; date)

    * - 7
      - `Word splitting`_
      - ::

            args () {
                printf "%d arguments:" "$#"
                printf " <%s>" "$@"
                echo
            }

        ::

            args hello world "how are you?"

        ::

            VAR="This is a variable"
            args $VAR
            args "$VAR"

    * - 8
      - `Filename expansion`_
      - ::

            ls *.pyc



.. _Brace expansion: https://www.gnu.org/software/bash/manual/html_node/Brace-Expansion.html
.. _Tilde expansion: https://www.gnu.org/software/bash/manual/html_node/Tilde-Expansion.html
.. _Parameter/variable subsitution: https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
.. _Command substitution: https://www.gnu.org/software/bash/manual/html_node/Command-Substitution.html
.. _Arithmetic expansion: https://www.gnu.org/software/bash/manual/html_node/Arithmetic-Expansion.html
.. _Process substitution: https://www.gnu.org/software/bash/manual/html_node/Process-Substitution.html
.. _Word splitting: https://www.gnu.org/software/bash/manual/html_node/Word-Splitting.html
.. _Filename expansion: https://www.gnu.org/software/bash/manual/html_node/Filename-Expansion.html
