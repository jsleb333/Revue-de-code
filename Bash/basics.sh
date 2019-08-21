# -------------------
# Why is bash useful?
# -------------------

#-> Supercomptuer submission files uses bash
#-> Once used to it, you can interact gracefully with your terminal
#-> Most startup files (with config) for your computer use bash
#-> You can interact with programs defined in differant languages easily
#-> It permits you to "close" your programs, letting them have their own
#   interface, which increases modularity
#-> Easy parallel computing

# ----------------------------------------
# The basics : string and list (of string)
# ----------------------------------------

# in bash, we interact with program instead of "functions"
# echo is the bash "print" program
echo "Hello world"

# variables declaration
y = "string" #NO
x="string" #YES

# subtle difference with other languages: every thing is a string
# by default, the content and even variables themselves
echo x

# to extract the content of a variable : the $ operator is needed
echo $x

# Some interesting global variables
echo $HOME
echo $PWD
echo $PATH
echo $HOSTNAME

# list are just big string with element seperated by space delimiter
# space is the standard Internal Field Separator
l="string1 string2"

# echo print list as... a big string
echo $l

# list can be concatenated by juxtaposition
l=$l" string3"
echo $l

# or directly inside another string.. every thing is a string anyway
l="$l string4"
echo $l

# ----------------------------------------
# Basic programs and catching their output
# ----------------------------------------
# A program is executed by just declaring it as if in the terminal
echo "Performing the sacred task of printing"

# the $(PROGRAM) syntax must be use to catch the output of PROGRAM
echo echo "NOT"
echo $(echo $l "again")
l2=$(echo $l "again and again")
echo $l2

# useful program to list files and directory : ls
echo $(ls)

# Has many options (can list hidden files too)
echo $(ls -a)

# Another useful program : cat
# reads the content of a (multiple) files and output it
cat list1.txt list2.txt
echo $(cat list1.txt list2.txt)
#note that the latter version replaced the \n's by spaces

# --------------------------------------
# Executing a for loop
# --------------------------------------
for i in $l #i is a new local variabl3
do
    echo $i
done

# from a list from program directly such as ls
for i in $(ls)
do
    echo $i
done

# or cat
for i in $(cat list1.txt list2.txt)
do
    echo $i
done

# -------------------------------
# Redirecting to output to a file
# -------------------------------
echo $l > dummmy.txt #write or overwrite a file with content
echo $l > dummmy.txt #no effect
echo $l >> dummmy.txt #append the content
