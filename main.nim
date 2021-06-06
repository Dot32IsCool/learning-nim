#? replace(sub = "\t", by = " ")

const weee: int = 32
const wooo = "hey there"
var im_special = "carcar"
imSpecial = "this variable"

#[
█░░ █▀▀ █▀▀█ █▀▀█ █▀▀▄ ░▀░ █▀▀▄ █▀▀▀ 　 █▀▀▄ ░▀░ █▀▄▀█ 
█░░ █▀▀ █▄▄█ █▄▄▀ █░░█ ▀█▀ █░░█ █░▀█ 　 █░░█ ▀█▀ █░▀░█ 
▀▀▀ ▀▀▀ ▀░░▀ ▀░▀▀ ▀░░▀ ▀▀▀ ▀░░▀ ▀▀▀▀ 　 ▀░░▀ ▀▀▀ ▀░░░▀
]#

const
	v1 = 1
	v2 = 2
	v3 = 6

let
	t1 = v2 / v3 # returns float 
	t2 = v2 div v3 # returns int (floors it)

echo "hey, wat is ", im_special, " am i right"

if v2 < v3 and weee > v3:
	echo "woop woop this is an if"
elif v2 < v3:
	echo "some if statement"
else:
	echo "no if statement 4 u"

# functions (called procedures)
proc broThisIsEpicc(var1: int, var2: int): int =
	return var1 + var2
echo broThisIsEpicc(v1, v2)

let doYouLikeToRead = readLine(stdin)
echo doYouLikeToRead, "\n", r"\n", """\n"""

# nim c -r variables.nim