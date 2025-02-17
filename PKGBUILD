pkgname=pulse-remote-git
pkgver=1.0.0
pkgrel=1
pkgdesc="Remote Audio Control for PulseAudio/PipeWire. Use your phone to adjust volume on your PC."
arch=('x86_64')
url="https://github.com/undg/pulse-remote"
license=('MIT')
install="pulse-remote.install"
depends=('go' 'libpulse')
makedepends=('git')
provides=('pulse-remote')

source=("$pkgname::git+https://github.com/undg/go-prapi.git" "$pkgname.install")
sha256sums=('SKIP' 'SKIP')

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
