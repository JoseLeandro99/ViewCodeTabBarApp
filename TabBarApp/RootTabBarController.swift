import UIKit

typealias TabBarItemConfig = (title: String, icon: String, controller: UIViewController)

class RootTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        self.setupTabBarController()
        self.tabBar.bringSubviewToFront(self.tabBar)
    }
    
    private func setupTabBarController() {
        self.setupTabBarItems()
        self.setupTabBarStyle()
        self.setupTabBarAppearance()
    }
    
    private func setupTabBarItems() {
        let tabBarItems: [TabBarItemConfig] = [
            ("Feed", "note", FeedViewController()),
            ("User", "person", UserViewController()),
            ("Settings", "gear", SettingsViewController())
        ]
        
        var viewControllers: [UIViewController] = []
        
        tabBarItems.forEach { item in viewControllers.append(item.controller) }
        
        self.setViewControllers(viewControllers, animated: true)
        
        guard let items = self.tabBar.items else { return }
        
        for i in 0..<items.count {
            items[i].title = tabBarItems[i].title
            items[i].image = UIImage(systemName: tabBarItems[i].icon)
        }
    }
    
    private func setupTabBarStyle() {
        self.tabBar.backgroundColor = .white
        self.tabBar.unselectedItemTintColor = .darkGray
        self.tabBar.tintColor = .systemTeal
        self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
        self.tabBar.layer.borderWidth = 0.5
        self.tabBar.itemPositioning = .centered
    }
    
    private func setupTabBarAppearance() {
        let attributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14.0, weight: .medium)
        ]
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)
        
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundImage = UIImage()
    }
}
