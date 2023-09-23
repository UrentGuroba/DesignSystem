//
//  FontService.swift
//  
//
//  Created by Senior Developer on 09.08.2023.
//

import UIKit

public struct FontService {
	
	public func font(with fontType: FontType) -> UIFont {
		return fontType.font()
	}
	public init(){}
}
