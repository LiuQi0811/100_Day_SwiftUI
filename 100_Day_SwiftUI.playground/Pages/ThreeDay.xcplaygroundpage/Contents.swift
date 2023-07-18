/**
 第3天-数组、字典、集合和枚举
 @author LIUQI
 */

//创建数组
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]
//获取数组 元素（值）
//方式一 根据索引下标
beatles[0] //John
beatles[1] //Paul
//beatles[5] // 报异常 索引越界 因为 当前数组索引 0-3
beatles[3] //Ringo
// 方式二 for循环遍历
for value in 0 ..< beatles.count{
   print(beatles[value])

//    John
//    Paul
//    George
//    Ringo
}

// 数组新增
beatles.append("Adrian")//["John", "Paul", "George", "Ringo", "Adrian"]

//创建 Int的数组
var scores = Array<Int>()//[]
scores.append(10)//[10]
scores.append(30)//[10,30]
scores.append(50)//[10,30,50]
scores.append(70)//[10,30,50,70]
scores//[10,30,50,70]
print(scores[1]) //30

//创建 String的数组
var albums = Array<String>()//[]
albums.append("Folklore")//["Folklore"]
albums.append("Fearless")//["Folklore,Fearless"]
albums.append("Red")//["Folklore,Fearless","Red"]
//获取数组的长度 .count 与 String获取长度 一致
albums.count //3
//是否包含数组内容 包含true 不包含false
albums.contains("RED")//false
albums.contains("Fearless")//true
//sorted 数组排序
albums.sorted()//["Fearless", "Folklore","Red"]
//reversed() 反转数组
let albumsReversed = albums.reversed()
print(albumsReversed)
//删除数组 指定位置
albums.remove(at: 2)//删除"Red"
albums //["Folklore", "Fearless"]

//删除数组 全部数据
albums.removeAll()//[]


//创建字典
let employee = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]

//通过key获取 value
employee["name"]//Taylor Swift
employee["job"]//Singer
employee["location"]//Nashville
// 通过循环遍历 获取value
for key in employee{
    print(key.value)//Singer
//    Taylor Swift
//    Nashville
}

for value in employee.values{
    print(value)//Singer
    //    Taylor Swift
    //    Nashville
}

for key in employee.keys{
    print(employee[key])//Optional("Nashville")
//    Optional("Taylor Swift")
//    Optional("Singer")
    print(employee[key]!)//Singer
    //    Taylor Swift
    //    Nashville
   
}

print(employee["address",default: "HangZhou"])
print(employee)

//创建字典
var dirct = [String: Int]()
//字典赋值
dirct["Yao Ming"] = 229
dirct["Shaquille O'Neal"] = 216
dirct["LeBron James"] = 206
dirct

//创建Set

let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

print(people)//["Tom Cruise", "Samuel L Jackson", "Nicolas Cage", "Denzel Washington"]
var person = Set<String>()
//Set 新增数据
person.insert("Denzel Washington")
person.insert("Tom Cruise")
person.insert("Nicolas Cage")
person.insert("Samuel L Jackson")
print(person)//["Samuel L Jackson", "Denzel Washington", "Nicolas Cage", "Tom Cruise"]
// Sorted 排序
person.sorted()
//是否包含Set的值  包含true 不包含false 与 Array数组一样
person.contains("Samuel")//false
person.contains("Tom Cruise")//true
// Set reversed反转
person.reversed()

//创建枚举
enum WeekDay{
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case one,two,three,four,five
}
//获取枚举值
var day = WeekDay.monday//monday
day = .monday
day = WeekDay.tuesday//tuesday
day = .tuesday
day = WeekDay.wednesday//wednesday
day = .wednesday
day = WeekDay.thursday//thursday
day = .thursday
day = WeekDay.friday//friday



