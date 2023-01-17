//
//  Array+FlexView.swift
//  
//
//  Created by minsOne on 2023/01/17.
//

import Foundation
import FlexLayout

extension [any FlexView] {
    func define(flex: Flex) {
        forEach { $0.define(superFlex: flex) }
    }
}
