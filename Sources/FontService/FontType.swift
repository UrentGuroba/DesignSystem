//
//  FontType.swift
//  
//
//  Created by Senior Developer on 23.09.2023.
//

import UIKit

public enum FontType {
	
	//title
	case title_0
	case title_1
	case title_2
	case title_3
	case title_4
	//subtitle
	case subtitle_1
	case subtitle_2
	//body
	case body_1
	case body_2
	//label
	case label
	//caption
	case caption
	
	func font() -> UIFont {
		switch self {
			case .title_0:
				return createFontDevice().title_0
			case .title_1:
				return createFontDevice().title_1
			case .title_2:
				return createFontDevice().title_2
			case .title_3:
				return createFontDevice().title_3
			case .title_4:
				return createFontDevice().title_4
			case .subtitle_1:
				return createFontDevice().subtitle_1
			case .subtitle_2:
				return createFontDevice().subtitle_2
			case .body_1:
				return createFontDevice().body_1
			case .body_2:
				return createFontDevice().body_2
			case .label:
				return createFontDevice().label
			case .caption:
				return createFontDevice().caption
		}
	}
	
	private func createFontDevice() -> FontDeviceProtocol {
		let deviceService = DeviceService()
		let largeDevice = LargeDevice()
		let mediumDevice = MediumDevice()
		let smallDevice = SmallDevice()
		let xSmallDevice = XSmallDevice()
		
		switch deviceService.size {
			case .large:
				return largeDevice
			case .medium:
				return mediumDevice
			case .small:
				return smallDevice
			case .xSmall:
				return xSmallDevice
		}
	}
}
