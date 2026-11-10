# Changelog

Each version as published on the Jond_ie repo (https://jond-ie.github.io/repo/). Dates are when the package went up on the repo.

## 1.1.0

- **Car Mode** (Minimal player): the cover edge to edge, then only the song and the scrubber. Tap with two fingers to play or pause; double-tap with two fingers to go in or out.
- **Cover art download:** missing covers are looked up on the iTunes Store and the Cover Art Archive. Get Info → Change Artwork → Find Online lets you pick one.
- **Resume and bookmarks:** long files (20 minutes or more by default; Settings → Resume) start again where you left them. ⋯ → Bookmarks saves points in any song.
- **Full-screen visualizer:** six presets that react to bass, mids, treble and beats. ⋯ → Full-Screen Visualizer, or double-tap the cover.
- **Skins:** `.crestskin` files change Now Playing, the mini player and the accent colour. Settings → Skins; Share Template gives you a starting file.
- **Background Visuals:** a soft light that moves with the music behind the song on Now Playing, in the mini player, and at the top of Home. Settings → Background Visuals: Off, Subtle or Strong. It stops when nothing is playing and stays still in Low Power Mode or with Reduce Motion on.
- **Play and Shuffle on Home:** start the whole library in one tap.
- **The Deck is a solid panel** with Tone and Space at the top, presets (Flat, Bass, Treble, Loud, Warm) and plainer names (No Clipping, Full EQ, Crossfade, Levelling, Keep Pitch). Tap any control or turn a knob to see what it does.
- **A heart replaces the five stars.** Songs you rated 4 or 5 stars are favourites now. Home has a Favourites shelf, and smart playlists have a Favourite rule.
- **Now Playing matches the mini player:** the song sits in the same display, with the same keys. The small visualizer over the cover is gone; double-tap the cover for the full-screen one.
- **USB DACs:** Crest asks the DAC for the song's sample rate a second time and waits longer for it to switch. This may help DACs that stayed on one rate; it isn't confirmed on a DAC yet. Signal Path (tap DIRECT or RESAMPLED) now shows what was asked and has an Ask Again button.
- **Fixed:** the Deck's preamp could read "-0.0"; the EQ curve stayed lit after turning the EQ off from the Deck; cover search could come back empty or with blank thumbnails.

## 1.0.0 (2026-11-01)

- **Out of beta.** Thanks to everyone who tested and sent requests.
- **Every song at its own sample rate, one after another.** When a song ended and the next one had a different rate (say 44.1 kHz, then 96 kHz), the next one was quietly converted to the old rate. Now Crest switches the output between them, with a very short pause only where the rates differ. Albums at one rate stay gapless. Crossfade and Automix still play both songs at one rate while they blend.
- **USB DACs that switch rates a moment late** no longer get stuck converting everything to one rate.
- **Classic:** turn the whole app into an iPod classic, with a click wheel you can really turn. Settings → Appearance → Player Skin. Browse by Playlists, Artists, Albums, Songs and Genres. The cover on the right now shows in full (it was cut in half).
- **CarPlay log:** if CarPlay acts up, Settings → CarPlay → Share CarPlay Log and send it in an issue.
- **VU Meters** now also shows greyed out in the Classic player, with the reason.

## 1.1.0~beta4.1

- **Fixed:** Beta 4 shipped with the plain fallback screens on iOS 15 to 17 (the newer look didn't load). 4.1 brings the normal screens back everywhere.
- **VU meters in the Minimal Player:** the ⋯ menu now shows the VU Meters item greyed out with the reason (they only fit the Crest Player). It was missing on iOS 15.
- **Files import on sideloads:** picking music in Files now shows the import and the result, and the picker accepts every audio type. Still needs testing on a real sideload.
- **Plus Beta 4:** shuffle an artist from Search, no 50-song search limit, covers you add show right away.

## 1.1.0~beta4

- **Shuffle an artist:** a shuffle button next to each artist in Search plays all their songs, from every album, in random order.
- **More search results:** songs in Search no longer stop at 50.
- **Covers:** a cover you add in Get Info now shows right away. Crest also finds folder art named cover, folder, front, album or AlbumArt (any case, jpg or png), and prefers a FLAC's front cover.

Thanks to HalfManHalfDragon on Discord for these.

## 1.1.0~beta3

- **Bit-Perfect mode:** your songs reach the output exactly as they are in the file, with nothing in between. Tested sample for sample. A **BIT-PERFECT** label shows when it really is, and tapping the format chips on Now Playing tells you why when it isn't (Settings → Bit-Perfect).
- **Minimal Player:** a calm, big-type layout for Now Playing, if you prefer it (Settings → Appearance).
- **Big libraries:** you see the scan progress ("1,240 of 5,800 songs"), Crest saves as it goes, and it no longer closes during or after a long scan (thousands of songs in one album, or leaving the app mid-scan). Tested with 23,000 songs.
- **Fixed:** the lyrics page could slide off the screen with no way out (with real cover art).
- **iOS 15 fixes:** the Settings, Add and EQ Done buttons and the Deck icon were missing.

