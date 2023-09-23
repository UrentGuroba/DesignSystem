//
//  ColorServiceProtocol.swift
//  
//
//  Created by Senior Developer on 25.08.2023.
//
import UIKit

public protocol ColorServiceProtocol {
	
	func color(with colorToken: ColorToken, with appTarget: AppTarget) -> UIColor?
}
