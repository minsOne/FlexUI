//
//  FlexItem.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout
import UIKit

public struct FlexItem: FlexView {
    public let view: UIView
    
    public init(_ view: UIView) {
        self.view = view
    }
    
    public func define(superFlex: Flex) {
        superFlex.addItem(view)
    }
}
