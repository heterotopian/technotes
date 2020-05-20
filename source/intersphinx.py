'''
Standalone module for configuring :py:mod:`sphinx.ext.intersphinx`.
'''
import pkg_resources
import yaml

def get_mapping():
    return get_mapping_yaml()

def get_mapping_yaml(filename='intersphinx.yaml'):
    resource = pkg_resources.resource_string(__name__, filename)
    return yaml.load(resource)
