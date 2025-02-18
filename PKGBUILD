# Maintainer: Bartek Laskowski <bartek at undg dot dev>

pkgname=pulse-remote-git
pkgver=0.8.5.r0.g3d78ad0
pkgrel=1
pkgdesc="Remote Audio Control for PulseAudio/PipeWire. Use your phone to adjust volume on your PC."
arch=('x86_64')
url="https://github.com/undg/pulse-remote"
license=('MIT')
depends=('go' 'libpulse')
makedepends=('git')

source=("$pkgname::git+https://github.com/undg/go-prapi.git")
sha256sums=('SKIP')

build() {
	cd "$pkgname"
	make build
}

package() {
	cd "$pkgname"
	install -Dm755 "build/bin/pulse-remote-server" "$pkgdir/usr/bin/pulse-remote-server"
	install -Dm644 "pulse-remote.service" "$pkgdir/usr/lib/systemd/user/pulse-remote.service"
	install -Dm644 "LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
	install -Dm644 "pulse-remote.1" "$pkgdir/usr/share/man/man1/pulse-remote.1"
}

pkgver() {
	cd "$pkgname"
	git describe --long --abbrev=7 --tags | sed 's/^v//;s/\([^-]*-g\)/r\1/;s/-/./g'
}
