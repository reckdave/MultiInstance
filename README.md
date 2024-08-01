# MultiInstance
Made for the bounty / mods

# STILL BEING MADE AND CHANGED, EXPECT SOME KINITO BUGS

# HOW TO USE
- When want to open your_world, you would have to get the mods location and call .openInst()

# HOW THE F#CK DOES THIS WORK?!?

- The mod creates a file that can read and write, at launch the data stored in that file is set to false
- The mod reopens the base game because it is the only scene that loads mods.
- The file then gets set to true and wont open the game again (to stop infinite games from opening)
- If the game reads the file as true when the mod loads. It switches the scene to the one you put in the script

# PROOF VIDEO


https://github.com/user-attachments/assets/256aee32-81ae-43b5-a1ee-51e86244dbec


