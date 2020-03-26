
===========
Redirection
===========

.. highlight:: console

.. list-table::
    :widths: auto
    :header-rows: 1

    * - From
      - To
      - Syntax
    * - stdout
      - ``command.stdout``
      - ``$ command >command.stdout``
    * - stderr
      - ``command.stderr``
      - ``$ command 2>command.stderr``
    * - stdout
      - stderr
      - ``$ command 1>&2``
    * - stderr
      - stdout
      - ``$ command 2>&1``
    * - .. rst-class:: list-nobullet

            * stdout
            * stderr
      - .. rst-class:: list-nobullet

            * ``command.out``
            * ``command.out``
      - ``$ command &>command.out``
    * - .. rst-class:: list-nobullet

            * stdout
            * stderr
      - .. rst-class:: list-nobullet

            * ``/dev/null``
            * stdout
      - ``$ command 2>&1 >/dev/null``
