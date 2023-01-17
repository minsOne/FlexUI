//
//  FlexView+Extension.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout
import UIKit

public extension FlexView {
    func isIncludedInLayout(_ included: Bool) -> Self {
        view.flex.isIncludedInLayout(included)
        return self
    }
    
    func markDirty() -> Self {
        view.flex.markDirty()
        return self
    }
    
    func sizeThatFits(size: CGSize) -> CGSize {
        return view.flex.sizeThatFits(size: size)
    }
    
    //
    // MARK: Direction, wrap, flow
    //
    
    /**
     The `direction` property establishes the main-axis, thus defining the direction flex items are placed in the flex container.
     
     The `direction` property specifies how flex items are laid out in the flex container, by setting the direction of the flex
     container’s main axis. They can be laid out in two main directions,  like columns vertically or like rows horizontally.
     
     Note that row and row-reverse are affected by the layout direction (see `layoutDirection` property) of the flex container.
     If its text direction is LTR (left to right), row represents the horizontal axis oriented from left to right, and row-reverse
     from right to left; if the direction is rtl, it's the opposite.
     
     - Parameter value: Default value is .column
     */
    func direction(_ value: Flex.Direction) -> Self {
        view.flex.direction(value)
        return self
    }
    
    /**
     The `wrap` property controls whether the flex container is single-lined or multi-lined, and the direction of the cross-axis, which determines the direction in which the new lines are stacked in.
     
     - Parameter value: Default value is .noWrap
     */
    func wrap(_ value: Flex.Wrap) -> Self {
        view.flex.wrap(value)
        return self
    }
    
    /**
     Direction defaults to Inherit on all nodes except the root which defaults to LTR. It is up to you to detect the
     user’s preferred direction (most platforms have a standard way of doing this) and setting this direction on the
     root of your layout tree.
     
     - Parameter value: new LayoutDirection
     */
    func layoutDirection(_ value: Flex.LayoutDirection) -> Self {
        view.flex.layoutDirection(value)
        return self
    }
    
    /**
     The `justifyContent` property defines the alignment along the main-axis of the current line of the flex container.
     It helps distribute extra free space leftover when either all the flex items on a line have reached their maximum
     size. For example, if children are flowing vertically, `justifyContent` controls how they align vertically.
     
     - Parameter value: Default value is .start
     */
    func justifyContent(_ value: Flex.JustifyContent) -> Self {
        view.flex.justifyContent(value)
        return self
    }
    
    /**
     The `alignItems` property defines how flex items are laid out along the cross axis on the current line.
     Similar to `justifyContent` but for the cross-axis (perpendicular to the main-axis). For example, if
     children are flowing vertically, `alignItems` controls how they align horizontally.
     
     - Parameter value: Default value is .stretch
     */
    func alignItems(_ value: Flex.AlignItems) -> Self {
        view.flex.alignItems(value)
        return self
    }
    
    /**
     The `alignSelf` property controls how a child aligns in the cross direction, overriding the `alignItems`
     of the parent. For example, if children are flowing vertically, `alignSelf` will control how the flex item
     will align horizontally.
     
     - Parameter value: Default value is .auto
     */
    func alignSelf(_ value: Flex.AlignSelf) -> Self {
        view.flex.alignSelf(value)
        return self
    }
    
    /**
     The align-content property aligns a flex container’s lines within the flex container when there is extra space
     in the cross-axis, similar to how justifyContent aligns individual items within the main-axis.
     
     - Parameter value: Default value is .start
     */
    func alignContent(_ value: Flex.AlignContent) -> Self {
        view.flex.alignContent(value)
        return self
    }
    
    /**
     The `grow` property defines the ability for a flex item to grow if necessary. It accepts a unitless value
     that serves as a proportion. It dictates what amount of the available space inside the flex container the
     item should take up.
     
     - Parameter value: Default value is 0
     */
    func grow(_ value: CGFloat) -> Self {
        view.flex.grow(value)
        return self
    }
    
