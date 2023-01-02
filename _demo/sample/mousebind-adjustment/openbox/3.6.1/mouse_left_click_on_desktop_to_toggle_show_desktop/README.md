
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

> mouse left click on desktop to toggle show desktop


### context Root / orginal

* [config snippet](asset/orginal/rc.xml#L593-L601)


### context Root / adjust

* [config snippet](rc.xml#L603-L605)

``` xml
  <mouse>
    <context name="Root">
      <mousebind button="Left" action="Press">
        <action name="ToggleShowDesktop"/>
      </mousebind>
    </context>
  </mouse>
```
