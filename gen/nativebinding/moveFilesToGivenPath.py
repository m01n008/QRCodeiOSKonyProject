import os, shutil, sys

def moveFilesToGivenPath( givenPath ):
    for (root, dirname, filenames) in os.walk(givenPath):
        for afile in filenames:
            src = os.path.join(root, afile)
            try:
                shutil.move(src, givenPath)
            except:
                pass
moveFilesToGivenPath(sys.argv[1])
