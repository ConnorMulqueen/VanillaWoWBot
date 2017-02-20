# VanillaWoWBot

I played a little bit on a 'vanilla' World of Warcraft private server named "Elysium" over winter break. Noticed that some people were botting even though admins said "We have detection methods in the works that still need to be refined to catch more bots". I wanted to see how easy writing a bot to play on the server was, so in around a hour I learned autoHotkey and wrote this script.

The script was simple, it ran on a mage and followed the procedure:
  1) Run around aimlessly until an enemy is found
  2) Cast a single frostbolt
  3) cast fireballs until enemy dies
  4) check if health/mana is low, in the case that it is - drink or eat.
  5) repeat.
  
I threw in some RNG in case there was actually some detection mechanism in play on the server. The character I ran the bot on got to level 10 in ~8 hours with minimum maintenance.
