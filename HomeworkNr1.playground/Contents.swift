import UIKit

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/

var myAge: Int = 19

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/

var myAgeInTenYears = myAge + 10

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysInYear: Double = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

let daysPassed: Int = myAge * Int(daysInYear)

/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old. From the moment of my birth day have passed <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

print("I am \(myAge) years old")
print("In 10 years I will be \(myAgeInTenYears) years old")
print("From the moment of my birthday \(daysPassed) days have passed")

/*
Exercise 3.
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

let AB: Double = 8.0
let CB: Double = 6.0

print("ABC = Right-angled triangle")

print("CA = ?")
print("CA = sqrt(AB^2 + CB^)")
let sum = pow(Double(AB),2) + pow(Double(CB),2)
let CA = sqrt(sum)
print("CA = \(CA)")

print("Area of ABC triangle = 0.5 * AB * CB")
let TriangleArea = 0.5 * AB * CB
print("Triangle area = \(TriangleArea)")

print("Perimeter of ABC triangle = CA + AB + CB")
let TrianglePerimeter = CA + AB + CB
print("Triangle perimeter = \(TrianglePerimeter)")

