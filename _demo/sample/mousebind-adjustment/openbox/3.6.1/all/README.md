
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


## openbox / adjustment / mousebind / Drag window to move, when window maximized.

> Drag window to move, when window maximized.


### context Titlebar / orginal

* [config snippet](asset/orginal/rc.xml#L374-L376)

``` xml
  <mouse>
    <context name="Titlebar">
      <mousebind button="Left" action="Drag">
        <action name="Move"/>
      </mousebind>
    </context>
  </mouse>
```

### context Titlebar / adjust

* [config snippet](rc.xml#L375-L378)

``` xml
  <mouse>
    <context name="Titlebar">
      <mousebind button="Left" action="Drag">
        <action name="UnmaximizeFull"/>
        <action name="Move"/>
      </mousebind>
    </context>
  </mouse>
```




### context Frame / orginal

* [config snippet](asset/orginal/rc.xml#L334-L336)

``` xml
  <mouse>
    <context name="Frame">
      <mousebind button="A-Left" action="Drag">
        <action name="Move"/>
      </mousebind>
    </context>
  </mouse>
```

### context Frame / adjust

* [config snippet](rc.xml#L334-L337)

``` xml
  <mouse>
    <context name="Frame">
      <mousebind button="A-Left" action="Drag">
        <action name="UnmaximizeFull"/>
        <action name="Move"/>
      </mousebind>
    </context>
  </mouse>
```



## openbox / adjustment / mousebind / Drag window to move, keep shaded, when window shaded.

> Drag window to move, keep shaded, when window shaded.

### context Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner / orginal

* [config snippet](asset/orginal/rc.xml#L404-L408)

``` xml
  <mouse>
    <context name="Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
    </context>
  </mouse>
```

### context Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner / adjust

* [config snippet](rc.xml#L414-L417)

``` xml
  <mouse>
    <context name="Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
    </context>
  </mouse>
```