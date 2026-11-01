# On-device test checklist (Android 15 / 16, 2-6 phones)

Tick each line on a real phone. Anything that fails: note the phone model, Android version and
what you did, and open an issue.

## One phone
- [ ] Installs, splash then name prompt (first launch) then Home; no permission prompts.
- [ ] Training: Sarge's text steps advance when you do what is asked.
- [ ] Quick Play: bots fight, timer ends, result screen; no Coins awarded.
- [ ] Survival: waves grow, three lives, game over screen.
- [ ] Both sticks work (move, aim+fire); left-handed swap; auto-fire; sensitivity slider.
- [ ] Jetpack fuel drains and refills; reload, melee, grenade, zoom, weapon switch, pick-up.
- [ ] Store: buy an upgrade, Coins drop by its price, effect visible next match; Pro Pack at 3,000.
- [ ] Avatar change shows in game; settings persist after force-stop.
- [ ] Settings > Export save then Import save round-trips (file picker, no storage permission).
- [ ] Back button: pauses in a solo game, leaves menus; app does not exit by accident.
- [ ] Frame rate 60 / 90 / 120 and quality presets switch (restart) without crashes; 4 GB phone stays under ~1 GB.

## Wi-Fi (2 phones, then up to 6, one hotspot or router)
- [ ] Host appears in the other phone's list; join by typed IP also works.
- [ ] Lobby: options visible to guests; ready flags; teams for Team Deathmatch.
- [ ] Deathmatch: both see each other move smoothly, kills count, timer matches, leaderboard at the end.
- [ ] Deathmatch kill gives +10 Coins; Co-op Survival gives none.
- [ ] Party options (low gravity, unlimited ammo, one-shot kills, melee only) do what they say; all off = normal.
- [ ] Fair mode: same gun, no pick-ups, no upgrades.
- [ ] A guest leaving or switching the screen off does not freeze the host.
- [ ] Play again / back to lobby / leave all work.

## Added in M11-M20
- [ ] Gamepad: sticks move/aim, buttons work, Start pauses (up on the stick moves up).
- [ ] Settings > Edit button placement: drag, save, buttons are there in a match.
- [ ] Gas grenade (buy the upgrade), laser sight, Pro Pack dual wield with two handguns, Mask Pack mask on the avatar.
- [ ] Survival wave 2-5: worms, hawks and a humanoid appear.
- [ ] Proximity mine: place, enemy walks in, boom; you never get hurt by yours.
- [ ] Lobby: RANDOM map, weapon groups, party options.
- [ ] QR: host SHOW QR, other phone SCAN QR joins (camera asked only then); typed IP still works.
- [ ] Settings > FPS STATS shows counters; Smooth quality keeps the frame rate on a 4 GB phone.

## Release
- [ ] Tag build installs over the previous one (same signing key) and keeps the save.
