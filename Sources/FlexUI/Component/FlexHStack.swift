//
//  FlexHStack.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout
import UIKit

public struct FlexHStack: FlexView {
    public let view: UIView
    private let subContents: [FlexView]
    
    public init(view: UIView = UIView(),
                justifyContent: Flex.JustifyContent = .start,
                alignItems: Flex.AlignItems = .stretch,
                @FlexViewBuilder _ content: FlexViewContent) {
        self.view = view
        self.subContents = content()

        view.flex
            .justifyContent(justifyContent)
            .alignItems(alignItems)
    }
    
    public func define(superFlex: Flex) {
        let stack = superFlex.addItem(view)
            .direction(.row)
        
        subContents.define(flex: stack)
    }
}
