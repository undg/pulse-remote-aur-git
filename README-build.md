Be sure to regenerate .SRCINFO whenever PKGBUILD metadata changes, such as pkgver() updates; otherwise the AUR will not show updated version numbers.

To upload or update a package, add at least PKGBUILD and .SRCINFO, then any additional new or modified helper files (such as .install files or local source files such as patches), commit with a meaningful commit message, and finally push the changes to the AUR.

For example:

```bash
$ makepkg --printsrcinfo > .SRCINFO
$ git add PKGBUILD .SRCINFO
$ git commit -m "useful commit message"
$ git push
```


Get sha256sum after altering installation files.

```bash
makepkg -g
```

