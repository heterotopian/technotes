
==================
:py:mod:`docutils`
==================

- `Project homepage <http://docutils.sourceforge.net/>`_
- `Online reStructuredText editor <http://rst.ninjs.org/>`_
- `Docutils + Sphinx <https://docutils.readthedocs.io/en/sphinx-docs/>`_ -
  Project documentation converted to Sphinx + RTD

Documentation
=============

- reStructuredText

  - `Markup specification <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html>`_
  - `Substitution definitions  <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#substitution-definitions>`_
  - `Standard definition files <http://docutils.sourceforge.net/docs/ref/rst/definitions.html>`_

    - "To use a substitution without intervening whitespace, you can use the disappearing-whitespace escape sequence, backslash-space"

  - Frontends

    - `rst2html <http://docutils.sourceforge.net/docs/user/tools.html#rst2html-py>`_
    - `rst2pseudoxml <http://docutils.sourceforge.net/docs/user/tools.html#rst2pseudoxml-py>`_



Discussion
==========

- `Unnecessary <p class="first"> inserted between <li> <https://github.com/sphinx-doc/sphinx/issues/3588#issuecomment-290398312>`_ -
  Docutils generates different markup for lists with "simple" and "non-simple" content

  - Setting: `compact_lists <https://docutils.sourceforge.io/docs/user/config.html#compact-lists>`_
