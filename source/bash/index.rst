.. _bash:

====
Bash
====

.. highlight:: bash

Resources
=========

- :bash:`Documentation <>`

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

- Bash Guide for Beginners:
  `Test primitives <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html#sect_07_01_01_01>`_

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

- :bash:`Documentation <Shell-Parameter-Expansion.html>`
- Bash Guide for Beginners:
  `Shell expansion <http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04.html>`_

.. list-table::
    :widths: auto
    :header-rows: 1

    * - Order
      - Expansion type
      - Example

    * - 1
      - :bash:`Brace expansion <Brace-Expansion.html>`
      - ::

            echo foo{A,B,C}bar

    * - 2
      - :bash:`Tilde expansion <Tilde-Expansion.html>`
      - ::

            ls ~/.vimrc

    * - 3
      - :bash:`Parameter expansion <Shell-Parameter-Expansion.html>`
      - ::

            echo ${PATH}

    * - 4
      - :bash:`Command substitution <Command-Substitution.html>`
      - ::

            readlink -f $(which python)

    * - 5
      - :bash:`Arithmetic expansion <Arithmetic-Expansion.html>`
      - ::

            echo $(( 365 * 24 ))

    * - 6
      - :bash:`Process substitution <Process-Substitution.html>`
      - ::

            diff <(date) <(sleep 1; date)

    * - 7
      - :bash:`Word splitting <Word-Splitting.html>`
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
      - :bash:`Filename expansion <Filename-Expansion.html>`
      - ::

            ls *.pyc



Redirection
===========

- :bash:`Documentation <Redirections.html>`

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

- :bash:`Documentation <Bash-Builtins.html>`

:bash:`command <Bash-Builtins.html#index-command>`
    Run command ignoring any shell functions.
    Only shell builtin commands or commands found by searching the ``PATH`` are executed

:bash:`help <Bash-Builtins.html#index-help>`
    Online help for builtin commands.

:bash:`read <Bash-Builtins.html#index-read>`
    Read from stdin or file descriptor.
    (See also: `Bash Hackers Wiki <http://wiki.bash-hackers.org/commands/builtin/read>`_)



Special Variables
=================

- :bash:`Documentation <Special-Parameters.html>`
- Bash Guide for Beginners:
  `Special parameters <https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_02.html#sect_03_02_05>`_

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



Aliases
=======

Advanced Bash-Scripting Guide: `Aliases <https://tldp.org/LDP/abs/html/aliases.html>`_

  In a script, aliases have very limited usefulness.
  It would be nice if aliases could assume some of the functionality of the C preprocessor, such as macro expansion, but unfortunately Bash does not expand arguments within the alias body.
  Moreover, a script fails to expand an alias itself within "compound constructs," such as if/then statements, loops, and functions.
  An added limitation is that an alias will not expand recursively.
  Almost invariably, whatever we would like an alias to do could be accomplished much more effectively with a function.

StackOverflow: `Watch command alias expansion <https://unix.stackexchange.com/a/25329>`_

  Aliases are only expanded as the first argument, or after another alias with a trailing space on the end of the command.  From ``bash``'s ``help alias``:

    A trailing space in VALUE causes the next word to be checked for alias substitution when the alias is expanded.

  To do this, try the following::

      alias watch='watch '
      alias ll='ls -l --color=tty'
      watch ll



.. |stdout| replace:: stdout
.. |stderr| replace:: stderr
