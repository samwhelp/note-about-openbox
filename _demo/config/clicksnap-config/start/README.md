
# clicksnap

## Link

* https://git.maboxlinux.org/napcok/clicksnap
* https://github.com/napcok/clicksnap
* Openbox Wiki / [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Mouse_bindings)


## Requirements

* wmctrl
* xdotool
* xwininfo

## Download

download clicksnap to /usr/local/bin/clicksnap

``` sh
wget -c 'https://git.maboxlinux.org/napcok/clicksnap/raw/branch/master/clicksnap'
chmod 755 clicksnap

sudo cp clicksnap /usr/local/bin/clicksnap
```

## Config

edit ~/.config/openbox/rc.xml

```
	<mousebind action="Press" button="W-Left">
		<action name="UnmaximizeFull"/>
		<action name="Execute">
			<command>clicksnap</command>
		</action>
	</mousebind>
```

Add this mousebind action to context Frame:

```
<context name="Frame">
	<mousebind action="Press" button="W-Left">
		<action name="UnmaximizeFull"/>
		<action name="Execute">
			<command>clicksnap</command>
		</action>
	</mousebind>
</context>
```

## Mousebind

| Setting                                      | Mousebind                  |
| -------------------------------------------- | -------------------------  |
| `<mousebind action="Press" button="S-Left">` | `Shift + Mouse Left Click` |
| `<mousebind action="Press" button="C-Left">` | `Ctrl + Mouse Left Click`  |
| `<mousebind action="Press" button="A-Left">` | `Alt + Mouse Left Click`   |
| `<mousebind action="Press" button="W-Left">` | `Win + Mouse Left Click`   |

* Openbox Wiki / Help:Bindings / [1.1.1.1 Modifiers](http://openbox.org/wiki/Help:Bindings#Modifiers)
