//
//  FlexViewBuilder.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import Foundation

@resultBuilder
public struct FlexViewBuilder {
    public static func buildBlock(_ components: FlexView...) -> [FlexView] {
        components
    }
    
    public static func buildBlock(_ block: [FlexView]...) -> [FlexView] {
        block.flatMap { $0 }
    }
    
    public static func buildOptional(_ item: [FlexView]?) -> [FlexView] {
        item ?? []
    }
    
    public static func buildEither(first: [FlexView]?) -> [FlexView] {
        first ?? []
    }
    public static func buildEither(second: [FlexView]?) -> [FlexView] {
        second ?? []
    }
    
    public static func buildArray(_ components: [[FlexView]]) -> [FlexView] {
        components.flatMap { $0 }
    }
    
    public static func buildExpression(_ expr: [FlexView]?) -> [FlexView] {
        expr ?? []
    }
    
    public static func buildExpression(_ expr: FlexView?) -> [FlexView] {
        expr.map { [$0] } ?? []
    }
}

public typealias FlexViewContent = () -> [FlexView]
