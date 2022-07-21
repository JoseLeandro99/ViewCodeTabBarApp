import UIKit

class SettingsViewController: UIViewController {
    var screen: SettingsView?
    
    override func loadView() {
        self.screen = SettingsView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
