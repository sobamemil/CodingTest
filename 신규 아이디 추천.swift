//
//  main.swift
//  codingTest
//
//  Created by 심찬영 on 2021/07/27.
//

import Foundation

print(solution("...!@BaT#*..y.abcdefghijklm"))

func solution(_ new_id:String) -> String {
    
    let step_1 = new_id.lowercased()
    print(step_1)
    
    let step_2 = step_1.filter("abcdefghijklmnopqrstuvwxyz1234567890-_.".contains)
    print(step_2)
    
    var step_3 = step_2
    while(step_3.contains("..")) {
        step_3 = step_3.replacingOccurrences(of: "..", with: ".")
    }
    print(step_3)
    
    var step_4 = step_3
    while (step_4.hasPrefix(".")) {
        step_4.removeFirst()
    }
    while (step_4.hasSuffix(".")) {
        step_4.removeLast()
    }
    print(step_4)
    
    var step_5 = step_4
    if step_5.isEmpty {
        step_5 = "a"
    }
    print(step_5)
    
    var step_6 = String(step_5.prefix(15))
    while (step_6.hasSuffix(".")) {
        step_6.removeLast()
    }
    print(step_6)
    
    var step_7 = step_6
    while(step_7.count < 3) {
        step_7 += String(step_7.last!)
    }
    
    return step_7
}
