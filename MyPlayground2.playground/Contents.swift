import UIKit
import PlaygroundSupport
import SwiftUI

func extractNumberFromString(string: String) -> String {
    return string.filter {$0.isNumber || ".,".contains($0)}
}

func removeLeadingZero(string: String) -> Any {
    return string.hasPrefix("0") ? string.dropFirst() : string
}

func removeUnderscore(string: String) -> String {
    return string.replacingOccurrences(of: "_", with: " ")
}

let string1 = "My Wallet (SAR 1,685,633.00)"
print(extractNumberFromString(string: string1))

let string2 = "28_12_2024"
print(removeUnderscore(string: string2))

let string3 = "01 December 2022"
print(removeLeadingZero(string: string3))
