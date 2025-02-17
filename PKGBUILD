# Maintainer: Bartek Laskowski <bartek at undg dot dev>

pkgname=pulse-remote-git
pkgver=v0.8.4.r7.gd21f02f
pkgrel=1
pkgdesc="Remote Audio Control for PulseAudio/PipeWire. Use your phone to adjust volume on your PC."
arch=('x86_64')
url="https://github.com/undg/pulse-remote"
license=('MIT')
install="$pkgname.install"
depends=('go' 'libpulse')
makedepends=('git')
provides=($pkgname)

source=("$pkgname::git+https://github.com/undg/go-prapi.git" "$pkgname.install")
sha256sums=('SKIP' '01269ec7984af8c36157efb7bf8c12d4de847a8458406a64b637da9c975459ff')

build() {
	cd "$pkgname"
	make build
}

package() {
	cd "$pkgname"
	install -Dm755 "build/bin/pulse-remote-server" "$pkgdir/usr/bin/pulse-remote-server"
	install -Dm644 "pulse-remote.service" "$pkgdir/usr/lib/systemd/user/pulse-remote.service"
	install -Dm644 "../$pkgname.install" "$pkgdir/usr/share/libalpm/scripts/$pkgname.install"
}

pkgver() {
	cd "$pkgname"
	git describe --long --abbrev=7 --tags | sed 's/^v-//;s/\([^-]*-g\)/r\1/;s/-/./g'
}