    /**
     It specifies the "flex shrink factor", which determines how much the flex item will shrink relative to the
     rest of the flex items in the flex container when there isn't enough space on the main-axis.
     
     When omitted, it is set to 0 and the flex shrink factor is multiplied by the flex `basis` when distributing
     negative space.
     
     A shrink value of 0 keeps the view's size in the main-axis direction. Note that this may cause the view to
     overflow its flex container.
     
     - Parameter value: Default value is 0
     */
    func shrink(_ value: CGFloat) -> Self {
        view.flex.shrink(value)
        return self
    }
    
    /**
     This property takes the same values as the width and height properties, and specifies the initial size of the
     flex item, before free space is distributed according to the grow and shrink factors.
     
     Specifying `nil` set the basis as `auto`, which means the length is equal to the length of the item. If the
     item has no length specified, the length will be according to its content.
     
     - Parameter value: Default value is 0
     */
    func basis(_ value: CGFloat?) -> Self {
        view.flex.basis(value)
        return self
    }
    
    /**
     This property takes the same values as the width and height properties, and specifies the initial size of the
     flex item, before free space is distributed according to the grow and shrink factors.
     
     Specifying `nil` set the basis as `auto`, which means the length is equal to the length of the item. If the
     item has no length specified, the length will be according to its content.
     */
    func basis(_ percent: FPercent) -> FlexView {
        view.flex.basis(percent)
        return self
    }
    
    /**
     The value specifies the view's width in pixels. The value must be non-negative.
     */
    func width(_ value: CGFloat?) -> Self {
        view.flex.width(value)
        return self
    }
    
    /**
     The value specifies the view's width in percentage of its container width. The value must be non-negative.
     Example: view.flex.width(20%)
     */
    func width(_ percent: FPercent) -> Self {
        view.flex.width(percent)
        return self
    }
    
    /**
     The value specifies the view's height in pixels. The value must be non-negative.
     */
    func height(_ value: CGFloat?) -> Self {
        view.flex.height(value)
        return self
    }
    
    func height(_ percent: FPercent) -> Self {
        view.flex.height(percent)
        return self
    }
    
    func size(_ size: CGSize?) -> Self {
        view.flex.size(size)
        return self
    }
    
    func size(_ sideLength: CGFloat) -> Self {
        view.flex.size(sideLength)
        return self
    }
    
    func minWidth(_ value: CGFloat?) -> Self {
        view.flex.minWidth(value)
        return self
    }
    
    func minWidth(_ percent: FPercent) -> Self {
        view.flex.minWidth(percent)
        return self
    }
    
    func maxWidth(_ value: CGFloat?) -> Self {
        view.flex.maxWidth(value)
        return self
    }
    
    func maxWidth(_ percent: FPercent) -> Self {
        view.flex.maxWidth(percent)
        return self
    }
    
    func minHeight(_ value: CGFloat?) -> Self {
        view.flex.minHeight(value)
        return self
    }
    
    func minHeight(_ percent: FPercent) -> Self {
        view.flex.minHeight(percent)
        return self
    }
    
    func maxHeight(_ value: CGFloat?) -> Self {
        view.flex.maxHeight(value)
        return self
    }
    
    func maxHeight(_ percent: FPercent) -> Self {
        view.flex.maxHeight(percent)
        return self
    }
    
    func aspectRatio(_ value: CGFloat?) -> Self {
        view.flex.aspectRatio(value)
        return self
    }
    
    func aspectRatio(of imageView: UIImageView) -> Self {
        view.flex.aspectRatio(of: imageView)
        return self
    }
    
    func position(_ value: Flex.Position) -> Self {
        view.flex.position(value)
        return self
    }
    
    func top(_ value: CGFloat) -> Self {
        view.flex.top(value)
        return self
    }
    
    func top(_ percent: FPercent) -> Self {
        view.flex.top(percent)
        return self
    }
    
