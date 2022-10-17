/**
 第2天-布尔值、字符串插值
 @author LIUQI
 */

//创建 Bool
var isAuthenticated = false
isAuthenticated = 10 > 3 //true
isAuthenticated = "Some" == "some" //false
isAuthenticated = "Some".elementsEqual("SOME") //false
isAuthenticated.toggle() //true


// 字符串拼接
let firstPart = "Hello ,"
let secondPart = "World !"
//方式一  +号拼接
var resultPart = firstPart + secondPart //"Hello ,World !"\
resultPart  = resultPart + "Swift UI " //"Hello ,World !Swift UI"
//方式二  \() 字符串插值 推荐
resultPart = "This is New Join Method :  \(resultPart)" //This is New Join Method :  Hello ,World !Swift UI
