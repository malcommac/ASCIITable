//
//  ASCIITable
//  Table drawing library for terminal, made in Swift
//
//  Created & Maintained by Daniele Margutti
//  Email: hello@danielemargutti.com
//  Web: http://www.danielemargutti.com
//
//  Copyright ©2023 Daniele Margutti.
//  Licensed under MIT License.
//

import Foundation

public struct ASCIITable {
    
    // MARK: - Public Properties
    
    /// Columns list.
    var columns: [Column]
    
    /// The content of the table.
    var content: [TerminalRepresentable]
    
    /// Style used to draw the table.
    let style: Style
    
    // MARK: - Initialization
    
    /// Initialize a new table.
    ///
    /// - Parameters:
    ///   - style: defines the style of the table structure.
    ///   - columns: columns of the table.
    ///   - content: content of the table.
    public init(style: Style = .default,
                columns: [Column],
                @TableDisplayBuilder content: () -> [TerminalRepresentable]) {
        self.columns = columns
        self.style = style
        self.content = content()
        apply(style: style, toColumns: &self.columns)
    }
    
}