__all__ = [
    'load_mapping',
    'load_intersphinx',
    'load_extlinks'
]
'''
Configure Sphinx using external data files.
'''
import yaml
import pkg_resources
import functools

def load_mapping(filename):
    '''
    Load YAML mapping from file.
    '''
    content = pkg_resources.resource_string(__name__, filename)
    return yaml.load(content)

def load_intersphinx():
    '''
    Load :py:mod:`sphinx.ext.intersphinx` config.
    '''
    return load_mapping('intersphinx.yaml')

def load_extlinks():
    '''
    Load :py:mod:`sphinx.ext.extlinks` config.
    '''
    return load_mapping('extlinks.yaml')
