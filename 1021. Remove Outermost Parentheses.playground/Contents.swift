// 1021. Remove Outermost Parentheses

import UIKit

protocol Stackable {
    associatedtype Element
    var items: [Element] { get set }
    func peek() -> Element?
    mutating func pop() -> Element?
    mutating func push(item: Element)
    func count() -> Int
}

struct Stack<Element>: Stackable {
    
    var items: [Element]
    
    init() {
        items = []
    }
    
    func peek() -> Element? {
        self.items.last
    }
    
    mutating func pop() -> Element? {
        self.items.popLast()
    }
    
    mutating func push(item: Element) {
        self.items.append(item)
    }
    
    func count() -> Int {
        items.count
    }
}

class Solution {
    
    private var stack: Stack<String> = Stack<String>()
    private var indexList: [Int] = [Int]()
    
    func removeOuterParentheses(_ s: String) -> String {
        let array =  Array(s)
        var stringBuilder: String = String()
        
        for char in array {
            
            if char.description == "(" {
                if stack.count() > 0 {
                    stringBuilder.append(char)
                }
                stack.push(item: char.description)
            } else {
                stack.pop()
                if stack.count() > 0 {
                    stringBuilder.append(char.description)
                }
            }
        }
        return stringBuilder
    }
}

let solution = Solution().removeOuterParentheses("(()())(())")
