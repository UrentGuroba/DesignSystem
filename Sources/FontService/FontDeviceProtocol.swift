//
//  FontDeviceProtocol.swift
//  
//
//  Created by Senior Developer on 11.09.2023.
//

import UIKit

public protocol FontDeviceProtocol {
	
	var title_0: UIFont { get }
	var title_1: UIFont { get }
	var title_2: UIFont { get }
	var title_3: UIFont { get }
	var title_4: UIFont { get }
	//subtitle
	var subtitle_1: UIFont { get }
	var subtitle_2: UIFont { get }
	//body
	var body_1: UIFont { get }
	var body_2: UIFont { get }
	//label
	var label: UIFont { get }
	//caption
	var caption: UIFont { get }
}
