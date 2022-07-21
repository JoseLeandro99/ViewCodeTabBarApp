import UIKit

class AppLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(_ text: String) {
        super.init(frame: .zero)
        self.defaultValues(
            text: text,
            color: ColorStyles.primaryText,
            font: FontStyles.label)
    }
    
    init(_ text: String, color: UIColor) {
        super.init(frame: .zero)
        self.defaultValues(text: text, color: color, font: FontStyles.label)
    }
    
    init(_ text: String, color: UIColor, font: UIFont) {
        super.init(frame: .zero)
        self.defaultValues(text: text, color: color, font: font)
    }
    
    private func defaultValues(text: String, color: UIColor, font: UIFont) {
        self.text = text
        self.textColor = color
        self.font = font
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
