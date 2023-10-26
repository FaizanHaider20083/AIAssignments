from tkinter.tix import Tree
import nltk
from nltk.stem import PorterStemmer
from nltk.tokenize import word_tokenize

nltk.download('punkt')


def listt(name):
    file = open("electives.pl", "r")
    subjects = []
    lines = file.readlines()
    print(len(lines))
    for i in range(110):
        if "elective(" in lines[i]:
            array = lines[i].split("'")
            if (len(array) > 1):
                subjects.append(array[1])
    print("Subjects offered in the college are: ")
    for subject in subjects:
        print(" ", subject)

    file.close()


def oddSem(branch, odd, interest):
    num = "5"
    if (odd):
        num = "5"
    else:
        num = "6"
    file = open("electives.pl", "r")
    subjects = []
    subjectsDone = {}
    lines = file.readlines()
    for i in range(110):
        if "elective(" in lines[i]:
            array = lines[i].split(",")

            if (len(array) > 1 and num in lines[i] and interest in lines[i].lower()):
                subject = lines[i][lines[i].index(
                    "'")+1:lines[i].index(",")-1]
                tempPreReqs = lines[i][lines[i].index(
                    "[")+1:lines[i].index("]")]
                nl = lines[i][lines[i].index("]")+3:]
                semsAllowed = nl[:nl.index("]")]
                recommend = True
                if (branch in semsAllowed):
                    preReqs = tempPreReqs.split(",")

                    for preReq in preReqs:
                        if (preReq not in subjectsDone and len(preReq) > 0):
                            print(
                                f"Have you completed the subject {preReq} ? Yes or No")
                            ans = input()
                            words = word_tokenize(ans)
                            if ("no" in words or "No" in words or "No" in words):
                                subjectsDone[preReq] = False
                                recommend = False
                                break
                            subjectsDone[preReq] = True
                    if (recommend == True):
                        subjects.append(subject)
                    recommend = True

    file.close()
    file2 = open("facts.txt", "w")
    for subject in subjects:
        file2.write(f"recommend('{subject}').\n")
    file2.close()


def help(name):
    semester = input("Enter your semester (odd or even) ")
    branch = input("Enter your branch (cse/csai/csd/csam/csss/ece) ")
    interest = input(
        "Please enter your interest (Research/Jobs/Security/Economics) ")

    words = word_tokenize(semester)

    if ("odd" in words):
        oddSem(branch, True, interest.lower())
    if ("even" in words or "eve" in words):
        oddSem(branch, False, interest.lower())


def start():
    name = input(
        "Welcome to Elective Select - Expert AI System.\nPlease enter your name ")
    print(f"Hello {name}. How can Elective Select help you today ?\nPlease enter the number corresponding to your choice\n1. List all available electives. \n2. Help choose an elective. \n3. Exit. ")
    choice = input()
    if (choice == "1" or choice.lower == "one"):
        listt(name)
    if (choice == "2" or choice.lower == "two"):
        help(name)
    if (choice == "3" or choice.lower == "three"):
        exit()


if __name__ == "__main__":
    start()
