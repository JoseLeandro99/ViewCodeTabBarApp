import UIKit

class SettingsView: UIView {
    private lazy var iconImage = AppImageView(
        name: "gear",
        tintColor: ColorStyles.primaryText)
    
    private lazy var titleLabel = AppLabel(
        "Settings",
        color: ColorStyles.primaryText,
        font: FontStyles.Title)
    
    private lazy var logoutButton: UIButton = {
        let button = AppButton(title: "Logout Account")
        button.backgroundColor = .systemPink
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupSettingsView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSettingsView() {
        self.backgroundColor = .systemTeal
        self.setupAvatarImage()
        self.setupTitleLabel()
        self.setupLogoutButton()
    }
    
    private func setupAvatarImage() {
        self.addSubview(self.iconImage)
        NSLayoutConstraint.activate([
            self.iconImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40.0),
            self.iconImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.iconImage.widthAnchor.constraint(equalToConstant: 120.0),
            self.iconImage.heightAnchor.constraint(equalToConstant: 120.0)
        ])
    }
    
    private func setupTitleLabel() {
        self.addSubview(self.titleLabel)
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.iconImage.bottomAnchor, constant: 10.0),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    private func setupLogoutButton() {
        self.addSubview(self.logoutButton)
        NSLayoutConstraint.activate([
            self.logoutButton.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 70.0),
            self.logoutButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10.0),
            self.logoutButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10.0),
            self.logoutButton.heightAnchor.constraint(equalToConstant: 50.0)
        ])
    }
}
