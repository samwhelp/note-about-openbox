---
title: 搭配使用「clicksnap」平鋪移動視窗
nav_order: 7020
has_children: false
parent: 如何
---


# 搭配使用「clicksnap」平鋪移動視窗


## 相關連結

* [https://git.maboxlinux.org/napcok/clicksnap](https://git.maboxlinux.org/napcok/clicksnap)
* [https://github.com/napcok/clicksnap](https://github.com/napcok/clicksnap)
* Openbox Wiki / [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Mouse_bindings)

## 安裝腳本

* [安裝腳本](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/clicksnap-config/start)


## 依賴工具

* wmctrl
* xdotool
* xwininfo

## 下載 clicksnap

執行下面的指令，下載「clicksnap」到「/usr/local/bin/clicksnap」這個路徑

``` sh
wget -c 'https://git.maboxlinux.org/napcok/clicksnap/raw/branch/master/clicksnap'
chmod 755 clicksnap

sudo cp clicksnap /usr/local/bin/clicksnap
```

### 編輯設定檔

編輯「~/.config/openbox/rc.xml」這個檔案

加入下面的內容

``` xml
	<mousebind action="Press" button="A-Left">
		<action name="UnmaximizeFull"/>
		<action name="Execute">
			<command>clicksnap</command>
		</action>
	</mousebind>
```

要注意的是，上面的「mousebind action」要加入「context Frame」的區塊內

類似如下面的片段

``` xml
<context name="Frame">
	<mousebind action="Press" button="A-Left">
		<action name="UnmaximizeFull"/>
		<action name="Execute">
			<command>clicksnap</command>
		</action>
	</mousebind>
</context>
```

## 設定範例

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/share/gen/openbox-gen-rc/Section/Mousebind/Frame.php#L43-L48) ([完整範例](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/rc.xml#L2043-L2048))



## 按鍵綁定

> 可以選擇下面其中一種，我是採用「`Alt + Mouse Left Click`」

| 設定                                         | 動作                        |
| -------------------------------------------- | -------------------------- |
| `<mousebind action="Press" button="A-Left">` | `Alt + Mouse Left Click`   |
| `<mousebind action="Press" button="W-Left">` | `Win + Mouse Left Click`   |
| `<mousebind action="Press" button="S-Left">` | `Shift + Mouse Left Click` |
| `<mousebind action="Press" button="C-Left">` | `Ctrl + Mouse Left Click`  |


* Openbox Wiki / Help:Bindings / [1.1.1.1 Modifiers](http://openbox.org/wiki/Help:Bindings#Modifiers)


## 如何「clicksnap」平鋪移動視窗

將「單一視窗」看成「九宮格」，

然後在「單一視窗」的「九宮格」的其中一格，

我是設定，按下「`Alt + 滑鼠左鍵`」，就會將「該視窗」更改大小，

並且「平鋪移動」畫面上「九宮格」的那一格。
