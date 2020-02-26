sudo apt-get update -qq && sudo apt-get -y install \
  autoconf \
  automake \
  build-essential \
  cmake \
  git-core \
  libass-dev \
  libfreetype6-dev \
  libsdl2-dev \
  libtool \
  libva-dev \
  libvdpau-dev \
  libvorbis-dev \
  libxcb1-dev \
  libxcb-shm0-dev \
  libxcb-xfixes0-dev \
  pkg-config \
  texinfo \
  wget \
  zlib1g-dev

sudo apt-get install nasm \
  yasm \
  libx264-dev \
  libx265-dev \
  libnuma-dev \
  libvpx-dev \
  libfdk-aac-dev \
  libmp3lame-dev \
  libopus-dev

PKG_CONFIG_PATH="/usr/local/ffmpeg/lib/pkgconfig" ./configure \
  --prefix="/usr/local/ffmpeg" \
  --pkg-config-flags="--static" \
  --extra-cflags="-I/usr/local/ffmpeg/include" \
  --extra-ldflags="-L/usr/local/ffmpeg/lib" \
  --extra-libs="-lpthread -lm" \
  --bindir="/usr/local/bin" \
  --enable-gpl \
  --enable-libass \
  --enable-libfdk-aac \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libopus \
  --enable-libvorbis \
  --enable-libvpx \
  --enable-libx264 \
  --enable-libx265 \
  --enable-nonfree

make -j8

sudo make install
