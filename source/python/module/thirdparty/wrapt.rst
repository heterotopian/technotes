
===============
:py:mod:`wrapt`
===============

- `Documentation <https://wrapt.readthedocs.io/en/latest/>`_

- `How you implemented your Python decorator is wrong <http://blog.dscpl.com.au/2014/01/how-you-implemented-your-python.html>`_
  (`GitHub <https://github.com/openstack/deb-python-wrapt/tree/master/blog>`_)

- Special attributes of :py:class:`wrapt.FunctionWrapper` and derived types:

  - ``__wrapped__``
  - ``_self_instance``
  - ``_self_wrapper``
  - ``_self_enabled``
  - ``_self_binding``
  - ``_self_parent``

- Identify what kind of object is being decorated (necessary for "universal" decorators)::

      import inspect

      @wrapt.decorator
      def universal(wrapped, instance, args, kwargs):
          if instance is None:
              if inspect.isclass(wrapped):
                  # Decorator was applied to a class.
                  return wrapped(*args, **kwargs)
              else:
                  # Decorator was applied to a function or staticmethod.
                  return wrapped(*args, **kwargs)
          else:
              if inspect.isclass(instance):
                  # Decorator was applied to a classmethod.
                  return wrapped(*args, **kwargs)
              else:
                  # Decorator was applied to an instancemethod.
                  return wrapped(*args, **kwargs)
