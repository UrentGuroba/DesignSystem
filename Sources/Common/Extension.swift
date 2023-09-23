//
//  Extension.swift
//  
//
//  Created by Senior Developer on 22.09.2023.
//
import FontService
import UIKit

public extension String {
	
	var attributed: NSMutableAttributedString {
		let attributedString = NSMutableAttributedString(string: self)
		return attributedString
	}
	
	func title_0(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .title_0))
		return attributedString
	}
	
	func title_1(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .title_1))
		return attributedString
	}
	
	func title_2(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .title_2))
		return attributedString
	}
	
	func title_3(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .title_3))
		return attributedString
	}
	
	func title_4(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .title_4))
		return attributedString
	}
	
	func subtitle_1(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .subtitle_1))
		return attributedString
	}
	
	func subtitle_2(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .subtitle_2))
		return attributedString
	}
	
	
	func body_1(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .body_1))
		return attributedString
	}
	
	func body_2(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .body_2))
		return attributedString
	}
	
	func label(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .label))
		return attributedString
	}
	
	func caption(color: UIColor) -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = self
			.attributed
			.foregroundColor(color)
			.font(fontService.font(with: .caption))
		return attributedString
	}
	
	//
	func title_0() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .title_0))
		return attributedString
	}

	func title_1() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .title_1))
		return attributedString
	}

	func title_2() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .title_2))
		return attributedString
	}

	func title_3() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .title_3))
		return attributedString
	}

	func title_4() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .title_4))
		return attributedString
	}

	func subtitle_1() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .subtitle_1))
		return attributedString
	}

	func subtitle_2() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .subtitle_2))
		return attributedString
	}

	func body_1() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .body_1))
		return attributedString
	}

	func body_2() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .body_2))
		return attributedString
	}

	func label() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .label))
		return attributedString
	}

	func caption() -> NSMutableAttributedString {
		let fontService = FontService()
		let attributedString = attributed
			.font(fontService.font(with: .caption))
		return attributedString
	}
}

public extension Dictionary where Key == NSAttributedString.Key, Value == Any {
	static func foregroundColor(_ color: UIColor) -> Self {
		let attributes: [NSAttributedString.Key: Any] = [.foregroundColor: color]
		return attributes
	}
	
	static func font(_ font: UIFont) -> Self {
		let attributes: [NSAttributedString.Key: Any] = [.font: font]
		return attributes
	}
	
	static func lineHeight(_ lineHeight: CGFloat) -> Self {
		let paragraphStyle = NSMutableParagraphStyle()
		paragraphStyle.minimumLineHeight = lineHeight
		paragraphStyle.maximumLineHeight = lineHeight
		let attributes: [NSAttributedString.Key: Any] = [.paragraphStyle: paragraphStyle]
		return attributes
	}
}

public extension NSAttributedString {
	func font() -> UIFont {
		let attributes = attributes(at: 0, effectiveRange: nil)
		let font = attributes.filter { $0.key == .font }[.font] as? UIFont
		return font ?? UIFont.systemFont(ofSize: 17)
	}
	
	func lineHeight() -> CGFloat? {
		let attributes = attributes(at: 0, effectiveRange: nil)
		let paragraphStyle = attributes.filter { $0.key == .paragraphStyle }[.paragraphStyle] as? NSMutableParagraphStyle
		return paragraphStyle?.lineHeightMultiple
	}
	
	func fullRange() -> NSRange {
		let nsString = string as NSString
		return nsString.range(of: string)
	}
	
	func stringRange(with string: String) -> NSRange {
		let result = self.string as NSString
		return result.range(of: string)
	}
}

public extension NSMutableAttributedString {
	private func addingAttributes(
		_ attributes: [NSAttributedString.Key: Any],
		range: NSRange
	) -> Self {
		addAttributes(attributes, range: range)
		return self
	}
	
	func addingAttributes(
		_ attributes: [NSAttributedString.Key: Any]
	) -> Self {
		addingAttributes(attributes, range: fullRange())
	}
	
	func foregroundColor(_ color: UIColor) -> Self {
		addingAttributes(.foregroundColor(color))
	}
	
	func font(_ font: UIFont) -> Self {
		addingAttributes(.font(font))
	}
	
	func addColor(_ color: UIColor, for string: String) -> Self {
		let range = stringRange(with: string)
		let attribute = addingAttributes(.foregroundColor(color), range: range)
		return attribute
	}
	
	private var existingParagraphStyle: NSMutableParagraphStyle {
		var effectiveRange = fullRange()
		let existingParagraphStyle = attribute(
			.paragraphStyle,
			at: 0,
			effectiveRange: &effectiveRange
		) as? NSMutableParagraphStyle
		return existingParagraphStyle ?? .init()
	}
	
	func lineHeight(_ lineHeight: CGFloat) -> Self {
		let paragraphStyle = existingParagraphStyle
		paragraphStyle.minimumLineHeight = lineHeight
		paragraphStyle.maximumLineHeight = lineHeight
		return addingAttributes(.lineHeight(lineHeight))
	}
	
	func alignment(_ alignment: NSTextAlignment) -> Self {
		let paragraphStyle = existingParagraphStyle
		paragraphStyle.alignment = alignment
		return addingAttributes([.paragraphStyle: paragraphStyle])
	}
	
	func kern(_ spacing: CGFloat) -> Self {
		addingAttributes([.kern: spacing])
	}
	
	func baselineOffset(_ offset: CGFloat) -> Self {
		addingAttributes([.baselineOffset: offset])
	}
}
