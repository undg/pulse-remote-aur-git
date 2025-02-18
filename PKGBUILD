# Maintainer: Bartek Laskowski <bartek at undg dot dev>

pkgname=pulse-remote-git
pkgver=0.8.5.r1.g2e337b5
pkgrel=1
pkgdesc="Remote Audio Control for PulseAudio/PipeWire. Use your phone to adjust volume on your PC."
arch=('x86_64')
url="https://github.com/undg/pulse-remote"
license=('MIT')
depends=('libpulse')
makedepends=('go' 'git')

source=("$pkgname::git+https://github.com/undg/go-prapi.git")
sha256sums=('SKIP')

prepare() {
	cd "$pkgname-$pkgver"
	mkdir -p build/
}

build() {
	cd "$pkgname"
	export CGO_CPPFLAGS="${CPPFLAGS}"
	export CGO_CFLAGS="${CFLAGS}"
	export CGO_CXXFLAGS="${CXXFLAGS}"
	export CGO_LDFLAGS="${LDFLAGS}"
	export GOFLAGS="-buildmode=pie -trimpath -ldflags=-linkmode=external -mod=readonly -modcacherw"

	# @TODO (undg) 2025-02-18: make build pulls pr-web. There is no reflection of FE version in this repo. Do not publish before it will be fixed.
	make build
}

check() {
	cd "$pkgname-$pkgver"
	make test
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
