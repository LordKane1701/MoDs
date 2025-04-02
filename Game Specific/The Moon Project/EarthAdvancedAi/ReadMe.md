### Earth 2150: The Moon Project
### Advanced AI mod v1.5
*by Guardian*

**WARNING: There are two custom game modes here - the one with "-MP-" in name should be used only in 2.2.2.2+ multiplayer patch. It will be broken and may crash in SP patch. Use the first game mode (IEO-AdvAI-DestroyStructures) for single player.

This is a mod for The Moon Project that provides extremely strong AI for Skirmish or Multiplayer games.
#### Key features
- AI is almost completely rebuilt from scratch. Native inefficient code was replaced by new implementation.
- 24 new bots - 6 difficulty levels (`[VE]` - Very Easy, `[E]` - Easy, `[M]` - Medium, `[H]` - Hard, `[VH]` - Very Hard and `[I]` - Impossible) and 4 tech focus variants:
   - Mars (Cannon - UCS can randomly go for Grenades, LC will go for MG + Sonic)
   - Jupiter (Energy)
   - Quirinus (Rockets)
   - Fortuna (random of the above)
- New game mode (**bots will work only in that gamemode**) based on "IEO - Destroy enemy structures" mode
- **AI is fair** - there are no free units or any unfair advantages for the bots. **It's NOT as in Lost Souls**.
- The highest difficulty level is incredibly difficult. In TechWar mode, I would estimate it to be at least **100-150x** stronger
  than what built-in Experts could offer. Beating ED/UCS `[I]`mpossible bot in a TechWar 1v1 is virtually impossible for human 
  players. Lower difficulty levels should be manageable for everyone, so **everyone can have fun from this mod**.
  Still, even lower difficulty levels can prove very tricky, especially for non-multi players.
- In modes with mining resources, the strongest AI plays at a level of a strong MP player and even the strongest multi player can lose a 1v1 if they are caught off guard.

#### Limitations
- LC players are very weak compared to ED/UCS players, but that's not AI limitation, but the game limitation.
  LC just cannot build faster than it currently does, what makes it multiple times weaker in Techwar.
  Despite accelerated LC mode, `[I]`mpossible LC bot still cannot beat `[M]`edium ED/UCS bots in a TechWar 1v1.
- in economy modes, LC is still weaker than others, but the difference is not that big anymore
- The mod provides quite a few custom maps with ` (AI)` prefix. Those maps should work well with this mod.
  On other maps, bots may experience some issues with mining resources, units blocking themselves,
  builders attempting to build in unreachable locations, etc.
- Saving and loading a game will crash the game. For now, it ** is not possible to reload**.

#### Installation
1. Ensure that you have your game patched to at least **2.1.1.1** (singleplayer) or **2.2.1.3** (multiplayer) patch.
2. Remove any earlier version of the mod (both .ieo and .wd files)
3. Place the `.ieo` file inside `Modules` directory in your game folder
4. Place the `.wd` file inside `WD Files` directory in your game folder.

#### Credits
This mod was created by *Guardian* from Inside Earth Operations. <br/>
There were however other people from Inside Earth community involved. <br/>
**Level design**: *Szakael* <br/>
**Scripts**: *Keter*, *Kumu* <br/>
**Tests**: *Ajack*, *Animal*, *Noctis*, *Szakael*

#### Changelog
v1.5:
- fix LC power issues in x1 research speed
- fix ED Quirinus weapon selection (he could prefer cannons over rockets)
- small production queue fixes (a bit more banners and radars, removed single aircraft unit that gets produced after researching aircraft)
- better rush defense
- reduce ED and LC factories count
- fix UCS selling buildings multiple times (the bug reappeared at some point)
- AI will build SDI and stationary radars when they are needed (used to build only if it had plenty of spare money, which doesn't happen for better bots)
- dynamic builder count - AI will adjust builders amount to current needs instead of producing some hardcoded amount
- new FFA Equality versions - `[B] v1` and `[B] v1.1`
- AI will no longer drop shields below medium if enemy UCS MDW exists
- bots will focus fire artillery and LC mines
- "big game mode" - if AI has more than 12 own, uncontested resource fields it will enter an alternative mode, similar to the recent FFA challenge. It will generally be more economy focused in early minutes.
- ED will attempt to reset and fix taigas that cannot reach mine (it sometimes happened when they got blocked by a builder occupying the "pick up" spot)
- ED Jupiter will no longer produce Urals **(`[I]` only)**
- fixed a bug where AI could send units to the northern edge of the map when it couldn't figure out the correct attack direction
- fixed a bug in endless resources mode, where resources could seemingly disappear
- new `Ieo.CheckLevel` command for editor, that lists (and saves to the log file) potential issues that the AI may have with the current level

v1.4:
- new gamemode for 2.2.2.2+ patch only (it will be unified in the future)
- fix game crashing in SP patch
- fix building, rebuilding and expansion issues
- fix LC building structures in hostile areas
- disable AA Salamanders (again)
- reduce transmitters count for each UCS military complex 4 > 2
- soften artillery fire conditions in eco mode (still more harsh than in techwar)
- add supply center to each artillery complex, just like in TechWar
- mount banners on all supply centers
- disable guardian dropping in TechWar
- fix missing unit names in AI unit templates
- AI uses player colours when talks about other players, to make them more distinguishable

v1.3:
- added economy modes (with mining resources)
- multiple AI improvements and enhancements

v1.2:
- added research mode for bots
- rebalanced AI difficulty levels, so that `[VE]` and `[E]` bots are noticeably easier.
- ED bots now use ballistic rockets (`[I]`mpossible only)
- smaller fixes/adjustments

v1.1:
- Kumu's builder script for human players that allows following recorded orders without unnecessary delays
- Accelerated LC mode (more builders for LC, `[I]` LC bot is now somewhere between `[E]` and `[M]` ED/UCS bot)
- building complexes for LC
- AI uses standard aircraft `[E]`asy+)
- AI rushes with aircraft `[VH]`+
- AI no longer "cheats" with artillery/MDW by targeting structures that it shouldn't be aware of
- new versions of AI maps + new levels
- rebalanced some difficulty levels
