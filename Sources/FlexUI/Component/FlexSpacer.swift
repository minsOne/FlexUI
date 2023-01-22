//
//  FlexSpacer.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout
import UIKit

public struct FlexSpacer: FlexView {
    public let view = UIView()
    
    public init(width: CGFloat? = nil, height: CGFloat? = nil) {
        view.isHidden = true
        view.flex.width(width).height(height)
    }
    
    public func define(superFlex flex: Flex) {
        flex.addItem(view)
    }
}
