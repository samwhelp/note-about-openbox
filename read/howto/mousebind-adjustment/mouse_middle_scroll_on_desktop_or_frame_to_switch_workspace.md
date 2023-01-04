---
title: 設定在桌面或視窗，滑鼠中鍵滾動，切換工作空間
nav_order: 7015
has_children: false
parent: 如何
---


# 設定在桌面或視窗，滑鼠中鍵滾動，切換工作空間


## 範例


| 範例 |
| --- |
| [all_enhance](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/all_enhance) |

> 原本預設的設定檔，就有設定這個功能，所以不需要特別去修改，以下只是列出關鍵的設定片段。


## openbox / adjustment / mousebind

> Mouse middle scroll on desktop or frame to switch workspace

### context Desktop / 一開始的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_middle_scroll_on_desktop_or_frame_to_switch_workspace/asset/orginal/rc.xml#L353-L358)

``` xml
  <mouse>
    <context name="Desktop">

       <mousebind button="Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

    </context>
  </mouse>
```




### context Frame / 一開始的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_middle_scroll_on_desktop_or_frame_to_switch_workspace/asset/orginal/rc.xml#L563-L575)

``` xml
  <mouse>
    <context name="Frame">

      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

    </context>
  </mouse>
```


## 相關討論

* archcraft-openbox / [[Adjustment] Mouse middle scroll on desktop or frame to switch workspace](https://github.com/archcraft-os/archcraft-openbox/issues/11)

