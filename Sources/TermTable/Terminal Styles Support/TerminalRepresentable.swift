//
//  TermTable
//  ASCII Table generator for Swift
//
//  Created by: Daniele Margutti <hello@danielemargutti.com>
//  Web: http://www.danielemargutti.com
//
//  Copyright ©2023 Daniele Margutti
//  Licensed under MIT License.
//

import Foundation

// MARK: - TerminalRepresentable

/// Represent the output visible on terminal.
public protocol TerminalRepresentable {
    
    var stringValue: String { get }
    
}

// MARK: - Default Conformances to TerminalRepresentable

extension TerminalRepresentable where Self: CustomStringConvertible {
    
    public var stringValue: String {
        String(describing: self)
    }
    
}

extension String: TerminalRepresentable {
    
    public var stringValue: String {
        self
    }
    
}
