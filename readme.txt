██████╗  ██████╗  ██████╗ ████████╗███████╗███████╗████████╗
██╔══██╗██╔══██╗ ██╔═══██╗╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝
██████╔╝██████╔╝ ██║   ██║   ██║   █████╗  ███████╗   ██║   
██╔═══╝ ██╔══██╗ ██║   ██║   ██║   ██╔══╝  ╚════██║   ██║   
██║     ██║  ██║ ╚██████╔╝   ██║   ███████╗███████║   ██║   
╚═╝     ╚═╝  ╚═╝  ╚═════╝    ╚═╝   ╚══════╝╚══════╝   ╚═╝   

 ██████╗   █████╗  ███╗   ███╗ ███████╗
██╔════╝  ██╔══██╗ ████╗ ████║ ██╔════╝
██║  ███╗ ███████║ ██╔████╔██║ █████╗  
██║   ██║ ██╔══██║ ██║╚██╔╝██║ ██╔══╝  
╚██████╔╝ ██║  ██║ ██║ ╚═╝ ██║ ███████╗
 ╚═════╝  ╚═╝  ╚═╝╚═╝      ╚═╝ ╚══════╝

This is a very simple oTree multiplayer game for college students to explore game theory principles. Included are two files. The first is an otreezip file, which has the code for the game and will allow you to run it on Otree Hub. The second file is a simple R script which will take the output csv file from the game and calculate some basic statistics and a graph of scores.

The game itself is very simple. Players go through 12 rounds where they can choose to either attend or skip a protest. The payoff each round is determined by the choice of the player as well as the overall attendance. Payouts follow the general structure that skipping is rewarded the more people attend, but more negative when attendance is low. 

+------------+-----+-----+-----+-----+
| Attendance | >80 | >50 | >30 | >0  |
+------------+-----+-----+-----+-----+
| Attend     |  4  |  2  | -1  | -3  |
+------------+-----+-----+-----+-----+
| Skip       |  6  |  3  | -2  | -4  |
+------------+-----+-----+-----+-----+

After each round, players are told the attendance and their cumulative score, as well as their rank in the game. This rank can be misleading when there are ties, as the game will not assign the same rank to players with the same score.

To play the game, one of the simpler options is to use the oTree Hub website with a Heroku server. The downside to this option is that Heroku servers are no longer free. However, if you are using this for just one or two class meetings, the cost should not be anything higher than a dollar or two. I highly recommend following Jonas Frey's guide on YouTube to get it functioning. It is slightly outdated, but it goes through every step you should need. https://www.youtube.com/watch?v=H8Do08ub8bM

1ST WARNING: I recommend that the instructor plays the game as well to monitor the progress. If you do not play, you will not be able to see the progress without downloading the csv file. Additionally, the game will continue from round to round automatically after all students make a choice. Playing along allows you to hold progress of the game to explain concepts or discuss strategies with students. 

2ND WARNING: To enable the game to accommodate as many players as possible, you will be asked to give the server the amount of players for the game when creating the room for the game. It is very important you get this accurate. If you undercount, the game will start without all players. If you overcount, the game will not start, as it will wait for all players to join. In this case, you either need to fill the room with dummy players or reset the room.

To edit this game, you would need to unzip the otreezip file. This is complicated because it would required running python and installing oTree, which many instructors may not be familiar with. For those who wish to edit the game, I would be happy to make edits to the code and send you an updated version! Just email me at nbrouwer@ucmerced.edu or nickbrouwer99@gmail.com. I can't promise a speedy turn-around, but I will try my best to accommodate. For those who wish to try editing it yourself, I again highly recommend the tutorials by Jonas Frey on oTree.


