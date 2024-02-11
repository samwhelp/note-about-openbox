---
title: 系統選單
nav_order: 5002
has_children: false
parent: 我的設定
grand_parent: 設定
---


# 系統選單


## 顯示「視窗操作選單」

* [設定片段](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/main/share/gen/openbox-gen-rc/Section/Keybind/MenuClient.php)

| 按鍵組合           | 功能        | 執行指令             |
| ----------------- | ------------ | -------------------- |
| `Alt + Space`  | 顯示「視窗操作選單」 | `client-menu` (openbox 內建) |

> 也可以在「視窗標題列」使用「滑鼠右鍵」，就會顯示「視窗操作選單」。


## 顯示「桌面操作選單」

* [設定片段](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/main/share/gen/openbox-gen-rc/Section/Keybind/MenuRoot.php)

| 按鍵組合           | 功能        | 執行指令             |
| ----------------- | ------------ | -------------------- |
| `Win + Space`  | 顯示「主要功能選單」 | `root-menu` (openbox 內建) |

> 也可以在「桌面」使用「滑鼠右鍵」，就會顯示「主要功能選單」。


## 顯示「工作空間操作選單」

* [設定片段](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/main/share/gen/openbox-gen-rc/Section/Keybind/MenuClientList.php)

| 按鍵組合           | 功能        | 執行指令             |
| ----------------- | ------------ | -------------------- |
| `Win + c`  | 顯示「桌面操作選單」 | `client-list-combined-menu` (openbox 內建) |

> 也可以在「桌面」使用「滑鼠中鍵」，就會顯示「工作空間操作選單」。
