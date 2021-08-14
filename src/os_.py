#
import os


def check_files(list):
    for l in list:
        if l in os.listdir():
            print('file existing: ',l)
        else:
            print('file not in path:', l)

def path_return(file):
    return(os.abspath(file))
