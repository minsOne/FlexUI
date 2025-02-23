//
//  FlexVStack.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout
import UIKit

public struct FlexVStack: FlexView {
    public let view: UIView
    private let subContents: [FlexView]
    
    public init(_ view: UIView = UIView(),
                justifyContent: Flex.JustifyContent = .start,
                alignItems: Flex.AlignItems = .stretch,
                @FlexViewBuilder _ content: FlexViewContent) {
        self.view = view
        self.subContents = content()

        view.flex
            .justifyContent(justifyContent)
            .alignItems(alignItems)
    }
    
    public func define(superFlex flex: Flex) {
        let stack = flex.addItem(view)
            .direction(.column)

        subContents.define(flex: stack)
    }
}
