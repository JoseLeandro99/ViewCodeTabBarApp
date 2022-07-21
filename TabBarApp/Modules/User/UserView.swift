import UIKit

class UserView: UIView {
    private lazy var titleLabel = AppLabel(
        "User",
        color: ColorStyles.primaryText,
        font: FontStyles.Title)
    
    private lazy var avatarImage = AppImageView(
        name: "person.circle.fill",
        tintColor: ColorStyles.primaryText)
    
    private lazy var usernameLabel = AppLabel(
        "UserName",
        color: ColorStyles.primaryText,
        font: FontStyles.SubTitle)
    
    private lazy var emailLabel = AppLabel(
        "E-Mail",
        color: ColorStyles.primaryText,
        font: FontStyles.SubTitle)
    
    private lazy var usernameInput = AppTextField()
    private lazy var emailInput = AppTextField()
    private lazy var saveButton = AppButton(title: "Update Profile")
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUserView()
        self.mockUserData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func mockUserData() {
        self.usernameInput.text = "UserName Generic"
        self.emailInput.text = "username@email.com"
    }
    
    private func setupUserView() {
        self.backgroundColor = ColorStyles.primaryBackground
        self.setupAvatarImage()
        self.setupTitleLabel()
        self.setupUsernameInput()
        self.setupEmailInput()
        self.setupSaveButton()
    }
    
    private func setupTitleLabel() {
        self.addSubview(self.titleLabel)
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.avatarImage.bottomAnchor, constant: 10.0),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    private func setupAvatarImage() {
        self.addSubview(self.avatarImage)
        NSLayoutConstraint.activate([
            self.avatarImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40.0),
            self.avatarImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.avatarImage.widthAnchor.constraint(equalToConstant: 120.0),
            self.avatarImage.heightAnchor.constraint(equalToConstant: 120.0)
        ])
    }
    
    private func setupUsernameInput() {
        self.addSubview(self.usernameLabel)
        self.addSubview(self.usernameInput)
        
        NSLayoutConstraint.activate([
            self.usernameLabel.topAnchor.constraint(equalTo: self.avatarImage.bottomAnchor, constant: 85.0),
            self.usernameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10.0),
            
            self.usernameInput.topAnchor.constraint(equalTo: self.usernameLabel.bottomAnchor, constant: 8.0),
            self.usernameInput.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10.0),
            self.usernameInput.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10.0),
            self.usernameInput.heightAnchor.constraint(equalToConstant: 45.0 + 5)
        ])
    }
    
    private func setupEmailInput() {
        self.addSubview(self.emailLabel)
        self.addSubview(self.emailInput)
        NSLayoutConstraint.activate([
            self.emailLabel.topAnchor.constraint(equalTo: self.usernameInput.bottomAnchor, constant: 20.0),
            self.emailLabel.leadingAnchor.constraint(equalTo: self.usernameLabel.leadingAnchor),
            
            self.emailInput.topAnchor.constraint(equalTo: self.emailLabel.bottomAnchor, constant: 10.0),
            self.emailInput.leadingAnchor.constraint(equalTo: self.usernameInput.leadingAnchor),
            self.emailInput.trailingAnchor.constraint(equalTo: self.usernameInput.trailingAnchor),
            self.emailInput.heightAnchor.constraint(equalTo: self.usernameInput.heightAnchor)
        ])
    }
    
    private func setupSaveButton() {
        self.addSubview(self.saveButton)
        NSLayoutConstraint.activate([
            self.saveButton.topAnchor.constraint(equalTo: self.emailInput.bottomAnchor, constant: 35.0),
            self.saveButton.leadingAnchor.constraint(equalTo: self.usernameInput.leadingAnchor),
            self.saveButton.trailingAnchor.constraint(equalTo: self.usernameInput.trailingAnchor),
            self.saveButton.heightAnchor.constraint(equalToConstant: 50.0)
        ])
    }
}
