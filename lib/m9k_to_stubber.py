#This script converts files from regular M9k to stubber files for easier weapon changes on m9kr and other m9k forks.
import os

stubberStart = """AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "WEAPONCLASSNAME" )
"""

stubberEnd = "end )\n"

for foldername in os.listdir("data"):
    os.mkdir("output/" + foldername)
    for classname in os.listdir("data/" + foldername):
        for filename in os.listdir("data/" + foldername + "/" + classname):
            with open("data/" + foldername + "/" + classname + "/" + filename) as f:
                stubfile = open(
                    "output/" + foldername + "/" + classname + ".lua",
                    "a",
                    encoding="utf-8",
                )
                startText = stubberStart.replace("WEAPONCLASSNAME", classname)
                stubfile.write(startText)
                content = f.readlines()
                for line in content:
                    if line.startswith("SWEP.Primary"):
                        if "Sound" in line:
                            continue
                        text = line.replace("SWEP", "weapon")
                        text = text.strip()
                        text = text.replace(" ", "")
                        text = text.replace("\t", "")
                        text = text.replace("=", " = ")
                        text, _, _ = text.partition("-")
                        stubfile.write("    " + text + "\n")
                stubfile.write(stubberEnd)
