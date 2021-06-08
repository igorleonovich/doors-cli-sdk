//
//  CLIController.swift
//
//  Created by Igor Leonovich on 8.06.21
//  Copyright © 2021 FT. All rights reserved.
//

import Foundation

public class CLIController {
    
    public init() {
        
    }
    
    public func print(_ message: String, to: OutputType = .standardPale) {
        switch to {
        case .standardPale:
            fputs("\(message)\n", stdout)
        case .highlightedGreen:
            fputs("\(CLIColor.green.rawValue)\(message)\(CLIColor.clear.rawValue)\n", stdout)
        case .highlightedPurple:
            fputs("\(CLIColor.purple.rawValue)\(message)\(CLIColor.clear.rawValue)\n", stdout)
        case .highlightedLightBlueBG:
            fputs("\(CLIColor.lightBlueBackground.rawValue)\(message)\(CLIColor.clear.rawValue)\n", stdout)
        case .errorRed:
            fputs("\(CLIColor.red.rawValue)\(message)\(CLIColor.clear.rawValue)\n", stderr)
        }
    }
    
//    func getInput() -> String? {
//        let keyboard = FileHandle.standardInput
//        let inputData = keyboard.availableData
//        let stringData = String(data: inputData, encoding: String.Encoding.utf8)?.trimmingCharacters(in: CharacterSet.newlines)
//        return stringData
//    }
}

public enum OutputType {
    case standardPale
    case highlightedGreen
    case highlightedPurple
    case highlightedLightBlueBG
    case errorRed
}
