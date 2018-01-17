

def get_mapping():
    return get_mapping_harcoded()


def get_mapping_harcoded():
    project_map = {
        'python':     ('http://docs.python.org/2/', None),
        'nose':       ('http://nose.readthedocs.org/en/latest/', None),
        'pandas':     ('http://pandas.pydata.org/pandas-docs/version/0.12.0/', None),
        'numpy':      ('http://docs.scipy.org/doc/numpy-1.7.0/', None),
        'sqlalchemy': ('https://docs.sqlalchemy.org/en/latest/', None),
        'wrapt':      ('http://wrapt.readthedocs.io/en/latest/', None),
        'toolz':      ('http://toolz.readthedocs.io/en/latest/', None),
        'trio':       ('https://trio.readthedocs.io/en/latest/', None),
        'sphinx':     ('http://www.sphinx-doc.org/en/stable/', None),
    }
    return project_map
