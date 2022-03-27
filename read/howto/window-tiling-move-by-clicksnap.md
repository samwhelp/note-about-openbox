---
title: 搭配使用「clicksnap」平鋪移動視窗
nav_order: 7010
has_children: true
parent: 如何
---


# 搭配使用「clicksnap」平鋪移動視窗


## 相關連結

* [https://git.maboxlinux.org/napcok/clicksnap](https://git.maboxlinux.org/napcok/clicksnap)
* [https://github.com/napcok/clicksnap](https://github.com/napcok/clicksnap)


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

```
	<mousebind action="Press" button="C-Left">
		<action name="UnmaximizeFull"/>
		<action name="Execute">
			<command>clicksnap</command>
		</action>
	</mousebind>
```

要注意的是，上面的「mousebind action」要加入「context Frame」的區塊內

類似如下面的片段

```
<context name="Frame">
	<mousebind action="Press" button="C-Left">
		<action name="UnmaximizeFull"/>
		<action name="Execute">
			<command>clicksnap</command>
		</action>
	</mousebind>
</context>
```

## 設定範例

* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/plan/config/openbox/share/gen/openbox-gen-rc/Section/Mousebind/Frame.php#L31) ([完整範例](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/plan/config/openbox/rc.xml#L2023))
* [設定片段](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/share/gen/openbox-gen-rc/Section/Mousebind/Frame.php#L32) ([完整範例](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/rc.xml#L2004))


## 如何「clicksnap」平鋪移動視窗

將「單一視窗」看成「九宮格」，

然後在「單一視窗」的「九宮格」的其中一格，

按下「Ctrl + 滑鼠左鍵」，就會將「該視窗」更改大小，

並且「平鋪移動」畫面上「九宮格」的那一格。
