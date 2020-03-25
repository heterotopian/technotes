
========
Commands
========

.. highlight:: console

config
======

- `Documentation <https://docs.conda.io/projects/conda/en/latest/commands/config.html>`_

Channels
--------

Show channels::

    $ conda config --get channels

Add a channel::

    $ conda config --add channels CHANNEL

Remove a channel::

    $ conda config --remove channels CHANNEL



search
======

- `Documentation <https://docs.conda.io/projects/conda/en/latest/commands/search.html>`_

Pre-4.4.0
---------

Search by name::

    $ conda search 'marshmallow'

Search by spec::

    $ conda search --spec 'marshmallow=2.18.0'
    $ conda search --spec 'marshmallow=2.18.0=py27_0'


Post-4.4.0
----------

See **enhanced package query language** under **New Feature Highlights** in 4.4.0 `release notes <https://docs.conda.io/projects/conda/en/latest/release-notes.html>`_:

    "Conda has a built-in query language for searching for and matching packages, what we often refer to as MatchSpec. The MatchSpec is what users input on the command line when they specify packages for create, install, update, and remove operations. With this release, MatchSpec (rather than a regex) becomes the default input for conda search."

Search by name::

    $ conda search 'marshmallow'

Search by name and version::

    $ conda search 'marshmallow=2.18.0'
    $ conda search 'marshmallow>2.11'
    $ conda search 'marshmallow>2.11,<2.15'
    $ conda search 'marshmallow>2.11,<2.15|=2.18.0'

Search by name and build::

    $ conda search 'marshmallow[build=py27_0]'

Search by name and platform::

    $ conda search '*/linux-64::marshmallow'

Search by name, channel, and platform::

    $ conda search 'defaults/linux-64::marshmallow'
    $ conda search 'conda-forge/linux-64::marshmallow'

Search by name, channel, platform, and version::

    $ conda search 'defaults/linux-64::marshmallow=2.18.0'
    $ conda search 'defaults/linux-64::marshmallow>2.11'
    $ conda search 'defaults/linux-64::marshmallow>2.11,<2.15'
    $ conda search 'defaults/linux-64::marshmallow>2.11,<2.15|=2.18.0'

Search by name, channel, platform, version, and build::

    $ conda search 'defaults/linux-64::marshmallow[build=py27_0]=2.18.0'
    $ conda search 'defaults/linux-64::marshmallow[build=py27_0]>2.11'
    $ conda search 'defaults/linux-64::marshmallow[build=py27_0]>2.11,<2.15'
    $ conda search 'defaults/linux-64::marshmallow[build=py27_0]>2.11,<2.15|=2.18.0'

Search by md5::

    $ conda search '*[md5=56a2e82b7205d97210d5162174e6bd5e]'

Search by channel, platform, and md5::

    $ conda search 'defaults/linux-64::*[md5=56a2e82b7205d97210d5162174e6bd5e]'

Show detailed information about search results::

    $ conda search 'marshmallow' --info

Include additional channel in search results::

    $ conda search -c conda-forge 'marshmallow'
