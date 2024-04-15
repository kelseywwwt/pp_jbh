# Petit Prince: Journey Back Home

### Video Demo: [Petit Prince: Journey Back Home - CS50x Final Project](https://youtu.be/3H5KKiZ73uU)

### Game Description:
A simple race-to-the-end game inspired by the Little Prince, in french *Le Petit Prince*, from Antoine de Saint-Exupéry.

User plays as the Little Prince. <br>
The game starts in the desert, where the Little Prince decides to go back on his asteroid, for his rose. <br>
Flying up in the sky and eventually travelling the Universe once again <br>
Stars can be collected but be careful of asteroids on his way back.

### Files Description:
- background.lua: creates and draws on canvas background decorations (background stars and desert);
- boost.lua: creates and draws stars to collect + a reset function when the game is over;
- classic.lua: this is an external library for classes;
- conf.lua: this is the configuration file (game title, icon);
- main.lua: sets the games parameters, draws the game for different situations (start of the app, victory/death of the player, checks collision, handles the scoring and button clicks and resets the whole game);
- obstacle.lua: creates and draws asteroids to avoid + a reset function when the game is over;
- player.lua: creates and draws 'Petit Prince'/the player, handles the player moving left and right, makes the player fly up and faster as the game progresses, stops the player when reaching the end of the level + a reset function when the game is over.

### Design Debates:
1. For Little Prince design: when flying, arms up or down?
   - Up = looks better, a bit more complicated for design.
   - Down = looks a bit weird, easier for design.
   
   Do arms up since the design can be done fast enough.
2. For my game title: keep Petit Prince or change to Little Prince?

   Keep 'Petit Prince' because I'm french.
3. For levels background: design manually a background image or set a background color and just add decorations individually?

    Set a background color(30, 28, 72) and add decorations manually.
    It would be too complicated to use a Mario Bros. method.
    My background is simple enough. 
4. For levels: game in levels or infinite?

   Infinite game (technically finite but the end is far).
   Levels are too complicated for the little time I have left.
   This also means I gave up the different planets pictured in the book.
5. For obstacles: asteroids move or static? 1 or 2 kinds of asteroids?

   Asteroids are static. It's more fun and difficult in this long game.
   Only one asteroid. Too complicated to add another one.
6. For position: keep the x, y position at the top left or no?

   Keep them to see the payer's progress.

### Difficulties:
- Design:

   I thought design would be the most fun but it's the most challenging.
   I prefer writing code than spending time designing but I think the appearance of the game is important.
   Animation would make the game more appealing and more alive but I'm not skilled in it and don't have the time either.
- Scaling:

   Scaling images is difficult in code so I try my best to manually size the images individually.
- Order of lines of code:

   The order of the code can change so much and I'm still a little confused about it.
   I have difficulties making the game work while keeping the appearance of the game good.

## Sources:
Images:
- asteroid.png: *Sarah Reddington on kindpng.com*
- bgStar.png: *me on pixilart.com*
- desert.png: *me on pixilart.com*
- homescreen.png: *me on pixilart.com*
- petitprince(1 & 2).png + logo.png: *inspired by RGZNSK on Behance and Ben Maden on Matter Solutions, me on pixilart.com*
- restartScreen.png: *me on pixilart.com*
- star.png: *Support Ivy on Pinterest*
- winScreen.png: *me on pixilart.com*

Audio:
- asteroidSfx.mp3: *EdR on pixabay.com: Video Game Hit Noise 001*
- song.mp3: *JuliusH on pixabay.com: Interstellar - Science-Fiction Sounds*
- starSfx.mp3: *Pixabay on pixabay.com: scale e6*

Video made with Canva