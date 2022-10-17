/**
 第1天-变量、常量、字符串和数字
 @author LIUQI
 */

//创建 greeting 变量
var greeting = "Hello, playground"
// var 表示变量 定义的值可以改变
greeting = "Oh,I like SwiftUI"
greeting = "Mee too"
print(greeting) //Mee too

//创建 const 常量 定义的值不可以改变
let const = "Hello One"
//let 表示常量
//const = "Oh,I want to Change" //提示错误信息 Cannot assign to value: 'const' is a 'let' const
print(const) //Hello One

//创建单行字符串
let singleLineStr = "This is Str"
print(singleLineStr)//This is Str


//创建多行字符串
let multiLineStr = """

The Passionate Shepherd to His Love

Christopher Marlowe

"""
print(multiLineStr)//The Passionate Shepherd to His Love  Christopher Marlowe

//读取字符串的长度 .cout
let strLength = multiLineStr.count
print(strLength)

//字符串 大写
let upperCased = multiLineStr.uppercased()
print(upperCased) //THE PASSIONATE SHEPHERD TO HIS LOVE  CHRISTOPHER MARLOWE

//字符串 小写
let upperCasedStr = "I LOVE YOU !"
let lowerCased = upperCasedStr.lowercased()
print(lowerCased) //i love you !

let hasPrefixStr = "Christopher Marlowe"
//字符串 开头字母获取 符合 true 不符合 false
let hasPrefix = hasPrefixStr.hasPrefix("Ch")
print(hasPrefix) //false

//字符串 结尾字母获取 符合 true 不符合 false
let hasSuffixStr = "valleys.avi"
var hasSuffix = hasSuffixStr.hasSuffix(".mp3")// false
    hasSuffix  = hasSuffixStr.hasSuffix(".avi")//true
print(hasSuffix)//true


//创建 储存整数
var rallyBig = 1_00__00___00____00
rallyBig = 100000000
rallyBig = 100_000_000
print(rallyBig) //reallyBig被设置为值为100,000,000的整数 三个结果一样

//验证是否是整数的倍数
var isMultiple =  rallyBig.isMultiple(of: 10) //10的倍数 true
isMultiple = rallyBig.isMultiple(of: 3) //3的倍数 false

120.isMultiple(of: 4)//true
30.isMultiple(of: 7) //false
print(isMultiple) // false

//创建 储存小数
var decimals = 3.1415926

//整数 + 小数 返回小数
decimals = 12 + decimals //15.1415926
//  decimals += 20 等于 decimals = decimals + 20
decimals += 20 //35.1415926
decimals *= 2 //70.28318519999999

