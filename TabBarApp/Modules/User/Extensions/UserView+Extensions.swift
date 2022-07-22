extension UserViewController: UserViewProtocol {
    func alertAction() {
        let alert = UIAlertHelper.alert(title: "Sucess", message: "User updated successfully!")
        present(alert, animated: true, completion: nil)
    }
}
