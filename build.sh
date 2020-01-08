# build ffmpeg
./configure \
  --prefix="$HOME/.local/" \
  --pkg-config-flags="--static" \
  --extra-libs="-lpthread -lm" \
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
  --enable-nonfree && \
make -j8 && \
make install
