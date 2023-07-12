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

extension String.StringInterpolation {
    
    // MARK: - Public Methods
    
    mutating public func appendInterpolation(_ any: Any, pad: StringPadding) {
        apply(pad: pad, to: any)
    }
    
    mutating public func appendInterpolation(_ any: Any, color: TerminalColor) {
        apply(termColor: color, back: nil, style: nil, to: any)
    }
    
    mutating public func appendInterpolation(_ any: Any, back: TerminalColor) {
        apply(termColor: nil, back: back, style: nil, to: any)
    }
    
    mutating public func appendInterpolation(_ any: Any, style: TerminalStyle) {
        apply(termColor: nil, back: nil, style: style, to: any)
    }
    
    mutating public func appendInterpolation(_ any: Any, color: TerminalColor, back: TerminalColor) {
        apply(termColor: color, back: back, style: nil, to: any)
    }
    
    mutating public func appendInterpolation(_ any: Any, back: TerminalColor, style: TerminalStyle) {
        apply(termColor: nil, back: back, style: style, to: any)
    }
    
    mutating public func appendInterpolation(_ any: Any, color: TerminalColor, style: TerminalStyle) {
        apply(termColor: color, back: nil, style: style, to: any)
    }
    
    mutating public func appendInterpolation(_ any: Any, color: TerminalColor, back: TerminalColor, style: TerminalStyle) {
        apply(termColor: color, back: back, style: style, to: any)
    }
    
    
}
