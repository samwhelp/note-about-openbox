
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

> Mouse middle scroll on titlebar, keep focus, when window shading


### context Titlebar / orginal

* [config snippet](asset/orginal/rc.xml#L381-L400)

``` xml
  <mouse>
    <context name="Titlebar">

      <mousebind button="Up" action="Click">
        <action name="if">
          <shaded>no</shaded>
          <then>
            <action name="Shade"/>
            <action name="FocusToBottom"/>
            <action name="Unfocus"/>
            <action name="Lower"/>
          </then>
        </action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="if">
          <shaded>yes</shaded>
          <then>
            <action name="Unshade"/>
            <action name="Raise"/>
          </then>
        </action>
      </mousebind>
    </context>

  </mouse>
```


### context Titlebar / adjust

* [config snippet](rc.xml#L381-L402)

``` xml
  <mouse>
    <context name="Titlebar">

      <mousebind button="Up" action="Click">
        <action name="if">
          <shaded>no</shaded>
          <then>
            <action name="Shade"/>
            <!--
            <action name="FocusToBottom"/>
            <action name="Unfocus"/>
            <action name="Lower"/>
            //-->
          </then>
        </action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="if">
          <shaded>yes</shaded>
          <then>
            <action name="Unshade"/>
            <action name="Raise"/>
          </then>
        </action>
      </mousebind>

    </context>
  </mouse>
```
