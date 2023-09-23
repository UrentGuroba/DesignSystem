//
//  ColorService.swift
//  
//
//  Created by Senior Developer on 28.08.2023.
//
import Common
import UIKit

public struct ColorService: ColorServiceProtocol {
	
	public func color(with colorToken: ColorToken, with appTarget: AppTarget) -> UIColor? {
		let color = UIColor(named: colorToken.colorNamed(with: appTarget))
		return color
	}
	
	public init(){}
}
