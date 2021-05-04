//
//  LoginViewController.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 24.04.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @objc func hideKeyboard() {
            self.scrollView?.endEditing(true)
        }


    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginPutText: UITextField!
    
    @IBOutlet weak var passowrdPutText: UITextField!
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "loginSegue" else {
            return false
        }
        let isLoginPasswordCorrect = loginPutText.text == "1" && passowrdPutText.text == "1"
        if isLoginPasswordCorrect {
            return true
        } else {
            showErrorAlert()
        }
        return false
    }
    
    
    private func showErrorAlert() {
        let alert = UIAlertController(title: "Ошибка", message: "Не верный пароль", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel) { [weak self] _ in
            self?.loginPutText.text = ""
            self?.passowrdPutText.text = ""
        }
        
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }

}
