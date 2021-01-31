import UIKit

/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

class orangeFruit {
   var color = ""
   var taste = ""
   var weight = 0.0
}

let someOrange = orangeFruit()
someOrange.color = "Orange"
someOrange.taste = "Sweet"
someOrange.weight = 0.66

print("My \(someOrange.weight) kg, orange has \(someOrange.color) and \(someOrange.taste) taste")

/*
Exercise 2
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Parent Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

class Parent {
    var height: Float = 0.0
    var width: Float = 0.0
    var radius: Float = 0.0
    var square: Float = 0.0
    var perimeter: Float = 0.0


init () {}
init (height: Float, width: Float) {
    self.height = height
    self.width = width
    }

    func squareOfFigure() -> Float {
        let square = height * width
        return square
    }
    
    func perimeterOfFugure() -> Float {
        let perimeter = (height*2) + (width*2)
        return perimeter
    }
    
 }

class Child: Parent {
    override func squareOfFigure() -> Float {
        let square = (height * width) * 0.5
        return square
    }
    
    func perimeterOfFigure() -> Float {
        let perimeter = height + width + radius
        return perimeter
    }
    
    func descriptionOfRectangle(radius: Int, height: Int, width: Int)
    {
     print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}


let Figure = Parent()
let Rectangle = Child()


Child().descriptionOfRectangle(radius: 2, height: 4, width: 4)


