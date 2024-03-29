
# Openbox / Config / Default

## Doc

| Spec |
| --- |
| [keybind](share/doc/spec-keybind.md) |
| [mousebind](share/doc/spec-mousebind.md) |


## Config File Path

### Person

| Path | Note |
| --- | --- |
| [~/.config/openbox/rc.xml](rc.xml) | openbox rc |
| [~/.config/openbox/menu.xml](menu.xml) | openbox menu |
| [~/.config/openbox/environment](environment) | openbox environment |
| [~/.config/openbox/autostart](autostart) | openbox autostart |


### System

| Path | Note |
| --- | --- |
| [/etc/xdg/openbox/rc.xml](http://git.openbox.org/?p=dana/openbox.git;a=blob;f=data/rc.xml;h=3e5554badb66aba9e090e9c47d3591cdfc0ba0df;hb=HEAD) | openbox rc |
| [/etc/xdg/openbox/menu.xml](http://git.openbox.org/?p=dana/openbox.git;a=blob;f=data/menu.xml;h=39da04d617a2eeac4af6df63b1a0c875b3f4cc49;hb=HEAD) | openbox menu |
| [/etc/xdg/openbox/environment](http://git.openbox.org/?p=dana/openbox.git;a=blob;f=data/environment;h=3311bd6feb066f30c9fc0e4904d25e507c52d34e;hb=HEAD) | openbox environment |
| [/etc/xdg/openbox/autostart](http://git.openbox.org/?p=dana/openbox.git;a=blob;f=data/autostart/autostart.in;h=1c261a0f5ee9fed79ec4d996532d9464893358d5;hb=HEAD) | openbox autostart |


## Version

run

``` sh
openbox --version
```

show

```
Openbox 3.6.1
Copyright (c) 2004   Mikael Magnusson
Copyright (c) 2002   Dana Jansens

This program comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it
under certain conditions. See the file COPYING for details.
```


## Default Config

run

``` sh
ls -1 /etc/xdg/openbox/
```

show

```
autostart
environment
menu.xml
rc.xml
```

## Default Config / Copy Command

run

``` sh
cp -rf /etc/xdg/openbox/. ./
```

or run

``` sh
cp -rf /etc/xdg/openbox/* ./
```


## Link

* [Openbox](http://openbox.org/)
* Openbox / [Help:DefaultConfiguration](http://openbox.org/wiki/Help:DefaultConfiguration)
* Openbox / [Help:Contents](http://openbox.org/wiki/Help:Contents)
* Debian Wiki / [Openbox](https://wiki.debian.org/Openbox)
* Arch Wiki / [Openbox](https://wiki.archlinux.org/title/openbox)
