---
title: 設定在視窗標題列，滑鼠中鍵滾動，切換隱藏內容區塊時，保持聚焦
nav_order: 7013
has_children: false
parent: 如何
---


# 設定在視窗標題列，滑鼠中鍵滾動，切換隱藏內容區塊時，保持聚焦


## 範例


| 範例 |
| --- |
| [mouse_middle_scroll_on_titlebar_keep_focus_when_window_shading](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_middle_scroll_on_titlebar_keep_focus_when_window_shading) |
| [all_enhance](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/all_enhance) |


## openbox / adjustment / mousebind

> Mouse middle scroll on titlebar, keep focus, when window shading


### context Titlebar / 一開始的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_middle_scroll_on_titlebar_keep_focus_when_window_shading/asset/orginal/rc.xml#L381-L400)

``` xml
  <mouse>
    <context name="Titlebar">

      <mousebind button="Up" action="Click">
        <action name="if">
          <shaded>no</shaded>
          <then>
            <action name="Shade"/>
            <action name="FocusToBottom"/>
            <action name="Unfocus"/>
            <action name="Lower"/>
          </then>
        </action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="if">
          <shaded>yes</shaded>
          <then>
            <action name="Unshade"/>
            <action name="Raise"/>
          </then>
        </action>
      </mousebind>
    </context>

  </mouse>
```


### context Titlebar / 調整過的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_middle_scroll_on_titlebar_keep_focus_when_window_shading/rc.xml#L381-L402)

``` xml
  <mouse>
    <context name="Titlebar">

      <mousebind button="Up" action="Click">
        <action name="if">
          <shaded>no</shaded>
          <then>
            <action name="Shade"/>
            <!--
            <action name="FocusToBottom"/>
            <action name="Unfocus"/>
            <action name="Lower"/>
            //-->
          </then>
        </action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="if">
          <shaded>yes</shaded>
          <then>
            <action name="Unshade"/>
            <action name="Raise"/>
          </then>
        </action>
      </mousebind>

    </context>
  </mouse>
```
