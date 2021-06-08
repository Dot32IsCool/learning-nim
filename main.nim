#? replace(sub = "\t", by = " ")
const loops: bool = false

const weee: uint8 = 32
const wooo = 32'u8
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

echo "do you like to read?"
let doYouLikeToRead = readLine(stdin)
# echo doYouLikeToRead, "\n", r"\n", """\n"""
case doYouLikeToRead
	of "":
		echo "alright then, keep your secrets" 
	of "yes":
		echo "great!" 
	of "no":
		echo "too bad, you have to read this anyway hmph" 
	of "i should be doing homework", "i dont like homework":
		echo "same" 
	else:
		echo "that's pretty cool"

if loops:
	var i = 1
	while i <= 10:
		echo i
		i = i + 1 # inc(i) also exists aparently

	for i in countUp(1, 10):
		echo i

	for i in 1 .. 10:
		echo i

block luado:
	# this is a new scope
	break luado # breaks specifically out of luado
	#continue will skip to next iteration

#when is like a "const" if


# var
# 	x, y: int
# 	name, id: string

proc `++`(a: int, b: int): int = 
	return a + b

echo 5 ++ 2

# remember that overload procedures exist

type
	direction = enum
		north
		east
		south
		west

type power = range[32..2572]

var player = (x: 0, y: 0, xV: 0, yV: 0, dir: west, pow: 1186.power) # heck yeah
player.x = player.x + 10
echo player.x

var items = @["sword", "wood"]
items.add("cherry")
for i, v in items.pairs:
	echo v

type point = tuple[x: int, y: int]
const node: point = (x: 0, y: 0)

echo "what direction?"
var doYouLikeToRead2 = readLine(stdin)
case doYouLikeToRead2:
	of "north":
		player.dir = north
	of "west":
		player.dir = west
	of "east":
		player.dir = east
	of "south":
		player.dir = south
	else:
		player.dir = west

proc `$`(dir: direction): string =
	case dir:
		of north:
			result = "north"
		of west:
			result = "west"
		of east:
			result = "east"
		of south:
			result = "south"

echo "The player walks ", $player.dir

# nim c -r main.nim