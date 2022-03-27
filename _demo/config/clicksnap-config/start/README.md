
# clicksnap

### Link

* https://git.maboxlinux.org/napcok/clicksnap
* https://github.com/napcok/clicksnap

### Requirements

* wmctrl
* xdotool
* xwininfo

### Download

download clicksnap to /usr/local/bin/clicksnap

``` sh
wget -c 'https://git.maboxlinux.org/napcok/clicksnap/raw/branch/master/clicksnap'
chmod 755 clicksnap

sudo cp clicksnap /usr/local/bin/clicksnap
```

### Config

edit ~/.config/openbox/rc.xml

```
	<mousebind action="Press" button="C-Left">
		<action name="UnmaximizeFull"/>
		<action name="Execute">
			<command>clicksnap</command>
		</action>
	</mousebind>
```

Add this mousebind action to context Frame:

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
