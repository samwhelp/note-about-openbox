---
title: 設定在桌面按下滑鼠左鍵，切換顯示桌面
nav_order: 7013
has_children: false
parent: 如何
---


# 設定在桌面按下滑鼠左鍵，切換顯示桌面


## 範例


| 範例 |
| --- |
| [mouse_left_click_on_desktop_to_toggle_show_desktop](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_left_click_on_desktop_to_toggle_show_desktop) |
| [all](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/all) |


## openbox / adjustment / mousebind

> mouse left click on desktop to toggle show desktop


### context Root / 一開始的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_left_click_on_desktop_to_toggle_show_desktop/asset/orginal/rc.xml#L593-L601)


### context Root / 調整過的設定片段

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/sample/mousebind-adjustment/openbox/3.6.1/mouse_left_click_on_desktop_to_toggle_show_desktop/rc.xml#L594-L596)

``` xml
  <mouse>
    <context name="Root">
      <mousebind button="Left" action="Press">
        <action name="ToggleShowDesktop"/>
      </mousebind>
    </context>
  </mouse>
```


## 相關討論

* ubuntu-tw / [# 17](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=362156#forumpost362156) - openbox 配其他桌面的套件太多 你會覺得乾脆就裝那個桌面就好
* archcraft-openbox / [[Adjustment] Mouse left click on desktop to toggle show desktop](https://github.com/archcraft-os/archcraft-openbox/issues/10)
* archcraft-openbox / [[Proposal] Desktop Mousebind](https://github.com/archcraft-os/archcraft-openbox/issues/1)
