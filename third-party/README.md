# Third-party code in Crest

Crest's own code isn't published, but the open-source libraries it uses are, and you can rebuild or swap them:

- **FFmpeg 7.1** (LGPL 2.1): decoding. Built decode-only and shipped as its own dynamic library,
  `Crest.app/Frameworks/libcrestff.dylib`, so you can replace it with your own build.
  [`build-ffmpeg.sh`](build-ffmpeg.sh) is the exact script (configure options, decoders, demuxers) used for the
  release. Source: https://ffmpeg.org/releases/ffmpeg-7.1.tar.xz
- **TagLib 2.0.2** (MPL 1.1 / LGPL 2.1): reading and editing tags. One change, in
  [`taglib-change.sh`](taglib-change.sh). Source: https://taglib.org
- **Opus 1.5.2, libogg 1.3.5, opusfile 0.12** (BSD), **utfcpp 4.0.5** (Boost), **Signalsmith Stretch / Linear**
  (MIT): unmodified.

Full license texts: [`LICENSES.txt`](LICENSES.txt) (also in the app: Settings → Open-Source Licenses).
Questions about any of this: open an issue.
