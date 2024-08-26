import xml.etree.ElementTree as ET
import sys
from os import system, path

#<usage:> AppendingXML.py <path of info.plist> <path of static xml file>

def handler(message, err):
    print(message + str(err))
    exit(1)

if path.exists(sys.argv[1]) and path.exists(sys.argv[2]):
    tree = None
    tree2 = None
    try:
        tree = ET.parse(sys.argv[1])
    except ET.ParseError as err:
        handler("Can't parse %s file " %(sys.argv[1]), err)
    try:
        tree2 = ET.parse(sys.argv[2])
    except ET.ParseError as err:
        handler("Can't parse %s file " %(sys.argv[2]) , err)
    try:
        root = tree.getroot()
        for child in tree2.getroot():
            root[0].append(child)
        tree.write(sys.argv[1])
    except IOError as err:
        handler("IO error occured!!!", err)
    except Exception as e:
        print(handler("Error: ", e))
else:
    print("File(s) not found!")