    func bottom(_ value: CGFloat) -> Self {
        view.flex.bottom(value)
        return self
    }
    
    func bottom(_ percent: FPercent) -> Self {
        view.flex.bottom(percent)
        return self
    }
    
    func start(_ value: CGFloat) -> Self {
        view.flex.start(value)
        return self
    }
    
    func start(_ percent: FPercent) -> Self {
        view.flex.start(percent)
        return self
    }
    
    func end(_ value: CGFloat) -> Self {
        view.flex.end(value)
        return self
    }
    
    func end(_ percent: FPercent) -> Self {
        view.flex.end(percent)
        return self
    }
    
    func horizontally(_ value: CGFloat) -> Self {
        view.flex.horizontally(value)
        return self
    }
    
    func horizontally(_ percent: FPercent) -> Self {
        view.flex.horizontally(percent)
        return self
    }
    
    func vertically(_ value: CGFloat) -> Self {
        view.flex.vertically(value)
        return self
    }
    
    func vertically(_ percent: FPercent) -> Self {
        view.flex.vertically(percent)
        return self
    }
    
    func all(_ value: CGFloat) -> Self {
        view.flex.all(value)
        return self
    }
    
    func all(_ percent: FPercent) -> Self {
        view.flex.all(percent)
        return self
    }
    
    func marginTop(_ value: CGFloat) -> Self {
        view.flex.marginTop(value)
        return self
    }
    
    func marginTop(_ percent: FPercent) -> Self {
        view.flex.marginTop(percent)
        return self
    }
    
    func marginBottom(_ value: CGFloat) -> Self {
        view.flex.marginBottom(value)
        return self
    }
    
    func marginBottom(_ percent: FPercent) -> Self {
        view.flex.marginBottom(percent)
        return self
    }
    
    func marginStart(_ value: CGFloat) -> Self {
        view.flex.marginStart(value)
        return self
    }
    
    func marginStart(_ percent: FPercent) -> Self {
        view.flex.marginStart(percent)
        return self
    }
    
    func marginEnd(_ value: CGFloat) -> Self {
        view.flex.marginEnd(value)
        return self
    }
    
    func marginEnd(_ percent: FPercent) -> Self {
        view.flex.marginEnd(percent)
        return self
    }
    
    func marginHorizontal(_ value: CGFloat) -> Self {
        view.flex.marginHorizontal(value)
        return self
    }
    
    func marginHorizontal(_ percent: FPercent) -> Self {
        view.flex.marginHorizontal(percent)
        return self
    }
    
    func marginVertical(_ value: CGFloat) -> Self {
        view.flex.marginVertical(value)
        return self
    }
    
    func marginVertical(_ percent: FPercent) -> Self {
        view.flex.marginVertical(percent)
        return self
    }
    
    func margin(_ insets: UIEdgeInsets) -> Self {
        view.flex.margin(insets)
        return self
    }
    
    func margin(_ directionalInsets: NSDirectionalEdgeInsets) -> Self {
        view.flex.margin(directionalInsets)
        return self
    }
    
    func margin(_ value: CGFloat) -> Self {
        view.flex.margin(value)
        return self
    }
    
    func margin(_ percent: FPercent) -> Self {
        view.flex.margin(percent)
        return self
    }
    
    func margin(_ vertical: CGFloat, _ horizontal: CGFloat) -> Self {
        view.flex.margin(vertical, horizontal)
        return self
    }
    
    func margin(_ vertical: FPercent, _ horizontal: FPercent) -> Self {
        view.flex.margin(vertical, horizontal)
        return self
    }
    
    func margin(_ top: CGFloat, _ horizontal: CGFloat, _ bottom: CGFloat) -> Self {
        view.flex.margin(top, horizontal, bottom)
        return self
    }
    
    func margin(_ top: FPercent, _ horizontal: FPercent, _ bottom: FPercent) -> Self {
        view.flex.margin(top, horizontal, bottom)
        return self
    }
    
