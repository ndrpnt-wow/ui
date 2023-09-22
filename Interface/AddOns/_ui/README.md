Sounds are extracted from [Leatrix Sounds](https://www.leatrix.com/sounds) and formatted like that:

```
"sound/ambience/ghoststate.ogg#538967",
"sound/ambience/gluescreen/gluescreenlogin.ogg#538968",
"sound/ambience/gluescreen/wrath_login_1.ogg#538970",
"sound/ambience/gluescreen/wrath_login_2.ogg#538969",
"sound/ambience/gluescreen/wrath_login_3.ogg#538971",
```

Then:

```
cat ids.txt \
    | grep 'sound/character\|sound/item/weapons\|sound/interface/iselecttarget\|sound/interface/ideselecttarget\|sound/universal/fm_land\|sound/universal/fm_takeoff\|sound/vehicles' \
    | sed 's@^"\([^#]*\)#\([^"]*\)",@\t\2, -- \1@' \
    > core.lua
```

Then, clean up `core.lua`:

``` lua
local sounds = {
    -- content
}

for _, s in pairs(sounds) do
	MuteSoundFile(s)
end
```
