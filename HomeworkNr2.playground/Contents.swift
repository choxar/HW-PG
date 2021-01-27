import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

let first: Float = 3.14
let second: Float = 42.0

let sum = Double(first + second)
print(sum)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

let numberOne: Int = 122
let numberTwo: Int = 5
var Result: Int = numberOne / numberTwo
var reminder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(Result), the remainder is \(reminder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

let qty = 5
var price = 1000

if qty <= 4 {
    price = 1000
} else if qty >= 5 && qty < 10 {
    price = 900
} else {
    price = 850
}

let totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge: String = "33a"
//let convertToInt: Int = Int(userInputAge)!

if let convertToInt = Int(userInputAge) {
    print("String is convertable to int with the value: \(convertToInt)")
} else {
    print("Unable to conveet String to Int")
}

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"

let calendar = Calendar.current

let currentDate = Date()
let myBirthDateString = "30.03.2001"
let myBirthDay = formatter.date(from: myBirthDateString) ?? Date ()

var totalYearsFromBirthTwo = calendar.dateComponents([.year], from: myBirthDay, to: currentDate).year
var totalMonthFromBirthTwo = calendar.dateComponents([.month], from: myBirthDay, to: currentDate).month
var totalDaysFromBirthTwo = calendar.dateComponents([.day], from: myBirthDay, to: currentDate).day

if totalYearsFromBirthTwo == 0 && totalMonthFromBirthTwo == 0 && totalDaysFromBirthTwo == 0 {
    print("Unable to check the total year, month, day due to wrong input")
} else {
    print("Total years: \(totalYearsFromBirthTwo! ), total months: \(totalMonthFromBirthTwo! ), total days: \(totalDaysFromBirthTwo! )")
}

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

var quarterName = ""
let quarterCount = 1
//let quarterCount = calendar.dateComponents([.month], from: myBirthDay!).month!

switch quarterCount {
case 1...3:
    quarterName = "Q1"
    
case 4...6:
    quarterName = "Q2"
    
case 7...9:
    quarterName = "Q3"

case 10...12:
    quarterName = "Q4"
default:
    quarterName = "0"
}

print("I was born in \(quarterName)")






