---
title: 設定在視窗最大化時，也能拖曳視窗移動
nav_order: 7010
has_children: false
parent: 如何
---


# 設定在視窗最大化時，也能拖曳視窗移動


## 範例


| 範例 |
| --- |
| [drag_window_to_move_when_window_maximized](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized) |
| [all](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/all) |


## openbox / adjustment / mousebind

> Drag window to move, when window maximized.


### context Titlebar / 原本的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized/asset/orginal/rc.xml#L374-L376)

``` xml
  <mouse>
    <context name="Titlebar">
      <mousebind button="Left" action="Drag">
        <action name="Move"/>
      </mousebind>
    </context>
  </mouse>
```

### context Titlebar / 調整過的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized/rc.xml#L375-L378)

``` xml
  <mouse>
    <context name="Titlebar">
      <mousebind button="Left" action="Drag">
        <action name="UnmaximizeFull"/>
        <action name="Move"/>
      </mousebind>
    </context>
  </mouse>
```




### context Frame / 原本的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized/asset/orginal/rc.xml#L334-L336)

``` xml
  <mouse>
    <context name="Frame">
      <mousebind button="A-Left" action="Drag">
        <action name="Move"/>
      </mousebind>
    </context>
  </mouse>
```

### context Frame / 調整過的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized/rc.xml#L334-L337)

``` xml
  <mouse>
    <context name="Frame">
      <mousebind button="A-Left" action="Drag">
        <action name="UnmaximizeFull"/>
        <action name="Move"/>
      </mousebind>
    </context>
  </mouse>
```


## 相關討論

* archcraft-openbox / [[Adjustment] Drag window to move, when window maximized](https://github.com/archcraft-os/archcraft-openbox/issues/8)
* archcraft-lxde / [[Adjustment] Drag window to move, when window maximized](https://github.com/archcraft-os/archcraft-lxde/issues/1)
* mabox / [[about mabox mousebind] Drag window to move, when window maximized.](https://github.com/napcok/clicksnap/issues/2)
