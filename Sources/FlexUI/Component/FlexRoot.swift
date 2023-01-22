//
//  FlexRoot.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout
import UIKit

@discardableResult
public func FlexRoot(_ container: UIView,
                     direction: Flex.Direction = .column,
                     justifyContent: Flex.JustifyContent = .start,
                     alignItems: Flex.AlignItems = .stretch,
                     @FlexViewBuilder _ content: FlexViewContent) -> Flex {
    let subContents = content()
    
    return container.flex
        .direction(direction)
        .justifyContent(justifyContent)
        .alignItems(alignItems)
        .define { flex in
            subContents.define(flex: flex)
        }
}
