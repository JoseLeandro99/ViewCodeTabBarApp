import UIKit

class AppButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String) {
        super.init(frame: .zero)
        self.defaultValues(title: title)
    }
    
    private func defaultValues(title: String) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(UIColor.white, for: .normal)
        self.titleLabel?.font = FontStyles.SubTitle
        self.backgroundColor = .systemFill
        self.layer.borderWidth = 0.2
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 8.0
        self.clipsToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
