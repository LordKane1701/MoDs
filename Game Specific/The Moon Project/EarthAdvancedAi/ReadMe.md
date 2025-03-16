### Earth 2150: The Moon Project
### Advanced AI mod v1.3
*by Guardian*

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
