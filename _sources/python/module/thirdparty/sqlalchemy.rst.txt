
====================
:py:mod:`sqlalchemy`
====================

- `Documentation <https://docs.sqlalchemy.org/en/latest/>`_

  - `Core <https://docs.sqlalchemy.org/en/13/core/index.html>`_

    - `Engine sharding <http://docs.sqlalchemy.org/en/latest/core/connections.html#sqlalchemy.engine.Engine.execution_options>`_

        The intent of the ``Engine.execution_options()`` method is to implement "sharding" schemes where multiple ``Engine`` objects refer to the same connection pool, but are differentiated by options that would be consumed by a custom event:

        .. code-block:: python

            primary_engine = create_engine("mysql://")
            shard1 = primary_engine.execution_options(shard_id="shard1")
            shard2 = primary_engine.execution_options(shard_id="shard2")

        Above, the ``shard1`` engine serves as a factory for Connection objects that will contain the execution option ``shard_id=shard1``, and ``shard2`` will produce Connection objects that contain the execution option ``shard_id=shard2``.

        An event handler can consume the above execution option to perform a schema switch or other operation, given a connection. Below we emit a MySQL ``use`` statement to switch databases, at the same time keeping track of which database we’ve established using the ``Connection.info`` dictionary, which gives us a persistent storage space that follows the DBAPI connection:

        .. code-block:: python

            from sqlalchemy import event
            from sqlalchemy.engine import Engine

            shards = {"default": "base", shard_1: "db1", "shard_2": "db2"}

            @event.listens_for(Engine, "before_cursor_execute")
            def _switch_shard(conn, cursor, stmt, params, context, executemany):
                shard_id = conn._execution_options.get('shard_id', "default")
                current_shard = conn.info.get("current_shard", None)

                if current_shard != shard_id:
                    cursor.execute("use %s" % shards[shard_id])
                    conn.info["current_shard"] = shard_id

  - `ORM <https://docs.sqlalchemy.org/en/13/orm/index.html>`_
