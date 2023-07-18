/**
 第 4 天 – 键入注释
 @author LIUQI
 */

//类型注释让我们明确我们想要的数据类型
let username:String = "Join"
let scoreInt:Int = 0
let scoreDouble: Double = 5.0
let albums:[String] = ["Red", "Fearless"]
let user: [String:String] = ["id": "@twostraws"]
let books:Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
let teams:[String] = [String]()
enum UIStyle:String{
    case light,dark,system
}
var style = UIStyle.dark

