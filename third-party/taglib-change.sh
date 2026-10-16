#!/bin/sh
# The only change Crest makes to TagLib 2.0.2: its debug printing (TagLib::Variant stream output) is stubbed out
# because it does not compile with the iOS toolchain used (ambiguous operator<<). Nothing else is modified.
# Run in an empty folder; it downloads TagLib 2.0.2 and utfcpp 4.0.5 and applies the change.
set -e
# TagLib 2.0.2 (MPL 1.1 / LGPL 2.1) + utfcpp, for the tag editor; build with:
#   ARCHS="arm64 arm64e" tmake -f Makefile.taglib TARGET=iphone:clang:latest:15.0 FINALPACKAGE=1
curl -sSL https://github.com/taglib/taglib/releases/download/v2.0.2/taglib-2.0.2.tar.gz | tar xz
curl -sSL https://github.com/nemtrif/utfcpp/archive/refs/tags/v4.0.5.tar.gz | tar xz
# its debug printing doesn't compile with this toolchain (ambiguous operator<<): stub it out
python3 - <<'P'
p='taglib-2.0.2/taglib/toolkit/tvariant.cpp'; s=open(p).read()
for sig in ['void printStringToStream(std::ostream &s, const String &v)','void printByteVectorToStream(std::ostream &s, const String &v)','void printVariantToStream(std::ostream &s, const StdVariantType &v)']:
    a=s.index(sig); b=s.index('{',a); d=0; i=b
    while True:
        d += {'{':1,'}':-1}.get(s[i],0)
        if s[i]=='}' and d==0: break
        i+=1
    s=s[:b]+'{ (void)s; (void)v; }'+s[i+1:]
open(p,'w').write(s)
P
