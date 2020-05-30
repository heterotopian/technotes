
========
Commands
========

.. toctree::
    :glob:

    command/*

Examples
========

Commits
-------

Commits between |HEAD| and commit before |HEAD|::

    $ git log @^..@

Commits between |HEAD| and |v1.0| tag::

    $ git log v1.0..@

Diff |HEAD| and commit before |HEAD|::

    $ git diff HEAD^ HEAD
    $ git diff HEAD^..HEAD
    $ git diff @^ @
    $ git diff @^..@
    $ git show

Diff |master| and current branch::

    $ git log master..HEAD -p

Diff ``file.rst`` from |HEAD| and commit before |HEAD|::

    $ git diff @:file.rst @^1:file.rst


Tags
----

Delete local tag::

    $ git tag -d TAGNAME

Push deleted tag to |origin|::

    $ git push origin :refs/tags/TAGNAME


Working Tree
------------

Cached files::

    $ git ls-files

Cached files under ``foo/bar``::

    $ git ls-files foo/bar

Untracked files::

    $ git ls-files -o

Untracked files that are ignored::

    $ git ls-files -o -i --exclude-standard
    

Indexed Trees
-------------

Files in tree identified by |v1.0| tag at the top level::

    $ git ls-tree --name-only tags/v1.0

Files in tree identified by |v1.0| tag at all levels::

    $ git ls-tree --name-only tags/v1.0 -r

Files in tree identified by |v1.0| tag in path ``foo/bar`` at all levels::

    $ git ls-tree --name-only tags/v1.0 foo/bar -r



.. |HEAD| replace:: ``HEAD``
.. |master| replace:: ``master``
.. |origin| replace:: ``origin``
.. |v1.0| replace:: ``v1.0``
