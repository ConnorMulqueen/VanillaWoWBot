# VanillaWoWBot

I played a little bit on a 'vanilla' World of Warcraft private server named ["Elysium"](elysium-project.org) over winter break. Throughout my stay, I noticed some people were botting even though admins said ["We have detection methods in the works that still need to be refined to catch more bots"](https://www.reddit.com/r/ElysiumProject/comments/5ppykf/is_elysium_not_taking_action_against_bots/dct7uxr/). I wanted to see how easy writing a bot to play on the server was, so in around a hour I learned autoHotkey and wrote this script. 

The script was simple, it ran on a mage and followed this procedure:

  1. Run around aimlessly until an enemy is found
  2. Cast a single frostbolt
  3. Cast fireballs until enemy dies
  4. Check if health/mana is low, in the case that it is - drink and/or eat.
  5. Repeat.
  
I threw in some RNG in case there was actually some detection mechanism in play on the server. The character I ran the bot on got to level 10 in ~8 hours with minimum maintenance. AutoHotkey is pretty limiting by the fact that you can only really 'respond' to pixel color changes on your monitor as far as I know. This shows how not a whole lot of effort could disrupt a virtual economy. 

