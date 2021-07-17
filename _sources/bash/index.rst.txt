.. _bash:

====
Bash
====

.. highlight:: bash

Documentation
=============

- `Homepage <https://www.gnu.org/software/bash/manual/html_node/>`_
- `Builtins <https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html>`_
- `Parameter expansion <https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html>`_
- `Redirection <https://www.gnu.org/software/bash/manual/html_node/Redirections.html>`_
- `Special variables <https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html>`_



Resources
=========

The Linux Documentation Project
-------------------------------

- `Bash Guide for Beginners <http://tldp.org/LDP/Bash-Beginners-Guide/html/>`_
- `Advanced Bash-Scripting Guide <https://tldp.org/LDP/abs/html/>`_


BashFAQ
-------

- `Homepage <https://mywiki.wooledge.org/BashFAQ>`_
- `Bash Pitfalls <https://mywiki.wooledge.org/BashPitfalls>`_ -
  Collection of common mistakes

`Storing command output/status in variables <http://mywiki.wooledge.org/BashFAQ/002>`_::

    # Capture output

    OUTPUT=$(command)
    STATUS=$?

::

    # Branch on status

    if command
    then
        echo "success"
    fi

    if OUTPUT=$(command)
    then
        echo "success - ${OUTPUT}"
    fi

::

    # Pipelines

    set -o pipefail
    find /invalidpath | wc -l  # Returns last non-zero subcommand status

`Reading files line-by-line <https://mywiki.wooledge.org/BashFAQ/001>`_::

    {
        while IFS= read -r LINE
        do
            printf '%s\n' "${LINE}"
        done

        # Handle edge case when last line isn't newline terminated
        # `read` consumes LINE but returns false,
        # Handle leftover partial line

        if [[ -n ${LINE} ]]
        then
            printf '%s\n' "${LINE}"
        fi
    }

`Using 'find' <https://mywiki.wooledge.org/UsingFind>`_::

    while IFS= read -r -d '' LINE
    do
        printf '%s\n' "${LINE}"
    done < <(find -name "$PATTERN" -print0)



Tests
=====

.. highlight:: bash

Bash Guide for Beginners: `Test primitives <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html#sect_07_01_01_01>`_

Variable is set::

    if [[ -z ${VARIABLE+notset} ]]
    then
        # VARIABLE is not set
    fi

    if [[ ! -z ${VARIABLE+notset} ]]
        # VARIALBE is set
    fi

Variable has non-zero length::

    if [[ -n ${VARIABLE} ]]
    then
        # VARIABLE has non-zero length
    fi

    if [[ -z ${VARIABLE} ]]
    then
        # VARIABLE either has zero length or is unset
    fi

Argument count::

    if [[ $# -eq 1 ]]
    then
        # 1 argument passed
    fi

    if [[ $# -gt 1 ]]
    then
        # More than 1 argument passed
    fi



Expansion
=========

Bash Guide for Beginners: `Shell expansion <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04.html>`_

.. list-table::
    :widths: auto
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
      - `Parameter expansion`_
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



Redirection
===========

.. list-table::
    :widths: auto
    :header-rows: 1

    * - From
      - To
      - Syntax

    * - |stdout|
      - ``command.stdout``
      - ``>command.stdout``

    * - |stderr|
      - ``command.stderr``
      - ``2>command.stderr``

    * - |stdout|
      - |stderr|
      - ``1>&2``

    * - |stderr|
      - |stdout|
      - ``2>&1``

    * - |stdout| & |stderr|
      - ``command.out``
      - ``&>command.out``

    * - |stdout| & |stderr|
      - ``/dev/null`` & |stdout|
      - ``2>&1 >/dev/null``



Builtins
========

Bash Guide for Beginners: `Shell built-in commands <https://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_01_03.html#sect_01_03_02>`_

- `read <http://wiki.bash-hackers.org/commands/builtin/read>`_



Special Variables
=================

Bash Guide for Beginners: `Special parameters <https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_02.html#sect_03_02_05>`_

$#
    Number of positional parameters.

$*
    Positional parameters, starting from position 1.

    - When the expansion is not within double quotes, each positional parameter expands to a separate word.
    - When the expansion occurs within double quotes, it expands to a single word with the value of each parameter separated by the first character of the ``IFS`` special variable.

$@
    Positional parameters, starting from position 1.

    - In contexts where word splitting is performed, this expands each positional parameter to a separate word; if not within double quotes, these words are subject to word splitting.
    - In contexts where word splitting is not performed, this expands to a single word with each positional parameter separated by a space.

    When the expansion occurs within double quotes, and word splitting is performed, each parameter expands to a separate word.

$?
    Exit status of the most recently executed foreground pipeline.

$-
    Current option flags as specified upon invocation, by the set builtin command, or those set by the shell itself (such as the -i option).

$$
    Process ID of the shell.
    In a ``()`` subshell, it expands to the process ID of the invoking shell, not the subshell.

$!
    Process ID of the job most recently placed into the background, whether executed as an asynchronous command or using the ``bg`` builtin.

$0
    Name of the shell or shell script.

$_
    At shell startup, set to the absolute pathname used to invoke the shell or shell script being executed as passed in the environment or argument list.
    Subsequently, expands to the last argument to the previous simple command executed in the foreground, after expansion.

    Also set to the full pathname used to invoke each command executed and placed in the environment exported to that command.



.. _Brace expansion: https://www.gnu.org/software/bash/manual/html_node/Brace-Expansion.html
.. _Tilde expansion: https://www.gnu.org/software/bash/manual/html_node/Tilde-Expansion.html
.. _Parameter expansion: https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
.. _Command substitution: https://www.gnu.org/software/bash/manual/html_node/Command-Substitution.html
.. _Arithmetic expansion: https://www.gnu.org/software/bash/manual/html_node/Arithmetic-Expansion.html
.. _Process substitution: https://www.gnu.org/software/bash/manual/html_node/Process-Substitution.html
.. _Word splitting: https://www.gnu.org/software/bash/manual/html_node/Word-Splitting.html
.. _Filename expansion: https://www.gnu.org/software/bash/manual/html_node/Filename-Expansion.html



.. |stdout| replace:: **stdout**
.. |stderr| replace:: **stderr**
