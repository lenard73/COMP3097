import UIKit


var greeting:String = "Hello, playground"
var multi = """

vfksbjkvb
bcdskavjs
bvjksavjb

chkdsclvkhavl
\(greeting)
"""
var x = 20
let y = 30

print("cdjsvcjsdc\(greeting)-\(x)")
print(multi)
let  dict = ["one":1, "two":2, "three":3, "four":4,"five":5,"six":6, "seven":7, "eight":8, "nine":9, "ten":10]
var el = dict["fff"]
print(el ?? 0)

var opX:Int? = 10
//opX = nil //null



opX = nil
if let x = opX {
	print(x)
}else{
	print("NONE")
}
var opStr:String! = nil//"Hello"


print(opStr.isEmpty)



let score = if (x>10){1}else{10}


let v = "red pepper"
switch v {
case "red pepper":
	print("red pepper")
case "celery", "onion"
default:
	print("not red pepper")


func foo(firstParam a:Int, b:Int)->Int{
	return a+b
}

foo(firstParam:2, b:3)

func greet(name:String){
	print("hcdsadgadsfgh \(name)")
}
