After changing PKGBUILD regenerate .SRCINFO and commit it.

```bash
makepkg --printsrcinfo > .SRCINFO
```



Get sha256sum after altering installation files.

```bash
makepkg -g
```

