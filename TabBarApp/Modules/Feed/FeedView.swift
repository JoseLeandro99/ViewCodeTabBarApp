import UIKit

class FeedView: UIView {
    private lazy var feedsTable: UITableView = {
        let table = UITableView()
        table.separatorInset = .zero
        table.separatorStyle = .none
        table.backgroundColor = ColorStyles.primaryBackground
        table.register(FeedTableViewCell.self, forCellReuseIdentifier: FeedTableViewCell.identifier)
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupFeedView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTableDelegates(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.feedsTable.delegate = delegate
        self.feedsTable.dataSource = dataSource
    }
    
    private func setupFeedView() {
        self.backgroundColor = .systemTeal
        self.setupFeedTable()
    }
    
    private func setupFeedTable() {
        self.addSubview(self.feedsTable)
        NSLayoutConstraint.activate([
            self.feedsTable.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            self.feedsTable.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            self.feedsTable.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            self.feedsTable.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
