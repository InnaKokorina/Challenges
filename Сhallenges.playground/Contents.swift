import UIKit

//1. CodeSignal Acade. Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.


//let string = "All the rules in this world were made by someone no smarter than you. So make your own."
//string.toJadenCase()
//
//
//extension String {
//    func toJadenCase() -> String {
//      return self.capitalized
//    }
//}

// 2 Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

//Your task is to write a function maskify, which changes all but the last four characters into '#'.
//let string = "1"
//func maskify(_ string:String) -> String {
//        var new = ""
//        for (i, el) in string.enumerated(){
//            if i < string.count - 4 {
//                new.append("#")
//            } else {
//                new.append(el)
//            }
//        }
//        return new
//}
//maskify(string)

//3
//Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
//func solution(inputArray: [Int]) -> Int {
//  var product: Int = -1000000
//    for i in 0..<inputArray.count - 1 {
//        if product < inputArray[i] * inputArray[i+1] {
//            product = inputArray[i] * inputArray[i+1]
//        }
//    }
//    return product
//}
//
//solution(inputArray: [-2, 5, -3, 7,-4])


//4 Below we will define an n-interesting polygon. Your task is to find the area of a polygon for a given n.

//A 1-interesting polygon is just a square with a side of length 1. An n-interesting polygon is obtained by taking the n - 1-interesting polygon and appending 1-interesting polygons to its rim, side by side. You can see the 1-, 2-, 3- and 4-interesting polygons in the picture below.
//

//func solution(n: Int) -> Int {
//    return n > 1 ? solution(n: n-1) + ((n - 1) * 4) : 1
//}
//
//solution(n: 4)

// --------------------------------
//5. Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, each statue having an non-negative integer size. Since he likes to make things perfect, he wants to arrange them from smallest to largest so that each statue will be bigger than the previous one exactly by 1. He may need some additional statues to be able to accomplish that. Help him figure out the minimum number of additional statues needed.
// Example
//
//For statues = [6, 2, 3, 8], the output should be
//solution(statues) = 3.
//func solution(statues: [Int]) -> Int {
//    var n = 0
//    if statues.count > 1 {
//    let sortedArray = statues.sorted()
//    for index in 0...sortedArray.count - 2 {
//        if sortedArray[index + 1 ] - sortedArray [index] > 1 {
//        n += sortedArray[index + 1 ] - sortedArray [index] - 1
//        }
//    }
//    }
//return n
//}
//func solution(statues: [Int]) -> Int {
//    return statues.max()! - statues.min()! + 1 - statues.count
//
//}
//solution(statues: [6, 2, 3, 8])
// 6.  ----------------------
//Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.
//
//Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing only one element is also considered to be strictly increasing.
//
//Example
//
//For sequence = [1, 3, 2, 1], the output should be
//solution(sequence) = false.
//
//There is no one element in this array that can be removed in order to get a strictly increasing sequence.
//
//For sequence = [1, 3, 2], the output should be
//solution(sequence) = true.
//func solution(sequence: [Int]) -> Bool {
//    var res = false
//    if isSorted (array: sequence) {
//            res = true
//        }
//
//    for i in 0...sequence.count - 2 {
//        if res == false && sequence[i] >= sequence[i + 1] {
//            var new = sequence
//            new.remove(at: i + 1)
//            if isSorted(array: new) {
//                res = true
//            } else {
//            var new = sequence
//            new.remove(at: i)
//            if isSorted(array: new) {
//                res = true
//            }
//            }
//        }
//    }
//    return res
//}
//
//func isSorted(array: [Int]) -> Bool {
//        for i in 0..<array.count - 1 {
//            if array[i] >= array[i + 1] {
//                return false
//            }
//        }
//        return true
//    }
//
//
//solution(sequence:[1, 3, 2, 1])
// 7. ---------------------------------

