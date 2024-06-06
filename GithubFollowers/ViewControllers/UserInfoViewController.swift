//
//  UserInfoViewController.swift
//  GithubFollowers
//
//  Created by Jacob  Loranger on 6/6/24.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        NetworkManager.shared.getUser(for: username) { [weak self] result in
            
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print(user)
                
            case .failure(let error):
                print("failure")
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
