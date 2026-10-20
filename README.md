<div align="center">

# Crest

**A music player for your own songs that plays them exactly as good as the files are.**<br>
No streaming, no account, no tracking. Looks like hi-fi gear, not an Apple Music clone.

[![Release](https://img.shields.io/github/v/release/Jond-ie/crest?include_prereleases&label=release&color=f07c1c)](../../releases)
![iOS 15+](https://img.shields.io/badge/iOS-15%2B-555)
![Jailbreak](https://img.shields.io/badge/rootless-.deb-555)
![TrollStore](https://img.shields.io/badge/TrollStore-.tipa-555)
![Sideload](https://img.shields.io/badge/sideload-.ipa-555)

**[Website](https://jond-ie.github.io/repo/crest/)** · **[Download](../../releases)** · **[Sileo repo](https://jond-ie.github.io/repo)** · **[Report a bug](../../issues)** · **[X @Jond_ie](https://x.com/Jond_ie)**

<img src="screenshots/player.png" width="24%"> <img src="screenshots/deck-tone.png" width="24%"> <img src="screenshots/deck-space.png" width="24%"> <img src="screenshots/equalizer.png" width="24%">
<img src="screenshots/home.png" width="24%"> <img src="screenshots/library.png" width="24%"> <img src="screenshots/album.png" width="24%">

</div>

Crest plays **your own files**: no streaming, no account, no tracking.

> **Public beta: 1.0.0 Beta 4.1.** New: shuffle all of an artist's songs from Search, no more 50-result limit, and covers you add show right away.
> This repo holds the releases and the issue tracker; Crest's own source code isn't published.

### Highlights
- **Bit-Perfect mode**: the file reaches your DAC or headphones untouched, proven sample for sample
- **FLAC, ALAC, DSD, Opus and ~15 more formats**, each at its own sample rate
- **The Deck**: EQ curve, knobs, reverb, tempo and key lock, one swipe up from the player
- **Automix**: beat-matched, tempo-matched DJ transitions that keep albums gapless
- **16-band parametric EQ** with AutoEQ import and a separate EQ for every output
- **Smoked Acrylic Hi-Fi** look with 7 accent colours and OLED Black
- **Jailbreak, TrollStore or sideload**: no jailbreak needed

---

## Made for you if…

| You… | Crest… |
|---|---|
| rip CDs or buy FLAC | plays every song lossless, at its own sample rate |
| have odd formats | plays APE, WavPack, DSD and CUE sheets too |
| listen to whole albums | stays gapless, even with Automix on |
| want it to flow like a DJ set | blends songs on the beat with Automix |
| switch between AirPods, a car and a speaker | keeps a separate EQ for each and switches by itself |
| found your headphones on AutoEQ | imports the curve |
| have some songs way louder than others | evens them out with ReplayGain |
| sing along | shows synced lyrics, word by word when the file has them |
| have years of songs in the Music app | brings them in with your plays and stars, no copies (jailbreak / TrollStore) |
| track what you listen to | scrobbles to ListenBrainz and Last.fm |
| aren't jailbroken | has TrollStore and sideload builds |

---

## Install

Downloads are on the **[Releases](../../releases)** page. Pick the one for your phone:

| Your phone | Get this | What you get |
|---|---|---|
| **Jailbroken** (rootless: Dopamine, palera1n…) | the **`.deb`**, or add **`https://jond-ie.github.io/repo`** in Sileo / Zebra | Everything. The repo gives you updates. |
| **TrollStore** | **`Crest_….tipa`** | Everything, same as the jailbreak build. |
| **Not jailbroken** | **`Crest_…-sideload.ipa`** with AltStore, SideStore, Sideloadly… | Sandboxed: see below. |

- **iOS 15 and up.** One build runs on every iPhone that can run iOS 15.
- Don't put the `.tipa` on a phone that already has the `.deb`: they share an app ID. Pick one.

> [!IMPORTANT]
> **Sideload (and possibly TrollStore): add music with Wi-Fi Transfer for now.**
> Importing through the Files app may not work on those builds yet. Wi-Fi Transfer is tested and works.

<details>
<summary><b>What the sideload build can't do</b></summary>

Sideloaded apps run in Apple's sandbox, so:
- It only sees music you put **into Crest**, and for now that means **Wi-Fi Transfer** (drag songs in from a
  computer's browser). It can't see songs synced to the Music app.
- No CarPlay (that needs an entitlement sideloading can't grant).
- The widget only works if your signing tool keeps the app group.
- With a free Apple ID, the app has to be re-signed every 7 days (your sideloading tool does this).
</details>

---

## Features

### Playback
- **Formats:** FLAC, ALAC, WAV, AIFF, MP3, AAC, Opus, Vorbis, APE, WavPack, Musepack, TAK, TTA, WMA,
  DSD (DSF/DFF) and CUE sheets.
- **Bit-Perfect mode** (Settings → Bit-Perfect): the song goes straight to the output, with no EQ, effects,
  volume ramps or mixing in between. Checked sample for sample against the file. A **BIT-PERFECT** label shows when
  it really is; tap the format chips on Now Playing to see why when it isn't (for example the built-in speaker runs at 48 kHz).
- **Each song at its own sample rate:** Crest only resamples when the output can't do the file's rate, and says so
  (the RESAMPLED tag on the player).
- **Gapless**, **crossfade** and **[Automix](#how-automix-works)**.
- **ReplayGain** (track / album) and EBU R128 loudness levelling.
- Plays the songs already synced to the **Music app** (jailbreak / TrollStore; not Apple Music downloads or DRM).
- The queue comes back after a relaunch, paused where you left it.

### Sound
- **16-band parametric EQ** (or graphic), **AutoEQ** headphone profile import.
- **A separate EQ per output**: speaker, wired headphones, every Bluetooth device, USB DACs, CarPlay and AirPlay.
  Crest switches when the output changes.
- **The Deck** (swipe up on the player):
  - **Tone**: EQ curve, bass / treble / preamp / crossfade knobs, limiter, transitions, ReplayGain.
  - **Space**: balance, stereo width, reverb (room, hall, plate, church), tempo, mono and key lock.

### Library
- Albums, artists, genres, folders and songs, search, **smart playlists** with rules, ratings, listening history
  and stats.
- **Synced lyrics** (word by word where the file has it), a tag editor, and file info (format, bit depth, sample
  rate, bitrate).
- Add music with **Wi-Fi Transfer** from any computer on the same network, or from the **Files** app (jailbreak
  build; see the note under Install).

### Everything else
- **Scrobbling** to ListenBrainz and Last.fm (off until you connect an account).
- **Now Playing widget**, **CarPlay** (jailbreak / TrollStore), lock screen and Control Center controls.
- Sleep timer (including "stop after this song"), visualizer and a stereo field view.

---

## Themes and the look

Crest is meant to feel like hi-fi gear you'd want on a shelf, not another flat list of songs.

| | |
|---|---|
| **Style** | "Smoked Acrylic Hi-Fi": smoked glass panels over a near-black brushed base, spun-aluminium round keys, square-cut chips, and a dot-matrix display for the song title (bundled pixel font) |
| **Accent colours** | Mint · Amber · Ice · Rose · Violet · Lime · Orange. The accent runs through the buttons, waveform, knob rings, glows and the dot-matrix ink |
| **Base** | Graphite, or **OLED Black** for a fully black background |
| **Album pages** | Take their colours from the cover art, the way iTunes 11 did |
| **No artwork?** | Crest generates a cover: an anodised metal plate with the album's initials and a colour stripe |
| **VU meters** | Optional L/R meters under the waveform (Settings → Appearance; off by default, no cost when off) |
| **Minimal Player** | A calm Now Playing: big plain type, bare keys, a thin waveform, no faceplate (Settings → Appearance) |
| **Feel** | Knobs with drag and detents, latching shuffle / repeat keys, haptics on the controls |

---

## How Automix works

Automix is a DJ-style transition engine, not a plain crossfade.

| Step | What happens |
|---|---|
| **On the beat** | Reads each song's tempo and beat grid and starts the blend exactly on a beat, so both songs stay locked |
| **Tempo match** | The incoming song is stretched to the outgoing tempo during the blend (e.g. 120 → 124 BPM), then glides back to its own tempo over its next 8 beats |
| **Bass swap** | The incoming song comes in without its bass; halfway, on a beat, the basslines swap, so two basslines never fight |
| **Echo out** | The last beat of the outgoing song repeats and fades (each repeat quieter and darker) while the next song starts on the cut |
| **Filter sweep** | The outgoing song is filtered away as the new one comes in |
| **Loudness** | Matched across the transition. **Albums stay gapless** even with Automix on |

---

## Under the hood

<details>
<summary><b>How it's built</b></summary>

- **Decoding:** Apple's own decoders where they handle the file, and a decode-only FFmpeg build (as its own
  library) for everything else, all feeding one playback engine.
- **Sample rates:** the audio session switches to each file's own rate, so a 44.1 kHz song and a 96 kHz song both
  play natively when the output supports it. Crest marks the songs it has to resample.
- **EQ and effects:** parametric EQ with per-output presets, a limiter, ReplayGain that never pushes a song past
  full scale, and a time-stretcher (Signalsmith Stretch) for tempo and key lock.
- **Library:** an on-device database with smart-playlist rules, play counts, ratings and history; tags are read
  and written with TagLib.
- **Interface:** SwiftUI for the screens, with the parts that redraw every frame (waveform, meters, visualizer, EQ
  curve) on Core Animation, so scrolling and the player stay smooth even on an A13.
- About **20,000 lines** of Objective-C and Swift, plus the open-source parts below.
</details>

---

## Tested on

| Build | Tested |
|---|---|
| Jailbreak (rootless) | iOS 15.8.6 (A10), iOS 16.2 (A13), iOS 17.5.1 (A13); an earlier Beta 3 build on iOS 18 (A13) |
| TrollStore | Installs and runs |
| Sideload | A stock iPhone on **iOS 27 beta**: installs, plays, Wi-Fi Transfer works |
| Big libraries | 23,000 songs scanned, leaving the app mid-scan (iOS 17.5.1) |
| Not yet | CarPlay in a real car, lots of weird files: reports welcome |

## What's next: Beta 5
Planned for the last beta before 1.0.0. Nothing here is promised yet, and reports from other iPhones help most:
- **Files import on the sideload version** (today only Wi-Fi Transfer adds music there).
- **CarPlay on jailbreak and TrollStore.** It hasn't been tried in a car yet, so I'd love testers.
- **Skins:** more looks for Now Playing.
- **Smaller polish**, like clearer options in the Minimal Player.

## Known issues (Beta 4.1)
- Sideload, and possibly TrollStore: only **Wi-Fi Transfer** adds music right now; Files import may not work yet.
- CarPlay hasn't been tried in a car.

## Bugs and ideas
Open an **[issue](../../issues)** with:
1. the build (`.deb` / `.tipa` / sideload `.ipa`),
2. your iOS version,
3. what happened. For files that won't play or sound wrong, add the format (Crest shows it under **Get Info**).

## Privacy
No analytics, no ads. Crest only goes online if you turn on **scrobbling** (ListenBrainz / Last.fm) or **online
lyrics** (LRCLIB); both are off until you switch them on. **Wi-Fi Transfer** only runs while its screen is open and
asks for a PIN shown on the phone.

## Open-source parts
Crest uses FFmpeg (LGPL 2.1, as a separate dynamic library), TagLib (MPL 1.1), Opus and Ogg (BSD), utfcpp (Boost)
and Signalsmith Stretch (MIT). Full license texts are in the app (**Settings → Open-Source Licenses**).
**[`third-party/`](third-party)** has the exact FFmpeg build script and the one change made to TagLib, so you can
rebuild or replace those parts.

<sub>Crest itself is © Jond-ie, all rights reserved.</sub>