//After becoming famous, the CodeBots decided to move into a new building together. Each of the rooms has a different cost, and some of them are free, but there's a rumour that all the free rooms are haunted! Since the CodeBots are quite superstitious, they refuse to stay in any of the free rooms, or any of the rooms below any of the free rooms.
//
//Given matrix, a rectangular matrix of integers, where each value represents the cost of the room, your task is to return the total sum of all rooms that are suitable for the CodeBots (ie: add up all the values that don't appear below a 0).
//
//Example
//
//For
//
//matrix = [[0, 1, 1, 2],
//          [0, 5, 0, 0],
//          [2, 0, 3, 3]]
//the output should be
//solution(matrix) = 9.
//
//func solution(matrix: [[Int]]) -> Int {
//    var counter = 0
//    var index  =  [1,1,1,1,1]
//    for i in matrix {
//        for j in 0...i.count - 1 {
//            if index[j] == 1 {
//                if i[j] != 0 {
//                    counter += i[j]
//                    print(counter)
//                } else {
//                    index[j] = 0
//                }
//            }
//        }
//    }
//    return counter
//}
//
//
//solution(matrix: [[1, 1, 1, 0],
//                  [0, 5, 0, 1],
//                  [2, 1, 3, 10]])
// 8. ---------------------------
//func solution(n: Int) -> Int {
//var sum = 0
//let str = String(n)
//for i in str {
//    sum += Int(String(i))!
//}
//    return sum
//}
//9. -----------------------------
//Given an array of strings, return another array containing all of its longest strings.
//
//Example
//
//For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
//solution(inputArray) = ["aba", "vcd", "aba"].

//func solution(inputArray: [String]) -> [String] {
//    var result = [String]()
//    var max = 1
//    for str in inputArray {
//        if str.count > max {
//            max = str.count
//            result = [str]
//        } else if str.count == max {
//            result.append(str)
//        }
//    }
//    return result
//}
//solution(inputArray: ["aba", "aa", "ad", "vcd", "abac"])

// 10.---------------------------
//Given two strings, find the number of common characters between them.
//
//Example
//
//For s1 = "aabcc" and s2 = "adcaa", the output should be
//solution(s1, s2) = 3.
//
//Strings have 3 common characters - 2 "a"s and 1 "c".

//func solution(s1: String, s2: String) -> Int {
//   var res = 0
//    var str2 = s2
//    for i in s1 {
//        for j in str2 {
//            if i == j {
//                res += 1
//                str2.remove(at: str2.firstIndex(of: j)!)
//                break
//            }
//        }
//    }
//    return res
//}
//
//solution(s1: "aabcc", s2: "adcaa")
// 11.  --------------------------
//Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.
//
//Given a ticket number n, determine if it's lucky or not.
//
//Example
//
//For n = 1230, the output should be
//solution(n) = true;
//For n = 239017, the output should be
//solution(n) = false.

//func solution(n: Int) -> Bool {
//    let str = String(n)
//    let array = str.map {Int(String($0))}
//    let s1 = array[0..<array.count / 2].reduce(0, {$0 + $1!})
//    let s2 = array[array.count / 2..<array.count].reduce(0, {$0 + $1!})
//       print(s1)
//        return s1 == s2 ? true : false
//}
//
//solution(n: 12300)
// 12. ---------------------------
//Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees. People can be very tall!
//
//Example
//
//For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
//solution(a) = [-1, 150, 160, 170, -1, -1, 180, 190].


//func solution(a: [Int]) -> [Int] {
//   var new = [Int]()
//    var index = 0
//    let sorted = a.filter{$0 != -1}.sorted()
//
//    for j in a {
//        if j == -1 {
//            new.append(j)
//        } else {
//            new.append(sorted[index])
//            index += 1
//
//        }
//    }
//    return new
//}
//
//print(solution(a:[-1, 150, 190, 170, -1, -1, 160, 180]))


