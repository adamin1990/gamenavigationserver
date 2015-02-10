/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : games

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-02-10 12:26:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `net` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('10', 'Car racing Games', '0');
INSERT INTO `category` VALUES ('11', 'Strategy Games ', '1');
INSERT INTO `category` VALUES ('12', 'Action Games', '1');
INSERT INTO `category` VALUES ('13', 'Flying Games', '0');
INSERT INTO `category` VALUES ('14', 'Fighting Games', '0');
INSERT INTO `category` VALUES ('15', 'Role-playing Games', '0');
INSERT INTO `category` VALUES ('16', 'Education Games', '0');
INSERT INTO `category` VALUES ('17', 'Adventure Games', '0');
INSERT INTO `category` VALUES ('18', 'Card Games', '0');
INSERT INTO `category` VALUES ('19', 'Shooter Games', '0');
INSERT INTO `category` VALUES ('20', 'Puzzle casual Games', '0');
INSERT INTO `category` VALUES ('21', 'Strategy tower defense Games', '1');
INSERT INTO `category` VALUES ('22', 'Racing Games', '0');
INSERT INTO `category` VALUES ('23', 'Music Games', '1');

-- ----------------------------
-- Table structure for `game`
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `storeid` int(45) DEFAULT NULL,
  `cateid` int(45) DEFAULT NULL,
  `releaseid` int(45) DEFAULT NULL,
  `versions` varchar(50) DEFAULT NULL,
  `description` text,
  `belong` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `flag` varchar(45) DEFAULT NULL,
  `loadnum` varchar(255) DEFAULT NULL,
  `loadurl` varchar(255) NOT NULL,
  `releasetime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK304BF27749218C` (`storeid`),
  KEY `FK304BF27B06BC59` (`cateid`),
  KEY `FK304BF22EE7A9A6` (`releaseid`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES ('4', 'Speed racing', '1', '10', null, '1.3', 'Buckle up and hit the gas; you’re in for the ride of the best racing experience. Feel the intensity of no brakes allowed street racing with the best 3D racing visuals.\r\nDescription\r\nDrive the #1 critically acclaimed Android racing game today! Get ready for the most exhilarating handheld racing experience!\r\nBuckle up and hit the gas; you’re in for the ride of the best racing experience. Feel the intensity of no brakes allowed street racing with the best 3D racing visuals.\r\nFeatures\r\n- A tense endless racer to dodge the traffic & deadly obstacles.\r\n- Earn gold coins to unlock 7 unique cars and buy power-ups\r\n- Visually stunning and built for speed\r\n', '1', '10M', '2', '', 'com.wordsmobile.speedracing', null);
INSERT INTO `game` VALUES ('5', 'Muscle run', '1', '10', null, '', 'Muscle Run – is a sensational fusion of blood-thrilling endless races, 100% realistic feeling of driving and the unlimited number of exciting tracks!\r\nDescription\r\nEach time before you there is a unique track with its unforgettable sensations and dangers. Participate in competitions and free rides on your beauty car, earn money to build a garage full of beautiful muscle cars and upgrade them to real beasts. This game will give you a good shot of adrenaline and satisfaction of speed.\r\nTry the real novelty of the season and become the champion!\r\nFeatures\r\n+ Stunning detalization of tracks and cars\r\n+ Patches of light on surfaces\r\n+ The effect of blurring images at high speed\r\n+ Every time a new track is generated\r\n+ The actual physics of the vehicles\r\n+ 6 unique cars, inspired by the most powerful muscle cars of the twentieth century.\r\n+ 45 improvements for each car\r\n+ The set of visual changes for vehicles, including body painting, different kinds of tinting, exhaust pipes, wheels', '1', '', '1', '', 'com.wonderwoodgames.musclerun', '2014-01-03 00:00:00');
INSERT INTO `game` VALUES ('6', 'Not racing', '1', '10', null, '1.5', 'Description\r\nDrive the vintage motorbike in one way endless traffic to get the highest score!Not Racing is a game designed with Unity Technology. The aim of the game is simple : Collect the points and avoid crashing vehicles. There are two kinds of the coins: 25 coin and 50 coin you come across rarely.\r\nThe motorbike rider is a zombie, control him by tilt screen. Touch NOS button giving nitro power to speed up. In nitro mode, the coins are doubled as well. Overtake the buses, trucks and cars throughout the game and avoid crashing otherwise the game restarts.\r\nThere is no pre-loading and wait, so you can play at once whenever you want. You will try to get more score than your record score. If you like, you can share your highest score in google plus.\r\nFeatures:\r\n- Zombie rider with the vintage motorbike\r\n- Collecting 25 coin, 50 coin\r\n- Turbo mode\r\n- Control by tilt screen\r\n- Direct play without wait for pre-loading\r\n- Score sharing with google plus\r\n- One way traffic filled with buses, trucks, long vehicles\r\n- Unity technology design', '', '48M', '0', '', 'com.nar.notrace', '2014-06-09 00:00:00');
INSERT INTO `game` VALUES ('7', 'Death racing 2:Desert', '1', '10', null, '1.04', 'Fast paced 3D racing game and easy to get started\r\nDescription;\r\nUnlock most fantastic cars by skillful plays, and challenge the extreme of speed and distance!\r\nComplete bounty missions and earn honorable achievements;\r\nEnjoy beautiful views along roads, bridges, seashore and more;\r\nExplore the autumn and winter sceneries of the desert.\r\nAll glories come to you via a single finger!', '', '20M', '0', '', 'com.feelingtouch.racingcarcross', null);
INSERT INTO `game` VALUES ('8', 'Galaxy Factions', '1', '11', null, '1.3.0', 'Brace Yourselves: Here The Conquerors of Galaxy Come with ‘’Galaxy Factions’’\r\nPROS & CONS\r\nFree-to-play\r\nStunning Visuals\r\nExciting Sci-Fi combat strategy experience\r\nInteresting and Ingenious Hero System\r\nAbility to Play Online\r\nSome in-app purchases require buying up to $99.99\r\nDESCRIPTION\r\nGalaxy Factions is a free-to-play time strategy game.\r\nFEATURES\r\n- 12 unique unit types, 7 powerful defensive emplacements, and 10 Hero classes\r\n- Customize your heroes\r\n- Experience breathtaking sound and high definition 3D graphics\r\n- Explore an epic single player campaign that spans multiple galaxies, each with their own deadly enemies\r\n- Connect with players online to battle and form alliances', '1', '35M', '1', '', 'com.faceroll.dev.inu&hl=us', null);
INSERT INTO `game` VALUES ('9', 'Immortalis', '1', '11', null, '1.8', 'PROS & CONS\r\nGrab your comrades and battle other Guilds for supremacy, 5 times a day!\r\nDESCRIPTION\r\nThe highest rated Collectible Card Battle Game!!!\r\nEmbark on an epic journey to suppress the monster invasion and claim your place as the strongest Soulbinder! You’ll battle and capture hundreds of legendary monsters, imbue them with sacrificial powers, and undertake endless quests, all while fighting other powerful players from across the globe.\r\nFEATURES\r\n- Over 650 cards – Conjure, battle, and collect hundreds of legendary creatures to fight by your side and create your own one-of-a-kind deck\r\n- 70 unique, fast-paced quest zones to conquer\r\n- Experience striking dark character and monster art with evolutionary progression!\r\n- Create guilds for cooperative play and battle players in epic Guild vs. Guild battles!\r\n- Climb to the top of the leader boards and participate in epic ranked combat!\r\n- Collect crystals through PvP combat to unlock new monsters and special items!\r\n- Join special scheduled events featuring incredibly powerful enemies. Conquer them and reap mighty rewards', '', '17M', '3', '', 'com.aeriamobile.android.immortalis', null);
INSERT INTO `game` VALUES ('10', 'Spartan Wars: Empire of Honor', '1', '11', null, '1.2.0', 'PROS & CONS\r\nSparta is waiting for a leader like you.\r\nDESCRIPTION\r\nBuild a city of epic proportions, train an army of ruthless soldiers, establish your alliance and unite with thousands of players all over the world.\r\nFEATURES\r\n-English,Spanish, French, German, Italian, Portuguese, Russian, Korean and Japanese language worlds\r\n-Forge diplomatic alliances and coordinate attacks with other players\r\n-Chat in real-time\r\n-Compete in weekly events for valuable prizes\r\n-Collect handsome rewards for 200+ quests\r\n-Explore caves or set off on Spartan Conquest to collect epic loot', '2', '39M', '2', '', 'com.tap4fun.spartanwar', null);
INSERT INTO `game` VALUES ('11', 'Galaxy Legend', '1', '11', null, '1.3.9', 'PROS & CONS\r\nGalaxy Legend is a space combat strategy game that has been waiting for a leader like yourself.\r\nDESCRIPTION\r\nCommand your forces to galactic conquest! Compete with thousands of players in a dynamic online battlefield and pursue the ultimate prize: victory!\r\nFEATURES\r\n✔ Free to play with completely optional in-app purchases\r\n✔ An addicting space-combat strategy RPG with single and multiplayer dimensions in a galactic battlefield\r\n✔ Compatible with both phone and tablet devices running Android\r\n✔ Cutting-edge interface, delivering stunning galactic imagery\r\n✔ A wide and varied fleet, awaiting your command\r\n✔ Explore an enormous galaxy packed with multiplayer options\r\n✔ Utilize a wide range of tactics to overcome foes near and far', '', '81M', '3', '', 'com.tap4fun.galaxyempire2_android', null);
INSERT INTO `game` VALUES ('12', 'Wind-Up Knight 2', '1', '12', null, '1.6', 'A new breath of high-end platforming gameplay\r\nPROS & CONS\r\nOver 40+ levels in four unique worlds\r\nIntense platforming action\r\nFull controller support\r\nNew weapons and armor unlocks as you play the game\r\nHigh-Quality graphics, very piquant gameplay\r\nThe game rarely runs slowly in some devices.\r\nDESCRIPTION\r\nWind-Up Knight 2 is a game that the main character is running further and it has to jump, roll, attack, and defend against many enemies.\r\nFEATURES\r\n- High-end platforming gameplay in a beautiful 3D world\r\n- Incredible graphics\r\n- Unbeatable gameplay\r\n- Side-quests\r\n- Tournament mode\r\n- Customize your knight', '', '271M', '0', '', 'com.robotinvader.knightmare2', null);
INSERT INTO `game` VALUES ('13', 'Elemental Kingdoms', '1', '12', null, '1.4.7', 'PROS & CONS\r\nJoin the Northern Alliance and fight against the Scarlet Nation.\r\nDESCRIPTION\r\n” We are constantly improving the game and want to create the best user experience possible. Elemental Kingdoms is a free-to-play TCG Strategic battle game. With over 200 cards and runes to choose from, assemble your deck and put it to the ultimate test. Play against your friends and challenge random players to hold the prestige of having the most powerful deck ever created.\r\nFEATURES\r\n-More than 200 different cards to choose from!\r\n-Over 80 stages to beat!\r\n-Enchant monsters and runes for a stronger deck!\r\n-Daily login rewards!\r\n-Ranked matches to see where you stand against the top players across the globe!\r\n-Battle replays!\r\n-Draft battle PVP!\r\n-A game constantly updating with new features and new cards!', '', '49M', '3', '', 'air.com.perfectworld.ek', null);
INSERT INTO `game` VALUES ('14', 'Mushboom', '1', '12', null, '1.5', 'PROS & CONS\r\nGuide Fukko from a boring city life to his wildest dreams!\r\nDESCRIPTION\r\nSurvive the city, eat mushrooms, fill him up and enter his dream world.\r\nMushboom is a mixture of classic platformer and endless runner genres.\r\nStart each day in a randomized world, find your way through enemies and obstacles, collect enough mushrooms and run till you wake up.\r\nFEATURES\r\nFun gameplay in an interactive world with many challenges.\r\nUnique art style with lots of items, tools, characters and more.\r\n100+ missions to accomplish through your journey through different themes.', '1', '30M', '1', '', 'net.mobilecraft.mushboom', null);
INSERT INTO `game` VALUES ('15', 'Battle Run S2', '1', '12', null, '2.5.4', 'PROS & CONS\r\nWelcome to Battle Run Season 2.\r\nDESCRIPTION\r\nThe multiplayer running game that 3 million players love just got even better.Now you can choose 15 different pets to assist you!\r\nBattle Run is like Mario Kart on a 2D platform. You can outrun three other players in real time! If you can’t run fast enough, use a weapon to take down whomever is in front of you.\r\nFEATURES\r\n- REAL-TIME MULTIPLAYER\r\n- ARSENAL OF WEAPONS\r\n- CUSTOMIZE YOUR LOOK\r\n- CHOOST YOUR PETS\r\n- PRO LEAGUE', '3', '48M', '2', '', 'com.gamehivecorp.bossrace', null);
INSERT INTO `game` VALUES ('16', 'Star trek', '1', '13', null, '1.17', 'DESCRIPTION\r\nStellar Trek Captain of the Federation - The Federation has been invaded. Most of our fleet has been wiped out. You are our last hope! With your handpicked crew and a patched up ship it\'s up to you to drive the enemy forces back and save civilization from extinction. The enemy is ruthless and has been destroying planets and any defenses they can find. You offer the people of the Federation hope that the galaxy can be saved!\r\nStarting out as an ensign, based on the Star Trek universe, there will be a lot of action as you are immersed into a do-or-die situation. The Federation is divided into many sectors. Within each sector is a quadrant. In each quadrant there might be enemy, planets, stars and a starbase or two. Get your shields up, select some photon torpedoes and take the war to the enemy, show them that the Federation is no pushover.\r\nScouting the Sector - Scroll on the map and touch to use your impulse engines to move short distances. To travel to farther sectors, bring up your Star Chart. Select a Quadrant and Engage Warp! The Star Chart will display the location of your Starbases. They will show red if they are under attack, green if all is clear.\r\nWhen your energy runs low, your shields stop working or you have damage to repair, head to your local Starbase. There you can enjoy some R&R while your ship gets sorted out.\r\nAs you drive your enemy back, they will become relentless at trying to stop your progress. You will be rewarded with dilythium crystals for your victories. Mine crystals from local planets. Use these crystals to upgrade your ship. You can also purchase crystals to speed up your ship upgrades.\r\nWeapon of Last Resort - the Death Ray! When it\'s time to take out a bunch of the enemy, and things aren\'t looking too good, its time for the death ray. Roll the dice as you either destroy everything within the quadrant or perform a gallant act of self immolation!\r\nWhen all else fails ... Abandon Ship! Your ship is floating scrap, your crew is mostly dead... It\'s time... to ... Abandon Ship! All bridge crew head to the shuttle Galileo and prepare for a bumpy ride...\r\nGood Hunting out there! It\'s a cold and hard universe. Balance your attacks with recovery at starbases and you will progress. Don\'t forget the enemy has a few tricks up their sleeves that they won\'t hesitate to use. Oh, and watch out for black holes and supernovas!', '1', '19M', '1', '', 'com.gbeegames.stellartrek', null);
INSERT INTO `game` VALUES ('17', 'Flight Simulator: Fly Plane 3D', '1', '13', null, '1.07', 'DESCRIPTION\r\nFlight Simulator: Fly Plane 3D is an awesome new 3D Airplane Simulator game, become the pilot and fly your commercial jet to the destination. Guide and steer your plane through all of the waypoints to ensure you head to the correct destination, go through all of the waypoints and land at your destination airport within the time limit to earn yourself more pilot stripes. When arriving at your destination zone, slow the plane down and prepare for landing, be careful not to crash! Guide your plane towards the runway and park within the marked zone to complete the level. While parking your plane, be very careful to avoid the buses, helicopters etc parked along the run way.', '', '24M', '3', '', 'com.i6.FlightSimulatorAirplane3D', null);
INSERT INTO `game` VALUES ('18', 'Airplane!', '1', '13', null, '1.12', 'DESCRIPTION\r\nDing... the pilot has turned on the Fasten Seat Belt sign! Things are going to get dicey! Whoa Ho! Someone left the engines running and now you get to pilot your own plane! Airplane! lets you have all the fun the big boys have by flying your plane from airport to airport delivering cargo and passengers. No need to spend days in flight school.', '4', '73M', '2', '', 'com.quantumdesigngroup.Airplane', null);
INSERT INTO `game` VALUES ('19', 'Rival Knights', '1', '14', null, '1.0.1e', 'A KNIGHT DUEL GAME COMING FROM MEDIEVAL AGE\r\nPROS & CONS\r\nWide range of upgrades\r\nBest jousting simulator\r\nGood mo-cap visuals\r\nNice 3D graphics and ragdoll physics\r\nMechanical and repetitive\r\nEnergy system limiting play\r\nDESCRIPTION\r\nCrush your rivals and ride your way to glory in the most intuitive, action-packed and visually stunning knight combat game on touch screens!\r\nFEATURES\r\n- Experience the thrill of fast-paced and highly addictive jousting\r\n- Sharpen your skills with precision timing and aim\r\n- Unlock over 120 mounts, lances, armors, helms and more\r\n- Upgrade them at the Blacksmith to gain an edge over opponents\r\n- Use temporary boosts wisely to triumph\r\n- Customize your crest to strike fear into your rivals\r\n- Motion-capture animations for knights and horses immerse you in the combat\r\n- Enjoy stunning, lifelike 3D graphics and dynamic camera angles\r\n- Challenge other players in asynchronous multiplayer mode\r\n- Enter weekly PvP tournaments for glory', '', '24M', '3', '', 'com.gameloft.android.ANMP.GloftOKHM', null);
INSERT INTO `game` VALUES ('20', 'Stickman Street Fighting', '1', '14', null, '1.0.1', 'DESCRIPTION\r\nRun, slash, combo KILL! Choose your character, learn your combo\'s, charge up your special attacks and unleash yourself in an arena against other sticks. unlock other levels and hone your murdering abilities in this hard and fast stick fighter!', '1', '17M', '1', '', 'com.finght.stickmanf', null);
INSERT INTO `game` VALUES ('21', 'UFB - Ultimate Fighting Bros', '1', '14', null, '1.0.7', 'DESCRIPTION:\r\nPut your gloves on and step inside the arena because it’s time for the big fight of the night! The Ultimate Fighting Bros are ready for a big fighting show! Choose to play the single or multiplayer mode and get ready for some hard-to-beat fun time. Can you win this epic combat? Find out now!\r\n\"Ultimate Fighting Bros is a great game for all fans of MMA fights like on UFC!\" -- Jon Silva\r\nHOW TO PLAY \r\nEach fight is a best-of-three playoff and fighters have 3 lives during each round. Climb the walls of the arena and use strategy to grab your opponent from above and tackle him down, taking a life. A round ends when one of the fighters runs out of lives.\r\nPOWER MATCHES \r\nUnlock the Power Version to gain access to the unbeatable Power Matches of the Ultimate Fighting Bros. During Power Matches, several items might show up during the fights, making them much more exciting and unpredictable.\r\nSome of the Power Matches items: \r\n• Health - Pick to recover lives \r\n• Freeze - Makes the walls slippery \r\n• Electrify - Electrifies the floor and fighters lose a life on contact \r\n• Blackout - Turns the lights off until the next hit', '', '14M', '0', '', 'br.com.tapps.ufb', null);
INSERT INTO `game` VALUES ('22', 'Ultimate Combat Fighting', '1', '14', null, '1.06', 'DESCRIPTION:\r\nPepare yourself for the Ultimate Combat Fighting challenge! Fight your way to become a black belt martial arts master! Learn all the moves and beat your opponents in this intensive action fighting game. Whether your style is karate, kungfu, tae kwon do, or boxing, just swipe your moves and start throwing some kicks and punches!\r\n- FEATURES -\r\n- Great fighting action!\r\n- Lots of different opponents\r\n- Develop your character to earn the black belt!\r\n- Find and learn new smashing moves!\r\n- Incredible new swipe based control! Easy to learn, hard to master\r\n- Beat your opponents on many awesome locations!\r\n- Free to play\r\n- A cool mobile fighting game in the style of Street Fighter and Tekken, but also suitable for anybody looking for a casual fighting game\r\n- Log in with Google+ to enable achievements and global leaderboards.', '1', '21M', '1', '', 'com.hyperkani.ultimatecombatfighting', null);
INSERT INTO `game` VALUES ('23', 'Dragon Quest VIII', '1', '15', null, '1.0.1', 'The Best RRGs of All Time : Dragon Quest VIII\r\nPROS & CONS\r\nRe-imagining of one of the best RPGs of all time for mobile phones\r\nSimple, accessible controls\r\nAnimated 3D battles, epic fights, exquisitely detailed world\r\nLack of charming British Voicework\r\nRuns on devices above 3rd Generation\r\nDESCRIPTION\r\nDragon Quest VIII is a game that has the animated 3D battles with a collection of interesting creatures, epic fights.\r\nFEATURES\r\n– Simple, Accessible Controls\r\n– The Tension System\r\n– Skill Points\r\n– Monster Teams\r\n– The Alchemy Pot\r\n– The Casino', '', '1.4G', '0', '', 'com.square_enix.android_googleplay.dq8&hl=us', null);
INSERT INTO `game` VALUES ('24', 'Baldur’s Gate Enhanced Edition', '1', '15', null, '', 'For as long as you can remember your view of the world has been limited to the heavily fortified walls of Candlekeep\r\nPROS & CONS\r\nLoads of character and story customization.\r\nGraphics and music are above average.\r\nLong and complex story means a lot of game play.\r\nBrilliantly realized characters, environments, and monsters.\r\nThe tactical engine that underpins the combat in the game remains fascinating and challenging to use.\r\nComplicated controls can overwhelm new players.\r\nDESCRIPTION\r\nFor as long as you can remember your view of the world has been limited to the heavily fortified walls of Candlekeep. Your foster father, Gorion, has done everything in his power to protect you, and keep you out of harm’s way.\r\nAll of that is about to change. Forced to leave your home under mysterious circumstances, you find yourself drawn into a conflict that has the Sword Coast on the brink of war. An iron shortage of unknown origin threatens to plunge the city of Baldur’s Gate into conflict with Amn. Meanwhile, there is something else at work, far more sinister than you can even begin to fathom.', '', '', '0', '', 'com.beamdog.baldursgateenhancededition', null);
INSERT INTO `game` VALUES ('25', 'Marvel War of Heroes', '1', '15', null, '1.5.3', 'PROS & CONS\r\nCreate the ultimate team of Marvel characters and battle other players around the world.\r\nDESCRIPTION\r\nHydra and the world’s most dangerous Super Villains are using the mysterious iso-8 to tip the balance of power in their favor. As an Agent for S.H.I.E.L.D. it is up to you to assemble a team of Super Heroes, unravel the mystery of iso-8 and battle the most powerful group of Super Villains ever assembled.\r\nFEATURES\r\n-Featuring Marvel characters, including Iron Man, Spider-Man, Thor, Hulk, Captain America, Black Widow, and Hawkeye\r\n- Fast-paced card-battle action! Build your own unique deck to defeat Marvel Super Villains!\r\n-Original art by Marvel artists, such as Aleksi Briclot (Thanos Imperative), Eisner-Award winning Simon Bisley and Francesco Mattina_ (Thunderbolts, Punisher)\r\n-Regular updates, with new cards and events added on a constant basis.\r\n-Team up with other players to defeat powerful enemies.', '6', '6.8M', '2', '', 'com.mobage.ww.a956.MARVEL_Card_Battle_Heroes_Android', null);
INSERT INTO `game` VALUES ('26', 'Dragons World', '1', '15', null, '5.0.5', 'PROS & CONS\r\nRaise dragons and watch them grow from little babies into huge, beautiful creatures.\r\nDESCRIPTION\r\nBreed unique dragon species using the ones you already have.\r\nFEATURES\r\n– Full 3D environment and camera rotation\r\n– Lots of unique and diverse dragons\r\n– Battles with other players\r\n– Purchase new islands to expand your sanctuary\r\n– Visit your friends’ islands and exchange gifts\r\n– Achievements and leaderboards', '', '29M', '3', '', 'com.sq.dragonsworld', null);
INSERT INTO `game` VALUES ('27', 'Brave Frontier', '1', '16', null, '', 'PROS & CONS\r\nSummon over 200 legendary heroes and ancient beasts, and assemble them into powerful squads, mastering the elemental strengths of Fire, Water, Earth, Thunder, Light, and Dark!\r\nDESCRIPTION\r\nDOWNLOAD FOR FREE the MOST ANTICIPATED classic style role-playing game for the Android! Venture forth into Grand Gaia, the world of the gods, and unleash your Summoner powers to save it by defeating the fallen god Maxwell in this immersive and addictive RPG!\r\nFEATURES\r\n* Team up with friends and develop your tactics to take on more than 100 missions throughout the land of Grand Gaia!\r\n* Collect loads of beautifully pixel-crafted heroes, each with their own battle style and unique Brave Burst attack!\r\n* Compete in the PVP Arena! Climb its ranks and cut down your opponents to receive rare equipment and other rewards!\r\n* Upgrade resource fields in your town and harvest materials from them to synthesize potions or craft powerful equipment!', '', '', '3', '', 'sg.gumi.bravefrontier', null);
INSERT INTO `game` VALUES ('28', 'Knights and Dragons', '1', '16', null, '', 'PROS & CONS\r\nKnights & Dragons is a non-stop action RPG with endless battles against mythical creatures and knights in one massive action-packed adventure.\r\nDESCRIPTION\r\nRise up and build your team of heroes from friends and players all over the world for deadly, fast-paced battles full of thrills and excitement!\r\nFEATURES\r\n• Free-to-play action RPG\r\n• Go on epic quests and adventures in uncharted realms\r\n• Defeat legendary beasts in fast-paced battle\r\n• Team up with your friends for hours of gameplay\r\n• Square off against players worldwide in weekly tournaments\r\n• Unlock hundreds of knights, armor, gold, treasure, and more\r\n• Craft the ultimate set of armor for victory', '', '', '0', '', 'com.iugome.lilknights', null);
INSERT INTO `game` VALUES ('29', 'Happy Farm:Candy Day', '1', '16', null, '2.5.0', 'PROS & CONS\r\nPlant and grow crops with friends\r\nDESCRIPTION\r\nHappy Farm is a totally new farming experience with more pets and larger farm land for your Android device. Come and build your own dream farm, feed your pets and exchange gifts with thousands of other players online!\r\nFEATURES\r\n• Free to play!\r\n• Bigger farm land!\r\n• More animals than any other farming game!\r\n• Easy to grow crops,feed animals!\r\n• Create new animal with your friends and family!\r\n• Send flowers to your friends and family!\r\n• Supports over 20 languages including English, German, Russian, Simplified Chinese and Traditional Chinese.\r\n• Supports Facebook login, so you can easily find your friends!', '', '41M', '2', '', 'air.com.elextech.happyfarm', null);
INSERT INTO `game` VALUES ('30', 'Fashion Story™', '1', '16', null, '1.5.6.5', 'PROS & CONS\r\nWelcome to Fashion Story™, the stylish new game in TeamLava’s hit virtual world “Story” series!\r\nDESCRIPTION\r\nFashion-hungry consumers are on the sidewalk waiting for the doors to your hot new clothing boutique to open. Choose and stock the very latest fashions and designs, then layout the store and changing rooms before preparing for the shopping rush.\r\nFEATURES\r\n- Unlock trendy designer clothes lines and innovative stylish accessories, placing them in your store to draw trendsetting customers in from far and wide.\r\n- Showcase your style and creativity to design the layout and decor for a stunning fashion boutique.\r\n- Visit your friends’ boutiques and “like” items in their stores to give them a free gift.\r\n- Simple and easy-to-use tap interface.\r\n- FREE updates with new clothing, accessories, and boutique decorations every week!\r\n- It’s FREE!', '', '19M', '3', '', 'com.teamlava.fashionstory', null);
INSERT INTO `game` VALUES ('31', 'Drift X', '1', '22', null, '1.0', 'Keep the engines running and get ready to endless entertainment in different race tracks. Astonishingly beautiful view will take your breath away with the fever of the game.\r\nDescription\r\nYou wont be forced to buy any special deals No In-app Purcahes that will annoy you. We want you to expreience pure drift experience and earn your way to leadership.', '1', '23M', '1', '', 'com.DriftX.BunboGames', null);
INSERT INTO `game` VALUES ('32', 'Deadly Moto Racing', '1', '22', null, '1.0.9', 'Ride your trusty moto, face rivals in the streets of the city zipping between vehicles at reckless speed and kick your opponents until they fall to the ground!\r\nDescription\r\nBecome the reckless moto king of the road! But watch out for the cops, do not get caught!\r\nFeatures\r\n- Enjoy the beautiful full HD and 3D graphics with spectacular special effects!!\r\n- Collect coins to buy several items and power-ups in a well assorted virtual store!\r\n- Speed-up, slow-down, zip through traffic, evade cops and sprint to kick your opponents to death!\r\n- Two game modes and several unlockable items!!\r\n- Supports Google Play Games with two global leaderboards!\r\n- Supports both smartphones and tablets!', '', '21M', '3', '', 'com.CatfishBlues.DMRacing', null);
INSERT INTO `game` VALUES ('33', 'Racing Tank', '1', '22', null, '1.4.6', 'Go Tanks and enjoy the winner’s feeling on death race!\r\nDescription\r\nPlaying role of colorful unique style tanks, your mission is to win the death race not only on grand prix roads but also on various difficult types of terrains such as deserts, docks, forests.\r\nFeatures;\r\n- RPG racing games with different battle index of health, accel, attack and handling\r\n-5 fantastic of tanks: Freeze Tank, Grizzly Bear, Laser Tank, Apocalypse, Panza in colorful designed styles (Sport, Old Fashion, Fashion)\r\n-Various weapons and equipments such as guns, lasers, rockets, tank cuirass to upgrade tanks for the increase in combat skills\r\n-Unique designed racing road based on real local terrains: deserts, docks, forests\r\n-3D animation support\r\n-Realistic effects on sound based on the laws of physics\r\n-Functions updates usually', '1', '32M', '1', '', 'atv.tank3d.vn', null);
INSERT INTO `game` VALUES ('34', 'Steampunk Racing 3D', '1', '22', null, '2.6', 'In the realm of steampunk racing domination and destruction is a way of life. Each day we risk death for the rewards and thrills of our chosen path. We are the racers, the heroes of our war torn world. Our vehicles shield us, our weaponry brings forth our vengeance, the world is our playground, and the corporations that run things are a necessary evil.\r\nFeatures\r\n- Customizable vehicles with 30 weapons/abilities\r\n- Unique physics engine allows for full range of control\r\n- Realtime Multiplayer modes against 6 players world wide or on your lan\r\n- Massive Online Tournaments\r\n- personalize your online experience with facebook\r\n- 3D   HD\r\n- Upgrade each vehicles armor, top speed, acceleration, control and hit points.\r\n- 15 tracks\r\n- 6 different power-ups\r\n- 5 circuits', '', '29M', '3', '', 'com.arbstudios.steampunkracer&hl=en', null);
INSERT INTO `game` VALUES ('35', 'Bonza Word Puzzle', '1', '17', null, '1.3.6', 'An Addictive Crossword Puzzle for The World and His Wife\r\nPROS & CONS\r\nAn Addictive Crossword Puzzle for The World and His Wife\r\nWide range of Vocabulary\r\nEducational as well as entertaining\r\nLacking of saving feature\r\nDESCRIPTION\r\nBonza Word Puzzle is a type of game where players arrange word fragments to complete puzzles.\r\nFEATURES\r\n- Combination of a jigsaw puzzle and a diagramless crossword\r\n- A satisfying puzzler\r\n- The beautifully subtle, colorful design scheme\r\n- Free Daily Puzzles\r\n- Puzzles based on holidays, anniversaries and the lives of the fascinating and famous', '1', '25M', '1', '', 'air.au.com.minimega.bonza&hl=us', null);
INSERT INTO `game` VALUES ('36', 'Knock-Knock', '1', '17', null, '1.25', 'SETTLE IN AND UNSETTLE YOURSELF\r\nPROS & CONS\r\nSplendid art\r\nTerrific soundtracks\r\nFascinating gameplay\r\nUnclear rules\r\nDESCRIPTION\r\nKnock-Knock is a hide and seek survival game where players must help channel a lodger having an insomnia through a creepy cabin till dawn comes up.\r\nFEATURES\r\n- A game of survival and troubling madness.\r\n- Hide from the invading creatures.\r\n- Fix the lights and keep the cabin rooms repaired to ward off evil.\r\n- Survive the night with your sanity intact.\r\n- Solve the mystery of the Lodgers nightmare.\r\n- Full iOS 7 controller support.', '1', '270M', '1', '', 'com.IcePick.KnockKnockRelease', null);
INSERT INTO `game` VALUES ('37', 'Elements: Epic Heroes', '1', '17', null, '1.0.4', 'Elements: epic heroes” well-loved game on app store\r\nPROS & CONS\r\nNice 3D graphics\r\nSimplest controls\r\nImmersive MORPG world\r\nBoring gameplay\r\nDESCRIPTION\r\nElements: Epic Heroes is a game that you lead the epic heroes to defeat the Dark Lord and clear the darkness from the world.\r\nFEATURES\r\n- Simple&Intuitive mechanics\r\n- Real time boss raid\r\n- Infinite tower\r\n- Leaderboards\r\n- Socialize\r\n- Equipment upgrades', '', '192m', '3', '', 'com.gamevil.elements', null);
INSERT INTO `game` VALUES ('38', 'Machinarium', '1', '17', null, '2.0.17', 'PROS & CONS\r\nDESCRIPTION\r\nMachinarium is the award-winning independent adventure game developed by the makers of Samorost and Botanicula.\r\nFEATURES\r\n* Pinch-to-zoom (small screen friendly)\r\n* Supports both Phones and Tablets\r\n* Better Graphics\r\n* Achievements\r\n* Cloud Save', '1', '235M', '1', '', 'air.net.machinarium.Machinarium.GP', null);
INSERT INTO `game` VALUES ('39', 'Boom Beach', '1', '18', null, '16.46', 'Let’s get ready for the Boom!\r\nPROS & CONS\r\nFree to play\r\nMore satisfying features than CoC\r\nVisual improvements\r\nFeels like you earned each victory, not bought\r\nYou’re unable to chat or coordinate with other players.You’re unable to chat or coordinate with other players\r\nDESCRIPTION\r\nBoom Beach is a freemium combat strategy game where you fight against your enemies, build your defences to protect your resources and train troops to send them to war.\r\nFEATURES\r\n- Explore a huge tropical archipelago full of danger and treasure\r\n- Play with thousands of other players, raid their bases and enjoy the spoils of war\r\n- Attack hundreds of unique island bases controlled by the evil Blackguard\r\n- Face fearsome Boss Enemies and uncover their evil plans\r\n- Discover the mysterious power of ancient statues and Life Crystals', '1', '76M', '1', '', 'com.supercell.boombeach', null);
INSERT INTO `game` VALUES ('40', 'DoubleDown Casino', '1', '18', null, '2.3.0', 'PROS & CONS\r\nExperience the BIG WIN of Las Vegas in the largest FREE to Play Casino!\r\nDESCRIPTION\r\nDoubleDown Casino brings the FULL casino experience everywhere you go. With blackjack, video poker, and authentic slots such as Wolf Run™, DaVinci Diamonds™ and Cleopatra®, you’ll experience Las Vegas anywhere, anytime. Enjoy exclusive, original DoubleDown games with interactive bonus round and unique mobile only features for even more fun! Daily Spins give you bonus chips 365 days a year! Double down and play our newest game, Player’s Suite BLACKJACK. Experience an even BIGGER thrill in Daily Slot Tournaments.\r\nFEATURES\r\n• Over 25+ Slot Games, including authentic games from the Casino floor\r\n• Player’s Suite BLACKJACK\r\n• Daily Slot Tournaments with Progressive Jackpots\r\n• GAME KING™ Video Poker, the most popular Video Poker in the Casino\r\n• FREE to Play, Every Day!\r\n• Login with Facebook, or play the full game as a Guest\r\n• Invite friends, send FREE Chips, and find something NEW every week', '10', '40M', '2', '', 'com.ddi', null);
INSERT INTO `game` VALUES ('41', 'Time Quest Slots', '1', '18', null, '1.2.0', 'PROS & CONS\r\nSlots as real as Vegas!\r\nDESCRIPTION\r\nPlay TimeQuest Slots, and you’ll dash around the world in this #1 time traveling casino adventure! Get ready for a frenzy of exciting new FREE video slots!\r\nFEATURES\r\n►Play like you’re in a real Las Vegas casino!\r\n►Authentic design by real-world casino slots game designers, Bluhare Studios\r\n►A casino bash with free coins and free spins!\r\n►Frenzy of bonus rounds\r\n►Unlock exciting new slot machines in the best casino slots game in town!\r\n►A FREE slots adventure around the globe', '1', '24M', '1', '', 'com.rubyseven.timequest', null);
INSERT INTO `game` VALUES ('42', 'Roulette Royale', '1', '18', null, '', 'DESCRIPTION\r\nFrom the makers of meteoric SLOTS ROYALE, Virtually Experience The Casino with ROULETTE ROYALE and the best designed ADAPTIVE virtual betting area from MyWavia Studios for FREE. THIS GAME IS ABSOLUTELY FREE. NO REAL WORLD MONEY IS INVOLVED.', '', '', '3', '', 'com.mw.rouletteroyale', null);
INSERT INTO `game` VALUES ('43', 'Aircraft Combat', '1', '19', null, '1.2', 'A Relentless Battle on the Sky\r\nPROS & CONS\r\n3D Visuals\r\nEasy Control\r\nFlight simulation elements\r\nFace to face dogfights\r\nTilting is not available\r\nControls sometimes\r\nPut yourself in the pilot’s seat and fight against other planes in the dog-fight!\r\nDESCRIPTION ;\r\nAircraft Combat is a 3D air combat game where you control a jet and join extreme boss battles. You see from the first person viewer and fire at other warplanes or launch rockets. Aircraft control system is smooth and simple. There is a button to move the warcraft. Tap on the missiles or rocket to shoot other planes.\r\nAircraft Combat has both flight simulation elements and aim & shooting elements. More and more war planes come in waves and try to shoot you in battle for air supremacy. As you going on, you get more sophisticated weapons and guns.', '', '42M', '0', '', 'com.nar.aircraft_combat', null);
INSERT INTO `game` VALUES ('44', 'The Walking Dead: Assault', '1', '19', null, '', 'PROS & CONS\r\nReleased for the first time to Google Play fans of Robert Kirkman’s award winning “The Walking Dead”, this game takes you from the moment Rick awakens in hospital, to the horrific camp invasion that costs the survivors valuable allies and friends.\r\nDESCRIPTION\r\nThe Walking Dead: Assault for Google Play features enhancements over the original, top-rated No1 strategy title. These include additional and enhanced sound and visual FX, new balance tweaks to the game’s play difficulty, additional booster items to give you more ammo and health, and the Michonne character update from the original release.', '1', '', '1', '', 'com.skybound.TWDA&hl=en', null);
INSERT INTO `game` VALUES ('45', 'Tank Hit', '1', '19', null, '1.2.5', 'PROS & CONS\r\nExperience this winter’s most exciting tank game by downloading “Tank Hit” right now!\r\nDESCRIPTION\r\nReal-time 3D Tank Battle\r\nFEATURES\r\n★ Roll out instantly and fight your foes! Join the 14 players’ real-time battle without waiting!\r\n★ Intuitive controls! Operate your tanklike driving a car!\r\n★ Customize your ride! Tune-up your ultimate war machine tactically!\r\n★ Flexible strategy! Switch between three tanks instantly to pursue your strategy!', '1', '39M', '1', '', 'com.gamesofa.tank.android', null);
INSERT INTO `game` VALUES ('46', 'Death Shooter 3D', '1', '19', null, '1.2.0', 'PROS & CONS\r\nDeath Shooter is a 3D shoot game.\r\nDESCRIPTION\r\nIt’s have two modes: Counter Strike and Zombie War.\r\nDifferent feeling , different modes\r\nFEATURES\r\n-equipment silencer will not be found in few times to killer Enemy .\r\n-upgrade your weapon’s magazine to increase capacity and reduce reloads.\r\n-upgrade your weapon’s scopes to increase damage and zoom.\r\n-upgrade your weapon’s silencer to increase critical.\r\n- upgrade levels increase hp max value.', '', '19M', '3', '', 'com.icloudzone.DeathShooter', null);
INSERT INTO `game` VALUES ('47', 'Mountain Climb Race 2', '1', '20', null, '1.0.4', 'Description\r\nMountain Climb Race 2 is an amazing physics-based racing game for Android. Ride throughout steep mountains and collect as many coins as you can. Hit the gass or brake button to balance your car and try to go as far as possible. Use your hard-earned coins to upgrade your car and go even further.\r\nMountain Climb Race 2 now has new and different terrains. Also, there are new characters for your enjoyment – and some of the craziest rides!\r\nWhat are you waiting for? Try Mountain Climb Race 2 now!!!\r\nFeatures:\r\n- 6 cars to unlock.\r\n- 4 entertaining worlds.\r\n- Achievement system.\r\n- Leaderboards.\r\n- Excellent gameplay.', '1', '20M', '1', '', 'com.awesomecargames.mountainclimbrace2', null);
INSERT INTO `game` VALUES ('48', '3D Drag Race 2', '1', '20', null, '1.95', 'The apparently “easy” goal of the game is for you to pay attention to the on-screen light there and tap your throttle, while revving, keeping your RPM around the green zone, before that traffic light turns green.\r\nDescription\r\nThe apparently “easy” goal of the game is for you to pay attention to the on-screen light there and tap your throttle, while revving, keeping your RPM around the green zone, before that traffic light turns green. Practice makes it perfect, so don’t get too disappointed if you don’t manage to do a perfect shift from the very beginning! Enjoy the race and specially: enjoy racing behind the wheel of some of your dream super cars, for that’s the true beauty of this racing game and what makes it stand apart from all the 3D drag racing games that you’ve played before: adrenaline-rising speed upgraded by some breathtaking gorgeous drag racing cars!', '', '18M', '3', '', 'air.com.empiregames.A3ddragrace2', null);
INSERT INTO `game` VALUES ('49', 'Drag Race on Venice Street', '1', '20', null, '', 'Play the 3D drag race in beautiful Venice City Street. Real Venice city Drag Race experience. Hit install to play the real 3D Drag race.\r\nDescription\r\nReal driving experience with your device accelerometer . 4+ cars to own and race. Stunning graphics. Play more game and earn cash.  So many sports car like Mclaren mp4, Lamborghini to purchase.  Free to play. Venice City Drag race will give you ultimate drag racing experience. Every car and track is more beautiful than ever thanks to graphics that push the limits of your device.', '', '26M', '0', '', 'com.aistudios.dragrace', null);
INSERT INTO `game` VALUES ('50', 'Castle of Illusion Starring Mickey Mouse', '1', '20', null, '1.1.0', 'DESCRIPTION：\r\nCastle of Illusion is a game that Mickey Mouse starts a journey across five magical worlds filled with Mizrabel’s powerful minions.\r\nFEATURES：\r\n- Play as Mickey Mouse in this reimagining of the classic Sega Genesis/Mega Drive game!\r\n- Experience a world of wonder, brought to life with all-new graphics and magical adventures!\r\n- Journey across five magical worlds filled with Mizrabel’s powerful minions!\r\n- Complete hidden challenges to customize Mickey with classic costumes!', '', '590M', '0', '', 'com.disney.castleofillusion_goo', null);
INSERT INTO `game` VALUES ('51', 'CastleStorm – Free to Siege', '1', '21', null, '1.56', 'Build your own custom castle with the Castle Editor! Use your castle in battle!\r\nPROS & CONS\r\nExtremely perfect visual design\r\nRange of gameplay options provide lots of tactical variation\r\nPerfect direct control\r\nAds stuffing\r\nDESCRIPTION\r\n- Welcome to the world of CastleStorm – Free to Siege, a super genre mashup of 2D physics destruction mashed with tower defense brawler! \r\n- Build your own custom castle with the Castle Editor! Use your castle in battle!\r\n- Four Campaigns spanning 150 battles!', '', '399M', '0', '', 'com.zenstudios.castlestorm', null);
INSERT INTO `game` VALUES ('52', 'Empire: Four Kingdoms', '1', '21', null, '1.7.57', 'PROS & CONS\r\nPrepare for battle! Construct fortresses to last for eternity, capture outposts and establish a flourishing economy.\r\nDescription\r\nSend out your armies to reduce the castles of enemy players to rubble.\r\nFEATURES\r\n• Free gaming fun\r\n• Fantastic graphics\r\n• Upgrade your castle and make it invincible\r\n• Gather resources and boost your economy\r\n• Use diplomacy and war to achieve your goals\r\n• Form an alliance with friends', '', '44M', '3', '', 'air.com.goodgamestudios.empirefourkingdoms', null);
INSERT INTO `game` VALUES ('53', 'Castle Clash', '1', '21', null, '1.2.49', 'PROS & CONS\r\nBuild and battle your way to glory in Castle Clash!\r\nDescription\r\nWith over 10 million clashers worldwide, the heat is on in the most addictive game ever!\r\nFEATURES\r\n- Build and upgrade your impenetrable fortress!\r\n- Create the ultimate army from a dozen wild troops!\r\n- Fast-paced, thrilling, and realistic battles!\r\n- Pit your Heroes against other Players in the Arena!\r\n- Tap and swipe to cast powerful spells!\r\n- Free-to-play fantasy strategy.', '13', '49M', '2', '', 'com.igg.castleclash', null);
INSERT INTO `game` VALUES ('54', 'Hills of Glory 3D', '1', '21', null, '1.2.0.6524', 'PROS & CONS\r\nKill them all…if you survive of course. It’s time to save Europe and make History\r\nDESCRIPTION\r\nLose yourself in Hills of Glory 3D, a WW2 reverse tower defense game with stunning 3D graphics. In this war game, defend your bunker against hordes of enemies with the military arsenal at your disposal. Rifle, mortar, flamethrower, air strikes… don’t hold back!', '1', '59M', '1', '', 'com.mando.hog3dfree&hl=en', null);
INSERT INTO `game` VALUES ('55', 'Magic Piano', '1', '23', null, '2.0.7', 'From Bruno Mars to Mozart, ranked first on the piano playing the game easily the most popular songs, and now also launched an HD version for the iPad! Receive free daily music and enjoy all the greatest piano music application directory. Open the game mode to unlock achievements and free songs, or just relax and play your favorite tunes. Join more than 10 million Magic Piano players and experience the fun of playing piano - no practice. \r\nMore than 1,000 songs - adding new songs every week! \r\nAll applications greatest piano music catalog for you to choose. \r\n- Top Ranking applications increased regularly song, please consult the newly released song and a song a day free music from time to time! \r\n- To win by playing new music and watch videos \r\n- Have an iPhone and iPad? Your music will be synchronized across multiple devices!', '14', '21M', '2', '', 'com.smule.magicpiano', null);
INSERT INTO `game` VALUES ('56', 'My Piano', '1', '23', null, '3.5', 'Features:\r\n■ Studio quality sound\r\n■ 11 instruments\r\n■ 8 sound effects\r\n■ multi-touch\r\n■ note velocity\r\n■ note aftertouch\r\n■ note pitch bend\r\n■ integrated sampler\r\n■ integrated recorder\r\n■ sensor pitch bend\r\n■ sensor volume change\r\n■ sample recording\r\n■ sample load & save\r\n■ tracks load & save\r\n■ MIDI load & save\r\n■ MIDI over WiFi\r\n■ MIDI note velocity\r\n■ MIDI note aftertouch\r\n■ MIDI volume control\r\n■ MIDI pitch bend\r\n■ 1.5 or 2 octaves\r\n■ 16 notes polyphony\r\n■ 16 piano skins\r\n■ 8 window themes\r\n■ 7 key types\r\n■ key name labels\r\n■ looped playback\r\n■ window animations\r\n■ hardware acceleration\r\n■ tablet support\r\n■ multi window support\r\n■ pen window support\r\n■ haptic feedback\r\n(provided by Immersion®)\r\n■ fullscreen on 4.4 KitKat\r\n', '', '7.4M', '3', '', 'com.bti.myPiano', null);
INSERT INTO `game` VALUES ('57', 'Real Piano', '1', '23', null, '3.5', 'Real Piano - Piano to Android\r\nThe most fun experience in piano to Android!\r\nDigital Piano with Grand Piano, Electric Piano, Synth, Organ, Acoustic Guitar, Electric Guitar, Electric Bass, Synth Bass, Strings, Horns, Clav, Harpsichord, Toy Organ, Banjo, Accordion, Sitar, Vibraphone, Flute, Vocals and Sax sounds.\r\nTo play live music.\r\nFeatures:\r\n* Multitouch\r\n* A complete keyboard\r\n* 20 realistic instruments\r\n* Studio audio quality\r\n* Instruments like Grand Piano, Electric Piano, Synth, Organ, Acoustic Guitar, Electric Guitar, Electric Bass, Synth Bass, Strings, Horns, Clav, Harpsichord, Toy Organ, Banjo, Accordion, Sitar, Vibraphone, Flute, Vocals and Sax\r\n* A perfect real piano/keyboard set\r\n* 5 octaves\r\n* Record mode\r\n* Play in loop \r\n* Rename recordings\r\n* Works with all screen resolutions - Cell Phones and Tablets (HD Images)\r\n* Free\r\nAlso, you can remove all ads buying a key!\r\nThe best piano keyboard on the Google Play!\r\nFor pianists, keyboardists, musician, performers and artists!', '1', '6.4M', '1', '', 'br.com.rodrigokolb.realpiano', null);
INSERT INTO `game` VALUES ('58', 'Electronic Piano Sound Plugin', '1', '23', null, '1.3', 'This is a Sound Plugin for App: Walk Band and Perfect Piano. It can\'t run alone!\r\n= Please install Walk Band or Perfect Piano first from Google Play to use this plugin.聽\r\n===========================\r\nWalk Band: https://play.google.com/store/apps/details?id=com.gamestar.pianoperfect\r\nmarket://details?id=com.gamestar.pianoperfect\r\nPerfect Piano: https://play.google.com/store/apps/details?id=com.gamestar.perfectpiano\r\nmarket://details?id=com.gamestar.perfectpiano\r\nUsage:\r\n1. Enter Keyboards Screen of Walk Band(Perfect Piano)\r\n2. Select switch instrument icon.\r\n3. This new instrument icon will automatic show. Select it and load the new sound.', '1', '3M', '1', '', 'com.perfectpiano.keyboards.elepiano', null);
INSERT INTO `game` VALUES ('60', 'Race Illegal: High Speed 3D', '1', '10', null, '1.0.23', ' Description\r\nThe smell of freshly burnt rubber on tarmac, the feel of the soft leather in your hands, the sound of engines roaring and crowds cheering, open your eyes and experience racing in its purest form, get ready to take to the streets in Race Illegal. With 20 tracks to race, 9 cars to choose from and a whole host of customisations there’s plenty here for the petrol-head to tinker with. Real driving physics, insane drifts and nitrous boosts and some of the most visually stunning locations to drive around, Race Illegal has it all.\r\nFeatures\r\n• Compete in online races\r\n• Car tuning and customisation\r\n• Personal stats and online records table\r\n• 20 tracks and 9 cars\r\n• Authentic street race atmosphere\r\n• Realistic driving physics\r\n• Engaging storyline\r\n• Integrated with Immersion Tactile Effects', '1', '14M', '2', '', 'com.herocraft.game.raceillegal', null);
INSERT INTO `game` VALUES ('61', 'Redline Rush', '1', '10', null, '1.3.3', 'Jump into a super sports car and test your driving skills in this high speed driving game where you have to weave through traffic to escape the police.\r\nDescription\r\nJump into a super sports car and test your driving skills in this high speed driving game where you have to weave through traffic to escape the police. Avoid crashes, take down traffic cars, pick up power-ups and walk to the top of the leaderboard! This game will challenge even the most skilled arcade racing fans.\r\nFeatures\r\n- Breathtaking visuals\r\n- 8+8 sports cars\r\n- 3 amazing tracks\r\n- Epic crashes\r\n- Challenge your friends\r\n- Scoreloop integration\r\n- Runs well on Tablets!', '1', '62M', '2', '', 'com.crescentmoongames.redline_rush&hl=en', null);
INSERT INTO `game` VALUES ('62', 'Road Smash: Crazy Racing!', '1', '10', null, '', 'Are you fond of expensive cars? Craving for speed and acceleration? Do you like crazy races? Then Road Smash is made for you!\r\nDescription\r\nYou will have the opportunity to drive the coolest cars and to compete with your friends; to take part in breathtaking pursuits and clashes with the police. Let’s find out who is the king of the road! The tarmac of American roads will get hot with crazy racing cars. Will you dare to undertake this challenge?! Road Smash will make you feel like a real street-racer and a law unto yourself!\r\nFeatures\r\n- Crazy races\r\n- Great 3D graphics\r\n- Actual models of formidable cars from the world’s best carmakers\r\n- Option to upgrade your car as you wish\r\n- Large variety of tracks, from snowy Canada to desert Mexico\r\n- Competitions with friends\r\n- And last but not least, the punchy fast-paced gameplay of an arcade racer.', '1', '', '2', '', 'com.creativemobile.roadsmash', null);
INSERT INTO `game` VALUES ('63', 'Reckless Getaway', '1', '10', null, '1.0.7', 'Weave in and out of oncoming traffic; dodge, outrun or ram pursuing police cars and just generally crash, smash and thrash your way through 16 varied levels.\r\nDescription\r\nWho’d a thought robbing the bank would be the easy part?\r\nNow comes the real challenge – to escape with your hard-earned loot and the fuzz hot at your heels!\r\nWeave in and out of oncoming traffic; dodge, outrun or ram pursuing police cars and just generally crash, smash and thrash your way through 16 varied levels.\r\nLet’s face it: beating someone across the finishing line is a lot of fun, but not nearly as much fun as tackling them into oncoming traffic to watch chaos ensue\r\nThe Developers behind Reckless Racing now brings you Reckless Getaway!\r\nFeatures\r\n– 16 eye-popping, visually amazing Tracks – Simple and effective controls\r\n- Unlock new tracks by earning your rates\r\n- Global leaderboards, show you’re better than the rest\r\n- Astonishing physics brings chaos to another level', '1', '174M', '1', '', 'com.polarbit.Getaway', null);
INSERT INTO `game` VALUES ('64', 'Highway Racer', '1', '10', null, '1.12', ' It must be very exciting and both dangerous to weave through the traffic. Then, do you like to have such adrenalin without any danger?\r\nDescription\r\nHighway Racer (HR) has been developed as an ambitious game to make you feel this excitement.\r\nYou can choose one of the fastest cars which suits you best, and you can change its color, rims, and increase maneuver, acceleration and brake capabilities.\r\nYou can get more credits and scores as long as you do not make accident along challenging highway, then you can use this credits to get new cars and modify them.\r\nFeatures\r\n- You can choose different highways.\r\n- You can play in “one way”, “two way” and “wrong way” modes.\r\n- Game reality is very different from other racing games.\r\n- Thanks to Google Play Service, you can see the scores of the other HR racers.\r\n- There are 8 different cars and different color options. You can also make further modifications.\r\n- There are options for automatic acceleration and steering with tilt, swipe and touch, etc.', '1', '52M', '1', '', 'com.isandroid.hwracer', null);
INSERT INTO `game` VALUES ('65', 'Ridge Racer Slipstream', '1', '10', null, '2.0.3', 'Ridge Racer – THE ULTIMATE RACING ARCADE EXPERIENCE!\r\nDescription\r\nThe ultimate arcade racing franchise brings the console experience to your Android device! Slipstream past their rivals and drift around tight turns at over 150 MPH!\r\nFeatures\r\n• 12 powerful machines speed you to victory\r\n• 300 customization possibilities to create your dream machine\r\n• 6 game-changing Perks give you advantages you’ll appreciate\r\n• Make a name for yourself in the full featured career mode\r\n• Need a quick fix? Take on Regular and Knockout Races in Arcade Mode\r\n• Connect with Facebook to gain rewards and share achievements and milestones with the Ridge Racer community\r\n• 10 unique venues and 20 courses for head to head racing\r\n• 108 racing competitions across 6 Grand Prix Series\r\n• Push the limits of high end graphics in beautifully detailed locations: Lost Ruins, Industrial Drive, Harbor Line, Old Central, and others', '1', '887M', '0', '', 'com.namcobandaigames.ridgeracerss', null);
INSERT INTO `game` VALUES ('66', 'Table Top Racing', '1', '10', null, '1.0.13', ' Incredible Console-Quality Gameplay and Graphics!\r\nDescription\r\nFrom the co-creator of Sony’s blockbuster PlayStation franchise ‘WipEout’ comes ‘Table Top Racing’, a fast and furious combat racing game featuring console quality graphics and gameplay. ‘Table Top Racing’ pits all manner of crazy cars and automobiles against each other in a world of table top race tracks and over-sized obstacles.\r\nFeatures\r\n- 17 Upgradeable Cars\r\n- 8 Incredible Race Tracks\r\n- 4 Fierce Championships\r\n- 30+ Special Events\r\n- 6 Unique Game Play Modes\r\n- 9 Cunning Power-Ups', '1', '126M', '1', '', 'com.playrisedigital.ttr', null);
INSERT INTO `game` VALUES ('67', 'Traffic Racer', '1', '10', null, '1.9', 'Traffic Racer is a milestone in the genre of endless arcade racing.\r\nDescription\r\nTraffic Racer is a milestone in the genre of endless arcade racing. Drive your car through highway traffic, earn cash, upgrade your car and buy new ones. Try to be one of the fastest drivers in the global leaderboards.\r\nFeatures\r\n- Stunning 3D graphics\r\n- Smooth and realistic car handling\r\n- 17 different cars to choose from\r\n- 4 detailed environments: suburb, desert, snowy and city night\r\n- 4 game modes: Endless, Two-Way, Time Trial and Free Ride\r\n- Rich types of NPC traffic including trucks, buses and SUVs.\r\n- Basic customisation through paint and wheels\r\n- Online Leaderboards and Achievements', '1', '46M', '1', '', 'com.skgames.trafficracer', null);
INSERT INTO `game` VALUES ('68', 'Racing Rivals', '1', '10', null, '1.6.0', 'True real-time racing at your fingertips.\r\nDescription\r\nacing Rivals lets you experience multiplayer racing as it was meant to be: live, fierce, and risky. Back your bets with skill unless you’re prepared to lose cash – or your car! The stakes are high and the risk is real. Can you handle it?\r\nFeatures\r\n- Cross platform play!\r\n- English, French, German, Spanish, Korean and Japanese, Latin American Spanish, Portuguese, and Russian languages supported', '1', '37M', '1', '', 'com.ciegames.RacingRivals', null);
INSERT INTO `game` VALUES ('69', 'GT Racing 2: The Real Car Exp', '1', '10', null, '', ' GT Racing 2: The Real Car Experience is a true-to-life automotive journey featuring the most prestigious cars in the world!\r\nDescription ;\r\nThe best-selling franchise is back for free and it’s designed to offer an unprecedented level of driving enjoyment, whether playing solo or multiplayer.\r\nFeatures,\r\n• The richest handheld racing simulation game this year: 67 licensed cars on 13 tracks, including the real Mazda Raceway Laguna Seca.\r\n• A superb collection of real cars from over 30 manufacturers: Mercedes-Benz, Ferrari, Dodge, Nissan, Audi, Ford, and more.\r\n• Test your driving skills by completing 1,400 events, including Classic Races, Duels, Knockouts and Overtakes.\r\n• 28 new challenges each week: improve your driving skills & maybe win a new car for free!\r\n• The new physics model offers the most realistic car dynamics ever offered in a handheld game.\r\n• The sun is not always shining in GT Racing 2: Our tracks have different times of day and weather conditions.\r\n• Race your way by choosing from among 4 different cameras, including a breathtaking interior view, and feast your eyes on real car designs!\r\n• No repair times or repair costs! We won’t make you wait or pay to race in an event again.\r\n• Compete with your friends or with real players from all over the world. Earn the fastest time on each race in multiplayer!\r\n• Join teams to play with other drivers and accomplish common goals.\r\n• New racer? Turn on Steering & Braking Assistance to get up to speed in a flash!\r\n• Veteran driver? Tweak your performance in the garage with tons of custom options!\r\nNo other games could offer you better realistic racing simulation than GTR2. Download it for free and enjoy the most authentic racing game on the market!\r\nFor fans of racing games, racing simulation games, rally games, and everything related to cars! This game is free to play.', '1', '', '1', '', 'com.gameloft.android.ANMP.GloftRAHM&hl=en', null);
INSERT INTO `game` VALUES ('70', 'CSR Classics', '1', '10', null, '1.3.0', 'So far, the largest auto racing, and return them to their former glory!\r\nDescription\r\nA brand new game in the series of CSR, CSR Classics sets a new benchmark in graphics and gameplay. Be ready for the race!\r\nFeatures\r\nRACE AND RESTORE\r\nSEE WHO’S FAST\r\nAMAZING GRAPHICS\r\naddictive game\r\nTowns That Never Sleeps', '1', '275M', '1', '', 'com.naturalmotion.csrclassics', null);
INSERT INTO `game` VALUES ('71', 'Asphalt 8: Airborne', '1', '10', null, '', 'Description\r\nThe best IOS arcade racing game series reaches a new turning point! Perform dynamic, high-speed aerial stunts in an intense driving experience powered by a brand-new physics engine!\r\nFeatures\r\n- Luxury dream cars\r\n- New Exotic Locations\r\n- New Features For Speed Freaks\r\n- Simultaneous Multiplayer & Ghost Challenges\r\n- Music to Rev Your Soul\r\n- Control Customization', '1', '', '1', '', 'com.gameloft.android.ANMP.GloftA8HM', null);
INSERT INTO `game` VALUES ('72', 'Real Racing 3', '1', '10', null, '2.4.0', ' Real Racing 3 sets a new standard for mobile racing games – it really must be experienced to be believed.\r\nDescription\r\nFeaturing a wide variety of officially licensed tracks, an expanded 22-car grid, and over 50 meticulously detailed cars from makers like Porsche, Lamborghini, Dodge, Bugatti, and Audi.', '1', '41M', '1', '', 'com.ea.games.r3_row&hl=en', null);
INSERT INTO `game` VALUES ('73', 'Nitro Nation', '1', '10', null, '3.1.4', ' Nitro Nation Online takes drag racing to the next level with a 3D world full of stunning new customizable cars, amazing racing physics and unlimited in-depth gameplay that guarantees racers an unforgettable experience, all on your mobile device!\r\nDescription\r\nYou will be plunged into high-speed races and competitions, along the way you will meet many characters, earn rewards and become a top racer in a famous club. The world of Nitro Nation offers a wide range of authentic, licensed cars with real physics and numerous possibilities for customization.\r\nFeatures\r\n* Race more than 50 licensed cars from Honda, Volkswagen, BMW, Alfa Romeo, Ford, Mazda and other world class brands\r\n* Drive around in two heavily detailed locales\r\n* Customize your car with different colors, visual effects and HUNDREDS of decals\r\n* Upgrade it with unique parts and tune your gearbox and engine to work in perfect harmony\r\n* Win over a MILLION prizes and upgrade your car to win even more!\r\n* Earn up to 80 achievements ranging in difficulty', '1', '86M', '1', '', 'com.creativemobile.nno', null);
INSERT INTO `game` VALUES ('74', 'Smash Bandits Racing', '1', '10', null, '1.08.11', 'ART is not supported as yet.\r\nDescription\r\nFrom the makers of Smash Cops – crash through America in the craziest road race to hit the Google Play Store. Power up to faster cars, get the edge with getaway gadgets and outrun the cops as you speed to the state line.\r\nFeatures\r\nSMASH EVERYTHING\r\nUPGRADE & OUTRUN\r\nSMASH THE LEADERBOARD\r\nBOOST YOUR CHANCES\r\nCRUISE CONTROLS\r\nTAKE A BANDIT CHALLENGE', '1', '190M', '1', '', 'com.hutchgames.smashbandits', null);
INSERT INTO `game` VALUES ('75', 'Death Racing', '1', '10', null, '1.0.6', 'Unlock most fantastic cars by skillful plays, and challenge the extreme of speed and distance!\r\nDescription\r\nFast paced 3D racing game and easy to get started\r\nUnlock most fantastic cars by skillful plays, and challenge the extreme of speed and distance!\r\nEnjoy the feeling of speed and power, need for more speed and power by this car racing\r\nComplete bounty missions and earn honorable achievements;\r\nEnjoy beautiful views along roads, bridges, seashore and more;\r\nExplore the autumn and winter sceneries of the town.\r\nAll glories come to you via a single finger!', '1', '16M', '1', '', 'com.feelingtouch.racingcar', null);
INSERT INTO `game` VALUES ('76', 'Death Racing:Moto', '1', '10', null, '1.02', 'Experience the exciting and intense 3D moto with our beauty drivers. Be ready to sail at the speed.\r\nEasy to start your racing journey and master your operating skills step by step. Then unlock the cooler racing motor and challenge the extreme speed.\r\nDescription\r\nExperience the exciting and intense 3D moto with our beauty drivers. Be ready to sail at the speed.\r\nEasy to start your racing journey and master your operating skills step by step. Then unlock the cooler racing motor and challenge the extreme speed.\r\nReceive the bounty tasks and you can achieve. You can also show you grades and ranking to your friends on Facebook.\r\nTips for you to reach higher score:\r\n#speed up continuously will multiply your score and the doubling number on the upper right side of your screen is the key that you can reach a high score;\r\n#be careful of the indicator lights and avoid those crazy road vehicles which could turn lift or right at any time;\r\n#keep an eye on your fuel tank！If you dash through the gas station before the fuel running out, your tank will be topped off again; you can get more lives by unlocking higher ranking motors.\r\nLet’s enjoy the extreme death racing now!', '1', '191M', '1', '', 'com.feelingtouch.racingmoto&hl=en', null);
INSERT INTO `game` VALUES ('77', 'Colin McRae Rally', '1', '10', null, '1.02', 'The No. 1 Racing Game in 83 countries!\r\nDescription\r\nHit the dirt as the ultimate off-road racing game experience, Colin McRae Rally, comes to Android for the very first time.\r\nFrom the developers of the multi-million selling franchise and based on content from the 90% Metacritic rated Colin McRae Rally 2.0, Colin McRae Rally for Android features THIRTY amazing rally stages with a combined distance of over 130km. Go flat out through the dirt of the Australian outback, take on dramatic climbs through the mountains of Greece and get sideways on the tight and twisty roads of Corsica.', '1', '191M', '1', '', 'com.codemasters.cmrally', null);
INSERT INTO `game` VALUES ('78', '3D Rally Fever', '1', '10', null, '1.0.5', 'As the 3d rally fever gets to you, quench your car racing thirst with this adrenaline pumping super game.\r\nDescription;\r\nJoin the extreme adventure of an almost drag racing car game and rally the off-roads to reach the finish line first. Enjoy a 3d dimension to an awesome rally game and get into the mood of a professional driving session. With cool graphics and excellent 3d game-play, you can almost feel the streets rushing beneath you, empowering you to win any death rally or GT racing competition. Be a great road warrior and enjoy one of the best racing games for android. Let the 3d rally fever get you, as you race away anywhere, at any time.', '1', '12M', '1', '', 'air.com.empiregames.A3drallyfever', null);
INSERT INTO `game` VALUES ('79', 'World Rally Racing ', '1', '10', null, '1.2.1', 'This car game will bring you to the real world of rally racing.\r\nDescription\r\nThis car game will bring you to the real world of rally racing. You can choose between different rally cars including Group B vehicles! Test your rally skills across different world locations like Usa, Sweden, Australia, Japan, Romania and many more.\r\nAttention !! – This game does not run on Galaxy Tabs and some Sony devices.\r\nMinimum Requirements:\r\n- 1 Gb Ram\r\n- Dual Core CPU\r\n- Open GLES 2\r\nFeatures:\r\n- Realistic cars handling\r\n- Speed, Acceleration, Brake and Handling can be improved by updating car level\r\n- Visual car damage that affects handling\r\n- Amateur and Professional Difficulties\r\n- 3 different types of winning medals\r\n- Realistic rally tracks\r\n- Beat Time Challenge\r\n- Smooth Gameplay\r\n- Car simulator\r\n- 3D Rally', '1', '165M', '1', '', 'com.androidromania.worldrally', null);

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'test', '123', '1', '0');
INSERT INTO `manager` VALUES ('2', 'gaoahui', 'gaoahui', '1', '0');

