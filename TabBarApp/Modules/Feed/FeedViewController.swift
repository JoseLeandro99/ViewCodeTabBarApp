import UIKit

class FeedViewController: UIViewController {
    var screen: FeedView?
    
    override func loadView() {
        self.screen = FeedView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.configTableDelegates(delegate: self, dataSource: self)
    }
}
