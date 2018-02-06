.. _vim:

===
Vim
===

Text Objects
============

:normal form: includes delimiting characters
:inner form: excludes delimiting characters

.. list-table::
    :header-rows: 1

    * - Object
      - Normal
      - Inner

    * - word
      - :kbd:`aw`
      - :kbd:`iw`

    * - whole word
      - :kbd:`aW`
      - :kbd:`iW`

    * - subword
      - :kbd:`ad`
      - :kbd:`id`

    * - any pair
      - :kbd:`as`
      - :kbd:`is`

    * - any quote
      - :kbd:`aq`
      - :kbd:`iq`

    * - double quote
      - :kbd:`a"`
      - :kbd:`i"`

    * - single quote
      - :kbd:`a'`
      - :kbd:`i'`

    * - back tick
      - :kbd:`a\``
      - :kbd:`i\``

    * - curly bracket
      - :kbd:`a{`
        :kbd:`a}`
        :kbd:`aB`
      - :kbd:`i{`
        :kbd:`i}`
        :kbd:`iB`

    * - square bracket
      - :kbd:`a[`
        :kbd:`a[`
      - :kbd:`i[`
        :kbd:`i]`

    * - angle bracket
      - :kbd:`a<`
        :kbd:`a>`
      - :kbd:`i<`
        :kbd:`i>`

    * - tag
      - :kbd:`at`
      - :kbd:`it`

    * - paragraph
      - :kbd:`ap`
      - :kbd:`ip`

    * - indentation
      - :kbd:`ai`
      - :kbd:`ii`

    * - comment
      - :kbd:`a/`
      - :kbd:`i/`

    * - function
      - :kbd:`af`
      - :kbd:`if`

    * - current line
      - :kbd:`al`
      - :kbd:`il`

    * - entire
      - :kbd:`ae`
      - :kbd:`ie`


Terms
=====

motions
    Actions that move the cursor

operators
    Transformations that are applied to text objects

text objects
    Logical groupings of text characters


Resources
=========

- `Vim killer features: text objects <http://codyveal.com/posts/vim-killer-features-part-1-text-objects/>`_
