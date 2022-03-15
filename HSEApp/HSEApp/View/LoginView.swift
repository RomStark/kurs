//
//  LoginView.swift
//  HSEApp
//
//  Created by Al Stark on 11.03.2022.
//

import UIKit

class LoginView: UIView {
    var loginView = UIView()
    var imageView: UIImageView!
    var label: UILabel!
    var regButton: UIButton!
    var enterButton: UIButton!
    var loginViewControllerDelegate: LoginViewControllerDelegate!
    
    func configRegButton(){
        regButton = UIButton(frame: CGRect(x: 80, y: 500, width: 240, height: 60))
//        view.addSubview(regButton)
        loginView.addSubview(regButton)
        regButton.setTitle("Регистрация", for: .normal)
        regButton.layer.cornerRadius = 12
        regButton.layer.masksToBounds = true
        regButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        regButton.backgroundColor = .blue
        regButton.setTitleColor(.white, for: .normal)
        regButton.addTarget(self, action: #selector(regButtonPressed), for: .touchUpInside)

    }
    @objc func regButtonPressed(sender: UIButton) {
        loginViewControllerDelegate.openRegVC()
    }
    
    func configEnterButton(){
        enterButton = UIButton(frame: CGRect(x: 80, y: 600, width: 240, height: 60))
//        view.addSubview(enterButton)
        loginView.addSubview(enterButton)
        enterButton.setTitle("Войти", for: .normal)
        enterButton.setTitle("yflf", for: .highlighted)
        enterButton.layer.cornerRadius = 12
        enterButton.layer.masksToBounds = true
        enterButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        enterButton.backgroundColor = .blue
        enterButton.setTitleColor(.white, for: .normal)
        enterButton.addTarget(self, action: #selector(enterButtonPressed), for: .touchUpInside)
    }
    
    @objc func enterButtonPressed(sender: UIButton) {
        print(1)
        loginViewControllerDelegate.openEnterVC()
    }
    
    func configLabel(){
        label = UILabel()
//        view.addSubview(label)
        loginView.addSubview(label)
        label.text = "HSE Apple"
        label.textColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(
            equalTo: imageView.safeAreaLayoutGuide.bottomAnchor,
            constant: -20
        ).isActive = true
        
        label.trailingAnchor.constraint(
            equalTo: imageView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 125).isActive
        = true
        label.widthAnchor.constraint(equalTo:
                                        label.heightAnchor).isActive = true
    }
    func configImg(){
        imageView = UIImageView()
        let img = UIImage(named: "hselogo")
        imageView.image = img
//        view.addSubview(imageView)
        loginView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(
            equalTo: loginView.safeAreaLayoutGuide.topAnchor,
            constant: 150
        ).isActive = true
        //imageView.center = loginView.center
        imageView.leadingAnchor.constraint(equalTo: loginView.safeAreaLayoutGuide.leadingAnchor, constant: 120).isActive = true
//        imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
//        imageView.trailingAnchor.constraint(
//            equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: imageView.bounds.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 160).isActive
        = true
        imageView.widthAnchor.constraint(equalTo:
                                        imageView.heightAnchor).isActive = true

    }
}
