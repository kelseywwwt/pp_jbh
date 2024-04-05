# Petit Prince: Journey Back Home

### Video Demo: <url>

### Game Description:

A simple race-to-the-end game inspired by the Little Prince, in french *Le Petit Prince*, from Antoine de Saint-Exupéry.

User plays as the Little Prince. <br>
The game starts in the desert, where the Little Prince decides to go back on his asteroid, for his rose. <br>
Flying up in the sky and eventually travelling the Universe once again, but this time in reversed. <br>
Little Prince will get to meet his previous encounters again! <br>
Clouds and stars can help Little Prince travel faster but he should be careful of birds, satellites and asteroids on his way back.

### Files Description:
- main.lua: this is the main file
- entity.lua: this is a file for all entities (Little Prince, birds, clouds, satellites, stars, asteroids)  for the similar behaviors they share.
- petitprince.lua: this is a file for the little prince.
- obstacle.lua: this is a file for all obstacles, entities to avoid (birds, satellites, asteroids)
- boost.lua: this is a file for all boosts, entities to collect (clouds, stars)

### Design Debates:
1. For Little Prince design: when flying, arms up or down?
   - Up = looks better, a bit more complicated for design.
   - Down = looks a bit weird, easier for design.
   
   Do arms up since the design can be done fast enough.
2. For my game title: keep Petit Prince or change to Little Prince?

   Keep Petit Prince because I'm french.
3. For levels background: design manually a background image or set a background color and just add decorations individually.

    Set a background color(30, 28, 72) and add decorations manually.
    It would be too complicated to use a Mario Bros. method.
    My background is simple enough. 

### Sources:
- petitprince(1 & 2).png + logo.png: *inspired by RGZNSK on Behance and Ben Maden on Matter Solutions, made by me on pixilart.com*
- bird.png:
- cloud.png:
- satellite.png:
- shootingStar.png:
- asteroid.png:
- star.png: *VectorStock*
- bgStar.png: *made by me on pixilart.com*
- bgLvl2