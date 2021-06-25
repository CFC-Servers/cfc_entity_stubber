import os

stubberStart = """AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "WEAPONCLASSNAME" )
"""

stubberEnd = "end )\n"

os.mkdir("output")
for foldername in os.listdir("newstubberfiles"):
    os.mkdir("output/" + foldername)
    for classname in os.listdir("newstubberfiles/" + foldername):
        with open("newstubberfiles/" + foldername + "/" + classname ) as newstub:
            newstubContent = newstub.readlines()
            if not os.path.isfile( "oldstubberfiles/" + foldername + "/" + classname ):
                print( "oldstubberfiles/" + foldername + "/" + classname + " not found in old stubs, copy pasting new stub" )
                outputfile = open( "output/" + foldername + "/" + classname, "a", encoding="utf-8" )
                for line in newstubContent:
                    outputfile.write( line )
            else:
                tempDict = {}
                oldstub = open( "oldstubberfiles/" + foldername + "/" + classname, "r", encoding="utf-8" )
                outputstub = open( "output/" + foldername + "/" + classname, "a", encoding="utf-8" )

                oldstubContent = oldstub.readlines()
                for line in oldstubContent:
                    line = line.replace(" ", "")
                    if "weapon.Primary." in line:
                        line = line.rstrip()
                        key, val = line.split("=")
                        tempDict.update({key: val})

                classname = classname.replace(".lua", "")
                startText = stubberStart.replace("WEAPONCLASSNAME", classname)

                outputstub.write(startText)
                for line in newstubContent[4:]:
                    if "end )" in line:
                        continue
                    text = line.strip()
                    
                    if "=" in line:
                        line = line.replace(" ", "")
                        key, x = line.split("=")
                        if key in tempDict:
                            text = key + " = " + tempDict[key]

                    outputstub.write("    " + text + "\n")
                outputstub.write(stubberEnd)

