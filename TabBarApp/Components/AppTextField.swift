import UIKit

class AppTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init() {
        super.init(frame: .zero)
        self.defaultValues()
    }
    
    private func defaultValues() {
        self.textColor = ColorStyles.secondaryText
        self.font = FontStyles.label
        self.backgroundColor = ColorStyles.secondaryBackground
        self.borderStyle = .roundedRect
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
