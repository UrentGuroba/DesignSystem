//
//  ColorToken.swift
//  
//
//  Created by Senior Developer on 24.08.2023.
//
import Common
import Foundation

public enum ColorToken {
	
	// MARK: Backgrounds
	
	case color_background_primary   //= "White1.0"
	case color_background_secondary //= "PlatinumGray7"
	case color_background_tertiary  //= "PlatinumGray4"
	case color_background_pressed   //= "PlatinumGray14"
	case color_background_shading   //= "Black04"
	case color_background_plus      //= "PlusPink5"
	case color_background_brand     //= "Purple5"
	
	// MARK: Buttons
	case color_button_primary_foreground              // = "White1.0"
	case color_button_primary_foreground_muted        // = "White0.5"
	case color_button_primary_background              // = "Purple50" - "JetBlue50"
	case color_button_primary_background_pressed      // = "Purple60" - "JetBlue60"
	case color_button_plus_primary_background         // = "PlusPink50"
	case color_button_plus_primary_background_pressed // = "PlusPink60"
	case color_button_secondary_foreground            // = "PlatinumGray90"
	case color_button_secondary_foreground_muted      // = "Black0.2"
	case color_button_secondary_background            // = "PlatinumGray4"
	case color_button_secondary_background_pressed    // = "PlatinumGray14"
	case color_button_ivert                           // = "White1.0"
	case color_button_ivert_pressed                   // = "White0.7"
	case color_button_alpha_background                // = "Black0.2"
	case color_button_alpha_background_pressed        // = "Black0.4"
	
	// MARK: Commerce
	case color_commerce_daily_accent           // = "DailyBlue50"
	case color_commerce_mts_accent             // = "MTSRed50"
	case color_commerce_plus_accent            // = "PlusPink50"
	case color_commerce_plus_unaccented        // = "PlusPink5"
	case color_commerce_city_accent            // = "CityViolet50"
	case color_commerce_city_unaccented        // = "CityViolet5"
	case color_commerce_ingosstrakh_accent     // = "Ingosstrakh50"
	case color_commerce_ingosstrakh_unaccented // = "Ingosstrakh5"
	case color_commerce_mtspremium_accent      // = "MTSPremium50"
	case color_commerce_mtspremium_unaccented  // = "MTSPremium5"
	case color_commerce_renaissance_accent     // = "Renaissance50"
	case color_commerce_renaissance_unaccented // = "Renaissance5"
	
	// MARK: Tosts
	case color_toast_foreground             // = "White1.0"
	case color_toast_primary_background     // = "PlatinumGray80"
	case color_toast_success_background     // = "Green50"
	case color_toast_destructive_background // = "Red50"
	
	// MARK: Texts
	case color_text_primary   // = "PlatinumGray90"
	case color_text_secondary // = "PlatinumGray60"
	case color_text_tertiary  // = "PlatinumGray40"
	case color_text_invert    // = "White1.0"
	case color_text_refill    // = "Green70"
	
	// MARK: Icons
	case color_icon_primary   // = "PlatinumGray_90"
	case color_icon_secondary // = "PlatinumGray_60"
	case color_icon_tertiary  // = "PlatinumGray_40"
	case color_icon_ivert     // = "White_1_0"
	case color_icon_plus      // = "PlusPink_50"
	
	// MARK: Divider
		
	case color_divider_primary // = "PlatinumGray_7"
	
	// MARK: Accents
		
	case color_accent_brand        // = "Purple_50" - "JetBlue50"
	case color_accent_brandmorning // = "Purple_40" - "JetBlue40"
	case color_accent_success      // = "Green_50"
	case color_accent_destructive  // = "Red_50"
	
	// MARK: Dragger
		
	case color_dragger_primary // = "Black_0_2"
	
	// MARK: - public methods
	
