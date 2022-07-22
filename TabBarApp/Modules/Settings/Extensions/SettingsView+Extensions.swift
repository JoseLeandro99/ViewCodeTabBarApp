extension SettingsViewController: SettingsViewProtocol {
    func alertAction() {
        let alert = UIAlertHelper.actionSheet(title: "Logout", message: "Did you really wanna logout?")
        present(alert, animated: true, completion: nil)
    }
}
