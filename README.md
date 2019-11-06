# ThunderDev
_Developed by:_ **CX-W Thunder**  
[![Build Status](https://dev.azure.com/jdoxley6/jdoxley6/_apis/build/status/jdoxley.ThunderDev?branchName=master)](https://dev.azure.com/jdoxley6/jdoxley6/_build/latest?definitionId=1&branchName=master)  
For use by the 501st Legion Mission Builder C-Shop  
[JSON Parser for sqf credit](https://forums.bohemia.net/forums/topic/162724-json-parser-in-and-for-sqf/)  
**Made For the newest version of the 501st AUX Mod**

## Instalation
1. Extract the contents of [ThunderDev.zip](https://github.com/jdoxley/ThunderDev/releases) into the mission folder
2. **Boom** done, now go to [here](https://github.com/jdoxley/ThunderDev/blob/master/README.md#use) to learn how to use my script.


## Use
1. Place markers down on the locations you want avalible to spawn items at.
   - Make the variable name the name you want to appear in the menu
2. Move the marker off of the ground and rotate the way you want the object to spawn.
   - 2m should be enough
3. Place down the object you want to be the spawning console.
4. Place `[this,[your marker names]] call TG_fnc_rInit;` in the _init_ box of that object.
5. Replace **_your marker names_** with the names of your markers in quotation marks and seperated by commas if there are more than one.
