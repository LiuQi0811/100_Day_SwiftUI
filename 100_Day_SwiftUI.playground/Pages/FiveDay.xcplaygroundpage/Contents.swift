/**
 第5天-如果，开关和三进制运算符
 @author LIUQI
 */


enum Weather{
    case sun, rain, wind, snow, unknown
}
let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

//三元条件运算符
let age = 18
age >= 18 ? "Yes": "No"//"Yes"

let names = ["Jayne", "Kaylee", "Mal"]
names.isEmpty ? "No one" : "\(names.count) people"//"3 people"


enum Theme{
    case dark,blue
}
let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