// 1 LeetCode
//func romanToInt(_ s: String) -> Int {
//var result = 0
//    var dictionary: [Character: Int] = ["I": 1,
//                                    "V": 5,
//                                    "X": 10,
//                                    "L": 50,
//                                    "C": 100,
//                                    "D": 500,
//                                    "M": 1000]
//    var previousValue = 0
//    for el in s {
//        guard let value = dictionary[el] else {return result}
//
//        if previousValue < value {
//           result -= previousValue * 2
//        }
//        previousValue = value
//        result += value
//
//    }
//    return result
//}
//romanToInt("LVIII")


//2 Palindrome
//func isPalindrome(_ x: Int) -> Bool {
//    let string = String(x)
//    return   string == String(string.reversed()) ? true : false
//}
//
//isPalindrome(121)
//--------------------------------------
// 1. Interview Practice FirstDuplicates

//func firstDuplicates(a: [Int]) -> Int {
//    var dict = [Int:Int]()
//    for element in a {
//        if let count = dict[element], count + 1 > 0 {
//            return element
//        } else {
//            dict[element] = 0
//        }
//    }
//   return -1
//}
//firstDuplicates(a:[2, 1, 3, 5, 3, 2])

//--------------------------------------
//2.Interview Practice firstNotRepeatingCharacter

//func solution(s: String) -> Character {
//    let array = s.map { String($0)  }
//    let set = Set(array)
//    var result: Character = "_"
//    var index = array.count - 1
//    for el in set {
//        if  array.filter { $0 == el } .count == 1 {
//
//            if let arrayIndex = array.firstIndex(of: el) {
//
//                if index == array.count - 1 {
//                    index = arrayIndex
//                } else if arrayIndex < index {
//                    index = arrayIndex
//                }
//                result = Character(array[index])
//            }
//        }
//
//    }
//    return result
//}

// более верное решение

//for char in s {
//        if s.firstIndex(of: char) == s.lastIndex(of: char) {
//            return char
//        }
//    }
//    return "_"
//}
//solution(s: "abacabafabacaba")
//
// 3.Interview Practice rotateImage
//You are given an n x n 2D matrix that represents an image. Rotate the image by 90 degrees (clockwise).


 //первое решение O(15)
//func solution(a: [[Int]]) -> [[Int]] {
//    let n = a.flatMap { $0 }
//    let inputCount = a[0].count
//    var outputArray = [[Int]]()
//
//    for i in 0...inputCount - 1 {
//        var inoutArray =  [Int]()
//        for j in 0...inputCount-1 where i + j*inputCount <  n.count{
//            inoutArray.append(n[i + j*inputCount])
//        }
//        outputArray.append(inoutArray.reversed())
//    }
//   return outputArray
//}
//// второе решениие O(12)
//func solutionSecond(a: [[Int]]) -> [[Int]] {
//    var new = a
//    for i in 0..<a.count {
//        for j in 0..<a[i].count {
//            new[j][i] = a[i][j]
//        }
//    }
//    for i in 0..<new.count {
//        new[i] = new[i].reversed()
//    }
//   return new
//}
//
//solution(a: [[1, 2, 3],
//             [4, 5, 6],
//             [7, 8, 9]])
//
//solutionSecond(a: [[1, 2, 3],
//                   [4, 5, 6],
//                   [7, 8, 9]])
//solution(a) =
//    [[7, 4, 1],
//     [8, 5, 2],
//     [9, 6, 3]]
// ---------------------------------------

//14.Arcade alternatingSums
//Several people are standing in a row and need to be divided into two teams. The first person goes into team 1, the second goes into team 2, the third goes into team 1 again, the fourth into team 2, and so on.
//
//You are given an array of positive integers - the weights of the people. Return an array of two integers, where the first element is the total weight of team 1, and the second element is the total weight of team 2 after the division is complete.


