
# openboxrc-ctrl

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-openbox/gh-pages/_demo/project/openboxrc-profile/openboxrc-ctrl/openboxrc-ctrl' -O "$HOME/.local/bin/openboxrc-ctrl"

chmod 755 "$HOME/.local/bin/openboxrc-ctrl"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-openbox/gh-pages/_demo/project/openboxrc-profile/openboxrc-ctrl/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-openbox/gh-pages/_demo/project/openboxrc-profile/openboxrc-ctrl/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ openboxrc-ctrl
```

or

``` sh
$ openboxrc-ctrl help
```


### Debug

``` sh
$ export DEBUG_OPENBOXRC_CTRL=true
```
