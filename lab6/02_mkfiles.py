#!/usr/bin/python3

import os.path, sys

if len(sys.argv) == 4:
    if os.path.isdir(sys.argv[1]):
        if os.path.isfile(sys.argv[2]):
            with open(sys.argv[2], mode='rb') as contentfile:
                content = contentfile.read()
                for i in range(int(sys.argv[3])):
                    with open(
                            os.path.join(
                                sys.argv[1],
                                str(i) + os.path.splitext(sys.argv[2])[1]
                            ), 'wb') as destfile:
                        destfile.write(content)
        else:
            print(sys.argv[2] + " is not a file", file=sys.stderr)
    else:
        print(sys.argv[1] + " is not a directory", file=sys.stderr)
else:
    print("Invalid arguments", file=sys.stderr)
    print("Usage: " + sys.argv[0] + " <dest_dir> <content_file> <file_count>")