-- ----------------------------
-- Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `gameid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=757 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('327', 'A1', 'http://www.iiijiaba.com/navigation/pic/A1.jpg', '', '0', '4');
INSERT INTO `picture` VALUES ('328', 'A2', 'http://www.iiijiaba.com/navigation/pic/A2.jpg', '', '0', '5');
INSERT INTO `picture` VALUES ('329', 'A3', 'http://www.iiijiaba.com/navigation/pic/A3.jpg', '', '0', '6');
INSERT INTO `picture` VALUES ('330', 'A4', 'http://www.iiijiaba.com/navigation/pic/A4.jpg', '', '0', '7');
INSERT INTO `picture` VALUES ('331', 'B1', 'http://www.iiijiaba.com/navigation/pic/B1.jpg', '', '0', '8');
INSERT INTO `picture` VALUES ('332', 'B2', 'http://www.iiijiaba.com/navigation/pic/B2.jpg', '', '0', '9');
INSERT INTO `picture` VALUES ('333', 'B3', 'http://www.iiijiaba.com/navigation/pic/B3.jpg', '', '0', '10');
INSERT INTO `picture` VALUES ('334', 'B4', 'http://www.iiijiaba.com/navigation/pic/B4.jpg', '', '0', '11');
INSERT INTO `picture` VALUES ('335', 'C1', 'http://www.iiijiaba.com/navigation/pic/C1.jpg', '', '0', '12');
INSERT INTO `picture` VALUES ('336', 'C2', 'http://www.iiijiaba.com/navigation/pic/C2.jpg', '', '0', '13');
INSERT INTO `picture` VALUES ('337', 'C3', 'http://www.iiijiaba.com/navigation/pic/C3.jpg', '', '0', '14');
INSERT INTO `picture` VALUES ('338', 'C4', 'http://www.iiijiaba.com/navigation/pic/C4.jpg', '', '0', '15');
INSERT INTO `picture` VALUES ('339', 'D1', 'http://www.iiijiaba.com/navigation/pic/D1.jpg', '', '0', '16');
INSERT INTO `picture` VALUES ('340', 'D2', 'http://www.iiijiaba.com/navigation/pic/D2.jpg', '', '0', '17');
INSERT INTO `picture` VALUES ('341', 'D3', 'http://www.iiijiaba.com/navigation/pic/D3.jpg', '', '0', '18');
INSERT INTO `picture` VALUES ('342', 'E1', 'http://www.iiijiaba.com/navigation/pic/E1.jpg', '', '0', '19');
INSERT INTO `picture` VALUES ('343', 'E2', 'http://www.iiijiaba.com/navigation/pic/E2.jpg', '', '0', '20');
INSERT INTO `picture` VALUES ('344', 'E3', 'http://www.iiijiaba.com/navigation/pic/E3.jpg', '', '0', '21');
INSERT INTO `picture` VALUES ('345', 'E4', 'http://www.iiijiaba.com/navigation/pic/E4.jpg', '', '0', '22');
INSERT INTO `picture` VALUES ('346', 'F1', 'http://www.iiijiaba.com/navigation/pic/F1.jpg', '', '0', '23');
INSERT INTO `picture` VALUES ('347', 'F2', 'http://www.iiijiaba.com/navigation/pic/F2.jpg', '', '0', '24');
INSERT INTO `picture` VALUES ('348', 'F3', 'http://www.iiijiaba.com/navigation/pic/F3.jpg', '', '0', '25');
INSERT INTO `picture` VALUES ('349', 'F4', 'http://www.iiijiaba.com/navigation/pic/F4.jpg', '', '0', '26');
INSERT INTO `picture` VALUES ('350', 'G1', 'http://www.iiijiaba.com/navigation/pic/G1.jpg', '', '0', '27');
INSERT INTO `picture` VALUES ('351', 'G2', 'http://www.iiijiaba.com/navigation/pic/G2.jpg', '', '0', '28');
INSERT INTO `picture` VALUES ('352', 'G3', 'http://www.iiijiaba.com/navigation/pic/G3.jpg', '', '0', '29');
INSERT INTO `picture` VALUES ('353', 'G4', 'http://www.iiijiaba.com/navigation/pic/G4.jpg', '', '0', '30');
INSERT INTO `picture` VALUES ('354', 'H1', 'http://www.iiijiaba.com/navigation/pic/H1.jpg', '', '0', '31');
INSERT INTO `picture` VALUES ('355', 'H2', 'http://www.iiijiaba.com/navigation/pic/H2.jpg', '', '0', '32');
INSERT INTO `picture` VALUES ('356', 'H3', 'http://www.iiijiaba.com/navigation/pic/H3.jpg', '', '0', '33');
INSERT INTO `picture` VALUES ('357', 'H4', 'http://www.iiijiaba.com/navigation/pic/H4.jpg', '', '0', '34');
INSERT INTO `picture` VALUES ('358', 'I1', 'http://www.iiijiaba.com/navigation/pic/I1.jpg', '', '0', '35');
INSERT INTO `picture` VALUES ('359', 'I2', 'http://www.iiijiaba.com/navigation/pic/I2.jpg', '', '0', '36');
INSERT INTO `picture` VALUES ('360', 'I3', 'http://www.iiijiaba.com/navigation/pic/I3.jpg', '', '0', '37');
INSERT INTO `picture` VALUES ('361', 'I4', 'http://www.iiijiaba.com/navigation/pic/I4.jpg', '', '0', '38');
INSERT INTO `picture` VALUES ('362', 'J1', 'http://www.iiijiaba.com/navigation/pic/J1.jpg', '', '0', '39');
INSERT INTO `picture` VALUES ('363', 'J2', 'http://www.iiijiaba.com/navigation/pic/J2.jpg', '', '0', '40');
INSERT INTO `picture` VALUES ('364', 'J3', 'http://www.iiijiaba.com/navigation/pic/J3.jpg', '', '0', '41');
INSERT INTO `picture` VALUES ('365', 'J4', 'http://www.iiijiaba.com/navigation/pic/J4.jpg', '', '0', '42');
INSERT INTO `picture` VALUES ('366', 'K1', 'http://www.iiijiaba.com/navigation/pic/K1.jpg', '', '0', '43');
INSERT INTO `picture` VALUES ('367', 'K2', 'http://www.iiijiaba.com/navigation/pic/K2.jpg', '', '0', '44');
INSERT INTO `picture` VALUES ('368', 'K3', 'http://www.iiijiaba.com/navigation/pic/K3.jpg', '', '0', '45');
INSERT INTO `picture` VALUES ('369', 'K4', 'http://www.iiijiaba.com/navigation/pic/K4.jpg', '', '0', '46');
INSERT INTO `picture` VALUES ('370', 'L1', 'http://www.iiijiaba.com/navigation/pic/L1.jpg', '', '0', '47');
INSERT INTO `picture` VALUES ('371', 'L2', 'http://www.iiijiaba.com/navigation/pic/L2.jpg', '', '0', '48');
INSERT INTO `picture` VALUES ('372', 'L3', 'http://www.iiijiaba.com/navigation/pic/L3.jpg', '', '0', '49');
INSERT INTO `picture` VALUES ('373', 'L4', 'http://www.iiijiaba.com/navigation/pic/L4.jpg', '', '0', '50');
INSERT INTO `picture` VALUES ('374', 'M1', 'http://www.iiijiaba.com/navigation/pic/M1.jpg', '', '0', '51');
INSERT INTO `picture` VALUES ('375', 'M2', 'http://www.iiijiaba.com/navigation/pic/M3.jpg', '', '0', '52');
INSERT INTO `picture` VALUES ('376', 'M3', 'http://www.iiijiaba.com/navigation/pic/M4.jpg', '', '0', '53');
INSERT INTO `picture` VALUES ('377', 'M4', 'http://www.iiijiaba.com/navigation/pic/M5.jpg', '', '0', '54');
INSERT INTO `picture` VALUES ('378', 'N1', 'http://www.iiijiaba.com/navigation/pic/N1.jpg', '', '0', '55');
INSERT INTO `picture` VALUES ('379', 'N2', 'http://www.iiijiaba.com/navigation/pic/N2.jpg', '', '0', '56');
INSERT INTO `picture` VALUES ('380', 'N3', 'http://www.iiijiaba.com/navigation/pic/N3.jpg', '', '0', '57');
INSERT INTO `picture` VALUES ('381', 'N4', 'http://www.iiijiaba.com/navigation/pic/N4.jpg', '', '0', '58');
INSERT INTO `picture` VALUES ('382', 'A11', 'http://www.iiijiaba.com/navigation/pic/A11.jpg', '', '1', '4');
INSERT INTO `picture` VALUES ('383', 'A12', 'http://www.iiijiaba.com/navigation/pic/A12.jpg', '', '2', '4');
INSERT INTO `picture` VALUES ('384', 'A13', 'http://www.iiijiaba.com/navigation/pic/A13.png', '', '1', '4');
INSERT INTO `picture` VALUES ('385', 'A14', 'http://www.iiijiaba.com/navigation/pic/A14.png', '', '1', '4');
INSERT INTO `picture` VALUES ('386', 'A21', 'http://www.iiijiaba.com/navigation/pic/A21.png', '', '1', '5');
INSERT INTO `picture` VALUES ('387', 'A22', 'http://www.iiijiaba.com/navigation/pic/A22.png', '', '2', '5');
INSERT INTO `picture` VALUES ('388', 'A23', 'http://www.iiijiaba.com/navigation/pic/A23.png', '', '1', '5');
INSERT INTO `picture` VALUES ('389', 'A24', 'http://www.iiijiaba.com/navigation/pic/A24.png', '', '1', '5');
INSERT INTO `picture` VALUES ('390', 'A31', 'http://www.iiijiaba.com/navigation/pic/A31.png', '', '1', '6');
INSERT INTO `picture` VALUES ('391', 'A32', 'http://www.iiijiaba.com/navigation/pic/A32.png', '', '1', '6');
INSERT INTO `picture` VALUES ('392', 'A33', 'http://www.iiijiaba.com/navigation/pic/A33.png', '', '1', '6');
INSERT INTO `picture` VALUES ('393', 'A34', 'http://www.iiijiaba.com/navigation/pic/A34.png', '', '1', '6');
INSERT INTO `picture` VALUES ('394', 'A35', 'http://www.iiijiaba.com/navigation/pic/A35.png', '', '1', '6');
INSERT INTO `picture` VALUES ('395', 'A41', 'http://www.iiijiaba.com/navigation/pic/A41.png', '', '2', '7');
INSERT INTO `picture` VALUES ('396', 'A42', 'http://www.iiijiaba.com/navigation/pic/A42.png', '', '1', '7');
INSERT INTO `picture` VALUES ('397', 'A43', 'http://www.iiijiaba.com/navigation/pic/A43.png', '', '1', '7');
INSERT INTO `picture` VALUES ('398', 'B11', 'http://www.iiijiaba.com/navigation/pic/B11.png', '', '1', '8');
INSERT INTO `picture` VALUES ('399', 'B12', 'http://www.iiijiaba.com/navigation/pic/B12.jpeg', '', '1', '8');
INSERT INTO `picture` VALUES ('400', 'B13', 'http://www.iiijiaba.com/navigation/pic/B13.jpeg', '', '1', '8');
INSERT INTO `picture` VALUES ('401', 'B14', 'http://www.iiijiaba.com/navigation/pic/B14.jpeg', '', '1', '8');
INSERT INTO `picture` VALUES ('402', 'B15', 'http://www.iiijiaba.com/navigation/pic/B15.jpeg', '', '1', '8');
INSERT INTO `picture` VALUES ('403', 'B21', 'http://www.iiijiaba.com/navigation/pic/B21.png', '', '1', '9');
INSERT INTO `picture` VALUES ('404', 'B22', 'http://www.iiijiaba.com/navigation/pic/B22.png', '', '1', '9');
INSERT INTO `picture` VALUES ('405', 'B23', 'http://www.iiijiaba.com/navigation/pic/B23.png', '', '1', '9');
INSERT INTO `picture` VALUES ('406', 'B24', 'http://www.iiijiaba.com/navigation/pic/B24.png', '', '1', '9');
INSERT INTO `picture` VALUES ('407', 'B25', 'http://www.iiijiaba.com/navigation/pic/B25.png', '', '1', '9');
INSERT INTO `picture` VALUES ('408', 'B31', 'http://www.iiijiaba.com/navigation/pic/B31.jpg', '', '2', '10');
INSERT INTO `picture` VALUES ('409', 'B32', 'http://www.iiijiaba.com/navigation/pic/B32.jpg', '', '1', '10');
INSERT INTO `picture` VALUES ('410', 'B33', 'http://www.iiijiaba.com/navigation/pic/B33.jpg', '', '1', '10');
INSERT INTO `picture` VALUES ('411', 'B34', 'http://www.iiijiaba.com/navigation/pic/B34.jpg', '', '1', '10');
INSERT INTO `picture` VALUES ('412', 'B35', 'http://www.iiijiaba.com/navigation/pic/B35.jpg', '', '1', '10');
INSERT INTO `picture` VALUES ('413', 'B41', 'http://www.iiijiaba.com/navigation/pic/B41.jpeg', '', '1', '11');
INSERT INTO `picture` VALUES ('414', 'B42', 'http://www.iiijiaba.com/navigation/pic/B42.jpg', '', '1', '11');
INSERT INTO `picture` VALUES ('415', 'B43', 'http://www.iiijiaba.com/navigation/pic/B43.jpg', '', '1', '11');
INSERT INTO `picture` VALUES ('416', 'B44', 'http://www.iiijiaba.com/navigation/pic/B44.jpg', '', '1', '11');
INSERT INTO `picture` VALUES ('417', 'B45', 'http://www.iiijiaba.com/navigation/pic/B45.jpg', '', '1', '11');
INSERT INTO `picture` VALUES ('419', 'C11', 'http://www.iiijiaba.com/navigation/pic/C11.jpg', '', '1', '12');
INSERT INTO `picture` VALUES ('420', 'C12', 'http://www.iiijiaba.com/navigation/pic/C12.jpeg', '', '1', '12');
INSERT INTO `picture` VALUES ('421', 'C13', 'http://www.iiijiaba.com/navigation/pic/C13.jpeg', '', '1', '12');
INSERT INTO `picture` VALUES ('422', 'C14', 'http://www.iiijiaba.com/navigation/pic/C14.jpeg', '', '1', '12');
INSERT INTO `picture` VALUES ('423', 'C21', 'http://www.iiijiaba.com/navigation/pic/C21.png', '', '1', '13');
INSERT INTO `picture` VALUES ('424', 'C22', 'http://www.iiijiaba.com/navigation/pic/C22.png', '', '1', '13');
INSERT INTO `picture` VALUES ('425', 'C23', 'http://www.iiijiaba.com/navigation/pic/C23.png', '', '1', '13');
INSERT INTO `picture` VALUES ('426', 'C24', 'http://www.iiijiaba.com/navigation/pic/C24.png', '', '1', '13');
INSERT INTO `picture` VALUES ('427', 'C25', 'http://www.iiijiaba.com/navigation/pic/C25.png', '', '1', '13');
INSERT INTO `picture` VALUES ('428', 'C31', 'http://www.iiijiaba.com/navigation/pic/C31.jpg', '', '1', '14');
INSERT INTO `picture` VALUES ('429', 'C32', 'http://www.iiijiaba.com/navigation/pic/C32.png', '', '1', '14');
INSERT INTO `picture` VALUES ('430', 'C33', 'http://www.iiijiaba.com/navigation/pic/C33.png', '', '1', '14');
INSERT INTO `picture` VALUES ('431', 'C34', 'http://www.iiijiaba.com/navigation/pic/C34.png', '', '1', '14');
INSERT INTO `picture` VALUES ('432', 'C35', 'http://www.iiijiaba.com/navigation/pic/C35.png', '', '1', '14');
INSERT INTO `picture` VALUES ('433', 'C41', 'http://www.iiijiaba.com/navigation/pic/C41.png', '', '1', '15');
INSERT INTO `picture` VALUES ('434', 'C42', 'http://www.iiijiaba.com/navigation/pic/C43.png', '', '1', '15');
INSERT INTO `picture` VALUES ('435', 'C43', 'http://www.iiijiaba.com/navigation/pic/C44.png', '', '1', '15');
INSERT INTO `picture` VALUES ('436', 'C44', 'http://www.iiijiaba.com/navigation/pic/C45.png', '', '1', '15');
INSERT INTO `picture` VALUES ('437', 'C45', 'http://www.iiijiaba.com/navigation/pic/C46.png', '', '2', '15');
INSERT INTO `picture` VALUES ('438', 'D11', 'http://www.iiijiaba.com/navigation/pic/D11.jpg', '', '1', '16');
INSERT INTO `picture` VALUES ('439', 'D12', 'http://www.iiijiaba.com/navigation/pic/D12.jpg', '', '1', '16');
INSERT INTO `picture` VALUES ('440', 'D13', 'http://www.iiijiaba.com/navigation/pic/D13.jpg', '', '1', '16');
INSERT INTO `picture` VALUES ('441', 'D14', 'http://www.iiijiaba.com/navigation/pic/D14.jpg', '', '1', '16');
INSERT INTO `picture` VALUES ('442', 'D21', 'http://www.iiijiaba.com/navigation/pic/D21.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('443', 'D22', 'http://www.iiijiaba.com/navigation/pic/D22.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('444', 'D23', 'http://www.iiijiaba.com/navigation/pic/D23.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('445', 'D24', 'http://www.iiijiaba.com/navigation/pic/D24.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('446', 'D31', 'http://www.iiijiaba.com/navigation/pic/D31.jpg', '', '1', '18');
INSERT INTO `picture` VALUES ('447', 'D32', 'http://www.iiijiaba.com/navigation/pic/D32.jpg', '', '1', '18');
INSERT INTO `picture` VALUES ('448', 'D33', 'http://www.iiijiaba.com/navigation/pic/D33.jpg', '', '1', '18');
INSERT INTO `picture` VALUES ('449', 'D34', 'http://www.iiijiaba.com/navigation/pic/D34.jpg', '', '1', '18');
INSERT INTO `picture` VALUES ('450', 'D35', 'http://www.iiijiaba.com/navigation/pic/D35.jpg', '', '2', '18');
INSERT INTO `picture` VALUES ('451', 'D41', 'http://www.iiijiaba.com/navigation/pic/D41.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('452', 'D42', 'http://www.iiijiaba.com/navigation/pic/D42.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('453', 'D43', 'http://www.iiijiaba.com/navigation/pic/D43.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('454', 'D44', 'http://www.iiijiaba.com/navigation/pic/D44.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('455', 'D45', 'http://www.iiijiaba.com/navigation/pic/D45.jpg', '', '1', '17');
INSERT INTO `picture` VALUES ('456', 'E11', 'http://www.iiijiaba.com/navigation/pic/E11.jpg', '', '1', '19');
INSERT INTO `picture` VALUES ('457', 'E12', 'http://www.iiijiaba.com/navigation/pic/E12.jpeg', '', '1', '19');
INSERT INTO `picture` VALUES ('458', 'E13', 'http://www.iiijiaba.com/navigation/pic/E13.jpeg', '', '1', '19');
INSERT INTO `picture` VALUES ('459', 'E14', 'http://www.iiijiaba.com/navigation/pic/E14.jpeg', '', '1', '19');
INSERT INTO `picture` VALUES ('460', 'E15', 'http://www.iiijiaba.com/navigation/pic/E15.jpeg', '', '1', '19');
INSERT INTO `picture` VALUES ('461', 'E21', 'http://www.iiijiaba.com/navigation/pic/E21.jpg', '', '1', '20');
INSERT INTO `picture` VALUES ('462', 'E22', 'http://www.iiijiaba.com/navigation/pic/E22.jpg', '', '1', '20');
INSERT INTO `picture` VALUES ('463', 'E23', 'http://www.iiijiaba.com/navigation/pic/E23.jpg', '', '1', '20');
INSERT INTO `picture` VALUES ('464', 'E24', 'http://www.iiijiaba.com/navigation/pic/E24.jpg', '', '1', '20');
INSERT INTO `picture` VALUES ('465', 'E25', 'http://www.iiijiaba.com/navigation/pic/E25.jpg', '', '1', '20');
INSERT INTO `picture` VALUES ('466', 'E31', 'http://www.iiijiaba.com/navigation/pic/E32.jpg', '', '1', '21');
INSERT INTO `picture` VALUES ('467', 'E32', 'http://www.iiijiaba.com/navigation/pic/E33.jpg', '', '1', '21');
INSERT INTO `picture` VALUES ('468', 'E33', 'http://www.iiijiaba.com/navigation/pic/E34.jpg', '', '1', '21');
INSERT INTO `picture` VALUES ('469', 'E34', 'http://www.iiijiaba.com/navigation/pic/E35.jpg', '', '1', '21');
INSERT INTO `picture` VALUES ('470', 'E35', 'http://www.iiijiaba.com/navigation/pic/E36.jpg', '', '1', '21');
INSERT INTO `picture` VALUES ('471', 'E41', 'http://www.iiijiaba.com/navigation/pic/E41.jpg', '', '1', '22');
INSERT INTO `picture` VALUES ('472', 'E42', 'http://www.iiijiaba.com/navigation/pic/E42.jpg', '', '1', '22');
INSERT INTO `picture` VALUES ('473', 'E43', 'http://www.iiijiaba.com/navigation/pic/E43.jpg', '', '1', '22');
INSERT INTO `picture` VALUES ('474', 'E44', 'http://www.iiijiaba.com/navigation/pic/E44.jpg', '', '1', '22');
INSERT INTO `picture` VALUES ('475', 'E45', 'http://www.iiijiaba.com/navigation/pic/E45.jpg', '', '1', '22');
INSERT INTO `picture` VALUES ('476', 'F11', 'http://www.iiijiaba.com/navigation/pic/Role-playing Games/Dragon Quest VIII/F11.jpg', '', '1', '23');
INSERT INTO `picture` VALUES ('477', 'F12', 'http://www.iiijiaba.com/navigation/pic/Role-playing Games/Dragon Quest VIII/F12.jpeg', '', '1', '23');
INSERT INTO `picture` VALUES ('478', 'F13', 'http://www.iiijiaba.com/navigation/pic/Role-playing Games/Dragon Quest VIII/F13.jpeg', '', '1', '23');
INSERT INTO `picture` VALUES ('479', 'F14', 'http://www.iiijiaba.com/navigation/pic/Role-playing Games/Dragon Quest VIII/F14.jpeg', '', '1', '23');
INSERT INTO `picture` VALUES ('480', 'F15', 'http://www.iiijiaba.com/navigation/pic/Role-playing Games/Dragon Quest VIII/F15.jpeg', '', '1', '23');
INSERT INTO `picture` VALUES ('481', 'F21', 'http://www.iiijiaba.com/navigation/pic/F21.jpg', '', '1', '24');
INSERT INTO `picture` VALUES ('482', 'F22', 'http://www.iiijiaba.com/navigation/pic/F22.jpeg', '', '1', '24');
INSERT INTO `picture` VALUES ('483', 'F23', 'http://www.iiijiaba.com/navigation/pic/F23.jpeg', '', '1', '24');
INSERT INTO `picture` VALUES ('484', 'F24', 'http://www.iiijiaba.com/navigation/pic/F24.jpeg', '', '1', '24');
INSERT INTO `picture` VALUES ('486', 'F25', 'http://www.iiijiaba.com/navigation/pic/F25.jpeg', '', '1', '24');
INSERT INTO `picture` VALUES ('487', 'F31', 'http://www.iiijiaba.com/navigation/pic/F31.png', '', '1', '25');
INSERT INTO `picture` VALUES ('488', 'F32', 'http://www.iiijiaba.com/navigation/pic/F32.png', '', '1', '25');
INSERT INTO `picture` VALUES ('489', 'F33', 'http://www.iiijiaba.com/navigation/pic/F33.png', '', '1', '25');
INSERT INTO `picture` VALUES ('490', 'F34', 'http://www.iiijiaba.com/navigation/pic/F34.png', '', '1', '25');
INSERT INTO `picture` VALUES ('491', 'F35', 'http://www.iiijiaba.com/navigation/pic/F35.png', '', '2', '25');
INSERT INTO `picture` VALUES ('492', 'F41', 'http://www.iiijiaba.com/navigation/pic/F41.jpeg', '', '1', '26');
INSERT INTO `picture` VALUES ('493', 'F42', 'http://www.iiijiaba.com/navigation/pic/F42.jpg', '', '1', '26');
INSERT INTO `picture` VALUES ('494', 'F43', 'http://www.iiijiaba.com/navigation/pic/F43.jpg', '', '1', '26');
INSERT INTO `picture` VALUES ('495', 'F44', 'http://www.iiijiaba.com/navigation/pic/F44.jpg', '', '1', '26');
INSERT INTO `picture` VALUES ('496', 'F45', 'http://www.iiijiaba.com/navigation/pic/F45.jpg', '', '1', '26');
INSERT INTO `picture` VALUES ('497', 'G11', 'http://www.iiijiaba.com/navigation/pic/G11.png', '', '1', '27');
INSERT INTO `picture` VALUES ('498', 'G12', 'http://www.iiijiaba.com/navigation/pic/G12.png', '', '1', '27');
INSERT INTO `picture` VALUES ('499', 'G13', 'http://www.iiijiaba.com/navigation/pic/G13.png', '', '1', '27');
INSERT INTO `picture` VALUES ('500', 'G14', 'http://www.iiijiaba.com/navigation/pic/G14.png', '', '1', '27');
INSERT INTO `picture` VALUES ('501', 'G15', 'http://www.iiijiaba.com/navigation/pic/G15.png', '', '1', '27');
INSERT INTO `picture` VALUES ('502', 'G21', 'http://www.iiijiaba.com/navigation/pic/G21.jpg', '', '1', '28');
INSERT INTO `picture` VALUES ('503', 'G22', 'http://www.iiijiaba.com/navigation/pic/G22.jpg', '', '1', '28');
INSERT INTO `picture` VALUES ('504', 'G23', 'http://www.iiijiaba.com/navigation/pic/G23.jpg', '', '1', '28');
INSERT INTO `picture` VALUES ('505', 'G24', 'http://www.iiijiaba.com/navigation/pic/G24.jpg', '', '1', '28');
INSERT INTO `picture` VALUES ('506', 'G25', 'http://www.iiijiaba.com/navigation/pic/G25.jpg', '', '1', '28');
INSERT INTO `picture` VALUES ('507', 'G31', 'http://www.iiijiaba.com/navigation/pic/G31.jpg', '', '1', '29');
INSERT INTO `picture` VALUES ('508', 'G32', 'http://www.iiijiaba.com/navigation/pic/G32.jpg', '', '1', '29');
INSERT INTO `picture` VALUES ('509', 'G33', 'http://www.iiijiaba.com/navigation/pic/G33.jpg', '', '1', '29');
INSERT INTO `picture` VALUES ('510', 'G34', 'http://www.iiijiaba.com/navigation/pic/G34.jpg', '', '1', '29');
INSERT INTO `picture` VALUES ('511', 'G35', 'http://www.iiijiaba.com/navigation/pic/G35.jpg', '', '2', '29');
INSERT INTO `picture` VALUES ('512', 'G41', 'http://www.iiijiaba.com/navigation/pic/G41.png', '', '1', '30');
INSERT INTO `picture` VALUES ('513', 'G42', 'http://www.iiijiaba.com/navigation/pic/G42.png', '', '1', '30');
INSERT INTO `picture` VALUES ('514', 'G43', 'http://www.iiijiaba.com/navigation/pic/G43.png', '', '1', '30');
INSERT INTO `picture` VALUES ('515', 'G44', 'http://www.iiijiaba.com/navigation/pic/G44.png', '', '1', '30');
INSERT INTO `picture` VALUES ('516', 'G45', 'http://www.iiijiaba.com/navigation/pic/G45.png', '', '1', '30');
INSERT INTO `picture` VALUES ('517', 'H11', 'http://www.iiijiaba.com/navigation/pic/H11.png', '', '1', '31');
INSERT INTO `picture` VALUES ('518', 'H12', 'http://www.iiijiaba.com/navigation/pic/H12.jpg', '', '1', '31');
INSERT INTO `picture` VALUES ('519', 'H13', 'http://www.iiijiaba.com/navigation/pic/H13.png', '', '1', '31');
INSERT INTO `picture` VALUES ('520', 'H14', 'http://www.iiijiaba.com/navigation/pic/H14.png', '', '1', '31');
INSERT INTO `picture` VALUES ('521', 'H15', 'http://www.iiijiaba.com/navigation/pic/H15.png', '', '1', '31');
INSERT INTO `picture` VALUES ('522', 'H21', 'http://www.iiijiaba.com/navigation/pic/H21.jpg', '', '1', '32');
INSERT INTO `picture` VALUES ('523', 'H22', 'http://www.iiijiaba.com/navigation/pic/H22.jpeg', '', '1', '32');
INSERT INTO `picture` VALUES ('524', 'H23', 'http://www.iiijiaba.com/navigation/pic/H23.jpg', '', '1', '32');
INSERT INTO `picture` VALUES ('525', 'H24', 'http://www.iiijiaba.com/navigation/pic/H24.jpeg', '', '1', '32');
INSERT INTO `picture` VALUES ('526', 'H25', 'http://www.iiijiaba.com/navigation/pic/H25.jpeg', '', '1', '32');
INSERT INTO `picture` VALUES ('527', 'H31', 'http://www.iiijiaba.com/navigation/pic/H31.jpg', '', '1', '33');
INSERT INTO `picture` VALUES ('528', 'H32', 'http://www.iiijiaba.com/navigation/pic/H32.jpg', '', '1', '33');
INSERT INTO `picture` VALUES ('529', 'H33', 'http://www.iiijiaba.com/navigation/pic/H33.jpg', '', '1', '33');
INSERT INTO `picture` VALUES ('530', 'H34', 'http://www.iiijiaba.com/navigation/pic/H34.jpg', '', '1', '33');
INSERT INTO `picture` VALUES ('531', 'H35', 'http://www.iiijiaba.com/navigation/pic/H35.jpg', '', '1', '33');
INSERT INTO `picture` VALUES ('532', 'H41', 'http://www.iiijiaba.com/navigation/pic/H41.png', '', '1', '34');
INSERT INTO `picture` VALUES ('533', 'H42', 'http://www.iiijiaba.com/navigation/pic/H42.jpg', '', '1', '34');
INSERT INTO `picture` VALUES ('534', 'H43', 'http://www.iiijiaba.com/navigation/pic/H43.jpg', '', '1', '34');
INSERT INTO `picture` VALUES ('535', 'H44', 'http://www.iiijiaba.com/navigation/pic/H44.jpg', '', '1', '34');
INSERT INTO `picture` VALUES ('536', 'H45', 'http://www.iiijiaba.com/navigation/pic/H45.jpg', '', '1', '34');
INSERT INTO `picture` VALUES ('537', 'I11', 'http://www.iiijiaba.com/navigation/pic/I11.png', '', '1', '35');
INSERT INTO `picture` VALUES ('538', 'I12', 'http://www.iiijiaba.com/navigation/pic/I12.jpeg', '', '1', '35');
INSERT INTO `picture` VALUES ('539', 'I13', 'http://www.iiijiaba.com/navigation/pic/I14.jpeg', '', '1', '35');
INSERT INTO `picture` VALUES ('540', 'I14', 'http://www.iiijiaba.com/navigation/pic/I15.jpeg', '', '1', '35');
INSERT INTO `picture` VALUES ('541', 'I15', 'http://www.iiijiaba.com/navigation/pic/I16.jpeg', '', '1', '35');
INSERT INTO `picture` VALUES ('542', 'I21', 'http://www.iiijiaba.com/navigation/pic/I21.jpg', '', '1', '36');
INSERT INTO `picture` VALUES ('543', 'I22', 'http://www.iiijiaba.com/navigation/pic/I23.jpeg', '', '1', '36');
INSERT INTO `picture` VALUES ('544', 'I23', 'http://www.iiijiaba.com/navigation/pic/I23.jpeg', '', '1', '36');
INSERT INTO `picture` VALUES ('545', 'I24', 'http://www.iiijiaba.com/navigation/pic/I24.jpeg', '', '1', '36');
INSERT INTO `picture` VALUES ('546', 'I31', 'http://www.iiijiaba.com/navigation/pic/I31.jpg', '', '1', '37');
INSERT INTO `picture` VALUES ('547', 'I32', 'http://www.iiijiaba.com/navigation/pic/I33.jpeg', '', '1', '37');
INSERT INTO `picture` VALUES ('548', 'I33', 'http://www.iiijiaba.com/navigation/pic/I34.jpeg', '', '1', '37');
INSERT INTO `picture` VALUES ('549', 'I41', 'http://www.iiijiaba.com/navigation/pic/I41.jpg', '', '1', '38');
INSERT INTO `picture` VALUES ('550', 'I42', 'http://www.iiijiaba.com/navigation/pic/I42.png', '', '1', '38');
INSERT INTO `picture` VALUES ('551', 'I43', 'http://www.iiijiaba.com/navigation/pic/I43.png', '', '1', '38');
INSERT INTO `picture` VALUES ('552', 'I44', 'http://www.iiijiaba.com/navigation/pic/I44.png', '', '1', '38');
INSERT INTO `picture` VALUES ('553', 'I45', 'http://www.iiijiaba.com/navigation/pic/I45.png', '', '1', '38');
INSERT INTO `picture` VALUES ('554', 'J11', 'http://www.iiijiaba.com/navigation/pic/J11.jpg', '', '1', '39');
INSERT INTO `picture` VALUES ('555', 'J12', 'http://www.iiijiaba.com/navigation/pic/J12.jpeg', '', '1', '39');
INSERT INTO `picture` VALUES ('556', 'J13', 'http://www.iiijiaba.com/navigation/pic/J13.jpeg', '', '1', '39');
INSERT INTO `picture` VALUES ('557', 'J14', 'http://www.iiijiaba.com/navigation/pic/J14.jpeg', '', '1', '39');
INSERT INTO `picture` VALUES ('558', 'J21', 'http://www.iiijiaba.com/navigation/pic/J21.png', '', '1', '40');
INSERT INTO `picture` VALUES ('559', 'J22', 'http://www.iiijiaba.com/navigation/pic/J22.png', '', '1', '40');
INSERT INTO `picture` VALUES ('560', 'J23', 'http://www.iiijiaba.com/navigation/pic/J23.png', '', '1', '40');
INSERT INTO `picture` VALUES ('561', 'J24', 'http://www.iiijiaba.com/navigation/pic/J24.png', '', '1', '40');
INSERT INTO `picture` VALUES ('562', 'J25', 'http://www.iiijiaba.com/navigation/pic/J25.png', '', '2', '40');
INSERT INTO `picture` VALUES ('563', 'J31', 'http://www.iiijiaba.com/navigation/pic/J31.png', '', '1', '41');
INSERT INTO `picture` VALUES ('564', 'J32', 'http://www.iiijiaba.com/navigation/pic/J32.png', '', '1', '41');
INSERT INTO `picture` VALUES ('565', 'J33', 'http://www.iiijiaba.com/navigation/pic/J33.png', '', '1', '41');
INSERT INTO `picture` VALUES ('566', 'J34', 'http://www.iiijiaba.com/navigation/pic/J34.png', '', '1', '41');
INSERT INTO `picture` VALUES ('567', 'J35', 'http://www.iiijiaba.com/navigation/pic/J35.png', '', '1', '41');
INSERT INTO `picture` VALUES ('568', 'J41', 'http://www.iiijiaba.com/navigation/pic/J41.png', '', '1', '42');
INSERT INTO `picture` VALUES ('569', 'J42', 'http://www.iiijiaba.com/navigation/pic/J42.png', '', '1', '42');
INSERT INTO `picture` VALUES ('570', 'J43', 'http://www.iiijiaba.com/navigation/pic/J43.png', '', '1', '42');
INSERT INTO `picture` VALUES ('571', 'J44', 'http://www.iiijiaba.com/navigation/pic/J44.png', '', '1', '42');
INSERT INTO `picture` VALUES ('572', 'J45', 'http://www.iiijiaba.com/navigation/pic/J45.png', '', '1', '42');
INSERT INTO `picture` VALUES ('573', 'K11', 'http://www.iiijiaba.com/navigation/pic/K11.png', '', '1', '43');
INSERT INTO `picture` VALUES ('574', 'K12', 'http://www.iiijiaba.com/navigation/pic/K12.jpg', '', '1', '43');
INSERT INTO `picture` VALUES ('575', 'K13', 'http://www.iiijiaba.com/navigation/pic/K13.jpg', '', '1', '43');
INSERT INTO `picture` VALUES ('576', 'K14', 'http://www.iiijiaba.com/navigation/pic/K14.jpg', '', '1', '43');
INSERT INTO `picture` VALUES ('577', 'K15', 'http://www.iiijiaba.com/navigation/pic/K15.jpg', '', '1', '43');
INSERT INTO `picture` VALUES ('578', 'K21', 'http://www.iiijiaba.com/navigation/pic/K21.jpg', '', '1', '44');
INSERT INTO `picture` VALUES ('579', 'K22', 'http://www.iiijiaba.com/navigation/pic/K22.png', '', '1', '44');
INSERT INTO `picture` VALUES ('580', 'K23', 'http://www.iiijiaba.com/navigation/pic/K23.png', '', '1', '44');
INSERT INTO `picture` VALUES ('581', 'K24', 'http://www.iiijiaba.com/navigation/pic/K24.png', '', '1', '44');
INSERT INTO `picture` VALUES ('582', 'K25', 'http://www.iiijiaba.com/navigation/pic/K25.png', '', '1', '44');
INSERT INTO `picture` VALUES ('583', 'K31', 'http://www.iiijiaba.com/navigation/pic/K31.png', '', '1', '45');
INSERT INTO `picture` VALUES ('584', 'K32', 'http://www.iiijiaba.com/navigation/pic/K32.png', '', '1', '45');
INSERT INTO `picture` VALUES ('585', 'K33', 'http://www.iiijiaba.com/navigation/pic/K33.png', '', '1', '45');
INSERT INTO `picture` VALUES ('586', 'K34', 'http://www.iiijiaba.com/navigation/pic/K34.png', '', '1', '45');
INSERT INTO `picture` VALUES ('587', 'K35', 'http://www.iiijiaba.com/navigation/pic/K35.png', '', '1', '45');
INSERT INTO `picture` VALUES ('588', 'K41', 'http://www.iiijiaba.com/navigation/pic/K41.jpg', '', '1', '46');
INSERT INTO `picture` VALUES ('589', 'K42', 'http://www.iiijiaba.com/navigation/pic/K42.jpg', '', '1', '46');
INSERT INTO `picture` VALUES ('590', 'K43', 'http://www.iiijiaba.com/navigation/pic/K43.jpg', '', '1', '46');
INSERT INTO `picture` VALUES ('591', 'K44', 'http://www.iiijiaba.com/navigation/pic/K44.jpg', '', '1', '46');
INSERT INTO `picture` VALUES ('592', 'K45', 'http://www.iiijiaba.com/navigation/pic/K45.jpg', '', '1', '46');
INSERT INTO `picture` VALUES ('593', 'L11', 'http://www.iiijiaba.com/navigation/pic/L11.jpg', '', '1', '47');
INSERT INTO `picture` VALUES ('594', 'L12', 'http://www.iiijiaba.com/navigation/pic/L12.jpeg', '', '1', '47');
INSERT INTO `picture` VALUES ('595', 'L13', 'http://www.iiijiaba.com/navigation/pic/L13.jpg', '', '1', '47');
INSERT INTO `picture` VALUES ('596', 'L14', 'http://www.iiijiaba.com/navigation/pic/L14.jpeg', '', '1', '47');
INSERT INTO `picture` VALUES ('597', 'L15', 'http://www.iiijiaba.com/navigation/pic/L15.jpeg', '', '1', '47');
INSERT INTO `picture` VALUES ('598', 'L21', 'http://www.iiijiaba.com/navigation/pic/L21.jpeg', '', '1', '48');
INSERT INTO `picture` VALUES ('599', 'L22', 'http://www.iiijiaba.com/navigation/pic/L22.jpeg', '', '1', '48');
INSERT INTO `picture` VALUES ('600', 'L23', 'http://www.iiijiaba.com/navigation/pic/L23.jpeg', '', '1', '48');
INSERT INTO `picture` VALUES ('601', 'L24', 'http://www.iiijiaba.com/navigation/pic/L24.jpeg', '', '1', '48');
INSERT INTO `picture` VALUES ('602', 'L25', 'http://www.iiijiaba.com/navigation/pic/L25.jpeg', '', '1', '48');
INSERT INTO `picture` VALUES ('603', 'L31', 'http://www.iiijiaba.com/navigation/pic/L31.jpg', '', '1', '49');
INSERT INTO `picture` VALUES ('604', 'L32', 'http://www.iiijiaba.com/navigation/pic/L32.jpeg', '', '1', '49');
INSERT INTO `picture` VALUES ('605', 'L33', 'http://www.iiijiaba.com/navigation/pic/L33.jpg', '', '1', '49');
INSERT INTO `picture` VALUES ('606', 'L34', 'http://www.iiijiaba.com/navigation/pic/L34.jpeg', '', '1', '49');
INSERT INTO `picture` VALUES ('607', 'L35', 'http://www.iiijiaba.com/navigation/pic/L35.jpeg', '', '1', '49');
INSERT INTO `picture` VALUES ('608', 'L41', 'http://www.iiijiaba.com/navigation/pic/L41.jpeg', '', '1', '50');
INSERT INTO `picture` VALUES ('609', 'L42', 'http://www.iiijiaba.com/navigation/pic/L42.jpeg', '', '1', '50');
INSERT INTO `picture` VALUES ('610', 'L43', 'http://www.iiijiaba.com/navigation/pic/L43.jpeg', '', '1', '50');
INSERT INTO `picture` VALUES ('611', 'L44', 'http://www.iiijiaba.com/navigation/pic/L44.jpeg', '', '1', '50');
INSERT INTO `picture` VALUES ('612', 'L45', 'http://www.iiijiaba.com/navigation/pic/L45.jpeg', '', '1', '50');
INSERT INTO `picture` VALUES ('613', 'M11', 'http://www.iiijiaba.com/navigation/pic/M11.png', '', '1', '51');
INSERT INTO `picture` VALUES ('614', 'M12', 'http://www.iiijiaba.com/navigation/pic/M12.jpeg', '', '1', '51');
INSERT INTO `picture` VALUES ('615', 'M13', 'http://www.iiijiaba.com/navigation/pic/M13.jpeg', '', '1', '51');
INSERT INTO `picture` VALUES ('616', 'M14', 'http://www.iiijiaba.com/navigation/pic/M14.jpeg', '', '1', '51');
INSERT INTO `picture` VALUES ('617', 'M15', 'http://www.iiijiaba.com/navigation/pic/M15.jpeg', '', '1', '51');
INSERT INTO `picture` VALUES ('618', 'M31', 'http://www.iiijiaba.com/navigation/pic/M31.png', '', '1', '52');
INSERT INTO `picture` VALUES ('619', 'M32', 'http://www.iiijiaba.com/navigation/pic/M33.jpg', '', '1', '52');
INSERT INTO `picture` VALUES ('620', 'M41', 'http://www.iiijiaba.com/navigation/pic/M41.jpg', '', '1', '53');
INSERT INTO `picture` VALUES ('621', 'M42', 'http://www.iiijiaba.com/navigation/pic/M42.png', '', '1', '53');
INSERT INTO `picture` VALUES ('622', 'M43', 'http://www.iiijiaba.com/navigation/pic/M43.png', '', '1', '53');
INSERT INTO `picture` VALUES ('623', 'M44', 'http://www.iiijiaba.com/navigation/pic/M44.png', '', '1', '53');
INSERT INTO `picture` VALUES ('624', 'M45', 'http://www.iiijiaba.com/navigation/pic/M45.png', '', '2', '53');
INSERT INTO `picture` VALUES ('625', 'N11', 'http://www.iiijiaba.com/navigation/pic/N11.jpg', '', '1', '55');
INSERT INTO `picture` VALUES ('626', 'N12', 'http://www.iiijiaba.com/navigation/pic/N12.jpg', '', '1', '55');
INSERT INTO `picture` VALUES ('627', 'N13', 'http://www.iiijiaba.com/navigation/pic/N13.jpg', '', '1', '55');
INSERT INTO `picture` VALUES ('628', 'N14', 'http://www.iiijiaba.com/navigation/pic/N14.jpg', '', '1', '55');
INSERT INTO `picture` VALUES ('629', 'N15', 'http://www.iiijiaba.com/navigation/pic/N15.jpg', '', '2', '55');
INSERT INTO `picture` VALUES ('630', 'N21', 'http://www.iiijiaba.com/navigation/pic/N21.jpg', '', '1', '56');
INSERT INTO `picture` VALUES ('631', 'N22', 'http://www.iiijiaba.com/navigation/pic/N22.jpg', '', '1', '56');
INSERT INTO `picture` VALUES ('632', 'N23', 'http://www.iiijiaba.com/navigation/pic/N23.jpg', '', '1', '56');
INSERT INTO `picture` VALUES ('633', 'N24', 'http://www.iiijiaba.com/navigation/pic/N24.jpg', '', '1', '56');
INSERT INTO `picture` VALUES ('634', 'N25', 'http://www.iiijiaba.com/navigation/pic/N25.jpg', '', '1', '56');
INSERT INTO `picture` VALUES ('635', 'N31', 'http://www.iiijiaba.com/navigation/pic/N31.jpg', '', '1', '57');
INSERT INTO `picture` VALUES ('636', 'N32', 'http://www.iiijiaba.com/navigation/pic/N32.jpg', '', '1', '57');
INSERT INTO `picture` VALUES ('637', 'N33', 'http://www.iiijiaba.com/navigation/pic/N33.jpg', '', '1', '57');
INSERT INTO `picture` VALUES ('638', 'N34', 'http://www.iiijiaba.com/navigation/pic/N34.jpg', '', '1', '57');
INSERT INTO `picture` VALUES ('639', 'N35', 'http://www.iiijiaba.com/navigation/pic/N35.jpg', '', '1', '57');
INSERT INTO `picture` VALUES ('640', 'N41', 'http://www.iiijiaba.com/navigation/pic/N41.jpg', '', '1', '58');
INSERT INTO `picture` VALUES ('641', 'N42', 'http://www.iiijiaba.com/navigation/pic/N42.jpg', '', '1', '58');
INSERT INTO `picture` VALUES ('642', 'N43', 'http://www.iiijiaba.com/navigation/pic/N43.jpg', '', '1', '58');
INSERT INTO `picture` VALUES ('643', 'A5', 'http://www.iiijiaba.com/navigation/pic/A5.jpg', '', '0', '60');
INSERT INTO `picture` VALUES ('644', 'A51', 'http://www.iiijiaba.com/navigation/pic/A51.png', '', '2', '60');
INSERT INTO `picture` VALUES ('645', 'A52', 'http://www.iiijiaba.com/navigation/pic/A52.png', '', '1', '60');
INSERT INTO `picture` VALUES ('646', 'A53', 'http://www.iiijiaba.com/navigation/pic/A53.png', '', '1', '60');
INSERT INTO `picture` VALUES ('647', 'A54', 'http://www.iiijiaba.com/navigation/pic/A54.png', '', '1', '60');
INSERT INTO `picture` VALUES ('648', 'A55', 'http://www.iiijiaba.com/navigation/pic/A55.png', '', '1', '60');
INSERT INTO `picture` VALUES ('649', 'A6', 'http://www.iiijiaba.com/navigation/pic/A6.jpg', '', '0', '61');
INSERT INTO `picture` VALUES ('650', 'A61', 'http://www.iiijiaba.com/navigation/pic/A61.jpg', '', '2', '61');
INSERT INTO `picture` VALUES ('651', 'A62', 'http://www.iiijiaba.com/navigation/pic/A62.jpg', '', '1', '61');
INSERT INTO `picture` VALUES ('652', 'A63', 'http://www.iiijiaba.com/navigation/pic/A63.jpg', '', '1', '61');
INSERT INTO `picture` VALUES ('653', 'A64', 'http://www.iiijiaba.com/navigation/pic/A64.jpg', '', '1', '61');
INSERT INTO `picture` VALUES ('654', 'A65', 'http://www.iiijiaba.com/navigation/pic/A65.jpg', '', '1', '61');
INSERT INTO `picture` VALUES ('655', 'A8', 'http://www.iiijiaba.com/navigation/pic/A8.jpg', '', '0', '62');
INSERT INTO `picture` VALUES ('656', 'A81', 'http://www.iiijiaba.com/navigation/pic/A81.png', '', '2', '62');
INSERT INTO `picture` VALUES ('657', 'A82', 'http://www.iiijiaba.com/navigation/pic/A82.png', '', '1', '62');
INSERT INTO `picture` VALUES ('658', 'A83', 'http://www.iiijiaba.com/navigation/pic/A83.png', '', '1', '62');
INSERT INTO `picture` VALUES ('659', 'A84', 'http://www.iiijiaba.com/navigation/pic/A84.png', '', '1', '62');
INSERT INTO `picture` VALUES ('660', 'A85', 'http://www.iiijiaba.com/navigation/pic/A85.png', '', '1', '62');
INSERT INTO `picture` VALUES ('661', 'A7', 'http://www.iiijiaba.com/navigation/pic/A7.jpg', '', '0', '63');
INSERT INTO `picture` VALUES ('662', 'A71', 'http://www.iiijiaba.com/navigation/pic/A71.jpg', '', '1', '63');
INSERT INTO `picture` VALUES ('663', 'A72', 'http://www.iiijiaba.com/navigation/pic/A72.jpg', '', '1', '63');
INSERT INTO `picture` VALUES ('664', 'A73', 'http://www.iiijiaba.com/navigation/pic/A73.jpg', '', '1', '63');
INSERT INTO `picture` VALUES ('665', 'A74', 'http://www.iiijiaba.com/navigation/pic/A74.jpg', '', '1', '63');
INSERT INTO `picture` VALUES ('666', 'A75', 'http://www.iiijiaba.com/navigation/pic/A75.jpg', '', '1', '63');
INSERT INTO `picture` VALUES ('667', 'A9', 'http://www.iiijiaba.com/navigation/pic/A9.jpg', '', '0', '64');
INSERT INTO `picture` VALUES ('668', 'A91', 'http://www.iiijiaba.com/navigation/pic/A91.png', '', '1', '64');
INSERT INTO `picture` VALUES ('669', 'A92', 'http://www.iiijiaba.com/navigation/pic/A92.png', '', '1', '64');
INSERT INTO `picture` VALUES ('670', 'A93', 'http://www.iiijiaba.com/navigation/pic/A93.png', '', '1', '64');
INSERT INTO `picture` VALUES ('671', 'A94', 'http://www.iiijiaba.com/navigation/pic/A94.png', '', '1', '64');
INSERT INTO `picture` VALUES ('672', 'A95', 'http://www.iiijiaba.com/navigation/pic/A95.png', '', '1', '64');
INSERT INTO `picture` VALUES ('673', 'A10', 'http://www.iiijiaba.com/navigation/pic/A10.jpg', '', '0', '65');
INSERT INTO `picture` VALUES ('674', 'A101', 'http://www.iiijiaba.com/navigation/pic/A101.png', '', '1', '65');
INSERT INTO `picture` VALUES ('675', 'A102', 'http://www.iiijiaba.com/navigation/pic/A102.png', '', '1', '65');
INSERT INTO `picture` VALUES ('676', 'A103', 'http://www.iiijiaba.com/navigation/pic/A103.png', '', '1', '65');
INSERT INTO `picture` VALUES ('677', 'A104', 'http://www.iiijiaba.com/navigation/pic/A104.png', '', '1', '65');
INSERT INTO `picture` VALUES ('678', 'A111', 'http://www.iiijiaba.com/navigation/pic/A111.png', '', '1', '66');
INSERT INTO `picture` VALUES ('679', 'A11', 'http://www.iiijiaba.com/navigation/pic/A11.jpg', '', '0', '66');
INSERT INTO `picture` VALUES ('680', 'A112', 'http://www.iiijiaba.com/navigation/pic/A112.png', '', '1', '66');
INSERT INTO `picture` VALUES ('681', 'A113', 'http://www.iiijiaba.com/navigation/pic/A113.png', '', '1', '66');
INSERT INTO `picture` VALUES ('682', 'A114', 'http://www.iiijiaba.com/navigation/pic/A114.png', '', '1', '66');
INSERT INTO `picture` VALUES ('683', 'A115', 'http://www.iiijiaba.com/navigation/pic/A115.png', '', '1', '66');
INSERT INTO `picture` VALUES ('684', 'A12', 'http://www.iiijiaba.com/navigation/pic/A12.jpg', '', '0', '67');
INSERT INTO `picture` VALUES ('685', 'A121', 'http://www.iiijiaba.com/navigation/pic/A121.jpeg', '', '1', '67');
INSERT INTO `picture` VALUES ('686', 'A122', 'http://www.iiijiaba.com/navigation/pic/A122.jpeg', '', '1', '67');
INSERT INTO `picture` VALUES ('687', 'A123', 'http://www.iiijiaba.com/navigation/pic/A123.jpeg', '', '1', '67');
INSERT INTO `picture` VALUES ('688', 'A124', 'http://www.iiijiaba.com/navigation/pic/A124.jpeg', '', '1', '67');
INSERT INTO `picture` VALUES ('689', 'A125', 'http://www.iiijiaba.com/navigation/pic/A125.jpeg', '', '1', '67');
INSERT INTO `picture` VALUES ('690', 'A13', 'http://www.iiijiaba.com/navigation/pic/A13.jpg', '', '0', '68');
INSERT INTO `picture` VALUES ('691', 'A131', 'http://www.iiijiaba.com/navigation/pic/A131.png', '', '1', '68');
INSERT INTO `picture` VALUES ('692', 'A132', 'http://www.iiijiaba.com/navigation/pic/A132.png', '', '1', '68');
INSERT INTO `picture` VALUES ('693', 'A133', 'http://www.iiijiaba.com/navigation/pic/A133.png', '', '1', '68');
INSERT INTO `picture` VALUES ('694', 'A134', 'http://www.iiijiaba.com/navigation/pic/A134.png', '', '1', '68');
INSERT INTO `picture` VALUES ('695', 'A135', 'http://www.iiijiaba.com/navigation/pic/A135.png', '', '1', '68');
INSERT INTO `picture` VALUES ('696', 'A14', 'http://www.iiijiaba.com/navigation/pic/A14.jpg', '', '0', '69');
INSERT INTO `picture` VALUES ('697', 'A141', 'http://www.iiijiaba.com/navigation/pic/A141.png', '', '1', '69');
INSERT INTO `picture` VALUES ('698', 'A142', 'http://www.iiijiaba.com/navigation/pic/A142.png', '', '1', '69');
INSERT INTO `picture` VALUES ('699', 'A143', 'http://www.iiijiaba.com/navigation/pic/A143.jpg', '', '1', '69');
INSERT INTO `picture` VALUES ('700', 'A144', 'http://www.iiijiaba.com/navigation/pic/A144.png', '', '1', '69');
INSERT INTO `picture` VALUES ('701', 'A145', 'http://www.iiijiaba.com/navigation/pic/A145.png', '', '1', '69');
INSERT INTO `picture` VALUES ('702', 'A15', 'http://www.iiijiaba.com/navigation/pic/A15.jpg', '', '0', '70');
INSERT INTO `picture` VALUES ('703', 'A151', 'http://www.iiijiaba.com/navigation/pic/A151.png', '', '1', '70');
INSERT INTO `picture` VALUES ('704', 'A152', 'http://www.iiijiaba.com/navigation/pic/A152.png', '', '1', '70');
INSERT INTO `picture` VALUES ('705', 'A153', 'http://www.iiijiaba.com/navigation/pic/A153.png', '', '1', '70');
INSERT INTO `picture` VALUES ('706', 'A154', 'http://www.iiijiaba.com/navigation/pic/A154.jpg', '', '1', '70');
INSERT INTO `picture` VALUES ('707', 'A155', 'http://www.iiijiaba.com/navigation/pic/A155.png', '', '1', '70');
INSERT INTO `picture` VALUES ('708', 'A16', 'http://www.iiijiaba.com/navigation/pic/A16.jpg', '', '0', '71');
INSERT INTO `picture` VALUES ('709', 'A161', 'http://www.iiijiaba.com/navigation/pic/A161.jpg', '', '1', '71');
INSERT INTO `picture` VALUES ('710', 'A162', 'http://www.iiijiaba.com/navigation/pic/A162.jpg', '', '1', '71');
INSERT INTO `picture` VALUES ('711', 'A163', 'http://www.iiijiaba.com/navigation/pic/A163.jpg', '', '1', '71');
INSERT INTO `picture` VALUES ('712', 'A164', 'http://www.iiijiaba.com/navigation/pic/A164.jpg', '', '1', '71');
INSERT INTO `picture` VALUES ('713', 'A165', 'http://www.iiijiaba.com/navigation/pic/A165.jpg', '', '1', '71');
INSERT INTO `picture` VALUES ('714', 'A17', 'http://www.iiijiaba.com/navigation/pic/A17.jpg', '', '0', '72');
INSERT INTO `picture` VALUES ('715', 'A171', 'http://www.iiijiaba.com/navigation/pic/A171.png', '', '1', '72');
INSERT INTO `picture` VALUES ('716', 'A172', 'http://www.iiijiaba.com/navigation/pic/A172.png', '', '1', '72');
INSERT INTO `picture` VALUES ('717', 'A173', 'http://www.iiijiaba.com/navigation/pic/A173.png', '', '1', '72');
INSERT INTO `picture` VALUES ('718', 'A174', 'http://www.iiijiaba.com/navigation/pic/A174.png', '', '1', '72');
INSERT INTO `picture` VALUES ('719', 'A175', 'http://www.iiijiaba.com/navigation/pic/A175.png', '', '1', '72');
INSERT INTO `picture` VALUES ('720', 'A18', 'http://www.iiijiaba.com/navigation/pic/A18.jpg', '', '0', '73');
INSERT INTO `picture` VALUES ('721', 'A181', 'http://www.iiijiaba.com/navigation/pic/A181.png', '', '1', '73');
INSERT INTO `picture` VALUES ('722', 'A182', 'http://www.iiijiaba.com/navigation/pic/A182.png', '', '1', '73');
INSERT INTO `picture` VALUES ('723', 'A183', 'http://www.iiijiaba.com/navigation/pic/A183.png', '', '1', '73');
INSERT INTO `picture` VALUES ('724', 'A184', 'http://www.iiijiaba.com/navigation/pic/A184.png', '', '1', '73');
INSERT INTO `picture` VALUES ('725', 'A185', 'http://www.iiijiaba.com/navigation/pic/A185.png', '', '1', '73');
INSERT INTO `picture` VALUES ('726', 'A19', 'http://www.iiijiaba.com/navigation/pic/A19.jpg', '', '0', '74');
INSERT INTO `picture` VALUES ('727', 'A191', 'http://www.iiijiaba.com/navigation/pic/A191.jpg', '', '1', '74');
INSERT INTO `picture` VALUES ('728', 'A21', 'http://www.iiijiaba.com/navigation/pic/A21.jpg', '', '0', '76');
INSERT INTO `picture` VALUES ('729', 'A20', 'http://www.iiijiaba.com/navigation/pic/A20.jpg', '', '0', '75');
INSERT INTO `picture` VALUES ('730', 'A201', 'http://www.iiijiaba.com/navigation/pic/A201.jpg', '', '1', '75');
INSERT INTO `picture` VALUES ('731', 'A202', 'http://www.iiijiaba.com/navigation/pic/A202.jpg', '', '1', '75');
INSERT INTO `picture` VALUES ('732', 'A203', 'http://www.iiijiaba.com/navigation/pic/A203.jpg', '', '1', '75');
INSERT INTO `picture` VALUES ('733', 'A204', 'http://www.iiijiaba.com/navigation/pic/A204.jpg', '', '1', '75');
INSERT INTO `picture` VALUES ('734', 'A205', 'http://www.iiijiaba.com/navigation/pic/A205.jpg', '', '1', '75');
INSERT INTO `picture` VALUES ('735', 'A211', 'http://www.iiijiaba.com/navigation/pic/A211.jpg', '', '1', '76');
INSERT INTO `picture` VALUES ('736', 'A212', 'http://www.iiijiaba.com/navigation/pic/A212.jpg', '', '1', '76');
INSERT INTO `picture` VALUES ('737', 'A213', 'http://www.iiijiaba.com/navigation/pic/A213.jpg', '', '1', '76');
INSERT INTO `picture` VALUES ('738', 'A214', 'http://www.iiijiaba.com/navigation/pic/A214.jpg', '', '1', '76');
INSERT INTO `picture` VALUES ('739', 'A215', 'http://www.iiijiaba.com/navigation/pic/A215.jpg', '', '1', '76');
INSERT INTO `picture` VALUES ('740', 'A22', 'http://www.iiijiaba.com/navigation/pic/A22.jpg', '', '0', '77');
INSERT INTO `picture` VALUES ('741', 'A221', 'http://www.iiijiaba.com/navigation/pic/A221.png', '', '1', '77');
INSERT INTO `picture` VALUES ('742', 'A222', 'http://www.iiijiaba.com/navigation/pic/A222.png', '', '1', '77');
INSERT INTO `picture` VALUES ('743', 'A223', 'http://www.iiijiaba.com/navigation/pic/A223.png', '', '1', '77');
INSERT INTO `picture` VALUES ('744', 'A224', 'http://www.iiijiaba.com/navigation/pic/A224.png', '', '1', '77');
INSERT INTO `picture` VALUES ('745', 'A225', 'http://www.iiijiaba.com/navigation/pic/A225.png', '', '1', '77');
INSERT INTO `picture` VALUES ('746', 'A23', 'http://www.iiijiaba.com/navigation/pic/A23.jpg', '', '0', '78');
INSERT INTO `picture` VALUES ('747', 'A231', 'http://www.iiijiaba.com/navigation/pic/A231.png', '', '1', '78');
INSERT INTO `picture` VALUES ('748', 'A232', 'http://www.iiijiaba.com/navigation/pic/A232.png', '', '1', '78');
INSERT INTO `picture` VALUES ('749', 'A233', 'http://www.iiijiaba.com/navigation/pic/A233.png', '', '1', '78');
INSERT INTO `picture` VALUES ('750', 'A234', 'http://www.iiijiaba.com/navigation/pic/A234.png', '', '1', '78');
INSERT INTO `picture` VALUES ('751', 'A24', 'http://www.iiijiaba.com/navigation/pic/A24.jpg', '', '0', '79');
INSERT INTO `picture` VALUES ('752', 'A241', 'http://www.iiijiaba.com/navigation/pic/A241.jpg', '', '1', '79');
INSERT INTO `picture` VALUES ('753', 'A242', 'http://www.iiijiaba.com/navigation/pic/A242.jpg', '', '1', '79');
INSERT INTO `picture` VALUES ('754', 'A243', 'http://www.iiijiaba.com/navigation/pic/A243.jpg', '', '1', '79');
INSERT INTO `picture` VALUES ('755', 'A244', 'http://www.iiijiaba.com/navigation/pic/A244.jpg', '', '1', '79');
INSERT INTO `picture` VALUES ('756', 'A245', 'http://www.iiijiaba.com/navigation/pic/A245.jpg', '', '1', '79');

-- ----------------------------
-- Table structure for `releaseman`
-- ----------------------------
DROP TABLE IF EXISTS `releaseman`;
CREATE TABLE `releaseman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of releaseman
-- ----------------------------
INSERT INTO `releaseman` VALUES ('1', 'sss');

-- ----------------------------
-- Table structure for `store`
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('1', 'google', 'https://play.google.com/store');
