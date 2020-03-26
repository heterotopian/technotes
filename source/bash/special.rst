
=================
Special Variables
=================

.. highlight:: bash

- `Documentation <https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html>`_

$#
    Number of positional parameters.

$*
    Positional parameters, starting from position 1.
    When the expansion is not within double quotes, each positional parameter expands to a separate word.
    When the expansion occurs within double quotes, it expands to a single word with the value of each parameter separated by the first character of the ``IFS`` special variable.

$@
    Positional parameters, starting from position 1.
    In contexts where word splitting is performed, this expands each positional parameter to a separate word; if not within double quotes, these words are subject to word splitting.
    In contexts where word splitting is not performed, this expands to a single word with each positional parameter separated by a space.
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
