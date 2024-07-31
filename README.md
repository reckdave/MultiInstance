# MultiInstance
Made for the bounty / mods

# STILL BEING MADE AND CHANGED, EXPECT SOME KINITO BUGS

# HOW TO USE
- No more and one mod can edit your world, Kinito is also replaced so it conflicts with KinitoFIXES
- Copy the code and paste it in ur project
- Replace `MAINInstance.DATA` in saveLoc and rename it to something unique
- Use the file system format, e.g edited your_world in `res://-Scenes/NewInstance/1/1.tscn`
- Custom instance can also be made, just create a folder in NewInstance name give it a unique number

# HOW THE F#CK DOES THIS WORK?!?

- The mod creates a file that can read and write, at launch the data stored in that file is set to false
- The mod reopens the base game because it is the only scene that loads mods.
- The file then gets set to true and wont open the game again (to stop infinite games from opening)
- If the game reads the file as true when the mod loads. It switches the scene to the one you put in the script

# PROOF VIDEO


https://github.com/user-attachments/assets/256aee32-81ae-43b5-a1ee-51e86244dbec


