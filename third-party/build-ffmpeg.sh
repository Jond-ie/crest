#!/bin/bash
# Builds a decode-only, LGPL FFmpeg for iOS (arm64 + arm64e) as one dynamic
# library, ffmpeg/libcrestff.dylib, loaded from the app's Frameworks folder
# (dynamic linking keeps the LGPL obligations simple).
set -e
cd "$(dirname "$0")"
L=$(ls -d ~/toolchains/LLVM-* | tail -1)
T=~/theos/toolchain/linux/iphone/bin
SDK=~/theos/sdks/iPhoneOS16.5.sdk
SRC=$PWD/ffmpeg-7.1
OUT=$PWD/ffmpeg
DECODERS="mp3,mp3float,mp2,mp2float,mp1,mp1float,aac,aac_latm,alac,flac,opus,vorbis,ape,wavpack,mpc7,mpc8,tta,tak,wmalossless,wmav1,wmav2,wmapro,dsd_lsbf,dsd_msbf,dsd_lsbf_planar,dsd_msbf_planar,pcm_s16le,pcm_s16be,pcm_s24le,pcm_s24be,pcm_s32le,pcm_s32be,pcm_f32le,pcm_f32be,pcm_f64le,pcm_f64be,pcm_u8,pcm_s8,pcm_s16le_planar,pcm_s24daud,ac3,eac3"
DEMUXERS="mp3,aac,mov,flac,ogg,wav,w64,aiff,ape,wv,mpc,mpc8,tta,tak,asf,matroska,dsf,iff,caf,au"
PARSERS="mpegaudio,aac,aac_latm,flac,opus,vorbis,mpeg4video,ac3,tak"
mkdir -p "$OUT"
for ARCH in arm64 arm64e; do
	B=$PWD/.ffbuild/$ARCH
	mkdir -p "$B"
	CC="$L/bin/clang -target $ARCH-apple-ios15.0 -isysroot $SDK"
	(cd "$B" && "$SRC/configure" --enable-cross-compile --target-os=darwin --arch=aarch64 \
		--cc="$CC" --as="$CC" --ld="$CC -fuse-ld=$T/ld" --ar=$T/ar --ranlib=$T/ranlib --nm=$L/bin/llvm-nm --strip=$T/strip \
		--prefix="$B/out" --enable-static --disable-shared --enable-pic \
		--disable-everything --disable-programs --disable-doc --disable-network --disable-autodetect \
		--disable-avdevice --disable-avfilter --disable-swscale --disable-swresample --disable-postproc \
		--disable-debug --enable-small \
		--enable-decoder=$DECODERS --enable-demuxer=$DEMUXERS --enable-parser=$PARSERS --enable-protocol=file \
		--extra-cflags="-fvisibility=default" >/dev/null \
		&& sed -i 's|^#define FFMPEG_CONFIGURATION .*|#define FFMPEG_CONFIGURATION "crest decode-only"|' config.h \
		&& make -j"$(nproc)" >/dev/null 2>"$B/err.log" && make install >/dev/null) || { tail -20 "$B/err.log" 2>/dev/null; tail -20 "$B/ffbuild/config.log"; exit 1; }
	# one dylib out of the static libraries
	$L/bin/clang -target $ARCH-apple-ios15.0 -isysroot $SDK -fuse-ld=$T/ld -dynamiclib \
		-install_name @rpath/libcrestff.dylib -o "$B/libcrestff.dylib" \
		-Wl,-all_load "$B/out/lib/libavformat.a" "$B/out/lib/libavcodec.a" "$B/out/lib/libavutil.a" \
		-framework CoreFoundation -framework Foundation -framework AudioToolbox -lm
done
$T/lipo -create .ffbuild/arm64/libcrestff.dylib .ffbuild/arm64e/libcrestff.dylib -output "$OUT/libcrestff.dylib"
rm -rf "$OUT/include"; cp -R .ffbuild/arm64/out/include "$OUT/include"
$T/ldid -S "$OUT/libcrestff.dylib"
# no build-machine paths may ship
! strings "$OUT/libcrestff.dylib" | grep -q "$HOME" || { echo "build paths leaked into libcrestff"; exit 1; }
ls -la "$OUT/libcrestff.dylib"