// первое решение
//func solution(a: [Int]) -> [Int] {
//    var firstArray = [Int]()
//    var secondArray = [Int]()
//    for i in 0..<a.count {
//        if i % 2 == 0 {
//            firstArray.append(a[i])
//        } else {
//            secondArray.append(a[i])
//        }
//    }
//    return [firstArray.reduce(0, +), secondArray.reduce(0, +)]
//}
// второе более красивое решение
//func solutionsSecond(a: [Int]) -> [Int] {
//    let firstArray = a.enumerated().filter { $0.0 % 2 == 0 }.map{ $0.1 }
//    let secondArray = a.enumerated().filter { $0.0 % 2 != 0 }.map{ $0.1 }
//    return [firstArray.reduce(0, +), secondArray.reduce(0, +)]
//}
//третье более быстрое решение O(N)

//func solutionThird(a: [Int]) -> [Int] {
//    var result = [0,0]
//    for i in 0..<a.count {
//        if i % 2 == 0 {
//            result[0] += a[i]
//        } else {
//            result[1] += a[i]
//        }
//    }
//    return result
//}
//
//
//let a = [50, 60, 60, 45, 70]
//solution(a: a)
//solutionsSecond(a: a)
//solutionThird(a: a)

//= [180, 105]
//-------------------------------
//15.Arcade Add a border. Given a rectangular matrix of characters, add a border of asterisks(*) to it.

//func solution(picture: [String]) -> [String] {
//
//    let  firstString = String(repeatElement("*", count: (picture.first?.count ?? -2) + 2))
//    let new = picture.map { "*" + $0 + "*" }
//
//    return [firstString] +  new + [firstString]
//}
//
//let picture = ["abc",
//               "ded"]
//solution(picture: picture)

// =                    ["*****",
//                      "*abc*",
//                      "*ded*",
//                      "*****"]

//func solution(array: [Int]) -> [Int] {
//    var a = [Int]()
//
//    for i in array {
//        if !a.contains(i) {
//            a.append(i)
//        }
//    }
//
//    return Array(a)
//}
//
//
//solution(array: [1,1,5,7,3,8,4,8])
//-----------------------------------------
// 16.Arcade Are Similar? Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of the arrays.

//func solution(a: [Int], b: [Int]) -> Bool {
//
//    if a.count != b.count {
//        return false
//    }
//
//    if a == b  {
//        return true
//    }
//
//    var twoIndexesArray = [Int]()
//
//    for i in 0..<a.count {
//        if a[i] != b[i] {
//            twoIndexesArray.append(i)
//            if twoIndexesArray.count > 2 {
//                return false
//            }
//        }
//    }
//
//    if twoIndexesArray.count == 2 {
//        if a[twoIndexesArray[0]] == b[twoIndexesArray[1]] && a[twoIndexesArray[1]] == b[twoIndexesArray[0]] {
//            return true
//        }
//    }
//    return false
//}
//solution(a: [1,3,4,2,5], b: [1,7,4,2,5])

//[1,3,4,2,5]
//[1,2,4,3,5]
//-----------------------------------------
// 17. arrayChange You are given an array of integers. On each move you are allowed to increase exactly one of its element by one. Find the minimal number of moves required to obtain a strictly increasing sequence from the input.
//func solution(inputArray: [Int]) -> Int {
//    var counter = 0
//    var last = inputArray[0]
//
//    for i in 0..<inputArray.count - 1 {
//
//        if inputArray[i + 1] <= last {
//            counter += last - inputArray[i + 1] + 1
//            last += 1
//        } else {
//            last = inputArray[i + 1]
//        }
//
//    }
//    return counter
//}
//
//solution(inputArray: [-1000, 0, -2, 0])
//-----------------------------------------
// 18 palindromeRearranging
//Given a string, find out if its characters can be rearranged to form a palindrome.

func solution(inputString: String) -> Bool {
    let letterCount = inputString.reduce(into: [:]) { counts, letter in
        counts[letter, default: 0] += 1}
    var oddCount = 0

    for (_,value) in letterCount {
        if value % 2 != 0 {
            oddCount += 1
        }
    }
    
    if oddCount > 1 {
        return false
    } else {
        return true
    }
}

solution(inputString: "bacabb")
