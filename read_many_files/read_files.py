from fileinput import filename
import os
from pathlib import Path


allFiles = open("./allfiles.txt", "w+");
for root, subFolder, filenames in os.walk("./"):
    for uniqueFile in filenames:
        fileContent = Path(root, uniqueFile).read_text()
        allFiles.write(fileContent + "\n")
allFiles.close()