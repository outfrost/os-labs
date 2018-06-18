#!/usr/bin/python3

import os, sys, shutil

if len(sys.argv) == 3:
    if os.path.isdir(sys.argv[1]):
        if os.path.isdir(sys.argv[2]):
            for filename in os.listdir(sys.argv[1]):
                if os.path.isfile(os.path.join(sys.argv[1], filename)):
                    if os.path.splitext(filename)[1] == ".txt":
                        shutil.copy2(os.path.join(sys.argv[1], filename),
                                     sys.argv[2])
                    os.remove(os.path.join(sys.argv[1], filename))
        else:
            print(sys.argv[2] + " is not a directory", file=sys.stderr)
    else:
        print(sys.argv[1] + " is not a directory", file=sys.stderr)
else:
    print("Invalid arguments", file=sys.stderr)
    print("Usage: " + sys.argv[0] + " <directory> <txt_dest_dir>")
