from pygments.lexer import default, inherit, include, bygroups
from pygments.lexers.css import LessCssLexer
from pygments.token import *


class CustomLessCssLexer(LessCssLexer):

    name = 'CustomLessCss'
    aliases = ['customless']
    filenames = ['*.less']
    mimetypes = ['text/x-less-css']

    tokens = {
        'root': [
            (r'(@[\w-]*\w)(:)', bygroups(Name.Variable, Punctuation), 'value-start'),
            inherit,
        ],

        'content': [
            (r'(\.)([\w-]+)', bygroups(Punctuation, Name.Class)),
            (r'(\:{1,2})([\w-]+)', bygroups(Punctuation, Name.Decorator)),
            (r'&', Name.Decorator),
            (r',', Punctuation),
            (r'\{', Punctuation, '#push'),
            inherit,
        ]
    }

    tokens_inherit = [
        'basics',
        'class',
        'for',
        'id',
        'import',
        'inline-comment',
        'interpolation',
        'multi-comment',
        'new-style-attr',
        'old-style-attr',
        'pseudo-class',
        'selector',
        'single-comment',
        'string-double',
        'string-single',
        'string-url',
        'value'
    ]

    for token in tokens_inherit:
        tokens[token] = [inherit]
