---
title: 系統操作
nav_order: 5001
has_children: false
parent: basic-keybind-move-workspace-mod4-number
grand_parent: 設定
---


# 系統操作


## 顯示「視窗操作選單」

* [設定片段](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/basic-keybind-move-workspace-mod4-number/share/gen/openbox-gen-rc/Section/Keybind/MenuClient.php)

| 按鍵組合           | 功能        | 執行指令             |
| ----------------- | ------------ | -------------------- |
| `Alt + Space`  | 顯示「視窗操作選單」 | `client-menu` (openbox 內建) |

> 也可以在「視窗標題列」使用「滑鼠右鍵」，就會顯示「視窗操作選單」。


## 顯示「桌面操作選單」

* [設定片段](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/basic-keybind-move-workspace-mod4-number/share/gen/openbox-gen-rc/Section/Keybind/MenuRoot.php)

| 按鍵組合           | 功能        | 執行指令             |
| ----------------- | ------------ | -------------------- |
| `Win + Space`  | 顯示「桌面操作選單」 | `root-menu` (openbox 內建) |

> 也可以在「桌面」使用「滑鼠右鍵」，就會顯示「桌面操作選單」。


## 顯示「工作空間操作選單」

* [設定片段](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/basic-keybind-move-workspace-mod4-number/share/gen/openbox-gen-rc/Section/Keybind/MenuClientList.php)

| 按鍵組合           | 功能        | 執行指令             |
| ----------------- | ------------ | -------------------- |
| `Win + c`  | 顯示「桌面操作選單」 | `client-list-combined-menu` (openbox 內建) |

> 也可以在「桌面」使用「滑鼠中鍵」，就會顯示「工作空間操作選單」。


## 切換「顯示桌面」

* [設定片段](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/basic-keybind-move-workspace-mod4-number/share/gen/openbox-gen-rc/Section/Keybind/SystemToggleShowDesktop.php)

| 按鍵組合           | 功能        | 執行指令             |
| ----------------- | ------------ | -------------------- |
| `Win + d`  | 顯示「桌面操作選單」 | `ToggleShowDesktop` (openbox 內建) |

> 也可以在「桌面」使用「滑鼠左鍵」，反覆按下，就會切換「顯示桌面」。

* [設定片段](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/basic-keybind-move-workspace-mod4-number/share/gen/openbox-gen-rc/Section/Mousebind/Root.php#L7)
