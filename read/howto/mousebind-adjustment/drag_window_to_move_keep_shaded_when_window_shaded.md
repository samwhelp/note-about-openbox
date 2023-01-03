---
title: 設定在視窗隱藏內容區塊時，拖曳視窗還能保持隱藏狀態
nav_order: 7012
has_children: false
parent: 如何
---


# 設定在視窗隱藏內容區塊時，拖曳視窗還能保持隱藏狀態


## 範例


| 範例 |
| --- |
| [drag_window_to_move_keep_shaded_when_window_shaded](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_keep_shaded_when_window_shaded) |
| [all](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/all) |


## openbox / adjustment / mousebind

> Drag window to move, keep shaded, when window shaded.


### context Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner / 原本的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_keep_shaded_when_window_shaded/asset/orginal/rc.xml#L404-L408#L404-L408)

``` xml
  <mouse>
    <context name="Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
    </context>
  </mouse>
```

### context Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner / 調整過的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_keep_shaded_when_window_shaded/rc.xml#L404-L415#L404-L415)

``` xml
  <mouse>
    <context name="Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
    </context>
  </mouse>
```


## 相關討論

* archcraft-openbox / [[Adjustment] Drag window to move, keep shaded, when window shaded.](https://github.com/archcraft-os/archcraft-openbox/issues/9)
