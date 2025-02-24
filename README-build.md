# Basic Info
Be sure to regenerate .SRCINFO whenever PKGBUILD metadata changes, such as pkgver() updates; otherwise the AUR will not show updated version numbers.

To upload or update a package, add at least PKGBUILD and .SRCINFO, then any additional new or modified helper files (such as .install files or local source files such as patches), commit with a meaningful commit message, and finally push the changes to the AUR.


## Basic workflow

1. Clone package (first time only):

```bash
git clone ssh://aur@aur.archlinux.org/pulse-remote-aur-git.git
```

Build package to get latest version. PKGBUILD will be updated automatically

```bash
$ makepkg -fi # ❯ makepkg --force --install
```

Update `.SRCINFO`:

```bash
$ makepkg --printsrcinfo > .SRCINFO
```

Commit changes:

```bash
$ git add PKGBUILD .SRCINFO
$ git commit -m "useful commit message"
$ git push
```


## Other notes

Get sha256sum after altering installation files.

```bash
makepkg -g
```

