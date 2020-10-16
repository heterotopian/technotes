
=============
Customization
=============

Appearance
==========

Stack open file tabs vertically (`source <https://gist.github.com/jasesmith/4b4a5ab6445ed8ce7c23791041c31408>`_):

.. code-block:: less
    :caption: style.less

    @tab-border: rgba(24, 26, 31, 0.2);

    atom-workspace-axis.vertical atom-pane {
      flex-direction: row;
      .tab-bar:not(:empty) {
        box-shadow: inset -1px 0 0 @tab-border;
        resize: horizontal;
        height: auto;
        display: block;
        padding-right: 1px;
        padding-bottom: 3em;
        min-width: 14em;
        &::after {
          content: '';
          position: absolute;
          bottom: 1px;
          right: 1px;
          width: 0;
          height: 0;
          border: .7em solid transparent;
          border-color: transparent @ui-site-color-2 @ui-site-color-2 transparent;
          box-shadow: 1px 1px 0 0 @tab-border;
        }
      }
      .tab-bar .tab {
        display: block;
        border: none;
      }
      .tab-bar .tab,
      .tab-bar .tab.active {
        flex: none;
        width: auto;
        max-width: none;
        box-shadow: inset 0 -1px 0 0 @tab-border;
      }
      .tab-bar .tab .title {
        text-align: left;
      }
    }