	func colorNamed(with appTarget: AppTarget) -> String {
		switch self {
				
			// MARK: Backgrounds
				
			case .color_background_primary:
				return ColorNamed.White_1_0.rawValue
				
			case .color_background_secondary:
				return ColorNamed.PlatinumGray_7.rawValue
				
			case .color_background_tertiary:
				return ColorNamed.PlatinumGray_4.rawValue
				
			case .color_background_pressed:
				return ColorNamed.PlatinumGray_14.rawValue
				
			case .color_background_shading:
				return ColorNamed.Black_0_4.rawValue
				
			case .color_background_plus:
				return ColorNamed.PlusPink_5.rawValue
				
			case .color_background_brand:
				return ColorNamed.Purple_5.rawValue
				
			// MARK: Buttons
				
			case .color_button_primary_foreground:
				return ColorNamed.White_1_0.rawValue
				
			case .color_button_primary_foreground_muted:
				return ColorNamed.White_0_5.rawValue
				
			case .color_button_primary_background:
				switch appTarget {
					case .urent:
						return ColorNamed.Purple_50.rawValue
					case .jet:
						return ColorNamed.JetBlue_50.rawValue
				}
				
			case .color_button_primary_background_pressed:
				switch appTarget {
					case .urent:
						return ColorNamed.Purple_60.rawValue
					case .jet:
						return ColorNamed.JetBlue_60.rawValue
				}
				
			case .color_button_plus_primary_background:
				return ColorNamed.PlusPink_50.rawValue
				
			case .color_button_plus_primary_background_pressed:
				return ColorNamed.PlusPink_60.rawValue
				
			case .color_button_secondary_foreground:
				return ColorNamed.PlatinumGray_90.rawValue
				
			case .color_button_secondary_foreground_muted:
				return ColorNamed.Black_0_2.rawValue
				
			case .color_button_secondary_background:
				return ColorNamed.PlatinumGray_4.rawValue
				
			case .color_button_secondary_background_pressed:
				return ColorNamed.PlatinumGray_14.rawValue
				
			case .color_button_ivert:
				return ColorNamed.White_1_0.rawValue
				
			case .color_button_ivert_pressed:
				return ColorNamed.White_0_7.rawValue
				
			case .color_button_alpha_background:
				return ColorNamed.Black_0_2.rawValue
				
			case .color_button_alpha_background_pressed:
				return ColorNamed.Black_0_4.rawValue
				
			// MARK: Commerce
				
			case .color_commerce_daily_accent:
				return ColorNamed.DailyBlue_50.rawValue
				
			case .color_commerce_mts_accent:
				return ColorNamed.MTSRed_50.rawValue
				
			case .color_commerce_plus_accent:
				return ColorNamed.PlusPink_50.rawValue
				
			case .color_commerce_plus_unaccented:
				return ColorNamed.PlusPink_5.rawValue
				
			case .color_commerce_city_accent:
				return ColorNamed.CityViolet_50.rawValue
				
			case .color_commerce_city_unaccented:
				return ColorNamed.CityViolet_5.rawValue
				
			case .color_commerce_ingosstrakh_accent:
				return ColorNamed.Ingosstrakh_50.rawValue
				
			case .color_commerce_ingosstrakh_unaccented:
				return ColorNamed.Ingosstrakh_5.rawValue
				
			case .color_commerce_mtspremium_accent:
				return ColorNamed.MTSPremium_50.rawValue
				
			case .color_commerce_mtspremium_unaccented:
				return ColorNamed.MTSPremium_5.rawValue
				
			case .color_commerce_renaissance_accent:
				return ColorNamed.Renaissance_50.rawValue
				
			case .color_commerce_renaissance_unaccented:
				return ColorNamed.Renaissance_5.rawValue
				
			// MARK: Tosts
				
			case .color_toast_foreground:
				return ColorNamed.White_1_0.rawValue
				
			case .color_toast_primary_background:
				return ColorNamed.PlatinumGray_80.rawValue
				
			case .color_toast_success_background:
				return ColorNamed.Green_50.rawValue
				
			case .color_toast_destructive_background:
				return ColorNamed.Red_50.rawValue
				
			// MARK: Texts
				
			case .color_text_primary:
				return ColorNamed.PlatinumGray_90.rawValue
				
			case .color_text_secondary:
				return ColorNamed.PlatinumGray_60.rawValue
				
			case .color_text_tertiary:
				return ColorNamed.PlatinumGray_40.rawValue
				
			case .color_text_invert:
				return ColorNamed.White_1_0.rawValue
				
			case .color_text_refill:
				return ColorNamed.Green_70.rawValue
				
			// MARK: Icons
				
			case .color_icon_primary:
				return ColorNamed.PlatinumGray_90.rawValue
				
			case .color_icon_secondary:
				return ColorNamed.PlatinumGray_60.rawValue
				
			case .color_icon_tertiary:
				return ColorNamed.PlatinumGray_40.rawValue
				
			case .color_icon_ivert:
				return ColorNamed.White_1_0.rawValue
				
			case .color_icon_plus:
				return ColorNamed.PlusPink_50.rawValue
				
			// MARK: Divider
				
			case .color_divider_primary:
				return ColorNamed.PlatinumGray_7.rawValue
			
			// MARK: Accents
				
			case .color_accent_brand:
				switch appTarget {
					case .urent:
						return ColorNamed.Purple_50.rawValue
					case .jet:
						return ColorNamed.JetBlue_50.rawValue
				}
				
			case .color_accent_brandmorning:
				switch appTarget {
					case .urent:
						return ColorNamed.Purple_40.rawValue
					case .jet:
						return ColorNamed.JetBlue_50.rawValue
				}
				
			case .color_accent_success:
				return ColorNamed.Green_50.rawValue
				
			case .color_accent_destructive:
				return ColorNamed.Red_50.rawValue
			
			// MARK: Dragger
				
			case .color_dragger_primary:
				return ColorNamed.Black_0_2.rawValue
		}
	}
}
