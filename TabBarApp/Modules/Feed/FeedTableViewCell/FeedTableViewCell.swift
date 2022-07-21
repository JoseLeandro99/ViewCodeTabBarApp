import UIKit

class FeedTableViewCell: UITableViewCell {
    static let identifier: String = "FeedTableViewCell"
    
    private lazy var cellContainer: UIView = {
        let view = UIView()
        view.backgroundColor = ColorStyles.secondaryBackground
        view.layer.cornerRadius = 6.0
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 0.4
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var postTitleLabel = AppLabel("", color: ColorStyles.secondaryText, font: FontStyles.SubTitle)
    private lazy var postContentLabel = AppLabel("", color: ColorStyles.secondaryText, font: FontStyles.label)
    private lazy var postAuthorLabel = AppLabel("", color: ColorStyles.secondaryText, font: FontStyles.small)
    private lazy var postDateLabel = AppLabel("", color: ColorStyles.secondaryText, font: FontStyles.small)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupCellView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCellData(post: Post) {
        self.postTitleLabel.text = post.title
        self.postContentLabel.text = post.content
        self.postAuthorLabel.text = post.author
        self.postDateLabel.text = getFormattedDate(date: post.date)
    }
    
    private func getFormattedDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: date)
    }
    
    private func setupCellView() {
        self.backgroundColor = ColorStyles.primaryBackground
        self.selectionStyle = .none
        self.SetupCellContainer()
        
        self.cellContainer.addSubview(self.postTitleLabel)
        self.cellContainer.addSubview(self.postContentLabel)
        self.cellContainer.addSubview(self.postAuthorLabel)
        self.cellContainer.addSubview(self.postDateLabel)
        
        self.SetupPostTitleLabel()
        self.SetupPostContentLabel()
        self.setupPostAuthorLabel()
        self.setupPostDateLabel()
    }
    
    private func SetupCellContainer() {
        self.addSubview(self.cellContainer)
        NSLayoutConstraint.activate([
            self.cellContainer.topAnchor.constraint(equalTo: self.topAnchor, constant: 4.0),
            self.cellContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0),
            self.cellContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0),
            self.cellContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4.0)
        ])
    }
    
    private func SetupPostTitleLabel() {
        NSLayoutConstraint.activate([
            self.postTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20.0),
            self.postTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 14.0),
        ])
    }
    
    private func SetupPostContentLabel() {
        self.postContentLabel.numberOfLines = 4
        NSLayoutConstraint.activate([
            self.postContentLabel.topAnchor.constraint(equalTo: self.postTitleLabel.bottomAnchor, constant: 4.0),
            self.postContentLabel.leadingAnchor.constraint(equalTo: self.postTitleLabel.leadingAnchor),
            self.postContentLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    private func setupPostAuthorLabel() {
        NSLayoutConstraint.activate([
            self.postAuthorLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8.0),
            self.postAuthorLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16.0)
        ])
    }
    
    private func setupPostDateLabel() {
        NSLayoutConstraint.activate([
            self.postDateLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8.0),
            self.postDateLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16.0)
        ])
    }
}
