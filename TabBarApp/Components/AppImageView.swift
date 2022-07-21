import UIKit

class AppImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(name: String, tintColor: UIColor) {
        super.init(frame: .zero)
        defaultValues(name: name, tintColor: tintColor)
    }
    
    private func defaultValues(name: String, tintColor: UIColor) {
        self.image = UIImage(systemName: name)
        self.contentMode = .scaleAspectFit
        self.tintColor = tintColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
