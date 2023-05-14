import Foundation

/*:
 ### Overview:
 In this assignment, you will be exploring higher-order functions in Swift, which are functions that take other functions as arguments or return functions as output. You will implement several common higher-order functions and use them to solve practical problems.

 ### Requirements:

 Implement the following higher-order functions in Swift:
 - Map
 - Filter
 - Reduce
 
 In this assignment, you will use the Book struct provided below to practice using higher-order functions in Swift.
 */
struct Book {
    var title: String
    var author: String
    var price: Double
    var nPage: Int
    var readingAge: Int
}
/*:
 You will be working with an array of Book instances:
 */
let book1 = Book.init(title: "Java", author: "Sara", price: 150.4 , nPage: 370, readingAge: 13)
let book2 = Book.init(title: "Swift", author: "Ahmad", price: 160.9 , nPage: 453, readingAge: 20)
let book3 = Book.init(title: "C++", author: "Muneera", price: 209 , nPage: 323, readingAge: 24)
let book4 = Book.init(title: "Love Lunguages", author: "Eman", price: 5 , nPage: 654, readingAge: 40)
let book5 = Book.init(title: "Noor", author: "Reem", price: 160.5 , nPage: 370, readingAge: 20)
let book6 = Book.init(title: "Programming", author: "Khaled", price: 180.4 , nPage: 678, readingAge: 13)
let book7 = Book.init(title: "OOP", author: "Malak", price: 349.2 , nPage: 370, readingAge: 30)

var allbooks = [ book1, book2, book3, book4, book5, book6, book7]
/*:
 - map(): Use the map() function to create a new array of book titles with author.
 - filter(): Use the filter() function to create a new array of books with reading age of 16 or higher.
 - reduce(): Use the reduce() function to find the total cost of all books in the array.
 - contains(): Use the contains() function to check if the array of books contains a specific book.
 */
print("**** Higer Order Function ****")
print("------------------------------")

let bookTitlesAndAuthours = allbooks.map({"\($0.title) by \($0.author)"})
print(bookTitlesAndAuthours)
print("------------------------------")

let arrayOfBooksWithAgeHigherThan16 = allbooks.filter({ $0.readingAge >= 16 })
print("\(arrayOfBooksWithAgeHigherThan16) ")
print("------------------------------")

let totalCost = allbooks.reduce(0, {x , Book in x + Book.price})
print("Total Cost for All Books is \(totalCost)")

print("------------------------------")
var book = "Swift"
var findBook = allbooks.contains(where: {$0.title == book})
(findBook == true ? print("The \(book) Book found in the store") : print("Not found"))
print("------------------------------")


//print("**** Created functions before understanding the Higer Order Functions ****")
//print("------------------------------")
//// map creating a new array of book titles with author.
//func map(allbooks : [Book]){
//    var arrayOfBooksTitles : [String] = []
//    for book in allbooks {
//        arrayOfBooksTitles.append(" \(book.title) by \(book.author) ")
//    }
//    print(arrayOfBooksTitles)
//}
//
//map(allbooks : allbooks)
//print("------------------------------")
//
//func filter(allbooks : [Book] ){
//    var arrayOfBooksWithAgeHigherThan16 : [String] = []
//    for book in allbooks {
//        if book.readingAge >= 16{
//            arrayOfBooksWithAgeHigherThan16.append(book.title)
//        }
//    }
//    print(arrayOfBooksWithAgeHigherThan16)
//}
//
//filter(allbooks: allbooks)
//print("------------------------------")
//
//func reduce(allbooks: [Book]){
//    var cost : Double = 0
//    for book in allbooks {
//        cost += book.price
//    }
//    print("Cost is \(cost)")
//}
//
//reduce(allbooks: allbooks)
//print("------------------------------")
//
//func contains(allbooks: [Book], bookTitle: String){
//    for book in allbooks{
//        if(book.title == bookTitle){
//            print("The \(bookTitle) Book found in the store")
//        }
//    }
//}
//
//
//contains(allbooks: allbooks, bookTitle: "C++")
//print("------------------------------")







