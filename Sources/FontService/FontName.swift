
import UIKit

public struct FontName {
    
    public enum SFProDisplay: String, CaseIterable {
        
        case regular = "SFProDisplay-Regular"
        case black   = "SFProDisplay-Black"
        case medium  = "SFProDisplay-Medium"
        case bold    = "SFProDisplay-Bold"
        case light   = "SFProDisplay-Light"
        case heavy   = "SFProDisplay-Heavy"
		case semibold = "SFProDisplay-Semibold"
        
        public func font(size: CGFloat) -> UIFont {
            let descriptor = UIFontDescriptor(fontAttributes: [.name: self.rawValue])
            return UIFont(descriptor: descriptor, size: size)
        }
    }
}
