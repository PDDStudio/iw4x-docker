This is how you configure your server to run as a match server.

## Server config

This is how you can configure your server to run as a match server. The configuration has to be done in the server.cfg file that your server is using.

[General](https://github.com/Jawesome99/IW4x/wiki/Advanced-general-server-configuration) server configuration is required for general configuration options.

### Info

| parameter | default | valid | description |
|------------------------------|---------------|---------|-------------------------------------------------------------------------|
| `set sv_hostname <string>` | “IW4x Server” |  | Sets the server hostname |
| `set sv_securityLevel <int>` | 23 | 0 - 256 | Configures the servers security level |
| `set sv_motd <string>` |  |  | Sets a custom motd which is shown on the loadscreen when a player joins |
| `sets _Admin <string>` |  |  | Configures admin name |
| `sets _Email <string>` |  |  | Configures admin email |
| `sets _Website <string>` |  |  | Configures website |
| `sets _Location <string>` |  |  | Configures location |

### Non gameplay configuration

| parameter | default | valid | description |
|---------------------------------------|-------------------|----------|------------------------------------------------------------------|
| `set rcon_password <string>` | "" |  | Configures password for rcon |
| `set g_password <string>` | "" |  | Configures password for gameserver |
| `set g_inactivity <int>` | 120 | 0 - 999 | Enable auto kick feature for idle/AFK players |
| `set g_inactivitySpectator <int>` | 180 | 0 - 999 | Time in seconds before a spectator gets kicked |
| `set g_logSync <int>` | 1 | 0 - 1 | 1 = always flush games_mp.log, 0 = only flush on game end |
| `set g_log <string>` | logs/games_mp.log |  | Configures gamelog filename |
| `set sv_allowClientConsole <int>` | 1 | 0 - 1 | Enable players ability to access server commands |
| `set sv_maxPing <int>` | 0 | 0 - 999 | Maximum ping allowed, any higher and players will get kicked |
| `set sv_timeout <int>` | 20 | 0 - 1800 | Timeout time period |
| `set sv_reconnectlimit <int>` | 3 | 0 - 1800 | How many times you can try to reconnect |
| `set sv_pure <int>` | 0 | 0 - 1 | Verifying client files |
| `set sv_sayName <string>` | ^7Console |  | Name server-side ‘say’ commands show up as |
| `set sv_floodProtect <int>` | 1 | 0 - 1 | Chat Spam Protection |
| `set sv_kickBanTime <int>` | 300 | 0 - 3600 | Configures kick ban duration |
| `set scr_game_objectiveStreaks <int>` | 1 | 0 - 1 | Enable Chopper, AC130 and Nuke |
| `set scr_classic <int>` | 0 | 0 - 1 | Enable IW3 killstreak system |
| `set scr_intermission_time <int>` | 30 | 0 - 999 | Change timer before server loads the next map (currently broken) |

## Base game configuration

| parameter | default | valid | description |
|-------------------------------------------|---------|---------|----------------------------------------------------------------|
| `set g_gametype <string>` | "war" |  | Choose a gametype from the list |
| `set scr_player_forcerespawn <int>` | 1 | 0 - 1 | Players respawn automatically after being fragged |
| `set scr_thirdperson <int>` | 0 | 0 - 1 | Enable third-person mode |
| `set scr_game_hardpoints <int>` | 1 | 0 - 1 | Enable Killstreak rewards |
| `set scr_hardpoint_allowhelicopter <int>` | 1 | 0 - 1 | Allow Attack Helicopters |
| `set scr_hardpoint_allowuav <int>` | 1 | 0 - 1 | Allow UAV |
| `set scr_hardpoint_allowartillery <int>` | 1 | 0 - 1 | Allow Airstrikes |
| `set scr_game_perks <int>` | 1 | 0 - 1 | Allow players to have perks |
| `set scr_game_allowkillcam <int>` | 1 | 0 - 1 | Allow Killcam |
| `set scr_nukeTimer <int>` | 10 | 0 - 999 | Timer when nuke goes off |
| `set scr_diehard <int>` | 0 | 0 - 1 | Enable die-hard mode |
| `set scr_teambalance <int>` | 1 | 0 - 1 | Enable auto balance |
| `set scr_game_spectatetype <int>` | 2 | 0 - 2 | Allow Spectators. 0 = Disabled, 1 = Team/Player only, 2 = Free |
| `set scr_player_suicidespawndelay <int>` | 0 | 0 - 999 | Wait before you respawn if you committed suicide |
| `set scr_player_sprinttime <int>` | 4 | 0 - 999 | Sprint time, duration a player can run |

## Hardcore configuration

| parameter | default | valid | description |
|-----------------------------------------|---------|---------|----------------------------------------------------------------------------|
| `set g_hardcore <int>` | 0 | 0 - 1 | Enable Hardcore Mode |
| `set scr_game_deathpointloss <int>` | 0 | 0 - 1 | Enable point loss on death |
| `set scr_game_onlyheadshots <int>` | 0 | 0 - 1 | Enable only headshots mode. You can only kill players by taking headshots. |
| `set scr_player_maxhealth <int>` | 30 | 0 - 100 | Percent of health players will have on respawn |
| `set scr_team_fftype <int>` | 1 | 0 - 3 | Enable Friendly Fire. 1 = on, 2 = reflect, 3 = shared |
| `set scr_player_healthregentime <int>` | 5 | 0 - 999 | Time it takes to recover damage |
| `set scr_team_kickteamkillers <int>` | 0 | 0 - 1 | Enable autokick for team kill |
| `set scr_team_teamkillspawndelay <int>` | 20 | 0 - 999 | Configure respawn penalty for team kill |

## Airdrop configuration
Higher weights increase random selection chance.

| paramter | default | valid | description |
|---------------------------------------------|---------|----------|----------------------------|
| `set scr_airdrop_ac130 <int>` | 3 | 0 - 1000 | Configures drop chance for AC130 |
| `set scr_airdrop_ammo <int>` | 17 | 0 - 1000 | Configures drop chance for ammo |
| `set scr_airdrop_counter_uav <int>` | 15 | 0 - 1000 | Configures drop chance for Counter UAV |
| `set scr_airdrop_emp <int>` | 1 | 0 - 1000 | Configures drop chance for EMP |
| `set scr_airdrop_harrier_airstrike <int>` | 7 | 0 - 1000 | Configures drop chance for airstrike |
| `set scr_airdrop_helicopter <int>` | 7 | 0 - 1000 | Configures drop chance for helicopter |
| `set scr_airdrop_helicopter_flares <int>` | 5 | 0 - 1000 | Configures drop chance for helicopter flares |
| `set scr_airdrop_helicopter_minigun <int>` | 3 | 0 - 1000 | Configures drop chance for helicopter minigun |
| `set scr_airdrop_nuke <int>` | 0 | 0 - 1000 | Configures drop chance for nuke |
| `set scr_airdrop_precision_airstrike <int>` | 11 | 0 - 1000 | Configures drop chance for precision airstrike |
| `set scr_airdrop_predator_missile <int>` | 12 | 0 - 1000 | Configures drop chance for predator missile |
| `set scr_airdrop_sentry <int>` | 12 | 0 - 1000 | Configures drop chance for sentry |
| `set scr_airdrop_stealth_airstrike <int>` | 5 | 0 - 1000 | Configures drop chance for stealth bomber |
| `set scr_airdrop_uav <int>` | 17 | 0 - 1000 | Configures drop chance for UAV |

## Emergency airdrop configuration
Higher weights increase random selection chance.

| parameter | default | valid | description |
|--------------------------------------------------|---------|----------|------------------------------------------------|
| `set scr_airdrop_mega_ac130 <int>` | 2 | 0 - 1000 | Configures drop chance for AC130 |
| `set scr_airdrop_mega_ammo <int>` | 12 | 0 - 1000 | Configures drop chance for ammo |
| `set scr_airdrop_mega_counter_uav <int>` | 16 | 0 - 1000 | Configures drop chance for Counter UAV |
| `set scr_airdrop_mega_emp <int>` | 0 | 0 - 1000 | Configures drop chance for EMP |
| `set scr_airdrop_mega_harrier_airstrike <int>` | 5 | 0 - 1000 | Configures drop chance for airstrike |
| `set scr_airdrop_mega_helicopter <int>` | 5 | 0 - 1000 | Configures drop chance for helicopter |
| `set scr_airdrop_mega_helicopter_flares <int>` | 3 | 0 - 1000 | Configures drop chance for helicopter flares |
| `set scr_airdrop_mega_helicopter_minigun <int> | 2 | 0 - 1000 | Configures drop chance for helicopter minigun |
| `set scr_airdrop_mega_nuke <int>` | 0 | 0 - 1000 | Configures drop chance for nuke |
| `set scr_airdrop_mega_precision_airstrike <int>` | 10 | 0 - 1000 | Configures drop chance for precision airstrike |
| `set scr_airdrop_mega_predator_missile <int> | 14 | 0 - 1000 | Configures drop chance for predator missile |
| `set scr_airdrop_mega_sentry <int>` | 16 | 0 - 1000 | Configures drop chance for sentry |
| `set scr_airdrop_mega_stealth_airstrike <int>` | 3 | 0 - 1000 | Configures drop chance for stealth bomber |
| `set scr_airdrop_mega_uav <int>` | 12 | 0 - 1000 | Configures drop chance for UAV |

## Free for all gametype settings

| parameter | default | valid | description |
|---------------------------------------|---------|-----------|--------------------------------------------------------------------------|
| `set scr_dm_scorelimit <int>` | 1500 | 0 - 99999 | Score limit to win the game |
| `set scr_dm_timelimit <int>` | 10 | 0 - 999 | Duration in minutes for the game to end if the score limit isn't reached |
| `set scr_dm_playerrespawndelay <int>` | 0 | -1 - 999 | -1 is no respawn delay, 0 is automatic, > 0 is X seconds |
| `set scr_dm_numlives <int>` | 0 | 0 - 999 | Number of lives per Player, 0 for unlimited |
| `set scr_dm_promode <int>` | 0 | 0 - 1 | Extra bullet damage *unconfirmed* |

## Domination gametype settings

| parameter | default | valid | description |
|----------------------------------------|---------|-----------|--------------------------------------------------------------------------|
| `set scr_dom_scorelimit <int>` | 200 | 0 - 99999 | Configure score limit to win the game |
| `set scr_dom_timelimit <int>` | 60 | 0 - 999 | Duration in minutes for the game to end if the score limit isn't reached |
| `set scr_dom_playerrespawndelay <int>` | -1 | -1 - 999 | -1 is no respawn delay, 0 is automatic, > 0 is X seconds |
| `set scr_dom_waverespawndelay <int>` | 0 | 0 - 999 | Duration in seconds before the first respawn in each round |
| `set scr_dom_numlives <int>` | 0 | 0 - 999 | Number of lives per Player, 0 for unlimited |
| `set scr_dom_roundlimit <int>` | 1 | 0 - 999 | Rounds per game |
| `set scr_dom_winlimit <int>` | 1 | 0 - 999 | Amount of wins needed to win a round-based game |
| `set scr_dom_promode <int>` | 0 | 0 - 1 | Extra bullet damage *unconfirmed* |

## Demolition gametype Settings

| parameter | default | valid | description |
|---------------------------------------|---------|-----------|--------------------------------------------------------------------------|
| `set scr_dd_scorelimit <int>` | 2 | 0 - 99999 | Score limit needed to win |
| `set scr_dd_timelimit <float>` | 2.5 | 0 - 999 | Duration in minutes for the game to end if the score limit isn’t reached |
| `set scr_dd_roundswitch <int>` | 1 |  | Rounds before the teams switch sides |
| `set scr_dd_bombtimer <float>` | 45 |  | Time the bomb takes to detonate |
| `set scr_dd_defusetime <float>` | 5 |  | Time taken to defuse the bomb |
| `set scr_dd_extratime <int>` | 3 |  |  |
| `set scr_dd_numlives <int>` | 0 | 0 - 999 | Lives per player, 0 for unlimited |
| `set scr_dd_planttime <float>` | 5 | 0 - 99 | Time it takes to plant a bomb in seconds |
| `set scr_dd_roundlimit <int>` | 3 | 0 - 99 | Rounds the game is limited to, if there are no winners |
| `set scr_dd_playerrespawndelay <int>` | 0 | -1 - 999 | -1 is no respawn delay, 0 is automatic, > 0 is X seconds |
| `set scr_dd_promode <int>` | 0 | 0 - 1 | Extra bullet damage *unconfirmed* |

## Search and destroy gametype settings

| parameter | default | valid | description |
|---------------------------------------|---------|-----------|--------------------------------------------------------------------------|
| `set scr_sd_scorelimit <int>` | 1 | 0 - 99999 | Score limit required to win the game |
| `set scr_sd_timelimit <float>` | 2.5 | 0 - 999 | Duration in minutes for the game to end if the score limit isn’t reached |
| `set scr_sd_playerrespawndelay <int>` | -1 | -1 - 999 | -1 is no respawn delay, 0 is automatic, > 0 is X seconds |
| `set scr_sd_waverespawndelay <int>` | 0 | 0 - 999 | Delay for first respawn |
| `set scr_sd_numlives <int>` | 1 | 0 - 999 | Number of lives per player per game |
| `set scr_sd_roundlimit <int>` | 0 | 0 - 99 | Rounds the game is limited to 0 for unlimited |
| `set scr_sd_winlimit <int>` | 4 | 0 - 999 | amount of wins needed to win a round-based game |
| `set scr_sd_roundswitch <int>` | 1 |  | after X rounds, switch sides |
| `set scr_sd_bombtimer <int>` | 45 |  | Time taken for the bomb to detonate |
| `set scr_sd_defusetime <int>` | 5 |  | Time taken to defuse the bomb |
| `set scr_sd_multibomb <int>` | 0 | 0 - 1 | allow multiple people to ‘have the bomb’ |
| `set scr_sd_planttime <int>` | 5 |  |  |
| `set scr_sd_promode <int>` | 0 | 0 - 1 | Extra bullet damage *unconfirmed* |

## Sabotage gametype settings

| parameter | default | valid | description |
|------------------------------------------|---------|-----------|-------------------------------------------------------------------------------------------|
| `set scr_sab_scorelimit <int>` | 0 | 0 - 99999 | Score limit to win the match |
| `set scr_sab_timelimit <int>` | 10 | 0 - 999 | Duration in minutes for the game to end if the score limit isn’t reached |
| `set scr_sab_bombtimer <int>` | 45 |  | Duration in seconds the bomb takes to detonate |
| `set scr_sab_defusetime <int>` | 5 |  | Time taken to defuse the bomb |
| `set scr_sab_hotpotato <int>` | 0 |  | One bomb that the teams must fight over. One defending and one have to plant at the site. |
| `set scr_sab_numlives <int>` | 0 | 0 - 999 | Number of lives players get |
| `set scr_sab_planttime <int>` | 2.5 |  | Time taken to plant the bomb |
| `set scr_sab_playerrespawndelay <float>` | 7.5 | -1 - 999 | Time before respawn |
| `set scr_sab_roundlimit <int>` | 1 | 0 - 99 | Rounds per game |
| `set scr_sab_roundswitch <int>` | 1 |  | Rounds needed to be played before the teams switch sides |
| `set scr_sab_waverespawndelay <int>` | 0 | 0 - 999 | Time delay for first respawn before the game |
| `set scr_sab_promode <int>` | 0 | 0 - 1 | Extra bullet damage *unconfirmed* |

## Capture the flag gametype settings

| parameter | default | valid | description |
|----------------------------------------|---------|-----------|--------------------------------------------------------------------------|
| `set scr_ctf_scorelimit <int>` | 3 | 0 - 99999 | Target score before the round ends |
| `set scr_ctf_timelimit <int>` | 10 | 0 - 999 | Duration in minutes for the game to end if the score limit isn’t reached |
| `set scr_ctf_numlives <int>` | 0 | 0 - 999 | Number of lives per player 0 for unlimited |
| `set scr_ctf_playerrespawndelay <int>` | 0 | -1 - 999 | Respawn wait in seconds |
| `set scr_ctf_roundlimit <int>` | 1 | 0 - 99 | How many rounds match would last |
| `set scr_ctf_roundswitch <int>` | 1 |  | Rounds before the teams switch sides |
| `set scr_ctf_waverespawndelay <int>` | 10 | 0 - 999 | Time delay for first respawn before the game |

## One flag gametype settings

| parameter | default | valid | description |
|--------------------------------------------|---------|-----------|--------------------------------------------------------------------------|
| `set scr_oneflag_scorelimit <int>` | 1 | 0 - 99999 | Target score before the round ends |
| `set scr_oneflag_timelimit <int>` | 3 | 0 - 999 | Duration in minutes for the game to end if the score limit isn’t reached |
| `set scr_oneflag_numlives <int>` | 0 | 0 - 999 | Number of lives per player, 0 for unlimited |
| `set scr_oneflag_playerrespawndelay <int>` | 0 | -1 - 999 | Respawn wait in seconds |
| `set scr_oneflag_roundlimit <int>` | 1 | 0 - 99 | How many rounds match would last |
| `set scr_oneflag_roundswitch <int>` | 1 |  | Rounds before the teams switch sides |
| `set scr_oneflag_waverespawndelay <int>` | 0 | 0 - 999 |  |

## Headquarters gametype settings

| parameter | valid | default | description |
|-----------------------------------------|-------|-----------|-----------------------------------------------------------------------|
| `set scr_koth_scorelimit <int>` | 250 | 0 - 99999 | Score limit to win the game |
| `set scr_koth_timelimit <int>` | 10 | 0 - 999 | Duration in minutes the game will continue if the score isn’t reached |
| `set scr_koth_numlives <int>` | 0 | 0 - 999 | Number of lives per game. 0 for unlimited. |
| `set scr_koth_playerrespawndelay <int>` | 0 | -1 - 999 | Players respawn wait |
| `set scr_koth_roundlimit <int>` | 1 | 0 - 99 | Rounds to be played |
| `set scr_koth_roundswitch <int>` | 1 |  | Rounds to be played before teams switch sides |
| `set scr_koth_winlimit <int>` | 1 | 0 - 999 | Rounds per game |
| `set scr_koth_waverespawndelay <int>` | 0 | 0 - 999 | First respawn delay for each round |
| `set scr_koth_proMode <int>` | 0 | 0 - 1 | Extra bullet damage *unconfirmed* |

## Arena gametype settings

| parameter | default | valid | description |
|-----------------------------------|---------|-----------|-----------------------------------------------------------------------|
| `set scr_arena_scorelimit <int>` | 1 | 0 - 99999 | Score limit to win the game |
| `set scr_arena_timelimit <float>` | 2.5 | 0 - 999 | Duration in minutes the game will continue if the score isn’t reached |
| `set scr_arena_numlives <int>` | 1 | 0 - 999 | Number of lives per game 0 for unlimited |
| `set scr_arena_roundlimit <int>` | 0 | 0 - 99 | Rounds to be played |
| `set scr_arena_roundswitch <int>` | 3 |  | Rounds before the teams switch sides |
| `set scr_arena_winlimit <int>` | 4 | 0 - 999 | rounds per game |
| `set scr_arena_promode <int>` | 0 | 0 - 1 | Extra bullet damage *unconfirmed* |

## Global thermonuclear war gametype settings

| parameter | default | valid | description |
|-----------------------------------------|---------|-----------|-----------------------------------------------------------------------|
| `set scr_gtnw_scorelimit <int>` | 100 | 0 - 99999 | Score limit to win the game |
| `set scr_gtnw_timelimit <int>` | 6 | 0 - 999 | Duration in minutes the game will continue if the score isn’t reached |
| `set scr_gtnw_numlives <int>` | 0 | 0 - 999 | Number of lives per game, 0 for unlimited |
| `set scr_gtnw_playerrespawndelay <int>` | 0 | -1 - 999 | Players respawn wait |
| `set scr_gtnw_roundlimit <int>` | 1 | 0 - 99 | Rounds to be played |
| `set scr_gtnw_roundswitch <int>` | 0 |  | Rounds before the teams switch sides |
| `set scr_gtnw_waverespawndelay <int>` | 0 | 0 - 999 | First respawn delay for each round |
| `set scr_gtnw_winlimit <int>` | 1 | 0 - 999 | rounds per game |
| `set scr_gtnw_promode <int>` | 0 | 0 - 1 | Extra bullet damage *unconfirmed* |