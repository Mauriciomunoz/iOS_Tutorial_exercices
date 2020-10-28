/*
var myVar1 = 5
var myVar2 = 8

print("My var 1: \(myVar1)")
print("My var 2: \(myVar2)")

var myArray = ["a", "b", "c"]
print("My array val in 1: \(myArray[1])")

var numbers = [43, 12, 73, 87]
var computedNumbers = [numbers[0] * numbers[1], numbers[1] * numbers[2], numbers[2] * numbers[3]]
print("Result \(computedNumbers)")
*/

/*


let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

//The number of letters in alphabet equals 26


let password = alphabet[Int.random(in: 0..<26)] + alphabet[Int.random(in: 0..<26)] + alphabet[Int.random(in: 0..<26)] + alphabet[Int.random(in: 0..<26)] + alphabet[Int.random(in: 0..<26)] + alphabet[Int.random(in: 0..<26)]

print(password)*/

/*
func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

//Write your code below this line to make the above function calls work.
func add(n1: Int, n2: Int){
    print(n1 + n2)
}

func subtract(n1: Int, n2: Int){
    print(n2 - n1)
}

func multiply(n1: Int, n2: Int){
    print(n1 * n2)
}

func divide(n1: Int, n2: Int){
    print(n1 / n2)
}

let a = Int(readLine()!)! //First input
let b = Int(readLine()!)! //Second input*/

/*
func loveCalculator(){
    let randomVal = Int.random(in: 0...100)
    if(randomVal > 80){
        print("You love each other like Kanye loves Kanye")
    }
    else{
        if(randomVal >= 40 && randomVal <= 80){
            print("Meh")
        }else{
            if(randomVal < 40){
                print("You'll be forever alone")
            }
        }
    }
}

loveCalculator()*/


/**
 Every 4 years, there is a leap year. Leap years have an extra day in February to bring the total number of days up to 366 instead of 365.
 The 3 conditions for any given year to be a leap year are:
    - The year is exactly divisible by four (with no reminder) then it is a leap year, unless:
    - If the year is also divisible by 100 (years ending in two zeros), then it is not a leap year, except if
    - It is also divisible by 400 (in this case it will be a leap year).

 Hint: You can check Wikipedia for the conditions expressed in your native language.
 For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
 If in doubt you can check the year here:
 http://time-and-calendar.com/leap-years

 Complete the isLeap() function to print "YES" if the input is a leap year and "NO" if the input year was not.
 You can use this Repl.it to try out your code: https://repl.it/@appbrewery/if-else-exercise#main.swift
 Hint: You will need to use the Swift Remainder Operator to help you, you can read about it here:
 https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID64
 NOTE: Make sure you don't change line 2 in Exercise.swift and you don't need to call the isLeap() function below, otherwise the tests may not run correctly. Remember, the only part of Exercise.swift you should change is inside the isLeap() function.
 
 
 */
/*
func isLeap(year: Int) {
  
    //Write your code inside this function.
    if(year % 4 == 0){
        if(year % 100 != 0){
           print("YES")
        }else{
            if(year % 400 == 0){
                print("YES")
            }else{
                 print("NO")
            }
        }
    }else{
        print("NO")
    }
  
  
}

isLeap(year: 1996)*/

/*
func loveCalculator(){
    let randomVal = Int.random(in: 0...100)
    
    switch randomVal{
    case 0...40:
         print("You'll be forever alone")
    case 41..<80:
             print("Meh")
    case 81..<100:
            print("You love each other like Kanye loves Kanye")
    default:
        print("Nothing")
    }
    
}

loveCalculator()*/

/*
func dayOfTheWeek(day: Int) {
  
  //Write your code inside this function.
    switch day{
    case 1:
        print("Monday")
        case 2:
        print("Tuesday")
        case 3:
        print("Wednesday")
        case 4:
        print("Thurdsday")
        case 5:
        print("Friday")
        case 6:
        print("Staruday")
        case 7:
        print("Sunday")
    default:
        print("Error")
    }
  
}

dayOfTheWeek(day: 10)
 
 */


/*
var stockTickers: [String: String] = [
    "APPL" : "Apple Inc",
    "HOG": "Harley-Davidson Inc",
    "BOOM": "Dynamic Materials",
    "HEINY": "Heineken",
    "BEN": "Franklin Resources Inc"
]

stockTickers["WORK"] = "Slack Technologies Inc"
stockTickers["BOOM"] = "DMC Global Inc"

print(stockTickers)*/
/*
//var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

var studentsAndScores = ["Amy": 88, "James": 99, "Helen": nil]

func highestScore(scores: [String: Int]) {
  
  //Write your code here.
   var higher = 0;
      for (_, score) in scores {
              if score > higher {
                  higher = score
              }
      }
      print(higher)
  
  
}

//Try some different scores.
//Dont add the lines below to udemy!
highestScore(
    scores: [
    "Amy": 67,
    "James": 63,
    "Helen": 86,
    "So": 86
    ]
)
*/
/*
struct myTown{
    let name = "Lalaland"
    var citizens = "Mau"
    var resources = ["Wood": 100, "Rock": 100, "Gold": 100]
    
    
}

var myTowny = myTown()

print(myTowny)
*/
/*
struct User{
    var name:String = ""
    var email:String? = ""
    var followers: Int = 0
    var isActive:Bool = true
    
    init(name: String, email: String, followers: Int, isActive: Bool){
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
    
    func logStatus(){
        if(isActive){
            print("\(self.name) is working hard")
        }else{
            print("\(self.name) has left earth")
        }
    }
}

// Diagnostic code - do not change this code
   print("\nDiagnostic code (i.e., Challenge Hint):")
   var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
   musk.logStatus()
   print("Contacting \(musk.name) on \(musk.email!) ...")
   print("\(musk.name) has \(musk.followers) followers")
   // sometime later
   musk.isActive = false
   musk.logStatus()*/


func exercise() {

    // Define the User struct here
    struct User{
        var name:String = ""
        var email:String? = ""
        var followers: Int = 0
        var isActive:Bool = true

        // Initialise a User struct here
      init(name: String, email: String, followers: Int, isActive: Bool){
            self.name = name
            self.email = email
            self.followers = followers
            self.isActive = isActive
        }
        
        func logStatus(){
            if(isActive){
                print("\(self.name) is working hard")
            }else{
                print("\(self.name) has left earth")
            }
        }
    }


    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
    
}
