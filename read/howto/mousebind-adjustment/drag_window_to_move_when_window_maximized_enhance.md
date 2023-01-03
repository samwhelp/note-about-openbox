---
title: 設定在視窗最大化時，也能拖曳視窗移動 (加強版)
nav_order: 7011
has_children: false
parent: 如何
---


# 設定在視窗最大化時，也能拖曳視窗移動 (加強版)


## Reference

* archcraft-openbox / [rc.xml](https://github.com/archcraft-os/archcraft-openbox/blob/main/files/rc.xml#L804-L820)


## 範例


| 範例 |
| --- |
| [drag_window_to_move_when_window_maximized_enhance](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized_enhance) |
| [drag_window_to_move_when_window_maximized_advance](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized_advance) |
| [all_enhance](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/all_enhance) |


## openbox / adjustment / mousebind

> Drag window to move, when window maximized.


### context Titlebar / 一開始的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized_enhance/asset/orginal/rc.xml#L374-L376)

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

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized_enhance/rc.xml#L387-L402)

``` xml
  <mouse>
    <context name="Titlebar">
      <mousebind button="Left" action="Drag">
        <action name="if">
          <maximized>yes</maximized>
          <then>
            <action name="UnmaximizeFull"/>
            <action name="MoveResizeTo">
              <x>center</x>
              <y>current</y>
            </action>
            <action name="Move"/>
          </then>
          <else>
            <action name="Move"/>
          </else>
        </action>
      </mousebind>
    </context>
  </mouse>
```




### context Frame / 一開始的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized_enhance/asset/orginal/rc.xml#L334-L336)

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

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/drag_window_to_move_when_window_maximized_enhance/rc.xml#L334-L349)

``` xml
  <mouse>
    <context name="Frame">
      <mousebind button="A-Left" action="Drag">
        <action name="if">
          <maximized>yes</maximized>
          <then>
            <action name="UnmaximizeFull"/>
            <action name="MoveResizeTo">
              <x>center</x>
              <y>current</y>
            </action>
            <action name="Move"/>
          </then>
          <else>
            <action name="Move"/>
          </else>
        </action>
      </mousebind>
    </context>
  </mouse>
```


## 相關討論

* archcraft-openbox / [[Adjustment] Drag window to move, when window maximized](https://github.com/archcraft-os/archcraft-openbox/issues/8)
* archcraft-lxde / [[Adjustment] Drag window to move, when window maximized](https://github.com/archcraft-os/archcraft-lxde/issues/1)
* mabox / [[about mabox mousebind] Drag window to move, when window maximized.](https://github.com/napcok/clicksnap/issues/2)
