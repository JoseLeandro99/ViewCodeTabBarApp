import UIKit

class UserViewController: UIViewController {
    var screen: UserView?
    
    override func loadView() {
        self.screen = UserView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
