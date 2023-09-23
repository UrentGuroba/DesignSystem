//
//  DeviceService.swift
//  
//
//  Created by Senior Developer on 11.09.2023.
//

import UIKit

public struct DeviceService {
	
	public enum DeviceSize {
		case large
		case medium
		case small
		case xSmall
		
	}

	public enum DeviceFamily {
		case elevenFamily
		case xFamily
		case plusFamily
		case sixFamily
		case fifthFamily
	}

	public var family: DeviceFamily {
		switch UIScreen.main.bounds.height {
		case 568:
			return .fifthFamily

		case 667:
			return .sixFamily

		case 736:
			return .plusFamily

		case 812:
			return .xFamily

		case 896:
			return .elevenFamily

		default:
			return .elevenFamily
		}
	}

	public var size: DeviceSize {
		switch UIScreen.main.bounds.width {
		case 1 ..< 321:
			return .xSmall

		case 321 ..< 390:
			return .small

		case 390 ..< 414:
			return .medium

		default:
			return .large
		}
	}

	static let is320WidthScreen = UIScreen.main.bounds.width == 320
	static let is6DeviceFamily = UIScreen.main.bounds.height > 568 && UIScreen.main.bounds.height < 736

	static var isSmall: Bool {
		UIScreen.main.bounds.height <= 376
	}

	var isSmallOrIsXSmall: Bool {
		size == .small || size == .xSmall
	}

	/// iPhone X, XR, 11, Max
	var isXDeviceFamily: Bool {
		UIScreen.main.bounds.height >= 812
	}

	/// iPhone Plus, Max, XR, 11
	var isPlusOrMaxDeviceFamily: Bool {
		UIScreen.main.bounds.width >= 414 && UIScreen.main.scale == 3
	}
}

struct LargeDevice: FontDeviceProtocol {
	
	//title
	public let title_0 = FontName.SFProDisplay.bold.font(size: 34)
	public let title_1 = FontName.SFProDisplay.bold.font(size: 28)
	public let title_2 = FontName.SFProDisplay.semibold.font(size: 24)
	public let title_3 = FontName.SFProDisplay.semibold.font(size: 20)
	public let title_4 = FontName.SFProDisplay.semibold.font(size: 18)
	//subtitle
	public let subtitle_1 = FontName.SFProDisplay.medium.font(size: 17)
	public let subtitle_2 = FontName.SFProDisplay.medium.font(size: 15)
	//body
	public let body_1 = FontName.SFProDisplay.regular.font(size: 17)
	public let body_2 = FontName.SFProDisplay.regular.font(size: 15)
	//label
	public let label = FontName.SFProDisplay.semibold.font(size: 13)
	//caption
	public let caption = FontName.SFProDisplay.semibold.font(size: 13)
}

struct MediumDevice: FontDeviceProtocol {
	
	//title
	public let title_0 = FontName.SFProDisplay.bold.font(size: 34)
	public let title_1 = FontName.SFProDisplay.bold.font(size: 26)
	public let title_2 = FontName.SFProDisplay.semibold.font(size: 23)
	public let title_3 = FontName.SFProDisplay.semibold.font(size: 19)
	public let title_4 = FontName.SFProDisplay.semibold.font(size: 18)
	//subtitle
	public let subtitle_1 = FontName.SFProDisplay.medium.font(size: 16)
	public let subtitle_2 = FontName.SFProDisplay.medium.font(size: 14)
	//body
	public let body_1 = FontName.SFProDisplay.regular.font(size: 16)
	public let body_2 = FontName.SFProDisplay.regular.font(size: 14)
	//label
	public let label = FontName.SFProDisplay.semibold.font(size: 12)
	//caption
	public let caption = FontName.SFProDisplay.semibold.font(size: 12)
}

struct SmallDevice: FontDeviceProtocol {
	
	//title
	public let title_0 = FontName.SFProDisplay.bold.font(size: 32)
	public let title_1 = FontName.SFProDisplay.bold.font(size: 25)
	public let title_2 = FontName.SFProDisplay.semibold.font(size: 22)
	public let title_3 = FontName.SFProDisplay.semibold.font(size: 19)
	public let title_4 = FontName.SFProDisplay.semibold.font(size: 17)
	//subtitle
	public let subtitle_1 = FontName.SFProDisplay.medium.font(size: 16)
	public let subtitle_2 = FontName.SFProDisplay.medium.font(size: 14)
	//body
	public let body_1 = FontName.SFProDisplay.regular.font(size: 16)
	public let body_2 = FontName.SFProDisplay.regular.font(size: 14)
	//label
	public let label = FontName.SFProDisplay.semibold.font(size: 12)
	//caption
	public let caption = FontName.SFProDisplay.semibold.font(size: 12)
}

struct XSmallDevice: FontDeviceProtocol {
	
	//title
	public let title_0 = FontName.SFProDisplay.bold.font(size: 30)
	public let title_1 = FontName.SFProDisplay.bold.font(size: 24)
	public let title_2 = FontName.SFProDisplay.semibold.font(size: 20)
	public let title_3 = FontName.SFProDisplay.semibold.font(size: 18)
	public let title_4 = FontName.SFProDisplay.semibold.font(size: 16)
	//subtitle
	public let subtitle_1 = FontName.SFProDisplay.medium.font(size: 15)
	public let subtitle_2 = FontName.SFProDisplay.medium.font(size: 13)
	//body
	public let body_1 = FontName.SFProDisplay.regular.font(size: 15)
	public let body_2 = FontName.SFProDisplay.regular.font(size: 13)
	//label
	public let label = FontName.SFProDisplay.semibold.font(size: 11)
	//caption
	public let caption = FontName.SFProDisplay.semibold.font(size: 1)
}
