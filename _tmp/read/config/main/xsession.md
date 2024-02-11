---
title: Xsession
nav_order: 2020
has_children: false
parent: 我的設定
grand_parent: 設定
---


# Xsession


## 登入流程

### Start

| Path | Title |
| --- | --- |
| [/usr/share/xsessions/openbox-session.desktop](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/share/xsession/openbox-session.desktop) | Be Openbox |
| [/usr/local/bin/openbox-session.sh](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/share/xsession/openbox-session.sh) | |
| [/usr/bin/openbox-session](http://git.openbox.org/?p=mikachu/openbox.git;a=blob;f=data/xsession/openbox-session.in;h=3cf3571fa64eacaa54000edd37e365f865edaa56;hb=HEAD) | |

### Up

| Path | Note |
| --- | --- |
| [~/.config/openbox/autostart](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/autostart) | after exec openbox  |
| [~/.config/openbox/bin/openbox-up](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/bin/openbox-up) | start all component |
| [~/.config/openbox/bin/openbox-up-wallpaper](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/bin/openbox-up-wallpaper) | feh |
| [~/.config/openbox/bin/openbox-up-compositor](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/bin/openbox-up-compositor) | picom |
| [~/.config/openbox/bin/openbox-up-panel](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/bin/openbox-up-panel) | tint2 |
| [~/.config/openbox/bin/openbox-up-applet](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/bin/openbox-up-applet) | system tray / applet |
| [~/.config/openbox/bin/openbox-up-xsettings](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/bin/openbox-up-xsettings) | xsettings daemon |

## 探索

執行

``` sh
cat /usr/share/xsessions/openbox-session.desktop
```

顯示

```
[Desktop Entry]
Type=XSession
Exec=/usr/local/bin/openbox-session.sh
TryExec=/usr/local/bin/openbox-session.sh
Name=Be Openbox
Comment=Openbox Xsession

Name[zh_TW]=Be Openbox
Comment[zh_TW]=Openbox Xsession
```

## 相關筆記

* [xsession 簡易入門](https://samwhelp.github.io/note-about-xsession/)