    func margin(_ top: CGFloat, _ start: CGFloat, _ bottom: CGFloat, _ end: CGFloat) -> Self {
        view.flex.margin(top, start, bottom, end)
        return self
    }
    
    func margin(_ top: FPercent, _ start: FPercent, _ bottom: FPercent, _ end: FPercent) -> Self {
        view.flex.margin(top, start, bottom, end)
        return self
    }
    
    func paddingTop(_ value: CGFloat) -> Self {
        view.flex.paddingTop(value)
        return self
    }
    
    func paddingTop(_ percent: FPercent) -> Self {
        view.flex.paddingTop(percent)
        return self
    }
    
    func paddingBottom(_ value: CGFloat) -> Self {
        view.flex.paddingBottom(value)
        return self
    }
    
    func paddingBottom(_ percent: FPercent) -> Self {
        view.flex.paddingBottom(percent)
        return self
    }
    
    func paddingStart(_ value: CGFloat) -> Self {
        view.flex.paddingStart(value)
        return self
    }
    
    func paddingStart(_ percent: FPercent) -> Self {
        view.flex.paddingStart(percent)
        return self
    }
    
    func paddingEnd(_ value: CGFloat) -> Self {
        view.flex.paddingEnd(value)
        return self
    }
    
    func paddingEnd(_ percent: FPercent) -> Self {
        view.flex.paddingEnd(percent)
        return self
    }
    
    func paddingHorizontal(_ value: CGFloat) -> Self {
        view.flex.paddingHorizontal(value)
        return self
    }
    
    func paddingHorizontal(_ percent: FPercent) -> Self {
        view.flex.paddingHorizontal(percent)
        return self
    }
    
    func paddingVertical(_ value: CGFloat) -> Self {
        view.flex.paddingVertical(value)
        return self
    }
    
    func paddingVertical(_ percent: FPercent) -> Self {
        view.flex.paddingVertical(percent)
        return self
    }
    
    func padding(_ insets: UIEdgeInsets) -> Self {
        view.flex.padding(insets)
        return self
    }
    
    func padding(_ directionalInsets: NSDirectionalEdgeInsets) -> Self {
        view.flex.padding(directionalInsets)
        return self
    }
    
    func padding(_ value: CGFloat) -> Self {
        view.flex.padding(value)
        return self
    }
    
    func padding(_ percent: FPercent) -> Self {
        view.flex.padding(percent)
        return self
    }
    
    func padding(_ vertical: CGFloat, _ horizontal: CGFloat) -> Self {
        view.flex.padding(vertical, horizontal)
        return self
    }
    
    func padding(_ vertical: FPercent, _ horizontal: FPercent) -> Self {
        view.flex.padding(vertical, horizontal)
        return self
    }
    
    func padding(_ top: CGFloat, _ horizontal: CGFloat, _ bottom: CGFloat) -> Self {
        view.flex.padding(top, horizontal, bottom)
        return self
    }
    
    func padding(_ top: FPercent, _ horizontal: FPercent, _ bottom: FPercent) -> Self {
        view.flex.padding(top, horizontal, bottom)
        return self
    }
    
    func padding(_ top: CGFloat, _ start: CGFloat, _ bottom: CGFloat, _ end: CGFloat) -> Self {
        view.flex.padding(top, start, bottom, end)
        return self
    }
    
    func padding(_ top: FPercent, _ start: FPercent, _ bottom: FPercent, _ end: FPercent) -> Self {
        view.flex.padding(top, start, bottom, end)
        return self
    }
    
    func backgroundColor(_ color: UIColor) -> Self {
        view.flex.backgroundColor(color)
        return self
    }
    
    func display(_ value: Flex.Display) -> Self {
        view.flex.display(value)
        return self
    }
    
    func cornerRadius(_ value: CGFloat, cornerCurve: CALayerCornerCurve? = nil) -> Self {
        if let cornerCurve { view.layer.cornerCurve = cornerCurve }
        view.layer.cornerRadius = value

        return self
    }
}
