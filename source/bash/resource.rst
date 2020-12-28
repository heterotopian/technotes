
=========
Resources
=========

.. highlight:: bash

Documentation
=============

- `Homepage <https://www.gnu.org/software/bash/manual/html_node/>`_



Community
=========

- TLDP:
  `Bash Guide for Beginners <http://tldp.org/LDP/Bash-Beginners-Guide/html/>`_,
  `Advanced Bash-Scripting Guide <https://tldp.org/LDP/abs/html/>`_

- Greg Wooledge: `BashFAQ <https://mywiki.wooledge.org/BashFAQ>`_ -
  Concise treatment of advanced topics

  - `Bash Pitfalls <https://mywiki.wooledge.org/BashPitfalls>`_ -
    Collection of common mistakes
  - `Storing command results (output/status) in variables <http://mywiki.wooledge.org/BashFAQ/002>`_::

        OUTPUT=$(command)
        STATUS=$?

    Branch on status::

        if command
        then
            echo "success"
        fi

        if OUTPUT=$(command)
        then
            echo "success - ${OUTPUT}"
        fi

    Pipelines::

        set -o pipefail
        find /invalidpath | wc -l  # Returns last non-zero subcommand status

  - `Reading files line-by-line <https://mywiki.wooledge.org/BashFAQ/001>`_::

        {
            while IFS= read -r LINE
            do
                printf '%s\n' "${LINE}"
            done
            # Edge case: last line isn't newline terminated
            # `read` consumes LINE but returns false
            # Handle leftover partial line
            if [[ -n ${LINE} ]]
            then
                printf '%s\n' "${LINE}"
            fi
        }

  - `Using 'find' <https://mywiki.wooledge.org/UsingFind>`_::

        while IFS= read -r -d '' LINE
        do
            printf '%s\n' "${LINE}"
        done < <(find -name "$PATTERN" -print0)
