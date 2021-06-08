//
//  CLIColor.swift
//
//  Created by Igor Leonovich on 8.06.21
//  Copyright © 2021 FT. All rights reserved.
//

import Foundation

public enum CLIColor: String {
    
    case clear = "\u{001B}[;m"
    case red = "\u{001B}[0;31m"
    case green = "\u{001B}[0;42m"
    case purple = "\u{001B}[0;35m"
    case lightBlueBackground = "\u{001B}[0;104m"
}
