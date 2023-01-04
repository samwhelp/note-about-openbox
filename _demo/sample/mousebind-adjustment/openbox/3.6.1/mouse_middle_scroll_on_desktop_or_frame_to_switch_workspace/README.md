
# openbox

## 3.6.1

* Openbox / [Download](http://openbox.org/wiki/Openbox:Download)

| File |
| --- |
| [openbox-3.6.1.tar.xz](http://openbox.org/dist/openbox/openbox-3.6.1.tar.xz) |
| [openbox-3.6.1.tar.gz](http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz) |


### download.sh

``` sh
wget -c -i download.txt
```

### download.txt

``` txt
http://openbox.org/dist/openbox/openbox-3.6.1.tar.xz
http://openbox.org/dist/openbox/openbox-3.6.1.tar.xz.asc
http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz
http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz.asc
```




## openbox / adjustment / mousebind

> Mouse middle scroll on desktop or frame to switch workspace

### context Desktop / orginal

* [config snippet](asset/orginal/rc.xml#L563-L581)

``` xml
  <mouse>
    <context name="Desktop">

      <mousebind button="Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>
      <mousebind button="C-A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="C-A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

    </context>
  </mouse>
```

### context Desktop / adjust

* [config snippet](rc.xml#L566-L586)

``` xml
  <mouse>
    <context name="Desktop">

      <mousebind button="Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

      <!--
      <mousebind button="C-A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="C-A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>
      //-->

    </context>
  </mouse>
```



### context Frame / orginal

* [config snippet](asset/orginal/rc.xml#L353-L364)

``` xml
  <mouse>
    <context name="Frame">

      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

      <mousebind button="C-A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="C-A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

    </context>
  </mouse>
```

### context Frame / adjust

* [config snippet](rc.xml#L353-L366)

``` xml
  <mouse>
    <context name="Frame">

      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>

      <!--
      <mousebind button="C-A-Up" action="Click">
        <action name="GoToDesktop"><to>previous</to></action>
      </mousebind>
      <mousebind button="C-A-Down" action="Click">
        <action name="GoToDesktop"><to>next</to></action>
      </mousebind>
      //-->

    </context>
  </mouse>
```
