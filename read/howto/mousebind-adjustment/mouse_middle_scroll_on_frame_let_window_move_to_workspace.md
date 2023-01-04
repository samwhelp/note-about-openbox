---
title: 設定在視窗，滑鼠中鍵滾動，將視窗移動到工作空間
nav_order: 7016
has_children: false
parent: 如何
---


# 設定在視窗，滑鼠中鍵滾動，將視窗移動到工作空間


## 範例


| 範例 |
| --- |
| [mouse_middle_scroll_on_desktop_or_frame_to_switch_workspace](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_middle_scroll_on_desktop_or_frame_to_switch_workspace) |

> 原本預設的設定檔，就有設定這個功能，所以不需要特別去修改，以下只是列出關鍵的設定片段。


## openbox / adjustment / mousebind

> Mouse middle scroll on frame, let window move to workspace


### context Frame / 一開始的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_middle_scroll_on_desktop_or_frame_to_switch_workspace/asset/orginal/rc.xml#L365-L369)

``` xml
  <mouse>
    <context name="Frame">

      <mousebind button="A-S-Up" action="Click">
        <action name="SendToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="A-S-Down" action="Click">
        <action name="SendToDesktop"><to>next</to></action>
      </mousebind>

    </context>
  </mouse>
```
